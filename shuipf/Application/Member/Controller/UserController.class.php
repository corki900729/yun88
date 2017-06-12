<?php
/**
* 用户中心
* @date: 2016年7月14日
* @author: hupeng
*/

namespace Member\Controller;

class UserController extends MemberbaseController {

    //会员设置界面
    public function profile() {
       // getavatar();
        //====基本资料表单======
        $modelid = $this->userinfo['modelid'];
        //会员模型数据表名
        $tablename = $this->memberModel[$modelid]['tablename'];
        //相应会员模型数据
        $modeldata = M(ucwords($tablename))->where(array("userid" => $this->userid))->find();
        if (!is_array($modeldata)) {
            $modeldata = array();
        }
        $data = array_merge($this->userinfo, $modeldata);
        $content_form = new \content_form($modelid);
        $data['modelid'] = $modelid;
        //字段内容
        $forminfos = $content_form->get($data);
//订单支付情况
        $count_no = M('Order')->where(array("member_id" => $this->userid))->where('status=%d',0)
        ->count();
//        echo M('Order')->getLastSql();
        $count_yes = M('Order')->where(array("member_id" => $this->userid))->where('status=%d',1)->count();

        //====头像======
        $user_avatar = service("Passport")->getUploadPhotosHtml($this->userid);
//        dump($user_avatar);die;
        $this->assign('user_avatar', $user_avatar);
        $this->assign('count_no', $count_no);
        $this->assign('count_yes', $count_yes);
        $this->assign("forminfos", $forminfos);
        $this->assign('type', I('get.type', 'profile'));
        $this->assign("userinfo", $data);
//        dump(I('get.type', 'profile'));die;
        $this->display('index');
    }

    //保存基本信息
    public function doprofile() {
        if (IS_POST) {
            $cellPhone = I('post.oldmobile');
            $code = I('post.code');
//            dump(session('smsCode_'.$cellPhone));die;
            $cap = session('smsCode_'.$cellPhone);
            if($cap['captcha']!=$code){
                $this->error('验证码填写失败哦!');
            }

            $post = $_POST;
            $info = $post['info'];
            //获取用户信息
            $userinfo = service("Passport")->getLocalUser($this->userid);
            if (empty($userinfo)) {
                $this->error('该会员不存在！');
            }
            //基本信息
            $data = $this->memberDb->create($post, 2);
            if (!$data) {
                $this->error($this->memberDb->getError());
            }
            //详细信息验证
            if (!empty($info)) {
                $ContentModel = \Content\Model\ContentModel::getInstance($this->userinfo['modelid']);
                $content_input = new \content_input($this->userinfo['modelid']);
                $info['userid'] = $this->userid;
                $inputinfo = $content_input->get($info, 3);
                if ($inputinfo) {
                    //数据验证
                    $inputinfo = $ContentModel->token(false)->create($inputinfo, 2);
                    if (false == $inputinfo) {
                        $ContentModel->tokenRecovery($post);
                        $this->error($ContentModel->getError());
                    }
                    //检查详细信息是否已经添加过
                    if ($ContentModel->where(array("userid" => $this->userid))->find()) {
                        $status = $ContentModel->where(array("userid" => $this->userid))->save($inputinfo);
                    } else {
                        $inputinfo['userid'] = $this->userid;
                        $status = $ContentModel->add($inputinfo);
                    }
                } else {
                    $ContentModel->tokenRecovery($post);
                    $this->error($content_input->getError());
                }
            }
            //修改基本资料chu
            if ($userinfo['username'] != $data['username'] || !empty($data['password']) || $userinfo['email'] != $data['email']) {
                $edit = service("Passport")->userEdit($userinfo['username'], '', '', $data['email'], 1);
                if (empty($edit)) {
                    $this->error(service("Passport")->getError()? : '修改失败！');
                }
            }
            unset($data['username'], $data['password'], $data['email']);
            if (!empty($data)) {
                $this->memberDb->where(array("userid" => $this->userid))->save($data);
            }
            if (false !== $status) {
                $this->success("基本信息修改成功！");
            } else {
                $this->error('基本信息修改失败！');
            }
        } else {
            $this->error('基本信息修改失败！');
        }
    }

