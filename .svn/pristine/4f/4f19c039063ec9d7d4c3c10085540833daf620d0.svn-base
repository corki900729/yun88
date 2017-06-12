<?php
/**
* 前台发票管理
* @date: 2016年7月15日
* @author: hupeng
*/
namespace Member\Controller;

class OrderController extends MemberbaseController  {
    /**
     * 订单列表
     */
    public function index() {
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map = "(o.orderno like '%{$keyword}%' or m.username like '%{$keyword}%' or m.mobile like '%{$keyword}%')";
            }
        }
        $_map['o.member_id'] = array('EQ',$this->userid);
        $count = M()
            ->table('__INVOICE__ as i')
            ->join('LEFT JOIN __ORDER__ AS o on i.orderid=o.order_id left join __MEMBER__ as m on o.member_id=m.userid')
            ->where($_map)
            ->count();
        $page = $this->page($count,20);
        $list = M()
            ->table('__INVOICE__ as i')
            ->join('LEFT JOIN __ORDER__ AS o on i.orderid=o.order_id left join __MEMBER__ as m on o.member_id=m.userid')
            ->field('i.*,o.*,m.username,m.mobile')
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('o.add_time desc')
            ->select();
        foreach ($list as $k=>$v){
            $list[$k]['orderstatus'] = $this->order_status($v['status']);
        }
        dump($list);
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }
    /*
     * 添加发票
     * ********/
    public function add(){
        $order_id = I('GET.order_id.',0,'intval');
        if($order_id){
            $this->error('参数有误');
        }
        if(IS_POST){
            $_post['address'] = I('post.addr','');
            $_rules = array(
                array('name','require','商品名称必填',1,'regex',1),
                array('img_logo','require','商品logo必须长传',1,'regex',1),
            );
            $_post = I('post.invol','');
            $_post['create_time'] = time();
            $validate_res = M('Order')->validate($_rules)->create($_post,1);
            if($validate_res){
                $_res = M('Order')->add();
                if($_res){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('操作失败');
                }
            }
        }
        $this->display();
    }
    /*
     * 地址管理
     * ********/
    public function addr_list(){
        $uuserid = $this->userid;
        $invoice = M('Address')->where(array('mem_id'=>array('EQ',$uuserid)))->select();
        return $this->ajaxReturn($invoice);
    }
    /*
     *添加地址
     *
     */
    public function add_addr(){
        $uuserid = $this->userid;
        if(IS_POST){
            $_post=I('post.','');
            $_rules = array(
                array('name','require','商品名称必填',1,'regex',1),
                array('img_logo','require','商品logo必须长传',1,'regex',1),
            );
            $validate_res=M('Address')->validate($_rules)->create($_post,1);
            if($validate_res){
                $_res = M('Address')->add();
                if($_res){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('添加失败');
                }
            }else{
                $this->error(M('Address')->getError());
            }
        }
        $this->display();
    }
    /**
     * 订单明细
     */
    public function orderDetail(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数有误');
        }
        $orders = M('OrderGoods')->where('order_id=%d',$id)->select();
        foreach ($orders as $k=>$v){
            $orders[$k]['goods_name'] = M('GoodsPackage')->where('gp_id=%d',$v['gp_id'])->getField('name');
            if(!empty($v['spec01_id'])){
                $spec = M('GoodsSpec01')->where('id=%d',$v['spec01_id'])->find();
                $orders[$k]['spec'] = $spec['type'].' '.$spec['cpu'].'核'.$spec['memory'].'GB'.$spec['broadband'].'M';
            }elseif(!empty($v['spec02_id'])){
                $orders[$k]['spec'] = M('GoodsSpec02')->where('id=%d',$v['spec02_id'])->getField('version');
            }
        }

        $this->assign('data',$orders);
        $this->display('detail');
    }
    
    /**
     * 订单取消
     */
    public function cancel(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $_res = M('Order')->where('order_id=%d',$id)->setField('status',-1);
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
    /*
     *
     */

    /**
     * 订单删除
     */
    public function del(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('Order');
        $_res = $model->where('order_id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
    
    /**
     * 订单状态
     * @param unknown $status
     */
    private function order_status($status){
        $str = '';
        switch ($status){
            case 0:
                $str = '<span style="color:red">未支付</span>';break;
            case 1:
                $str = '<span style="color:green">已支付</span>';break;
            case -1:
                $str = '已取消';break;
        
        }
        
        return $str;
    }

}
