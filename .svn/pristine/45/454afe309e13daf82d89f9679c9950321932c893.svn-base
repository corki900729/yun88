<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
 <div class="h_a">搜索</div>
  <form name="searchform" action="" method="get" >
    <input type="hidden" value="Mail" name="g">
    <input type="hidden" value="Order" name="m">
    <input type="hidden" value="index" name="a">
    <input type="hidden" value="1" name="search">
    <div class="search_type cc mb10">
      <div class="mb10"> 
      	<span class="mr20"> 
        <input name="keyword" type="text" value="{$Think.get.keyword}" placeholder="单号/用户名/手机号" class="input" />
        <button class="btn">搜索</button>
        </span> 
      </div>
    </div>
  </form>    <div class="table_list">
      <table width="100%" cellspacing="0">
        <thead>
          <tr>
            <td align="left">单号</td>
            <td align="left">商品信息</td>
            <td align="left">总价</td>
            <td align="left">下单时间</td>
            <td align="left">支付时间</td>
            <td align="left">支付方式</td>
            <td align="left">会员名</td>
            <td align="left">会员手机号</td>
            <td align="left">支付宝交易号</td>
            <td align="left">买家支付宝账号</td>
            <td align="left">支付宝返回金额</td>
            <td align="left">支付状态</td>
            <td align="left">操作</td>
          </tr>
        </thead>
        <tbody>
          <volist name="data" id="vo">
            <tr>
              <td align="left">{$vo.orderno}</td>
              <td align="left"><a href="javascript:order_infomation({$vo.order_id})">查看详情</a></td>
              <td align="left">{$vo.total_fee}</td>
              <td align="left">{$vo.add_time|date='Y-m-d H:i:s',###}</td>
              <td align="left"><empty name="vo.pay_time">无<else />{$vo.pay_time|date='Y-m-d H:i:s',###}</empty></td>
              <td align="left">支付宝支付</td>
              <td align="left">{$vo.username}</td>
              <td align="left">{$vo.mobile}</td>
              <td align="left"><empty name="vo.trade_no">无<else />{$vo.trade_no}</empty></td>
              <td align="left"><empty name="vo.buyer_email">无<else />{$vo.buyer_email}</empty></td>
              <td align="left">{$vo.return_total_fee}</td>
              <td align="left">{$vo.orderstatus}</td>
              <td align="left">
              	<a  href="{:U('Order/cancel', array('id'=>$vo['order_id']) )}" class="J_ajax_do">取消</a> | 
              	<a href="{:U('Order/del', array('id'=>$vo['order_id']) )}" class="J_ajax_del">删除</a>
          	 </td>
            </tr>
          </volist>
        </tbody>
      </table>
      <div class="p10">
        <div class="pages"> {$page} </div>
      </div>
    </div>
</div>
<script src="{$config_siteurl}statics/js/common.js?v"></script>
<script src="{$config_siteurl}statics/js/content_addtop.js"></script>
<script>
//会员信息查看
function order_infomation(orderid) {
	omnipotent("order_infomation", GV.DIMAUB+'index.php?g=Mail&m=Order&a=orderDetail&id='+orderid+'', "订单详情信息",1)
}
</script>
</body>
</html>