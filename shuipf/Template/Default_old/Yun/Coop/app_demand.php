<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云应用 - 订单核对</title>
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/yunyingyong.css">
    <!-- <link rel="stylesheet/less" href="../css/yunyingyong.less"> -->
    <!-- <script src="../js/less.min.js"></script> -->
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
                <h3>{$pro_name}</h3></div>
        </div>
        <div class='product-interested'>
            <div class="container">
                <div class="interest-inner row">
                    <div class="contact-info col-md-3">
                        <img src="{$config_siteurl}statics/extres/newmember/images/yunyingyong/icon-phone.png" alt="" />
                        <h2>北京元鼎时代科技股份有限公司</h2>
                        <p><img src="{$config_siteurl}statics/extres/newmember/images/yunyingyong/i-phone.png">400-007-0628</p>
                        <p><img src="{$config_siteurl}statics/extres/newmember/images/yunyingyong/i-ie.png">www.yun88.com</p>
                    </div>
                    <div class="right-part col-md-9">
                        <div class="interest-form">
                            <h1>请填写并核对您的需求订单</h1>
                            <form action="{:U('Coop/demandApp')}" method="post">
                                <div>
                                    <label>需求应用 ：
                                    </label>
                                    <select name="info[name]" class='inp-small'>
                                    	<volist name="company" id="vo">
                                        	<option value="{$vo.name}">{$vo.name}</option>
                                        </volist>
                                      
                                    </select>
                                </div>
                                <div>
                                    <label>公司名称 ：
                                    </label>
                                    <input type="text" name="info[company]" id="" class="inp-small" />
                                </div>
                                <div>
                                    <label>用户数 ：
                                    </label>
                                    <input type="text" name="info[user_num]" id="" class="inp-small" />
                                </div>
                                <div>
                                    <label>购买时长 ：
                                    </label>
                                    <input type="text" name="info[purchase_times]" id="" class="inp-small" />
                                </div>
                                <div>
                                    <label>备注 ：
                                    </label>
                                    <textarea name="info[remark]"></textarea>
                                </div>
                                <div class="bottom-line">
                                    <h4>友情提示：</h4>
                                    <p>点击“确认提交”后，我们的工作人员将很快与您联系，请确认您的电话畅通。</p>
                                    <button type="" class='btn-orderNow'>确认提交</button>
                                </div>
                                <P></P>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer start -->
 <template file="Content/footer.php"/>
    <!-- footer end -->
</body>

</html>
