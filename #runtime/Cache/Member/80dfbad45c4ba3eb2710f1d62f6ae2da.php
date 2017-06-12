<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">

<head>
    <title><?php echo ($Config["sitename"]); ?> - 提示信息</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo ($config_siteurl); ?>statics/extres/newmember/css/common.css" rel="stylesheet">
</head>

<body>
    <div class="error-report">
        <div class="container">
            <div class="report title">
                <h2><?php echo ($msgTitle); ?></h2>
            </div>
            <div class="report body">
                <div class="img">
                    <img src="<?php echo ($config_siteurl); ?>statics/extres/newmember/images/gongyouyun/icon-completed.png" alt="">
                </div>
                <div class="text">
                    <h3><?php echo ($message); ?></h3>
                    <p>pleae smash your pc.</p>
                </div>
                <div class="buttons">
                    <a href="/" class="btn-negative crooked">返回首页</a>
                    <a href="<?php echo ($jumpUrl); ?>" class="btn-positive crooked">返回</a>
                </div>
            </div>
        </div>
    </div>
<script language="javascript">
setTimeout(function(){
	location.href = '<?php echo ($jumpUrl); ?>';
},<?php echo ($waitSecond); ?>);
</script>
</body>

</html>