<?php
/**
 * Created by PhpStorm.
 * User: corki
 * Date: 2017/1/23
 * Time: 17:42
 * 添加商品详情
 */
namespace Mail\Controller;
use Common\Controller\AdminBase;
class IntroController extends AdminBase {
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
        $model = M('ServiceIntro');

        $count = $model->where($_map)->count();
        /*var_dump($count);
        exit;*/
        $page = $this->page($count,20);
        $list = $model
            ->alias('a')
            ->field('a.*,b.id,b.name,b.create_time')
            ->join('LEFT JOIN yun_goods b ON a.goods_id=b.id')
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('id desc')
            ->select();
//        dump($list);die;
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }
    /*
     * 添加shangpinxiangqing
     *
     * ********/
    public function add(){
        $gpModel = M('ServiceIntro');
        if(IS_POST){
            $_rules = array(
                array('goods_id','require','必须选择对应的商品',1),
                array('intro_name','require','名称填写',1),
                array('intro','require','资源请上传',1),
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
        $data = M('Goods')->order('create_time desc')->select();
        $this->assign('data',$data);
        $this->display();
    }
    /*
     * 修改资源
     * ***********/
    public function edit()
    {
        $model = M('ServiceIntro');
        $id = I('get.id', '','intval');

        if (IS_POST) {
            $id = I('post.id','','intval');
            $_rules = array(
                array('goods_id','require','必须选择对应的商品',1),
                array('intro_name','require','名称填写',1),
                array('intro','require','资源请上传',1),
            );
            $source = $model
                ->where('intro_id=%d',$id)
                ->find();
            $old = strrchr($source['img_intro'],'/');
            if ($model->validate($_rules)->create(I('post.'))) {
                $gp_id = $model->where('intro_id=%d',$id)->save();

                if ($gp_id) {
                    $this->success('操作成功', U('index'));
                    $new_img = $model->field('img_intro')
                        ->where('intro_id=%d',$id)
                        ->find();
                    $new = strrchr($new_img['img_intro'],'/');
                    if($old !== $new){
                        @unlink('./'.$source['img_intro']);
                    }
                } else {
                    $this->error('上传失败');
                }
            } else {
                $this->error($model->getError());
            }
        } else {
            if (empty($id)) {
                $this->error('非法操作');
            }

            $source = $model
                ->where('intro_id=%d',$id)
                ->find();

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
        $model = M('ServiceIntro');
        $oldLogo = $model->field('img_intro')->find($id);
        // 删除资源
        @unlink('./'.$oldLogo['img_intro']);
        $_res = $model->where('intro_id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
}