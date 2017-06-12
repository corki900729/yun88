<?php
/**
* 企业管理
* @date: 2016年6月28日
* @author: hupeng
*/
namespace Mail\Controller;
use Common\Controller\AdminBase;
class CompanyController extends AdminBase {
    /**
     * 企业列表
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
        $model = M('Company');
        $count = $model->where($_map)->count();
        $page = $this->page($count,5);
        $list = $model
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('type,create_time desc')
            ->select();
        
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }

    /**
     * 企业添加
     */
    public function add() {
        if (IS_POST) {
           $_post = $_POST['info'];
           $_post['create_time'] = time();
           $_rules = array(
               array('name','require','企业名称必填',1,'regex',1),
               array('img_logo','require','logo图片必须上传',1,'regex',1),
              // array('txt_intro','require','公司文字简介不能为空',1,'regex',1),
               //array('introduce','require','公司图文简介不能为空',1,'regex',1),
              // array('hot_product','require','热销产品不能为空',1,'regex',1),
           );
           $model = M('Company');
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
            $goods_list = M('GoodsPackage')->field('gp_id,name')->where('is_sale=1')->select();
            $this->assign('goodslist',$goods_list);
            $this->display();
        }
    }

    /**
     * 企业编辑
     */
    public function edit() {
        if (IS_POST) {
            $_post = $_POST['info'];
            $id = I('post.id',0,'intval');
            $_rules = array(
                   array('name','require','企业名称必填',1,'regex',2),
                   array('img_logo','require','logo图片必须长传',1,'regex',2),
                  // array('txt_intro','require','公司文字简介不能为空',1,'regex',2),
                  // array('introduce','require','公司图文简介不能为空',1,'regex',2),
                  // array('hot_product','require','热销产品不能为空',1,'regex',2),
            );
            $model = M('Company');
            $validate_res = $model->validate($_rules)->create($_post,2);
            if($validate_res){
                $_res = $model->where('com_id=%d',$id)->save();
               // echo M()->_sql();exit();
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
            $info = M('Company')->where('com_id=%d',$id)->find(); 
            $this->assign('info',$info);
            $goods_list = M('GoodsPackage')->field('gp_id,name')->where('is_sale=1')->select();
            $this->assign('goodslist',$goods_list);
            $this->display();
        }
    }
    
    /**
     * 企业删除
     */
    public function delete(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('Company');
        $_res = $model->where('com_id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }

}
