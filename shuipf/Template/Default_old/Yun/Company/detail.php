<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云应用 - {$info.name}</title>
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/yunyingyong.css">
	<link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/gongyouyun.css">
    <!-- <link rel="stylesheet/less" href="../css/yunyingyong.less"> -->
    <!-- <script src="../js/less.min.js"></script> -->
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
 	<script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
   
</head>

<body>
    <!-- header start -->
<template file="Content/header.php"/>
    <!-- header end -->
    <!-- *content area* -->
    <div class="banner">
        <div class="container">
            <div class="banner-inner">
                <img src="{$info.img_logo}" alt="" />
                <div>
                    <h1>{$info.name}</h1>
                    <p>
                    	{$info.txt_intro}
                    </p>
                    <a class='button' <notempty name="info.gp_id">href="{:U('Mall/details',array('id'=>$info['gp_id']))}"</notempty>>立即购买</a>
                </div>
            </div>
        </div>
    </div>
    <div class="page-hopper">
        <div class="container">
            <ul>
            	<notempty name="info.introduce"><li><a href="#intro">公司简介</a></li></notempty>
                <notempty name="info.hot_product1"><li><a href="#products">热销产品</a></li></notempty>
                <notempty name="info.adv_product"><li><a href="#adv_product">产品优势</a></li></notempty>
                <notempty name="info.version1"><li><a href="#versions">版本定价</a></li></notempty>
            </ul>
        </div>
    </div>
    
        <notempty name="info.introduce">{$info.introduce}</notempty>
        <notempty name="info.hot_product1">{$info.hot_product1}</notempty>
        <notempty name="info.adv_product">{$info.adv_product}</notempty>
        <notempty name="info.version1">{$info.version1}</notempty>
       
      <!--   <div class="floor bottom">
            <a <eq name="info.type" value="1">href="{:U('Coop/demandCloud',array('id'=>$info[com_id]))}" <else/>href="{:U('Coop/demandApp',array('id'=>$info[com_id]))}" </eq> class="btn-placeOrder">
            	<img src="{$config_siteurl}statics/extres/newmember/images/yunyingyong/icon-pencil.png" alt="" />提交需求订单
            </a>
        </div> -->
    </div>
    <!-- footer start -->
  <template file="Content/footer.php"/>
   <script src="{$config_siteurl}statics/extres/newmember/js/productPages/productPages.js"></script>  <!-- footer end --> 
</body>

</html>
