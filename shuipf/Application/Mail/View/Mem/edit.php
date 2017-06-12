<?php if (!defined('SHUIPF_VERSION')) exit(); ?>
<Admintemplate file="Common/Head"/>
<body class="J_scroll_fixed">
<style>
.pop_nav{
	padding: 0px;
}
.pop_nav ul{
	border-bottom:1px solid #266AAE;
	padding:0 5px;
	height:25px;
	clear:both;
}
.pop_nav ul li.current a{
	border:1px solid #266AAE;
	border-bottom:0 none;
	color:#333;
	font-weight:700;
	background:#F3F3F3;
	position:relative;
	border-radius:2px;
	margin-bottom:-1px;
}

</style>
<div class="wrap J_check_wrap">
  <Admintemplate file="Common/Nav"/>
  <form class="J_ajaxForm" name="myform" id="myform" action="{:U("Mem/edit")}" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">用户案例</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
            <tr id="normal_add">
              <th width="100">商品名称：</th>
              <td> 
              <input type="hidden" name="id" value="{$vo.id}">
                        {$vo.name}
              </td>
            </tr>
            <tr>
              <th>用户图片：</th>
              <td><Form function="images" parameter="img_logo,image,$vo['img_logo'],content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>            
            <tr>
              <th>案例说明 : </th>
              <td><script type="text/plain" id="use" name="instro">{$vo.instro|htmlspecialchars_decode}</script><?php echo Form::editor('use', 'full'); ?></td>
            </tr>                             
          </table>
        </div>
      </div>
</div>
    <div class="btn_wrap">
      <div class="btn_wrap_pd">
        <button class="btn btn_submit mr10 J_ajax_submit_btn " type="submit">提交</button>
      </div>
    </div>
  </form>
</div>
<script type="text/javascript" src="{$config_siteurl}statics/js/common.js?v"></script>
<script type="text/javascript" src="{$config_siteurl}statics/js/content_addtop.js"></script>
</body>
</html>