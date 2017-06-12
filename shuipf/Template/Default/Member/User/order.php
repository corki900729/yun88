<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>云巴巴-个人中心-订单管理</title>
	<link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/usercenter.css">
    <!-- <link rel="stylesheet/less" href="css/general.less"> -->
    <!-- <script src="js/less.min.js"></script> -->
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
</head>
<body>
	<template file="Member/Public/homeHeader.php"/>
	<div class="main">
		<div class="container p-r">
			<table width="100%" cellspacing="0" cellpadding="0" class="table-content">
				<tr>
				<template file="Member/Public/homeUserMenu.php"/>
					<td valign="top">
						<div class="contentbox order">
							<div class="title">订单管理</div>
							<div class="sub-tit">订单管理</div>
							<div class="content">
								<table width="100%" cellpadding="0" cellspacing="0" class="table">
									<thead>
										<tr>
											<th>订单编号</th>
											<th>日期</th>
											<th>商品名称</th>
											<th>金额（￥）</th>
											<th>状态</th>
										</tr>
									</thead>
									<tbody>
										<volist name="order" id="vo">
										<tr>
											<td>{$vo.orderno}</td>
											<td>2016-07-11 15:30:35{$vo.add_time|date='Y-m-d H:i:s',###}</td>
											<td><a href="javascript:void(0)" class="orderdetail" orderid="{$vo.order_id}">查看详情</a></td>
											<td>{$vo.total_fee}</td>
											<td>{$vo.order_status}</td>
										</tr>
										</volist>
							
									</tbody>
								</table>
								
							</div>
							<div class="server-pagination">
								<div class="pages"> {$page} </div>
							</div>
							
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<template file="Member/Public/homeFooter.php"/>
	<script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/layer/layer.js"></script>
	<script>
	  $(function(){
	  	$('.orderdetail').click(function(){
	  		var url = "{:U('User/getOrderDetail')}";
			var orderid = $(this).attr('orderid');
		//	layer.alert(orderid, {icon: 6});
  			$.post(url,{id:orderid},function(data){
				 if(data.status){
				 	var table = form_table(data.data);
					layer.open({
					  type: 1,
					  title: '商品明细',
					  skin: 'layui-layer-rim', //加上边框
					  area: ['560px', '360px'], //宽高
					  content: table
					});

				 }else{
				 	layer.alert(data.msg, {icon: 6});
				 }
			},'json');
	  	})
	  	 
	  })
	
	function form_table(form_data){
		//console.log(form_data);
			 var html = '<table width="100%" cellpadding="0" cellspacing="0" class="table">';
			 html += '<thead><tr><th>商品名称</th><th>购买时长(月)</th><th>数量</th><th>单价(元)</th><th>类型</th><th>规格</th></tr></thead><tbody>';
			 for(var i=0;i<form_data.length;i++){
				 var str ='<tr>';
				 	 str+='<td align="left">'+form_data[i].goods_name+'</td>';
				 	 str+='<td align="left">'+form_data[i].purchase+'</td>';
					 str+='<td align="left">'+form_data[i].num+'</td>';
					 str+='<td align="left">'+form_data[i].price+'</td>';
					 str+='<td align="left">'+form_data[i].type_name+'</td>';
					 str+='<td align="left">'+form_data[i].spec+'</td>';
					 str += '</tr>';
				    html += str;
			 }
			 html += '</tbody></table>';
			 
			 return html;

		}
	</script>
</body>
</html>