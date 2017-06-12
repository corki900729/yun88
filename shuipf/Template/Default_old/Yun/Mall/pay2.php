<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云应用 - 支付</title>
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/yunyingyong.css">
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
</head>

<body>
    <!-- header start -->
<template file="Content/header.php"/>
    <!-- header end -->
    <!-- *content area* -->
    <div class="placing-order">
        <div class="order-product-name">
            <div class="container">
                <!-- 订单产品名 -->
                <h3>请您在新打开的页面上完成付款!</h3></div>
        </div>
        <div class="order-summary">
            <div class="container">
                <!-- current step indicator -->
                <div class="step-indy">
                    <span><a href="{:U(Member/User/order)}">支付完成</a></span>
                    <div>
                        <div class='arraow'></div>
                        <span><a href="/">返回首页</a></span></div>
                        {$code_str}
                    <div>
                        <div class='arraow'></div>
                        <span><a href="{:U(Member/User/profile)}">返回个人中心</a></span></div>
                </div>
           
            </div>
        </div>
    </div>
    <!-- footer start -->
 <template file="Content/footer.php"/>
    <!-- footer end -->
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
    <script>
    $(".payment-confirmation").on("click.payMethod", ".pay-method", function(ev) {
        $(ev.delegateTarget).find(".pay-method.active").removeClass("active")
            .find(":input[type=radio]").prop('checked', 'false').removeAttr('checked');
        $(this).addClass("active").find(":input[type=radio]").prop('checked', 'true').attr("checked");

    });
    </script>
</body>

</html>
