<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
 <div class="h_a">搜索</div>
  <form name="searchform" action="" method="get" >
    <input type="hidden" value="Mail" name="g">
    <input type="hidden" value="Invoice" name="m">
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
            <td align="left">订单单号</td>
            <td align="left">发票姓名</td>
            <td align="left">会员姓名</td>
            <td align="left">邮寄地址</td>
            <td align="left">联系电话</td>
            <td align="left">是否开具</td>
            <td align="left">操作</td>
          </tr>
        </thead>
        <tbody>
          <volist name="data" id="vo">
            <tr>
              <td align="left">{$vo.orderno}</td>
              <td align="left">{$vo.name}</td>
              <td align="left">{$vo.username}</td>
              <td align="left">{$vo.province}</td>
              <td align="left">{$vo.mobile}</td>
              <td align="left">{$vo.orderstatus}</td>
              <td align="left">
<a href="javascript:order_infomation({$vo.order_id})">查看详情</a>
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
function order_infomation(orderno) {
	omnipotent("order_infomation", GV.DIMAUB+'index.php?g=Mail&m=Invoice&a=addrDetail&id='+orderno+'', "发票详情信息",1)
}
</script>
</body>
</html>