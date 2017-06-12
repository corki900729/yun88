<?php
/**
* 合作表单
* @date: 2016年6月28日
* @author: hupeng
*/
namespace Mail\Controller;
use Common\Controller\AdminBase;
class CooperationController extends AdminBase {
    /**
     * 合作列表
     */
    public function index() {
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['username'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M('CooperationForm');
        $count = $model->where($_map)->count();
        $page = $this->page($count,20);
        $list = $model
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('create_time desc')
            ->select();
        
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }

    
    /**
     * 合作删除
     */
    public function delete(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('CooperationForm');
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }

}
