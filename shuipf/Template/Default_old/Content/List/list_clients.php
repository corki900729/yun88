<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云巴巴 - 优选客户</title>
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
    <div class="banner" style="background-image:url({$config_siteurl}statics/extres/newmember/images/banners/clients.jpg);background-position:center center;background-repeat:no-repeat;">
		<div class="container">
            <div class="banner-inner" style="height:380px;position:relative;">
                <p style="position:absolute;top:110px;left:100px;font-size:25px;font-weight:bold;color:#00a6fe;line-height:30px;">优选客户</p>
                <p style="position:absolute;top:170px;left:100px;font-size:16px;color:#d3d7dd;width:40%;line-height:25px;">云88专家以严谨的态度为您甄选可靠安全的云产品&服务，倾力打造中国首个企业级B2B云平台</p>
            </div>
        </div>
     </div>
    <div class="clients-show">
        <div class="container">
            <div class="shelf">
            	<content action="lists" catid="$catid" order="id DESC" num="12" >
	        		<volist name="data" id="vo">
		                <div>
		                    <a href="{$vo.url}" target="_blank"></a>
		                    <img src="{$vo.thumb}" alt="" />
		                    <span>{$vo.title}</span>
		                </div>
	                </volist>
                </content>
                
                <div>
                    <a href="" target="_blank"></a>
                    <img src="{$config_siteurl}statics/extres/newmember/images/icon-plus.png" alt="" />
                    <span>更多客户案例>></span></div>
            </div>
        </div>
    </div>
    <!-- footer start -->
<template file="Content/footer.php"/>
    <!-- footer end -->
</body>

</html>
