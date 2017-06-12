<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
  <div class="h_a">搜索</div>
  <form name="searchform" action="" method="get" >
    <input type="hidden" value="Mail" name="g">
    <input type="hidden" value="GoodsCate" name="m">
    <input type="hidden" value="index" name="a">
    <input type="hidden" value="1" name="search">
    <div class="search_type cc mb10">
      <div class="mb10"> 
      	<span class="mr20"> 
        <input name="keyword" type="text" value="{$Think.get.keyword}" class="input" />
        <button class="btn">搜索</button>
        </span> 
      </div>
    </div>
  </form>
  <form name="myform" action="{:U('Member/delete')}" method="post" class="J_ajaxForm">
    <div class="table_list">
      <table width="100%" cellspacing="0">
        <thead>
          <tr>
            <td align="left">商品名称</td>
            <td align="left">商品logo</td>
            <td align="left">banner</td>
            <td align="left">示例图片</td>
            <td align="left">是否销售</td>
            <td align="left">创建时间</td>
            <td align="left">操作</td>
          </tr>
        </thead>
        <tbody>
          <volist name="data" id="vo">
            <tr>
              <td align="left"><a href="{:U('GoodsCate/problem', array('id'=>$vo['gp_id']))}">{$vo.name}</a></td>
              <td align="left"><a href="{:U('GoodsCate/problem', array('id'=>$vo['gp_id']))}"><img src="{$vo.img_logo}" height=50 width=50></a></td>
              <td align="left" height=50 width=50 ><img src="{$vo.use}" height=50 width=50></td>
              <td align="left" height=50 width=50 ><img src="{$vo.is_hot}" height=50 width=50></td>
              <td align="left"><eq name="vo.is_sale" value="1">是<else />否</eq></td>
              <td align="left">{$vo.create_time|date='Y-m-d H:i:s',###}</td>
              <td align="left"><a href="{:U('GoodsCate/edit', array('id'=>$vo['gp_id']) )}">修改 | <a href="{:U('GoodsCate/delete',array('id'=>$vo['gp_id']))}" class="J_ajax_del">删除</a></a></td>
            </tr>
          </volist>
        </tbody>
      </table>
      <div class="p10">
        <div class="pages"> {$page} </div>
      </div>
    </div>
  </form>
</div>
<script src="{$config_siteurl}statics/js/common.js?v"></script>
<script src="{$config_siteurl}statics/js/content_addtop.js"></script>
</body>
</html>