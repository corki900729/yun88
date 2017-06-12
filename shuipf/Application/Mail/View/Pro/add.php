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
  <form class="J_ajaxForm" name="myform" id="myform" action="{:U("Pro/add")}" method="post">
    <div class="J_tabs_contents">
      <div>
        <div class="h_a">商品问题</div>
        <div class="table_full">
          <table width="100%" class="table_form ">
            <tr id="normal_add">
              <th width="100">商品名称：</th>
                 <td>
                    <select name="cate_id" id="cate_id">
                        <option value="">请选择分类</option>
                      <volist name="cate_info" id="vo">
                          <option  value="{$vo.cate_id}">{$vo.delimiter}{$vo.name}</option>
                      </volist>
                      </select>
                    <select name="goods_id" id="goods_id">
                    </select>
              </td>
            </tr>
            <tr>
              <th>常见问题:</th>
              <td> <input name="pro" type="text"  class="input" size="100" /></td>
            </tr>
            <tr>
              <td colspan="2"><script type="text/plain" id="use" name="intru"></script><?php echo Form::editor('use', 'basic'); ?></td>
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
<script type="text/javascript">
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
</html>