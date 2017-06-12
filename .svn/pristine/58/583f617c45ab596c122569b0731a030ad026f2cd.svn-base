<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云巴巴 - 公有云列表</title>
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/general.css">
    <!-- <link rel="stylesheet/less" href="css/general.less"> -->
    <!-- <script src="js/less.min.js"></script> -->
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
</head>

<body>
    <!-- header start -->
<template file="Content/header.php"/>
    <!-- header end -->
    <!-- *content area* -->
    <div class="publicyun-banner" style="background-image:url({$config_siteurl}statics/extres/newmember/images/banners/publiccloud.jpg);height:500px;" >
    <div class="container">
        <div class="banner-inner" style="position:relative;height:500px;">
            <p style="font-size:30px;font-weight:bold;position:absolute;top:180px;left:20px;color:#afd5f5;">公有云</p>
            <p style="font-size:20px;position:absolute;top:250px;left:20px;color:#afd5f5;">整合国内外顶尖厂商的公有云产品，供不同业务需求的客户选择和使用</p>
        </div>
    </div>
    	<!--<eq name="type" value="1">
    		<img src="{$config_siteurl}statics/extres/newmember/images/banners/banner-publicCloudList.png" alt="banner">
    		<else />
    		<img src="{$config_siteurl}statics/extres/newmember/images/banners/appbanner.jpg" alt="banner">
    		</eq>-->
        
    </div>
    <div class="public-cloud-list">
        <!--  -->
        <div class="top">
            <div class="container">
                <a href="">首页</a> > <eq name="type" value="1">公有云<else />云应用</eq>
            </div>
        </div>
        <div class="list stripped">
        	<volist name="data" id="vo">
	            <div class="list-item">
	                <div class="container">
	                    <div class="logo">
	                        <img src="{$vo.img_logo}" alt="" />
	                    </div>
	                    <div>
	                        <h2>公司简介:</h2>
	                        <p>{$vo.txt_intro}</p>
	                        <div class='button'>
	                            <a class="" href="{:U('Company/details',array('id'=>$vo[com_id]))}">了解详情 >></a>
	                        </div>
	                    </div>
	                </div>
	            </div>
            </volist>
        </div>
<!--         <div class="bottom">
            <h1>YUN88为您甄选提供主流云产品及服务</h1>
            <div class="mt-5 button"><a href="#" class=""><span>联系您的专属顾问</span> </a></div>
        </div> -->
        <!--  -->
    </div>
    <!-- footer start -->
    <template file="Content/footer.php"/>
    <!-- footer end -->
</body>

</html>
