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
  <form class="J_ajaxForm" name="myform" id="myform" action="{:U("Source/edit")}" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">商品资源</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
<input type="hidden" name="id" value="{$vo.id}">
<input type="hidden" name="goods_id" value="{$vo.goods_id}">
           <tr>
              <th align="left">资源名称:</th>
              <td align="left" width="70%"> <input name="source_name" size="100" type="text"  class="input"  value="{$vo.source_name}" /></td>
            </tr>
            <tr>
              <td colspan="2"><Form function="uploadvideo" parameter="source,video,$vo['source'],content"/><span class="gray"> 只支持以下格式(zip,rar,mp4,doc)</span></td>
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
<script>
    function getgoods(){
    $.getJSON("{:U('Pro/ajaxgoods')}",{type:$("#cate_id").val()},function(data){ 
        $("#goods_id").empty(); //清空原有的选项 
        var options = '';
        $.each(data,function(){ 
           options += "<option value='"+this.gp_id+"'>"+this.name+"</option>"; 

        }); 
        $("#goods_id").append(options); 
    }); 
} 
$(function(){ 
    //getSelectVal()
    getgoods()
     $("#cate_id").change(function(){ 
        getgoods(); 
    });
});
</script>
</body>
</html>