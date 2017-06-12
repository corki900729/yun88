<?php
/**
* 支付宝支付
* @date: 2016年7月13日
* @author: hupeng
*/
namespace Yun\Controller;
use Common\Controller\Base;
class PaymentController extends Base {
    
    public $payment; //  具体的支付类
    
    //初始化
    protected function _initialize() {
        parent::_initialize();
        
       // $xml = $GLOBALS['HTTP_RAW_POST_DATA'];
        include_once  PROJECT_PATH."plugins/payment/alipay/alipay.class.php"; // 
        $this->payment = new \alipay(C('ALIPAY'));
    }
 
    /**
     *  提交支付方式
     */
    public function getCode(){     
           // header("Content-type:text/html;charset=utf-8");    
        
            $order_id = I('post.order_id',0,'intval'); // 订单id
            $paymethod = I('post.payMethod');
            if(empty($paymethod)){
                $this->error('请选择支付方式');
            }
            if($order_id == 0){
                $this->error('支付失败');
            }
            // 修改订单的支付方式                       
            M('order')->where("order_id = $order_id")->save(array('pay_name'=>'支付宝支付'));
            
            $order = M('order')->where("order_id = $order_id")->find();   
            
           
            $code_str = $this->payment->get_code($order);
            $this->assign('code_str',$code_str);
            $this->display('Mall/pay2');
            //echo $code_str;
            
    }

    // 服务器点对点 // http://www.xx.com/index.php/Home/Payment/notifyUrl        
    public function notifyUrl(){            
        $this->payment->response();            
        exit();
    }

    // 页面跳转 // http://www.xx.cn/index.php/Home/Payment/returnUrl        
    public function returnUrl(){
        $result = $this->payment->respond2(); // $result['order_sn'] = '201512241425288593';            
        $order = M('order')->where("orderno = '{$result['order_sn']}'")->find();
        if($result['status'] == 1){
            redirect(U('Member/User/order'));
        }else{
            echo '支付失败';
            exit();
        }
               
    }                
}