    //修改密码
    public function dopassword() {
        if (IS_POST) {
            $post = I('post.');
            //dump($post);exit();
            //旧密码
            $oldPassword = $post['oldPassword'];
            if (empty($oldPassword)) {
                $this->error('请输入你的旧密码！');
            }
            //根据当前密码取得用户资料
            $userInfo = service("Passport")->getLocalUser($this->userid, $oldPassword);
            if (false == $userInfo) {
                $this->error('旧密码错误，请重新输入！');
            }
            //设置密码
            $password = $post['password'];
            if (empty($password)) {
                $this->error('请输入你的密码！');
            }
            if (false == isMin($password, 6)) {
                $this->error('密码长度不能小于6位！');
            }
            //再次密码确认
            $password2 = $post['password2'];
            if ($password != $password2) {
                $this->error('两次密码输入不一致！');
            }
            $edit = service("Passport")->userEdit($this->username, '', $password, '', 1);
            if ($edit) {
                //注销当前登陆
                service("Passport")->logoutLocal();
                $this->success('密码修改成功！');
            } else {
                $this->error(service("Passport")->getError()? : '密码修改失败！');
            }
        } else {
            $this->error('修改失败！');
        }
    }
    /*
     *修改
     * *****/
    public function edit(){
        $token = session('username'.$this->userid);
        // getavatar();
        //====基本资料表单======
        $modelid = $this->userinfo['modelid'];
        //会员模型数据表名
        $tablename = $this->memberModel[$modelid]['tablename'];
        //相应会员模型数据
        $modeldata = M(ucwords($tablename))->where(array("userid" => $this->userid))->find();
        if (!is_array($modeldata)) {
            $modeldata = array();
        }

        $data = array_merge($this->userinfo, $modeldata);
        $content_form = new \content_form($modelid);
        $data['modelid'] = $modelid;
        //字段内容
        $forminfos = $content_form->get($data);
        $this->assign('token',$token);
//        dump($conten't_form);die;
        $this->assign("userinfo", $data);
        $this->display('edit-infos');
    }
    /**
     * 账号安全页面
     */
    public function account(){
        $this->display('account-sec');
    }
    /**
     * 发票管理页面
     */
    public function invoice(){
        if(IS_POST){
            $orderid= I('get.order_id','','intval');
            $address= I('post.address','','intval');
            $_post['orderid']=$orderid;
            $_post = I('post.','');
            if($orderid){
                $this->error('请选择订单');
            }
            if($address){
                $this->error('请选择地址');
            }
            $_rules = array(
                array('name','require','类型名称必填',1,'regex',1),
            );
            $model = M('Invoice');
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
        }
        $uuserid = $this->userid;
        $count = M('Order')->where(
            array(
                'member_id'=>array('eq',$uuserid),
                'status'=>array('eq','1'),
                'is_invoice'=>array('eq',0)
            )
            )->count();
        $page = $this->page($count,20);
        $orderlist = M('Order')
            ->where(
                array('member_id'=>array('eq',$uuserid),
                    'status'=>array('eq','1'),
                    'is_invoice'=>array('eq',0)
                )
            )
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('add_time desc')
            ->select();
        $this->assign('orderlist',$orderlist);
        $this->display('invoice-select');
    }
    /*
  * 发票管理--地址管理
  * ***********/
    public function addre(){
        if (IS_POST) {
            $_post = I('post.','');
            $_post['mem_id'] = $this->userid;
            $_rules = array(
                array('name','require','类型名称必填',1,'regex',1)
            );
            $model = M('Address');
            $validate_res = $model->validate($_rules)->create($_post,1);
            if($validate_res){
                $_res = $model->add();
                if($_res){
                    echo json_encode(array('status'=>true, 'msg'=>$_post));
                    exit();
                }else{
                    echo json_encode(array('status'=>false, 'msg'=>$_post));
                    exit();
                }
            }else{
                echo json_encode(array('status'=>false, 'path'=>'数据验证失败'));
                exit();
            }
        }
    }
    public function addr(){
        if (IS_POST) {
            $orderno = I('post.orderid','');
            if (!($orderno)){
                $this->error('请选择订单');
            }
            $address = M('Address')->where(array('mem_id'=>array('eq',$this->userid)))->select();
            $data = M('Order')->where(array('orderno'=>array('eq',$orderno)))->find();
            $this->assign('data',$data);
//            dump($address);die;
            $this->assign('address',$address);
            $this->display('invoice-confirm');
        }
    }
    /*
     * 发票管理提交
     * ****/
    public function submit(){
        if(IS_POST){
            $orderno= I('post.orderno');
            $address= I('post.receptIsSelect8','','intval');

            $_post = I('post.','');
            $_post['orderno']=$orderno;
            $_post['address']=$address;
            if(empty($orderno)){
                $this->error('请选择订单');
            }
            if(!$address){
                $this->error('请选择地址');
            }
            $_rules = array(
//                array('name','require','类型名称必填',1,'regex',1),
            );
            $model = M('Invoice');
            $validate_res = $model->validate($_rules)->create($_post,1);
            if($validate_res){
                $_res = $model->add();
                if($_res){
                    $no = M('Order')->where("orderno='$orderno'")->save(array('is_invoice'=>1));
                    if($no){
                        $this->success('操作成功',U('profile'));
                        exit();
                    }else{
                        $this->error('操作失败');
                        exit();
                    }

                }else{
                    $this->error('操作失败');
                    exit();
                }
            }else{
                $this->error($model->getError());
                exit();
            }
        }
        $this->display('invoice-select');
    }
    /*
     * 未支付订单
     * **/
    public function ordering(){
        $uuserid = $this->userid;
        $count = M('Order')->where('member_id=%d',$uuserid)->where('status=%d',0)->count();
        $page = $this->page($count,4);
        $orderlist = M('Order')
            ->where('member_id=%d',$uuserid)
            ->where('status=%d',0)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('add_time desc')
            ->select();
        $this->assign('page',$page->show('Admin'));
        $this->assign('order',$orderlist);
        $this->display();
    }
    /*
  * 已支付订单
  * **/
    public function ordered(){
        $uuserid = $this->userid;
        $count = M('Order')->where('member_id=%d',$uuserid)->where('status=%d',1)->count();
        $page = $this->page($count,4);
        $orderlist = M('Order')
            ->where('member_id=%d',$uuserid)
            ->where('status=%d',1)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('add_time desc')
            ->select();
        $this->assign('page',$page->show('Admin'));
        $this->assign('order',$orderlist);
        $this->display();
    }
    /**
     * 订单
     */
    public function order(){
        $uuserid = $this->userid;
        $count = M('Order')->where('member_id=%d',$uuserid)->count();
        $page = $this->page($count,4);
        $orderlist = M('Order')
            ->where('member_id=%d',$uuserid)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('add_time desc')
            ->select();
        //dump($orderlist);exit();
        foreach ($orderlist as $k=>$v){
            $orderlist[$k]['order_status'] = $this->_orderstatus($v['status'],$v['order_id']);
        }


//获取订单对应的商品详情根据订单编号
//        foreach ($orderlist as $k=>$v){
//            $orders[$k] = M('OrderGoods')->where('order_id=%d',$v['order_id'])->select();
//
//            foreach ($orders as $k1=>$v1){
//                $orders[$k1][$k]['goods_name'] = M('GoodsPackage')->where('gp_id=%d',$v1[$k]['gp_id'])->getField('name');
//                $orders[$k][$k1]['type_name'] = M('GoodsType')->where('type_id=%d',$v1[$k]['type_id'])->getField('name');
//                if(!empty($v1[$k]['spec01_id'])){
//                    $spec = M('GoodsSpec01')->where('id=%d',$v1[$k]['spec01_id'])->find();
//                    $orders[$k][$k1]['spec'] = $spec['type'].' '.$spec['cpu'].'核'.$spec['memory'].'GB'.$spec['broadband'].'M';
//                }elseif(!empty($v1['spec02_id'])){
//                    $orders[$k][$k1]['spec'] = M('GoodsSpec02')->where('id=%d',$v1[$k]['spec02_id'])->getField('version');
//                }
//            }
//        }

//        dump($orders);die;
        $this->assign('page',$page->show('Admin'));
        $this->assign('order',$orderlist);
        $this->display('orders');
    }


