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
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">商品问题</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
            <tr id="normal_add">
              <th width="100">商品名称：</th>
              <td><?php echo $vo[1]['name'] ?></td>
            </tr>
<foreach name='vo' item='info' key='k'>              
            <tr>
              <td>问题 <?php echo $k+1 ?> : </td>
              <td>{$info.pro}</td>
            </tr>
            <tr>
              <td colspan="2">{$info.intru||htmlspecialchars_decode}</td>
            </tr>  
</foreach>
                                  
          </table>
        </div>
      </div>
</div>
</div>
<script type="text/javascript" src="{$config_siteurl}statics/js/common.js?v"></script>
<script type="text/javascript" src="{$config_siteurl}statics/js/content_addtop.js"></script>
</body>
</html>