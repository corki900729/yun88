<?php
/**
* 云企业
* @date: 2016年7月7日
* @author: hupeng
*/
namespace Yun\Controller;

use Common\Controller\Base;

class CompanyController extends Base {
    //初始化
    protected function _initialize() {
        parent::_initialize();
    }
    /**
     * 列表
     */
    public function lists() {
        $type = I('get.type',0,'intval');
        $check_type = in_array($type, array(1,2));
        if(!$check_type){
            $type = 1;
        }
        $model = M('Company');
        $count = $model->where('type=%d and is_show=1',$type)->count();
        $page = $this->page($count, 12);
        $data = $model->where('type=%d and is_show=1',$type)
                      ->field('name,com_id,txt_intro,img_logo')
                      ->limit($page->firstRow . ',' . $page->listRows)
                      ->order('create_time desc')
                      ->select();
        //标识
        if($type == 1){
            $mark = 'yun';
            $header="云应用";
        }else{
            $mark = 'app';
            $header = "公有云";
        }
        $this->assign('header',$header);
        $this->assign('mark',$mark);
        $this->assign("Page", $page->show());
        $this->assign("data", $data);
        $this->assign('type',$type);
        $this->display('list');
    }
    
    /**
     * 详情
     */
    public function details() {
       $id = I('get.id',0,'intval');
       if($id == 0){
           $this->error('操作非法');
       }
       $info = M('Company')->where('com_id=%d',$id)->find();
       if(empty($info)){
           $this->error('操作非法');
       }
       //标识
       if($info['type'] == 1){
           $mark = 'yun';
       }else{
           $mark = 'app';
       }
       $this->assign('mark',$mark);
       $this->assign('info',$info);
       $this->display('detail');
    }    
}