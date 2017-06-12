<?php
/**
 * Created by PhpStorm.
 * User: corki
 * Date: 2017/1/23
 * Time: 17:42
 */
namespace Mail\Controller;
use Common\Controller\AdminBase;
class TagsController extends AdminBase {
    /*
     * 标签列表
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
        $count = M('Tag')->where($_map)->count();
        /*var_dump($count);
        exit;*/
        $page = $this->page($count,20);
//        dump($list);die;
        $tag = M('Tag')->select();
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $tag);
        $this->display();
    }
    /*
     * 添加标签
     *
     * ********/
    public function add(){
        $model = M('Tag');
        if(IS_POST){
            $_rules = array(
                array('tag_name','require','请填写标签',1),
            );
            if($model->validate($_rules)->create(I('post.'),1)){
                $id = $model->add();
                if($id){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($model->getError());
            }
        }
        $this->display();
    }
    /*
     * 修改问题
     * ***********/
    public function edit()
    {
        $model = M('Tag');
        if (IS_POST) {
            $_rules = array(
                array('tag_name','require','请填写标签',1),
            );
            if ($model->validate($_rules)->create(I('post.'), 1)) {
                $id = $model->save();
//                echo $gpModel->getLastSql();
                if ($id) {
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
            $tag = $model
                ->alias('a')
                ->where('id=%d',$id)
                ->find();
//            dump($pro);die;
            $this->assign('vo', $tag);
            $this->display();

        }
    }
    /*
     * 删除标签
     * ***************/
    public function delete(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('Tag');
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
}