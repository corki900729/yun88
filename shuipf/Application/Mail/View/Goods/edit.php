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
  <form class="J_ajaxForm" name="myform" id="myform" action="{:U("Goods/edit")}" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">修改商品</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
          	 <tr>
              <th width="100">商品类别：</th>
              <td>
              	<select name="info[type]">
                    <option value="1" <eq name="info.type" value="1">selected</eq> >公有云</option>
                    <option value="2" <eq name="info.type" value="2">selected</eq> >云应用</option>
                </select>
              </td>
            </tr>
            <tr id="normal_add">
              <th width="100">商品名称：</th>
              <td><input type="text" name="info[name]"  class="input" value="{$info.name}"></td>
            </tr>
            <tr>
              <th>产品logo：</th>
              <td><Form function="images" parameter="info[img_logo],image,$info['img_logo'],content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>
            <tr>
              <th>列表页logo：</th>
              <td><Form function="images" parameter="info[index_logo],index,$info['index_logo'],content"/><span class="gray"> 双击可以查看图片！</span></td>
            </tr>            
            <!-- <tr>
              <th>安装指南：</th>
              <td><Form function="upfiles" parameter="info[install],zip,$info['install'],content"/><span class="gray">点击更换资源</span></td>
            </tr>
            </tr>
              <th>使用手册：</th>
              <td><Form function="uploadsmanu" parameter="info[func],txt,$info['func'],content"/><span class="gray" > 点击更换资源</span></td>
            </tr> 
            </tr>
              <th>演示视频：</th>
              <td><Form function="uploadvideo" parameter="info[use],video,$info['use'],content"/><span class="gray" > 点击更换资源</span></td>
            </tr>                             -->           
            <tr id="normal_add">
              <th width="100">商品价格：</th>
              <td><input type="text" name="info[price]" class="input" value="{$info.price}"><span>元/月</span></td>
            </tr>
            <tr>
              <th>商品简介：</th>
              <td><script type="text/plain" id="instro" name="info[instro]">{$info.instro|htmlspecialchars_decode}</script><?php echo Form::editor('instro', 'basic'); ?></td>
            </tr>
            <tr>
              <th>是否销售：</th>
              <td><input type="radio" name="info[is_sale]" <eq name="info.is_sale" value="1">checked</eq> value="1">是<label>  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" <eq name="info.is_sale" value="0">checked</eq> name="info[is_sale]" value="0">否</label></td>
            </tr>
            <tr>
              <th>是否推荐：</th>
              <td><input type="radio" name="info[is_new]" <eq name="info.is_new" value="1">checked</eq> value="1">是<label>  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" <eq name="info.is_new" value="0">checked</eq> name="info[is_new]" value="0">否</label></td>
            </tr>
            <tr>
              <th>是否热销：</th>
              <td><input type="radio" name="info[is_hot]" <eq name="info.is_hot" value="1">checked</eq> value="1">是<label>  &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" <eq name="info.is_hot" value="0">checked</eq> name="info[is_hot]" value="0">否</label></td>
            </tr>
            <tr>
            <tr>
              <th>商品详情：</th>
              <td><script type="text/plain" id="intru" name="intro[intru]">{$intro.intru|htmlspecialchars_decode}</script><?php echo Form::editor('intru', 'basic'); ?></td>
            </tr>
            <tr>
              <th>商品功能：</th>
              <td><script type="text/plain" id="func" name="intro[func]">{$intro.func|htmlspecialchars_decode}</script><?php echo Form::editor('func', 'basic'); ?></td>
            </tr>
            <tr>
              <th>使用方法：</th>
              <td><script type="text/plain" id="use" name="intro[use]">{$intro.use|htmlspecialchars_decode}</script><?php echo Form::editor('use', 'basic'); ?></td>
            </tr>  

                                  
          </table>
        </div>
      </div>
</div>
    <div class="btn_wrap">
      <div class="btn_wrap_pd">
      	<input name="id" type="hidden" value="{$info.gp_id}">
        <button class="btn btn_submit mr10 J_ajax_submit_btn " type="submit">提交</button>
      </div>
    </div>
  </form>
</div>
<script type="text/javascript" src="{$config_siteurl}statics/js/common.js?v"></script>
<script type="text/javascript" src="{$config_siteurl}statics/js/content_addtop.js"></script>
</body>
</html>