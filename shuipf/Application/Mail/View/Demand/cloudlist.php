<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
  <!--<div class="h_a">搜索</div>
  <form name="searchform" action="" method="get" >
    <input type="hidden" value="Mail" name="g">
    <input type="hidden" value="Demand" name="m">
    <input type="hidden" value="cloudlist" name="a">
    <input type="hidden" value="1" name="search">
    <div class="search_type cc mb10">
      <div class="mb10"> 
      	<span class="mr20"> 
        <input name="keyword" type="text" value="{$Think.get.keyword}" class="input" />
        <button class="btn">搜索</button>
        </span> 
      </div>
    </div>
  </form>-->
    <div class="table_list">
      <table width="100%" cellspacing="0">
        <thead>
          <tr>
            <td align="left">公有云名称</td>
            <td align="left">区域</td>
            <td align="left">cpu核心数</td>
            <td align="left">内存容量</td>
            <td align="left">宽带值</td>
            <td align="left">购买时长</td>
            <td align="left">购买数量</td>
            <td align="left">会员名</td>
            <td align="left">提交时间</td>
            <td align="left">操作</td>
          </tr>
        </thead>
        <tbody>
          <volist name="data" id="vo">
            <tr>
              <td align="left">{$vo.name}</td>
              <td align="left">{$vo.area}</td>
              <td align="left">{$vo.cpu}个</td>
              <td align="left">{$vo.memory}GB</td>
              <td align="left">{$vo.broadband}M</td>
              <td align="left">{$vo.purchase_times}月</td>
              <td align="left">{$vo.num}台</td>
              <td align="left">{$vo.member_name}</td>
              <td align="left">{$vo.create_time|date='Y-m-d H:i:s',###}</td>
              <td align="left"><a href="{:U('Cooperation/delete',array('id'=>$vo['id']))}" class="J_ajax_del">删除</a></a></td>
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
</body>
</html>