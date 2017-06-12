<?php
/**
* 订单管理
* @date: 2017/4/14
* @author: corki
*/
namespace Mail\Controller;
use Common\Controller\AdminBase;
class InvoiceController extends AdminBase {
    /**
     * 发票列表
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
        $_map['status'] = array('eq',1);
        $count = M()
            ->table('__INVOICE__ as i')
            ->join('left join __ORDER__ o on o.orderno=i.orderno left join __MEMBER__ as m on o.member_id=m.userid')
            ->where($_map)
            ->count();
        $page = $this->page($count,20);
        $list = M()
            ->table('__INVOICE__ as i')
            ->join('left join __ORDER__ o on o.orderno=i.orderno left join __MEMBER__ as m on o.member_id=m.userid left join __ADDRESS__ a on i.address=a.id')
            ->field('o.*,m.username,m.mobile,i.*,a.*')
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('o.add_time desc')
            ->select();
//        echo M()->getLastSql();
//        dump($list);die;
        foreach ($list as $k=>$v){
            $list[$k]['orderstatus'] = $this->order_status($v['is_show']);
        }
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);

        $this->display();
    }
    
    /**
     * 订单明细
     */
    public function addrDetail(){
        $id = I('get.id');
        if($id == 0){
            $this->error('参数有误');
        }
        $orders = M('Order')->where("order_id='$id'")->find();
//dump($id);exit;
        $this->assign('data',$orders);
        $this->display('detail');
    }
    


    /**
     * 订单状态
     * @param unknown $status
     */
    private function order_status($status){
        $str = '';
        switch ($status){
            case 0:
                $str = '<span style="color:red">未订发票</span>';break;
            case 1:
                $str = '<span style="color:green">已开发票</span>';break;
            case -1:
                $str = '已取消';break;
        
        }
        
        return $str;
    }

}