    /**
     * 获取详细
     */
    public function getOrderDetail(){
        $id = I('post.id',0,'intval');
        if($id == 0){
            echo json_encode(array('status'=>0,'msg'=>'参数有误'));
            exit();
        }
        $orders = M('OrderGoods')->where('order_id=%d',$id)->select();
        foreach ($orders as $k=>$v){
            $orders[$k]['goods_name'] = M('GoodsPackage')->where('gp_id=%d',$v['gp_id'])->getField('name');
            $orders[$k]['type_name'] = M('GoodsType')->where('type_id=%d',$v['type_id'])->getField('name');
            if(!empty($v['spec01_id'])){
                $spec = M('GoodsSpec01')->where('id=%d',$v['spec01_id'])->find();
                $orders[$k]['spec'] = $spec['type'].' '.$spec['cpu'].'核'.$spec['memory'].'GB'.$spec['broadband'].'M';
            }elseif(!empty($v['spec02_id'])){
                $orders[$k]['spec'] = M('GoodsSpec02')->where('id=%d',$v['spec02_id'])->getField('version');
            }
        }
        echo json_encode(array('status'=>1,'data'=>$orders));
        exit();
    }
    
    /**
     * 我的购物车
     */
    public function cart() {
        $userid = $this->userid;
        $cartlist = M('GoodsCarts')->where('member_id=%d',$userid)->order('create_time desc')->select();
        foreach ($cartlist as $k=>$v){
            $cartlist[$k]['goods_name'] = M('GoodsPackage')->where('gp_id=%d',$v['gp_id'])->getField('name');
            $cartlist[$k]['type_name'] = M('GoodsType')->where('type_id=%d',$v['type_id'])->getField('name');
            if(!empty($v['spec01_id'])){
                $spec = M('GoodsSpec01')->where('id=%d',$v['spec01_id'])->find();
                $cartlist[$k]['spec'] = $spec['type'].' '.$spec['cpu'].'核'.$spec['memory'].'GB'.$spec['broadband'].'M';
            }elseif(!empty($v['spec02_id'])){
                $cartlist[$k]['spec'] = M('GoodsSpec02')->where('id=%d',$v['spec02_id'])->getField('version');
            }
            $cartlist[$k]['total'] = $v['price']*$v['num']*$v['purchase'];
        }
//        dump($cartlist);die;
        $this->assign('cart',$cartlist);
        $this->display('');
    }

