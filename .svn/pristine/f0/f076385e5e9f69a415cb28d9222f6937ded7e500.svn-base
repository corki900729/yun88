<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
 <!--<div class="h_a">搜索</div>
  <form name="searchform" action="" method="get" >
    <input type="hidden" value="Mail" name="g">
    <input type="hidden" value="Demand" name="m">
    <input type="hidden" value="applist" name="a">
    <input type="hidden" value="1" name="search">
    <div class="search_type cc mb10">
      <div class="mb10"> 
      	<span class="mr20"> 
        <input name="keyword" type="text" value="{$Think.get.keyword}" class="input" />
        <button class="btn">搜索</button>
        </span> 
      </div>
    </div>
  </form>   -->
   <div class="table_list">
      <table width="100%" cellspacing="0">
        <thead>
          <tr>
            <td align="center">订单号</td>
            <td align="center">{$data.orderno}</td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td align="center">订单总额</td>
            <td align="center">{$data.total_fee}</td>
          </tr>
          <tr>
            <td align="center">支付时间</td>
            <td align="center">{$data.pay_time|date='Y-m-d H:i:s',###}</td>
          </tr>
          <tr>
            <td align="center">支付宝交易号</td>
            <td align="center">{$data.trade_no}</td>
          </tr>    
         <tr>
          <td align="center">支付方式</td>
          <td align="center">{$data.pay_name}</td>
        </tr>
         <tr>
          <td align="center">下单时间</td>
          <td align="center">{$data.add_time|date='Y-m-d H:i:s',###}</td>
        </tr>                                                       
        </tbody>
      </table>
      <div class="p10">
        <div class="pages"> {$page} </div>
      </div>
    </div>
</div>
<script src="{$config_siteurl}statics/js/common.js?v"></script>
<script src="{$config_siteurl}statics/js/content_addtop.js"></script>
</body>
</html>