<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>云巴巴 - 合作申请</title>
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
    <div class="banner banner-coop"></div>
    <div class="partners-section">
        <div class="container">
            <div class="heads-up">
                <span>成为合作伙伴</span>
            </div>
            <p>Yun88云业务平台欢迎各类优秀、专业的云产品、服务厂商合作。</p>
            <p>平台愿意和云产品、服务企业分享Yun88的优质用户群体，共同为用户提供专业的产品及服务。
                <div class="join-form">
                    <form action="{:U('Yun/Coop/apply')}" method="post" accept-charset="utf-8">
                        <div>
                            <label>您的姓名 ：
                            </label>
                            <input type="text" name="username" id="" class="inp-small" />
                        </div>
                        <div>
                            <label>联系电话 ：
                            </label>
                            <input type="text" name="phone" id="" class="inp-normal" />
                        </div>
                        <div>
                            <label>手机 ：
                            </label>
                            <input type="text" name="mobile" id="" class="inp-normal" />
                        </div>
                        <div>
                            <label>公司名称 ：
                            </label>
                            <input type="text" name="company" id="" class="inp-normal" />
                        </div>
                        <div>
                            <label>你的职务 ：
                            </label>
                            <input type="text" name="post" id="" class="inp-normal" />
                        </div>
                        <div>
                            <label>电子邮件 ：
                            </label>
                            <input type="text" name="email" id="" class="inp-small" />
                        </div>
                        <div>
                            <label>公司地址 ：
                            </label>
                            <input type="text" name="address" id="" class="inp-normal" />
                        </div>
                        <div>
                            <label>合作意向或建议 ：
                            </label>
                            <textarea name="advise" class="inp-large"></textarea>
                        </div>
                         <div class="t-c">
                        <button class="join-button">
                            确认
                        </button>
                    </div>
                    </form>
                </div>
            </p>
        </div>
    </div>
    <!-- footer start -->
<template file="Content/footer.php"/>
    <!-- footer end -->
</body>

</html>
