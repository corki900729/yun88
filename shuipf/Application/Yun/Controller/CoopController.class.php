<?php
/**
* 合作申请
* @date: 2016年7月8日
* @author: hupeng
*/
namespace Yun\Controller;

use Common\Controller\Base;

class CoopController extends Base {
    //初始化
    protected function _initialize() {
        parent::_initialize();
        $id = I('get.id');
        $pro_name = M('Company')->where('com_id=%d',$id)->getField('name');
        $this->assign('pro_name',$pro_name);
    }
    
    /**
     * 提交申请
     */
    public function apply() {
        if (IS_POST) {
            $_post = I('post.','');
            $_post['create_time'] = time();
            $_rules = array(
                array('username','require','姓名必填',1,'regex',1),
                array('mobile','require','手机必填',1,'regex',1),
                array('company','require','公司不能为空',1,'regex',1),
            );
            $model = M('CooperationForm');
            $validate_res = $model->validate($_rules)->create($_post,1);
            if($validate_res){
                $_res = $model->add();
                if($_res){
                    $this->success('操作成功','/index.php?a=lists&catid=7');
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($model->getError());
            }
        } else {
             
            $this->display('coop_apply');
        }
       
    }
    
    /**
     * 云应用需求申请
     */
    public function demandApp(){
        $is_login = login_status();
        $member_id = (int) service("Passport")->userid;
        if(!$is_login){
            cookie("forward",$_SERVER['HTTP_REFERER']);//$_SERVER['HTTP_REFERER']
            $this->error('对不起你还没有登陆',U('Member/Index/login'));
        }
        if(IS_POST){
            $post = I('post.info','');
            $post['create_time'] = time();
            $post['member_id'] = $member_id;
            $_rules = array(
                array('name','require','需求应用 必填',1,'regex',1),
                array('company','require','公司必填',1,'regex',1),
                array('user_num','integer','用户数必须为数字',1,'regex',1),
                array('purchase_times','integer','购买时长必须为数字',1,'regex',1)
            );
            $model = M('AppDemand');
            $validate_res = $model->validate($_rules)->create($post,1);
            if($validate_res){
                $_res = $model->add();
                if($_res){
                     redirect(U('Yun/Coop/completed',array('title'=>$post['name'])));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($model->getError());
            }
        }else{
            $companylist = M('Company')->field('name')->where('type=2 and is_show=1')->select();
            $this->assign('company',$companylist);
            $this->display('app_demand');
        }
            
    }
    
    /**
     * 公有云需求申请
     */
    public function demandCloud(){
        $is_login = login_status();
        $member_id = (int) service("Passport")->userid;
        if(!$is_login){
            cookie("forward",$_SERVER['HTTP_REFERER']);
            $this->error('对不起你还没有登陆',U('Member/Index/login'));
        }
        if(IS_POST){
            $post = I('post.','');
           // dump($post);exit();
            $data = array(
                'name' => $post['service'],
                'area' => $post['locations'],
                'cpu' => $post['cpu'],
                'memory' => $post['memory'],
                'broadband' => $post['bandwidth'],
                'purchase_times' => $post['length'],
                'num' => $post['quantity'],
                'member_id' => $member_id,
                'create_time' => time()
            );
           
            $_rules = array(
                array('name','require','需求应用 必须选择',1,'regex',1),
                array('area','require','区域必须选择',1,'regex',1),
                array('cpu','require','cpu必须选择',1,'regex',1),
                array('memory','require','内存必须选择',1,'regex',1),
                array('broadband','require','宽带值必须选择',1,'regex',1),
                array('purchase_times','require','购买时长必须选择',1,'regex',1),
                array('num','require','购买数量必须选择',1,'regex',1)
            );
            $model = M('CloudDemand');
            $validate_res = $model->validate($_rules)->create($data,1);
            if($validate_res){
                $_res = $model->add();
                if($_res){
                    redirect(U('Yun/Coop/completed',array('title'=>$data['name'])));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($model->getError());
            }
    
        }else{
            $companylist = M('Company')->field('name')->where('type=1 and is_show=1')->select();
            $this->assign('company',$companylist);
            $this->display('cloud_demand');
        }
    
    }
    
    /**
     * 完成页面
     */
    public function completed(){
        $name = I('get.title');
        $this->assign('title',$name);
        $this->display();
    }
    
    
    
    
    
    
    
    
}