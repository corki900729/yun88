<?php
/**
 * Created by PhpStorm.
 * User: corki
 * Date: 2017/1/23
 * Time: 17:42
 */
namespace Mail\Controller;
use Common\Controller\AdminBase;
class SourceController extends AdminBase {
    /*
     * 资源列表
     *
     * **/
    public function index(){
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['name'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M('GoodsSource');

        $count = $model->where($_map)->count();
        /*var_dump($count);
        exit;*/
        $page = $this->page($count,20);
        $list = $model
            ->alias('a')
            ->field('a.*,b.gp_id,b.name,b.type,b.create_time,c.name as cate_name,c.cate_id')
            ->join('LEFT JOIN yun_goods_package b ON a.goods_id=b.gp_id LEFT JOIN yun_cate c ON b.cate_id= c.cate_id')
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('id desc')
            ->select();
//        dump($list);die;
        $cate = M('Cate')->select();
        $list = \Libs\Util\Category::getparentlist($cate,$list);
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }
    /*
     * 添加资源
     *
     * ********/
    public function add(){
//        $model = M('GoodsPackage');
        $gpModel = M('GoodsSource');
        if(IS_POST){
            $_rules = array(
                array('goods_id','require','必须选择对应的商品',1),
                array('source_name','require','资源名称填写',1),
                array('source','require','资源请上传',1),
            );
            if($gpModel->validate($_rules)->create(I('post.'),1)){
                $data = I('post.');
                $data['create_time'] = time();
                $gp_id = $gpModel->add($data);
//                echo $gpModel->getLastSql();
                if($gp_id){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('添加资源失败');
                }
            }else{
                $this->error($gpModel->getError());
            }
        }
        $cate_info = M('Cate')->select();
        $cate_info = \Libs\Util\Category::toLevel($cate_info);
        $this->assign('cate_info',$cate_info);
        $this->display();
    }
    /*
     * 修改资源
     * ***********/
    public function edit()
    {
        $model = M('GoodsSource');
        $id = I('get.id', '');
        if (IS_POST) {
            $_rules = array(
                array('goods_id','require','必须选择对应的商品',2),
                array('source_name','require','资源名称填写',2),
                array('source','require','资源请上传',2),
            );
            if ($model->validate($_rules)->create(I('post.'), 1)) {
                $gp_id = $model->save();
//                echo $gpModel->getLastSql();
                if ($gp_id) {
                    $this->success('操作成功', U('index'));
                } else {
                    $this->error('操作失败');
                }
            } else {
                $this->error($model->getError());
            }
        } else {

            if (empty($id)) {
                $this->error('非法操作');
            }
            $source = $model
                ->where('id=%d',$id)
                ->find();
//            dump($source);die;
            $this->assign('vo', $source);
            $this->display();

        }
    }
    /*
     * 删除资源
     * ***************/
    public function delete(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('GoodsSource');
        $oldLogo = $model->field('source')->find($id);
        // 删除资源
        @unlink('./'.$oldLogo['source']);
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
}