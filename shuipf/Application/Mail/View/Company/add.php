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
  <form class="J_ajaxForm" name="myform" id="myform" action="{:U("Company/add")}" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">添加企业</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
  		   <tr>
              <th width="100">请选择云类型：</th>
              <td><select name="info[type]" >
                  <option value='1'>公有云</option>
                  <option value='2'>云应用</option>
                </select>
              </td>
            </tr>
            <tr id="normal_add">
              <th width="100">企业名称：</th>
              <td><input type="text" name="info[name]" id="name" class="input" value=""></td>
            </tr>
            <tr>
              <th>企业logo：</th>
              <td><Form function="images" parameter="info[img_logo],image,'',content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>
            <tr>
              <th>首页企业logo：</th>
              <td><Form function="images" parameter="info[index_logo],image2,'',content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>              
             <tr id="normal_add">
              <th width="100">关联购买商品：</th>
              <td>
              	<select name="info[gp_id]" >
              	  <option>请选择</option>
              	  <foreach name="goodslist" item="vo">
              	  	<option value='{$vo.gp_id}'>{$vo.name}</option>
              	  </foreach>
               </select>
              </td>
            </tr>
            <tr>
              <th>公司文字简介：</th>
              <td><textarea name="info[txt_intro]" maxlength="255" style="width:500px;height:150px;"></textarea></td>
            </tr>
            <tr>
              <th>公司图文简介：</th>
              <td><textarea name="info[introduce]" style="width:100%;height:150px;"></textarea></td>
              <!--<td><script type="text/plain" id="introduce" name="info[introduce]"></script><?php echo Form::editor('introduce', 'basic'); ?></td>-->
            </tr>
             <tr>
              <th>热销产品：</th>
              <<td><textarea name="info[hot_product1]" style="width:100%;height:150px;"></textarea></td>
              <!--<td><script type="text/plain" id="hot_product" name="info[hot_product]"></script><?php echo Form::editor('hot_product', 'basic'); ?></td>-->
            </tr>
            <tr>
              <th>产品优势：</th>
              <td><textarea name="info[adv_product]" style="width:100%;height:150px;"></textarea></td>
              <!--<td><script type="text/plain" id="adv_product" name="info[adv_product]"></script><?php echo Form::editor('adv_product', 'basic'); ?></td>-->
            </tr>
            <tr>
              <th>版本定价：</th>
               <td><textarea name="info[version1]" style="width:100%;height:150px;"></textarea></td>
              <!--<td><script type="text/plain" id="version" name="info[version]"></script><?php echo Form::editor('version', 'basic'); ?></td>-->
            </tr>
            <tr>
              <th>是否显示：</th>
              <td><input type="radio" name="info[is_show]" checked  value="1">是<label>  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="info[is_show]" value="0">否</label></td>
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