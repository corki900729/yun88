<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/1/22
 * Time: 15:05
 */
//专家咨询
namespace Mail\Controller;
use Common\Controller\AdminBase;
class ReferController extends AdminBase{
    /**
     * 咨询列表
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
        $model = D('Refer');
        $count = $model->where($_map)->count();
        $page = $this->page($count,5);
        $list = $model
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('id desc')
            ->select();
        $cate = M('Cate')->select();
        $list = \Libs\Util\Category::getparentlist($cate,$list);
//        foreach($list as $k=>$v){
//            $cate_info = \Libs\Util\Category::getParents($cate,$v['cate_id']);
//            foreach($cate_info as $k1=>$v1){
//                $list[$k]['cate'][] = $v1['name'];
//            }
//            $list[$k]['cate'] = implode('——',$list[$k]['cate']);
//        }
//        dump($list);die;
        foreach ($list as $k=>$v){
            $list[$k]['member_name'] = M('Member')->where('userid=%d',$v['member_id'])->getField('username');
        }
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);

        $this->display();
    }
    /*
     * 查看咨询
     * *******/
    public function showrefer() {
        $id = I('get.id',0,'intval');
        $model = D('Refer');
        $list = $model
            ->where('id=%d',$id)
            ->find();
        $this->assign("data", $list);
        $this->display();
    }
    /**
     * 咨询删除
     */
    public function del(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('Refer');
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
}