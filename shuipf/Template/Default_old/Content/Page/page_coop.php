<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云巴巴 - 合作伙伴</title>
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
    <div class="banner" style="background-image:url({$config_siteurl}statics/extres/newmember/images/banners/hezuo.jpg);background-position:center center;background-repeat:no-repeat;">
		<div class="container">
            <div class="banner-inner" style="position:relative;height:380px;">
                <p style="position:absolute;top:100px;left:180px;color:#d3d7dd;font-size:25px;font-weight:bold;">合作</p>
                <p style="position:absolute;top:150px;left:180px;color:#d3d7dd;font-size:18px;">Cooperation</p>
            </div>
        </div>
     </div>
    <div class="partners-section">
        <div class="container">
            <div class="heads-up">
                <span>已合作厂商</span>
            </div>
            <div class="coop-logos">
                {$content}
            </div>
        </div>
        <div class="join-coop">
            <div class="container">
                <div class="heads-up">
                    <a href="{:U('Yun/Coop/apply')}">
                        <div class="join-button">成为合作伙伴</div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- footer start -->
<template file="Content/footer.php"/>
    <!-- footer end -->
</body>

</html>
