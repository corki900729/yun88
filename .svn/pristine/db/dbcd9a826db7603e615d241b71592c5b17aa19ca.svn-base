<?php
/**
* 需求管理
* @date: 2016年7月8日
* @author: hupeng
*/
namespace Mail\Controller;
use Common\Controller\AdminBase;
class DemandController extends AdminBase {
    /**
     * 公有云需求列表
     */
    public function cloudlist() {
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['name'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M('CloudDemand');
        $count = $model->where($_map)->count();
        $page = $this->page($count,20);
        $list = $model
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('create_time desc')
            ->select();
        foreach ($list as $k=>$v){
            $list[$k]['member_name'] = M('Member')->where('userid=%d',$v['member_id'])->getField('username');
        }
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }
    
    /**
     * 云应用需求列表
     */
    public function applist() {
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['name'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M('AppDemand');
        $count = $model->where($_map)->count();
        $page = $this->page($count,20);
        $list = $model
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('create_time desc')
            ->select();
//        dump($list);die;
        foreach ($list as $k=>$v){
            $list[$k]['member_name'] = M('Member')->where('userid=%d',$v['member_id'])->getField('username');
        }
//        dump($list);die;
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }

    
    /**
     * 公有云需求删除
     */
    public function clouddel(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('CloudDemand');
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('cloudlist'));
        }else{
            $this->error('操作失败');
        }
    }
    

    /**
     * 云应用需求删除
     */
    public function appdel(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('AppDemand');
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('applist'));
        }else{
            $this->error('操作失败');
        }
    }

}
