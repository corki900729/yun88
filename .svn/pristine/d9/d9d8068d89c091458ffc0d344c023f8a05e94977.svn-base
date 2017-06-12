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
  <form class="J_ajaxForm" name="myform" id="myform" action="{:U("Goods/add")}" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">添加商品</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
          	 <tr>
              <th width="100">商品类别：</th>
              <td>
              	<select name="info[type]">
                    <option value="1">公有云</option>
                    <option value="2">云应用</option>
                </select>
              </td>
            </tr>
            <tr id="normal_add">
              <th width="100">商品名称：</th>
              <td><input type="text" name="info[name]"  class="input" value=""></td>
            </tr>
            <tr>
              <th>产品logo：</th>
              <td><Form function="images" parameter="info[img_logo],image,'',content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>
            <tr>
              <th>列表页logo：</th>
              <td><Form function="images" parameter="info[index_logo],index,'',content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>              
           <!--  <tr>
              <th>安装指南：</th>
              <td><Form function="upfiles" parameter="info[install],zip,'',content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>
            </tr>
              <th>使用手册：</th>
              <td><Form function="uploadsmanu" parameter="info[func],txt,'',content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr> 
            </tr>
              <th>演示视频：</th>
              <td><Form function="uploadvideo" parameter="info[use],video,'',content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>                    -->                  
            <tr id="normal_add">
              <th width="100">商品价格：</th>
              <td><input type="text" name="info[price]" class="input" value=""><span>元/月</span></td>
            </tr>
            <tr>
              <th>商品简介：</th>
              <td><script type="text/plain" id="instro" name="info[instro]"></script><?php echo Form::editor('instro', 'basic'); ?></td>
            </tr>
            <tr>
              <th>是否销售：</th>
              <td><input type="radio" name="info[is_sale]" checked  value="1">是<label>  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="info[is_sale]" value="0">否</label></td>
            </tr>
                        <tr>
              <th>是否推荐：</th>
              <td><input type="radio" name="info[is_new]" checked value="1">是<label>  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  name="info[is_new]" value="0">否</label></td>
            </tr>
            <tr>
              <th>是否热销：</th>
              <td><input type="radio" name="info[is_hot]" checked value="1">是<label>  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  name="info[is_hot]" value="0">否</label></td>
            </tr>
            <tr>
            <tr>
              <th>商品详情：</th>
              <td><script type="text/plain" id="intru" name="intro[intru]"></script><?php echo Form::editor('intru', 'basic'); ?></td>
            </tr>
            <tr>
              <th>商品功能：</th>
              <td><script type="text/plain" id="func" name="intro[func]"></script><?php echo Form::editor('func', 'basic'); ?></td>
            </tr>
            <tr>
              <th>商品功能：</th>
              <td><script type="text/plain" id="use" name="intro[use]"></script><?php echo Form::editor('use', 'basic'); ?></td>
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