<?php
/**
* 商城
* @date: 2016年7月13日
* @author: hupeng
*/
namespace Yun\Controller;

use Common\Controller\Base;

class MallController extends Base {
    //初始化
    protected function _initialize() {
        parent::_initialize();
        $this->assign('mark','mall');
       
    }
    /**
     * 商品列表
     */
    public function index() {
        
        $goods_cloud = M('GoodsPackage')->where('type=1')->order('is_sale desc')->select();
        $cloud_count = M('GoodsPackage')->where('type=1')->count();
        
        $goods_app = M('GoodsPackage')->where('type=2')->order('is_sale desc')->select();
        $app_count = M('GoodsPackage')->where('type=2')->count();


        $this->assign('goods_cloud',$goods_cloud);
        $this->assign('goods_app',$goods_app);
        $this->assign('cloud_count',$cloud_count);
        $this->assign('app_count',$app_count);
        
        $this->display();
    }
    
    /**
     * 商品详情
     */
    public function details() {
       $is_login = login_status();
       $id = I('get.id',0,'intval');
       $info = M('GoodsPackage')->where('gp_id=%d',$id)->find();
       if(empty($info)){
           $this->error('操作非法');
       }
       $goods_type = M('GoodsType')->where('gp_id=%d',$id)->select();
       if($info['type'] == 1){
           foreach ($goods_type as $k=>$v){
               $spec[$v['type_id']] =  M('GoodsSpec01')
                        ->where('type_id=%d',$v['type_id'])
                        ->select();
           }
       }elseif($info['type'] == 2){
           foreach ($goods_type as $k=>$v){
               $spec[$v['type_id']] =  M('GoodsSpec02')
                            ->field('id,version as type,price,type_id')
                            ->where('type_id=%d',$v['type_id'])
                            ->select();
           }
       }
      // echo "<pre>";
       //print_r($spec);
       $this->assign('goods_type',$goods_type);
       $this->assign('this_name',$info['name']);
       $this->assign('spec',$spec);
       $this->assign('info',$info);
       $this->display('details');
    } 
    
    /**
     * 提交订单
     */
    public function order() {
        $member_id = (int) service("Passport")->userid;
        $is_login = login_status();
        if(!$is_login){
            cookie("forward",$_SERVER['HTTP_REFERER']);
            $this->error('对不起你还没有登陆',U('Member/Index/login'));
        }
        if(IS_POST){
            $post = I('post.','');
            //dump($post);exit();
            if(empty($post['class'])){
                $this->error('类型必须选择');
            }
            if(empty($post['spec'])){
                $this->error('规格必须选择');
            }      
            
            $order_data = array(
                'orderno' => date('YmdHis').rand(1000,9999),
                'total_fee' => $post['price'],
                'add_time' => time(),
                'status' => 0,
                'member_id' => $member_id
            );
            //开启事务
            M()->startTrans();
            $order_id = M('Order')->data($order_data)->add();
            if(empty($order_id)){
                M()->rollback();
                $this->error('提交订单失败');
            }
            
            
            $gp_id = $post['gp_id'];
            $spec_id = $post['spec'];
            $order_goods_data = array(
                'order_id' => $order_id,
                'gp_id' => $gp_id,
                'purchase' => $post['length'],
                'num' => $post['quantity'],
                'type_id' => $post['class'],
            );
            $type = M('GoodsPackage')->where('gp_id=%d',$gp_id)->getField('type');
            if($type == 1){
                $price = M('GoodsSpec01')->where('id=%d',$spec_id)->getField('price');
                $order_goods_data['spec01_id'] = $spec_id;
                $order_goods_data['price'] = $price;
            }elseif($type == 2){
                $price = M('GoodsSpec02')->where('id=%d',$spec_id)->getField('price');
                $order_goods_data['spec02_id'] = $spec_id;
                $order_goods_data['price'] = $price;
            }
            
            $res = M('OrderGoods')->data($order_goods_data)->add();
            //事务提交
            if($res){
                M()->commit();
                $this->success('提交订单成功',U('Mall/pay',array('id'=>$order_id)));
            }
            
             
          
        }
        
        
    }
    
    /**
     * 支付页面
     */
    public function pay(){
        $is_login = login_status();
        if(!$is_login){
            cookie("forward",$_SERVER['HTTP_REFERER']);
            $this->error('对不起你还没有登陆',U('Member/Index/login'));
        }
        $order_id = I('get.id',0,'intval');
        $orderinfo = M('Order')->where('order_id=%d and status=%d',$order_id,0)->find();
        if(empty($orderinfo)){
            $this->error('订单不存在，操作非法');
        }
        $this->assign('orderinfo',$orderinfo);
        $this->display('pay');
    }
    
    
    
    /**
     * 添加购物车
     */
    public function cart(){
        $is_login = login_status();
        if(!$is_login){
             cookie("forward",$_SERVER['HTTP_REFERER']);
             echo json_encode(array('status'=>0,'msg'=>'请先登录！','url'=>U('Member/Index/login')));
             exit();
        }
        $member_id = (int) service("Passport")->userid;
        if(IS_POST){
            $post = I('post.');
            if(empty($post['typeid'])){
                echo json_encode(array('status'=>0,'msg'=>'类型必填'));
                exit();
            }
            if(empty($post['spec'])){
                echo json_encode(array('status'=>0,'msg'=>'规格必填'));
                exit();
            }
            $gp_id = $post['gp_id'];
            $spec_id = $post['spec'];
            $cart_data = array(
                'gp_id' => $gp_id,
                'purchase' => $post['length'],
                'num' => $post['quantity'],
                'member_id' => $member_id,
                'type_id' => $post['typeid'],
                'create_time' => time()
            );
            $type = M('GoodsPackage')->where('gp_id=%d',$gp_id)->getField('type');
            if($type == 1){
                $exist_cart = M('GoodsCarts')
                        ->where('member_id=%d and gp_id=%d and spec01_id=%d',$member_id,$gp_id,$spec_id)
                        ->find();
                $price = M('GoodsSpec01')->where('id=%d',$spec_id)->getField('price');
                $cart_data['spec01_id'] = $spec_id;
                $cart_data['price'] = $price;
            }elseif($type == 2){
                $exist_cart = M('GoodsCarts')
                        ->where('member_id=%d and gp_id=%d and spec02_id=%d',$member_id,$gp_id,$spec_id)
                        ->find();
                $price = M('GoodsSpec02')->where('id=%d',$spec_id)->getField('price');
                $cart_data['spec02_id'] = $spec_id;
                $cart_data['price'] = $price;
            }
            if($exist_cart){
                $save_data = array(
                    'num' => $exist_cart['num'] + $post['quantity'],
                    'purchase' => $exist_cart['purchase'] + $post['length']
                );
                $_res = M('GoodsCarts')->where('cart_id=%d',$exist_cart['cart_id'])->save($save_data);
                if($_res !== false){
                    echo json_encode(array('status'=>1,'msg'=>'添加购物车成功'));
                    exit();
                }else{
                    echo json_encode(array('status'=>0,'msg'=>'添加购物车失败'));
                    exit();
                }
            }
            
            $res = M('GoodsCarts')->data($cart_data)->add();
            if($res){
                echo json_encode(array('status'=>2,'msg'=>'添加购物车成功'));
                exit();
            }else {
                echo json_encode(array('status'=>0,'msg'=>'添加购物车失败'));
                exit();
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}