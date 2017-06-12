<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>公有云 - 需求提交</title>
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/gongyouyun.css">
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
</head>

<body>
    <!-- header start -->
<template file="Content/header.php"/>
    <!-- header end -->
    <!-- *content area* -->
    <div class="submit-demands">
        <div class="inner-head">
            <div class="container">
                <h3>{$title}</h3>
            </div>
        </div>
        <div class='submit-completed'>
            <div class='container'>
                <div><img src="{$config_siteurl}statics/extres/newmember/images/gongyouyun/icon-completed.png" alt="" /></div>
                <h3>您的需求提交成功，</h3>
                <h2>请您保持手机畅通，我们的工作人员将很快与您联系。</h2>
                <a href="/" class="btn-positive crooked">返回首页</a>
            </div>
        </div>
    </div>
    <!-- footer start -->
  <template file="Content/footer.php"/>
    <!-- footer end -->
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.event.drag.js"></script>
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.event.drop.js"></script>
    <script src="{$config_siteurl}statics/extres/newmember/js/gongyouyun-submit-demands.js"></script>
</body>

</html>
