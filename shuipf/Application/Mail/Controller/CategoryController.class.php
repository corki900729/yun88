<?php
/**
* 商品分类
* @date: 2017年2月9日
* @author: corki
*/
namespace Mail\Controller;
use Common\Controller\AdminBase;
class CategoryController extends AdminBase {
    /**
     * 列表
     */
    public function index() {
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['name'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M('Cate');
        $list = $model
        ->where($_map)
        ->select();
        $list = \Libs\Util\Category::toLevel($list);
        
        $this->assign("data", $list);
        $this->display();
    }

    /**
     * 添加
     */
    public function add() {
        if (IS_POST) {
         $_post = I('post.info','');
         $_post['create_time'] = time();
         $_rules = array(
             array('name','require','分类名称必填',1,'regex',1)
             );
         $model = M('Cate');
         $validate_res = $model->validate($_rules)->create($_post,1);
         if($validate_res){
             $_res = $model->add();
             if($_res){
                 $this->success('操作成功',U('index'));
             }else{
                 $this->error('操作失败');
             }
         }else{
             $this->error($model->getError());
         }
     } else {
        $cate = M('Cate')->field('cate_id,name,parent_id')->select();
        $cate = \Libs\Util\Category::toLevel($cate);
        $this->assign('cate',$cate);
//            dump($cate);exit();
        $this->display();
    }
}

    /**
     * 编辑
     */
    public function edit() {
        if (IS_POST) {
            $_post = I('post.info','');
            $id = I('post.id',0,'intval');
            $_rules = array(
             array('name','require','分类名称必填',1,'regex',2),
             );
            $model = M('Cate');
            $validate_res = $model->validate($_rules)->create($_post,2);
            if($validate_res){
                $_res = $model->where('cate_id=%d',$id)->save();
                if($_res !== false){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($model->getError());
            }
        } else {
            $id = I('get.id','');
            if(empty($id)){
                $this->error('非法操作');
            }
            $cate = M('Cate')->field('cate_id,name,parent_id')->select();
            $cate = \Libs\Util\Category::toLevel($cate);
            $this->assign('cate',$cate);
            $info = M('Cate')->where('cate_id=%d',$id)->find();
            $this->assign('info',$info);
            $this->display();
        }
    }
    
    /**
     * 删除
     */
    public function delete(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('Cate');
        $_exist = $model->where('parent_id=%d',$id)->count();
        if($_exist > 0){
            $this->error('请先删除其子分类');
        }
        $_res = $model->where('cate_id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }

}
