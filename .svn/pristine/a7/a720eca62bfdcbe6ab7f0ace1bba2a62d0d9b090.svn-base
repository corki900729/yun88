<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>云巴巴-个人中心-我的购物车</title>
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
						<div class="contentbox shopping-cart">
							<div class="title">我的购物车</div>
							<div class="sub-tit">商品信息</div>
							<div class="content">
								<table width="100%" cellpadding="0" cellspacing="0" class="table">
									<thead>
										<tr>
											<th width="30"><input type="checkbox" id="checkAll"></th>
											<th>商品名称</th>
											<th width="120">单价(元/月)</th>
											<th width="100" align="center">购买数量</th>
											<th width="110" align="center">购买时长(月)</th>
											<th width="120">总计</th>
											<th width="50" align="center">操作</th>
										</tr>
									</thead>
									<tbody>
										<volist name="cart" id="vo">
										<tr>
											<td><input type="checkbox" data-gpid="{$vo.gp_id}" data-cartid="{$vo.cart_id}" data-spec_01="{$vo.spec01_id}"  data-spec_02="{$vo.spec02_id}"  name="check"></td>
											<td class="title">
												<p><b>{$vo.goods_name}({$vo.type_name})</b></p>
												<p><b>{$vo.spec}</b></p>
											</td>
											<td class="price">￥<span>{$vo.price}</span></td>
											<td align="center" class="number">
												<div class="num-box">
													<i class="minus disable">-</i>
													<input type="text" onkeyup="javascript:RepNumber(this)" onblur="checkNumber(this)" value="{$vo.num}">
													<i class="plus">+</i>
												</div>
											</td>
											<td align="center" class="month">
												<div class="num-box">
													<i class="minus disable">-</i>
													<input type="text" onkeyup="javascript:RepNumber(this)" onblur="checkNumber(this)" value="{$vo.purchase}">
													<i class="plus">+</i>
												</div>
											</td>
											<td class="sums">￥<span>{$vo.total}</span></td>
											<td>
												<a href="javascript:;" data-cartid="{$vo.cart_id}" class="delete">删除</a>
											</td>
										</tr>
										</volist>
								
									</tbody>
									<tfoot>
										<tr>
											<td colspan="7">
												<div class="f-r">合计：<span class="total-sums sums">￥<span id="total_fee">0.00</span></span></div>
											</td>
										</tr>
									</tfoot>
								</table>
								<div class="f-r pt-1">
									<input type="button" class="btn btn-orange" id="submit"  value="结算(0)">
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
<template file="Member/Public/homeFooter.php"/>

	<script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/js/usercenter/shopping.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/layer/layer.js"></script>
	
	<script>
		$(function() {
			//购物车删除
			$('.delete').click(function(){
				var cartid = $(this).data('cartid');
				var url = "{:U('User/cartDel')}";
				layer.confirm('您确定要删除吗？', {
					  btn: ['确定','取消'] //按钮
				}, function(){
						$.post(url,{id:cartid},function(data){
							 if(data.status){
							 	location.reload();
			
							 }else{
							 	layer.alert(data.msg, {icon: 6});
							 }
						},'json');
					}, function(){
					  
					});
				  //layer.alert(cartid, {icon: 6});
			})
			
			
			//购物车结算
			$("#submit").click(function () {
				var data = '{';
				var jsonList = [];
				//var total_fee = 
				$(".shopping-cart .table").find("input[name=check]:checked").each(function () {
					var _this = $(this);
					var obj = '{';
					obj += '"cart_id":'+_this.data("cartid");
					obj += ',"spec01_id":'+_this.data("spec_01");
					obj += ',"spec02_id":'+_this.data("spec_02");
					obj += ',"gp_id":'+_this.data("gpid");
					obj += ',"purchase":'+_this.parent().siblings(".month").find("input[type='text']").val();
					obj += ',"num":'+_this.parent().siblings(".number").find("input[type='text']").val();
					obj += ',"price":'+_this.parent().siblings(".price").find("span").html();
					obj += '}';
					jsonList.push(obj);
				});
				var s = jsonList.join(",");
				data += '"cart":[' + s;
				data += ']}';
				//data += ',"total_fee"]:'++'}';
				//console.log(data);
				
				//var d = eval("("+data+")");
				//console.log(d);
				var url = "{:U('User/cartSubmit')}";
				$.post(url,{cart:data},function(data){
					 if(data.status){
					 	location.href=data.url;
	
					 }else{
					 	layer.alert(data.msg, {icon: 6});
					 }
				},'json');
			});
		});
	</script>
</body>
</html>