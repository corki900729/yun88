<?php
/**
 * Created by PhpStorm.
 * User: corki
 * Date: 2017/1/23
 * Time: 17:42
 */
namespace Mail\Controller;
use Common\Controller\AdminBase;
class MemController extends AdminBase {
    /*
     * 案例列表
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
        $model = M('GoodsMember');

        $count = $model->where($_map)->count();
        /*var_dump($count);
        exit;*/
        $page = $this->page($count,20);
        $list = $model
            ->alias('a')
            ->field('a.*,b.gp_id,b.name,b.type,c.name as cate_name,c.cate_id')
            ->join('LEFT JOIN yun_goods_package b ON a.goods_id=b.gp_id LEFT JOIN yun_cate c ON b.cate_id= c.cate_id ')
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
     * 添加案例
     *
     * ********/
    public function add(){
        $model = M('GoodsPackage');
        $gpModel = M('GoodsMember');
        if (IS_POST) {
            $_post = I('post.','');
            $_post['create_time'] = time();
            $_rules = array(
                array('goods_id','require','请选择商品',1,'regex',1),
                array('img_logo','require','商品案例图片',1,'regex',1),
                array('instro','require','商品案例简介必填',1,'regex',1),
            );
            $validate_res = $gpModel->validate($_rules)->create($_post,1);
            if($validate_res){
                $_res = $gpModel->add();
                if($_res){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($gpModel->getError());
            }
        }
//        if(IS_AJAX){
//            $type = I('get.','');
//            $list = $model->order('create_time desc')->where('type=%d',$type)->select();
////            var_dump($list);
//            echo json_encode($list);
//            exit;
//        }
        $cate_info = M('Cate')->select();
        $cate_info = \Libs\Util\Category::toLevel($cate_info);
        $this->assign('cate_info',$cate_info);
        $this->display();
    }
    /*
     * 修改案例
     * ***********/
    public function edit()
    {
        $model = M('GoodsMember');
        if (IS_POST) {
            $_rules = array(
                array('img_logo','require','商品案例图片',1,'regex',1),
                array('instro','require','商品案例简介必填',1,'regex',1),
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
            $id = I('get.id', '');
            if (empty($id)) {
                $this->error('非法操作');
            }
            $pro = $model
                ->alias('a')
                ->field('a.*,b.gp_id,b.name,b.type,c.name as cate_name,c.cate_id')
                ->join('LEFT JOIN yun_goods_package b ON a.goods_id=b.gp_id LEFT JOIN yun_cate c ON b.cate_id= c.cate_id ')
                ->where('id=%d',$id)
                ->find();
//            dump($pro);die;
            $this->assign('vo', $pro);
            $this->display();

        }
    }
    /*
     * 删除案例
     * ***************/
    public function delete(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('GoodsMember');
        $oldLogo = $model->field('img_logo')->find($id);
        // 删除资源
        @unlink('./'.$oldLogo['img_logo']);
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
}