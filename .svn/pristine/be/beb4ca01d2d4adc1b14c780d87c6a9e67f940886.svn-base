<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云巴巴 - 云商城</title>
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/mall.css">
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
</head>

<body>
    <!-- header start -->
<template file="Content/header.php"/>
    <!-- header end -->
    <!-- *content area* -->
    <div class="mall-payment">
        <!-- note that: below is "container"-free -->
        <div class="container">
            <div class="upper-section">
                <div class="bread-crumbs">
                    <ol>
                        <li><a href="">首页</a></li>
                        <li><a href="">云商城</a></li>
                        <li><a href="">{$this_name}</a></li>
                    </ol>
                </div>
                <div class='pt-3'>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="payment-details">
                                <div class="top">
                                  {$info.instro|htmlspecialchars_decode}
                                </div>
                                <form action="{:U('Mall/order')}" method="post">
                                	
                                    <div class="mid">
                                    	 <div class='control-group class-selection'>
                                            <label for="">类型:</label>
                                            <div>
                                            	<foreach name="goods_type" item="gt">
                                                <div class="spec-block" data-value="{$gt.type_id}">
                                                    <p><b>{$gt.name}</b></p>
                                                </div>
                                                </foreach>
                                           
                                            </div>
											<input type="hidden" name="class" value="">
                                          </div>
                                        <foreach name="spec" item="sp">
                                        <div class='control-group spec-selection' data-class="{$key}">
                                            <label for="">规格:</label>
                                            <div>
                                            	<volist name="sp" id="vo">
                                                <div class="spec-block" data-value="{$vo.id}" data-price="{$vo.price}">
                                                    <p><b>{$vo.type}</b></p>
                                                    <notempty name="vo.cpu">
                                                    <p>{$vo.cpu}核 {$vo.memory}GB {$vo.broadband}M </p>
                                                    </notempty>
                                              
                                                </div>
                                                </volist>
                                               
                                            </div>
                                            <input type="hidden" name="spec" value="">
                                        </div>
                                       </foreach>
                           
                                     
                                        <div class='control-group'>
                                            <label for="">购买时长:</label>
                                            <div class='input-spinner'>
                                                <input type="" name="length" value="1" placeholder="">
                                                <i class='plus'></i>
                                                <i class='min'></i>
                                            </div>
                                        </div>
                                        <div class='control-group'>
                                            <label for="">购买用户数量:</label>
                                            <div class='input-spinner'>
                                                <input type="" name="quantity" value="1" placeholder="">
                                                <i class='plus'></i>
                                                <i class='min'></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="btm">
                                        <div class="pricing">
                                            <p>配置费用：</p>
                                            <p class='price'>￥</p>
                                            <p class='price actual'>{$info.price}</p>
                                            <input class='price actual1' type="hidden" name="price" value="{$info.price}"  />
                                        </div>
                                        <div>
                                        	<input type="hidden" name="gp_id" value="{$info.gp_id}" />
                                            <button class='btn-buy buyNow'>立即购买</button>
                                            <a href="javascript:void(0)" id="mycart" class='btn-buy buyLater'><img src="{$config_siteurl}statics/extres/newmember/images/mall/i-shopcar.png" alt="" />加入购物车</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="contact-method">
                                <div class='control-group'>
                                    <p>服务商：</p>
                                    <p>北京元鼎时代科技有限公司</p>
                                </div>
                                <div class='control-group'>
                                    <p>联系客服：</p>
                                    <div class='control-group '>
                                        <div>
                                            <a href="">
                                                <div class="img-holder first"></div>
                                                <p><b>售前</b>客服</p>
                                            </a>
                                        </div>
                                        <div>
                                            <a href="">
                                                <div class="img-holder second"></div>
                                                <p><b>售后</b>客服</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <p>在线时间：</p>
                                    <p>9：00-18：00</p>
                                </div>
                                <div class='control-group'>
                                    <p>电话:</p>
                                    <p>400-007-0628</p>
                                </div>
                                <div class='control-group'>
                                    <p>邮箱：</p>
                                    <p>yun88@yuandingit.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="lower-section">
            <div class="container">
                <div class="subtitle">
                    <h1>云巴巴为您提供专业的服务</h1>
                    <p>YUN88专家团队根据对您业务目标和需求的深入分析，帮助您制定并实施量身定做的总体云战略，迁移现有的系统和应用程序，或部署全新的系统和应用程序。</p>
                </div>
                <div class="row">
                    <div class="col-md-3 nails">
                        <div class="nailhead icon05"></div>
                        <div>
                            <h2>方案</h2>
                            <p>提供成熟稳定的架构设计方案，为企业云提供完整的解决方案。</p>
                        </div>
                    </div>
                    <div class="col-md-3 nails">
                        <div class="nailhead icon06"></div>
                        <div>
                            <h2>迁移</h2>
                            <p>提供一系列软件改造方案，大型系统的架构设计，系统迁移，数据迁移方案。</p>
                        </div>
                    </div>
                    <div class="col-md-3 nails">
                        <div class="nailhead icon07"></div>
                        <div>
                            <h2>优化</h2>
                            <p>借助架构云平台提供弹性可苦战的方案，有效降低企业成本。</p>
                        </div>
                    </div>
                    <div class="col-md-3 nails">
                        <div class="nailhead icon06"></div>
                        <div>
                            <h2>维护</h2>
                            <p>借助架构云的系统监控和自动化管理工具，快速定位解决问题。</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-line">
            <h1>7*24小时服务热线：400-007-0628</h1>
            <a href="" class="btn-positive rounded">在线咨询</a>
        </div>
    </div>
    <!-- footer start -->
 <template file="Content/footer.php"/>
    <!-- footer end -->
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
    <script src="{$config_siteurl}statics/extres/newmember/js/mall/mall-payment.js"></script>
     <script src="{$config_siteurl}statics/extres/newmember/layer/layer.js"></script>
    <script>
    
    	$(function(){
    		$('#mycart').click(function(){
    			var url = "{:U('Mall/cart')}";
    			var spec = $("input[name='spec']").val();
    			var typeid = $("input[name='class']").val();
    			var length = $("input[name='length']").val();
    			var quantity = $("input[name='quantity']").val();
    			var price = $("input[name='price']").val();
    			var gp_id = $("input[name='gp_id']").val();
    			var cartnum = parseInt($('#cartnum').text());
    			//layer.alert(price, {icon: 6});
    			$.post(url,{spec:spec,typeid:typeid,length:length,quantity:quantity,price:price,gp_id:gp_id},function(data){
    				
    				 if(data.status){
    				 	 layer.alert(data.msg, {icon: 6});
    				 	 if(data.status == 2){
    				 	 	var newnum = cartnum + 1;
    				 	 	$('#cartnum').text(newnum);
    				 	 }
    				 	 
    				 }else{
    				 	 layer.alert(data.msg, {icon: 6},function(){location.href=data.url});
    				 }
    			},'json');
    		})
    	})
    </script>
</body>

</html>