    /**
     * 购物车提交
     */
    public function cartSubmit(){
        $userid = $this->userid;
        if(IS_POST){
//            dump(I('post.'));die;
            $cart_id = I('post.cart_id','','');
            $gp_id = I('post.gp_id','','');
            $price = I('post.price','','');
            $num = I('post.num','','');
            $purchase = I('post.purchase','','');
            $type_id = I('post.type_id');

            $spec01_id = I('post.spec01_id','','');
            $spec02_id = I('post.spec02_id','','');
//            dump($cart_arr_data);die;
            $total_fee = 0;
            //获取总价
            foreach ($cart_id as $k=>$v){
                $total_fee += $purchase[$k]*$num[$k]*$price[$k];
            }
//            dump($total_fee);die;
            $order_data = array(
                'orderno' => date('YmdHis').rand(1000,9999),
                'total_fee' => $total_fee,
                'add_time' => time(),
                'status' => 0,
                'member_id' => $userid
            );
            //开启事务
            M()->startTrans();
            $order_id = M('Order')->data($order_data)->add();
            if(empty($order_id)){
                M()->rollback();
                $this->error('订单提交失败');
            }

            foreach ($cart_id as $k=>$v){
                $order_goods_data = array(
                    'order_id' => $order_id,
                    'gp_id' => $gp_id[$k],
                    'purchase' => $purchase[$k],
                    'num' => $num[$k],
                    'price' => $price[$k],
                    'type_id' => $type_id[$k],
                    'spec01_id' => $spec01_id[$k],
                    'spec02_id' => $spec02_id[$k]
                );
                $_res = M('OrderGoods')->data($order_goods_data)->add();
                if(empty($_res)){
                    M()->rollback();
                    echo json_encode(array('status'=>0,'msg'=>'订单结算失败'));
                    exit();
                }else{
//                    M('GoodsCarts')->where('cart_id=%d and member_id=%d',$cart_id,$userid)->delete();
                }
            }

            //事务提交
            if($_res){
                M('GoodsCarts')->where('cart_id=%d',$cart_id)->delete();
                M()->commit();

                header("location:/index.php?g=Yun&m=Mall&a=pay&id=$order_id");
//                $this->redirect(U("Yun/Mall/pay/id/$order_id"));
//                echo json_encode(array('status'=>1,'url'=>U('Yun/Mall/pay',array('id'=>$order_id))));
//                exit();
            }


        }
    }
    
