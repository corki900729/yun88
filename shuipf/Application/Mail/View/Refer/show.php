<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
  <div class="h_a">搜索</div>
  <form name="searchform" action="" method="get" >
    <input type="hidden" value="Mail" name="g">
    <input type="hidden" value="Spec" name="m">
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
  </form>
  <form name="myform" action="{:U('Member/delete')}" method="post" class="J_ajaxForm">
    <div class="table_list">
      <table width="100%" cellspacing="0">
        <thead>
          <tr>
            <td align="left">需求类别 : {$vo.cate}</td>
          </tr>
        </thead>
        <tbody>
            <tr>
              <td align="left">{$data.require_intro}</td>
            </tr>
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