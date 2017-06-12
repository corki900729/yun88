<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云应用 - 订单</title>
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
                <h3>订单号:{$orderinfo.orderno}</h3></div>
        </div>
        <div class="order-summary">
            <div class="container">
                <!-- current step indicator -->
                <div class="step-indy">
                    <span>创建订单</span>
                    <div>
                        <div class='arraow'></div>
                        <span>确认订单</span></div>
                    <div>
                        <div class='arraow'></div>
                        <span class="active">支付</span></div>
                    <div>
                        <div class='arraow'></div>
                        <span>支付完成</span></div>
                </div>
                <div class="payment-confirmation">
                    <form action="{:U('Payment/getCode')}" method="post" accept-charset="utf-8">
                        <div class="pay-method">
                            <div>
                                <label>
                                    <input type="radio" name='payMethod'  value="alipay">
                                    <img src="{$config_siteurl}statics/extres/newmember/images/yunyingyong/i-alipay.png" alt="" />支付宝付款</label>
                            </div>
                            <div class="pricing">支付<span class='price'>￥{$orderinfo.total_fee}</span>元</div>
                        </div>
                        <div class="other-method">
                            <a href="" class='btn-otherMethod'>其他付款方式</a>
                        </div>
                        <div class="pay-confirm">
                        	<input type="hidden" name="order_id" value="{$orderinfo.order_id}" />
                            <button class='btn-payConfirm'>确认付款</button>
                        </div>
                    </form>
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