    /**
     * 购物车提交
     */
//    public function cartSubmit(){
//        $userid = $this->userid;
//        if(IS_POST){
////            dump(I('post.'));die;
//            $cart_data = I('post.cart','','');
//            $cart_arr = json_decode($cart_data,true);
//            $cart_arr_data = $cart_arr['cart'];
////            dump($cart_arr_data);die;
//            $total_fee = 0;
//            //获取总价
//            foreach ($cart_arr_data as $k=>$v){
//                $total_fee += $v['purchase']*$v['num']*$v['price'];
//            }
//
//            $order_data = array(
//                'orderno' => date('YmdHis').rand(1000,9999),
//                'total_fee' => $total_fee,
//                'add_time' => time(),
//                'status' => 0,
//                'member_id' => $userid
//            );
//            //开启事务
//            M()->startTrans();
//            $order_id = M('Order')->data($order_data)->add();
//            if(empty($order_id)){
//                M()->rollback();
//                echo json_encode(array('status'=>0,'msg'=>'订单结算失败'));
//                exit();
//            }
//
//            foreach ($cart_arr_data as $k=>$v){
//                $order_goods_data = array(
//                    'order_id' => $order_id,
//                    'gp_id' => $v['gp_id'],
//                    'purchase' => $v['purchase'],
//                    'num' => $v['num'],
//                    'price' => $v['price'],
//                    'type_id' => $v['type_id'],
//                    'spec01_id' => $v['spec01_id'],
//                    'spec02_id' => $v['spec02_id']
//                );
//
//                $_res = M('OrderGoods')->data($order_goods_data)->add();
//                if(empty($_res)){
//                    M()->rollback();
//                    echo json_encode(array('status'=>0,'msg'=>'订单结算失败'));
//                    exit();
//                }
//            }
//
//            //事务提交
//            if($_res){
//                M()->commit();
//                echo json_encode(array('status'=>1,'url'=>U('Yun/Mall/pay',array('id'=>$order_id))));
//                exit();
//            }
//
//
//        }
//    }
    
    /**
     * 购物车删除
     */
    public function cartDel(){
        $userid = $this->userid;
        if(IS_POST){
            $id = I('post.id',0,'intval');
            if($id == 0){
                echo json_encode(array('status'=>0,'msg'=>'参数有误'));
                exit();
            }
            $_res = M('GoodsCarts')->where('cart_id=%d and member_id=%d',$id,$userid)->delete();
            if($_res !== false){
                echo json_encode(array('status'=>1));
                exit();
            }else{
                echo json_encode(array('status'=>0,'msg'=>'删除失败'));
                exit();
            }
        }
    }
    
    /**
     * 头像上传
     */
    public function avatarUpload() {
        include_once PROJECT_PATH.'Libs/Util/Upload.php';
        $upload = new \Upload();
        $upload->maxSize = 1 * 1024 * 1024 * 2; // 设置附件上传大小
        $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');
        $upload->saveRule = 'uniqid';
        $upload->savePath = SITE_PATH.'/d/avatar/';
        
        $res = $upload->upload();
        if($res){
            $info = $upload->getUploadFileInfo();
            $filePath = '/d/avatar/' . $info[0]['savename'];
            $_res = M('Member')->where('userid=%d',$this->userid)->save(array('userpic'=>$filePath));
            if($_res !== false){
                echo json_encode(array('status'=>true, 'path'=>$filePath));
                exit();
            }
           
        }else{
            echo json_encode(array('status'=>false, 'msg'=>$upload->getErrorMsg()));
            exit();
        }
    }
    
    /**
     * 获取状态
     * @param unknown $status
     * @param $order_id
     * @return string
     */
    private function _orderstatus($status,$order_id){
        $str = '';
        $url = U('Yun/Mall/pay',array('id'=>$order_id));
        switch ($status){
            case 0:
                $str = '<span style="color:red">未支付</span> | <a href="'.$url.'">去支付</a>';break;
            case 1:
                $str = '<span style="color:green">已支付</span>';break;
            case -1:
                $str = '已取消';break;
                
        }
        
        return $str;
    }

}
