<!DOCTYPE html>
<html lang="en">

<head>
    <title>{$Config.sitename} - 提示信息</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{$config_siteurl}statics/extres/newmember/css/common.css" rel="stylesheet">
</head>

<body>
    <div class="error-report">
        <div class="container">
            <div class="report title">
                <h2>{$msgTitle}</h2>
            </div>
            <div class="report body">
                <div class="img">
                    <img src="{$config_siteurl}statics/extres/newmember/images/icon-error.png" alt="">
                </div>
                <div class="text">
                    <h3>{$error}</h3>
                    <p>pleae smash your pc.</p>
                </div>
                <div class="buttons">
                    <a href="/" class="btn-negative crooked">返回首页</a>
                    <a href="{$jumpUrl}" class="btn-positive crooked">返回</a>
                </div>
            </div>
        </div>
    </div>

<script language="javascript">
setTimeout(function(){
	location.href = '{$jumpUrl}';
},{$waitSecond});
</script>
</body>

</html>