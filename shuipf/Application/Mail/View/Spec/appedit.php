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
  <form class="J_ajaxForm" name="myform" id="myform" action="{:U("Spec/appedit")}" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">修改规格</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
      		 <tr>
              <th width="100">选择商品类型：</th>
              <td>
              	<select name="info[type_id]">
              		<volist name="types" id="vo">
                    <option value="{$vo.type_id}" <eq name="vo.type_id" value="$info.type_id">selected</eq> >{$vo.name}</option>
                   </volist>
                </select>
              </td>
            </tr>
             <tr >
              <th width="100">版本名称：</th>
              <td><input type="text" name="info[version]"  class="input" value="{$info.version}"></td>
            </tr>
            <tr id="normal_add">
              <th width="100">套餐价格：</th>
              <td><input type="text" name="info[price]" class="input" value="{$info.price}"><span>元/月</span></td>
            </tr>
          </table>
        </div>
      </div>
</div>
    <div class="btn_wrap">
      <div class="btn_wrap_pd">
      	<input name="id" type="hidden" value="{$info.id}">
        <button class="btn btn_submit mr10 J_ajax_submit_btn " type="submit">提交</button>
      </div>
    </div>
  </form>
</div>
<script type="text/javascript" src="{$config_siteurl}statics/js/common.js?v"></script>
<script type="text/javascript" src="{$config_siteurl}statics/js/content_addtop.js"></script>
</body>
</html>