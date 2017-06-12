<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>云巴巴-个人中心-修改密码</title>
	<link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/usercenter.css">
    <!-- <link rel="stylesheet/less" href="css/general.less"> -->
    <!-- <script src="js/less.min.js"></script> -->
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
</head>
<body>
	<template file="Member/Public/homeHeader.php"/>
	<div class="main">
		<div class="container p-r">
			<table width="100%" cellspacing="0" cellpadding="0" class="table-content">
				<tr>
				<template file="Member/Public/homeUserMenu.php"/>
					<td valign="top">
						<div class="contentbox security">
							<div class="title">账户安全</div>
							<div class="sub-tit">更改密码</div>
							<form id="doprofile" action="{:U('User/dopassword')}" method="post">
							<div class="content">
								<div class="pt-1">
									<span>原密码：</span>
									<input type="password" name="oldPassword" class="old-psw txt">
								</div>
								<div class="pt-1">
									<span>新密码：</span>
									<input type="password" name="password" class="new-psw txt">
								</div>
								<div class="pt-1">
									<span>确认新密码：</span>
									<input type="password" name="password2" class="sure-new-psw txt">
								</div>
								<div class="pt-3">
									<input type="submit" value="确 定" class="btn btn-orange">
								</div>
							</div>
							</form>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<template file="Member/Public/homeFooter.php"/>

	<script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/js/usercenter/shopping.js"></script>
</body>
</html>