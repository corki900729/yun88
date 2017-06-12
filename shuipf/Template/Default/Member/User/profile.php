<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>云巴巴-个人中心-个人资料</title>
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
						<div class="contentbox user-data">
							<div class="title">个人资料</div>
							<div class="sub-tit">我的认证</div>
							<div class="content">
								<div class="row">
									<div class="col-md-2">
										<div class="data-img t-c">
											<img id="avatar" <empty name="userinfo.userpic">src="{$config_siteurl}statics/extres/newmember/images/usercenter/default.jpg" <else/> src="{$userinfo.userpic}"</empty> alt="">
											<div class="upload-img">
												<a id="uploadBtnHolder" class="upload-img" href="javascript:;"></a> 
											</div>
											<span>更换</span>
										</div>
									</div>
									<div class="col-md-10">
										<form id="doprofile" action="{:U('User/doprofile')}" method="post">
										<table width="100%" cellspacing="0" cellpadding="0">
											<tr>
												<td width="80" align="right">昵称：</td>
												<td>{$userinfo.username}</td>
												<td rowspan="4" valign="top"><a href="javascript:;" class="edit">修改</a></td>
											</tr>
											<tr>
												<td align="right">手机：</td>
												<td><input type="text" name="mobile" value="{$userinfo.mobile}" class="txt"></td>
											</tr>
											<tr>
												<td align="right">邮箱：</td>
												<td><input type="text" value="{$userinfo.email}" name="email" class="txt"></td>
											</tr>
											<tr>
												<td align="right" valign="top">地址：</td>
												<td><textarea name="address" id="">{$userinfo.address}</textarea></td>
											</tr>
											<tr class="hidden">
												<td></td>
												<td>
													<input type="submit" class="btn btn-green" value="保存">
													<input type="button" class="btn btn-default cancel" value="取消">
												</td>
											</tr>
										</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
<template file="Member/Public/homeFooter.php"/>
	<script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/js/usercenter/edit.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/js/plugins/swfupload/swfupload.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/js/plugins/swfupload/swfupload.queue.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/js/plugins/swfupload/swfupload.speed.js"></script>
	<script src="{$config_siteurl}statics/extres/newmember/js/plugins/swfupload/handlers.js"></script>
	<!-- 上传 -->
	<script>
	var swfu;
	    var fileUploadLimit = false;
	    var settings = {
	        flash_url : "{$config_siteurl}statics/extres/newmember/js/plugins/swfupload/swfupload.swf",
	        upload_url: "{:U('User/avatarUpload')}",// 接受上传的地址
	        file_size_limit : "2 MB",// 文件大小限制
	        file_types : "*.jpg;*.gif;*.png;*.jpeg;",// 限制文件类型
	        file_types_description : "Image Files",// 说明，自己定义
	        file_upload_limit : 0,
	        file_queue_limit : 3,
	        custom_settings : {},
	        post_params:{},
	        debug: false,
	        // Button settings
	        button_image_url: "{$config_siteurl}statics/extres/newmember/js/plugins/swfupload/upload-btn.png",
	        button_width: "110",
	        button_height: "145",
	        button_placeholder_id: 'uploadBtnHolder',
	        button_window_mode : SWFUpload.WINDOW_MODE.TRANSPARENT,
	        button_cursor : SWFUpload.CURSOR.HAND,
	        button_action: SWFUpload.BUTTON_ACTION.SELECT_FILE,
	        
	        moving_average_history_size: 40,
	        
	        // The event handler functions are defined in handlers.js
	        swfupload_loaded_handler : preLoad,
	        swfupload_load_failed_handler : loadFailed,
	        file_queued_handler : fileQueued,
	        file_dialog_complete_handler: fileDialogComplete,
	        upload_start_handler : function (file) {
	            
	        },
	        upload_progress_handler : function(file, bytesComplete, bytesTotal) {	           
	        },
	        upload_success_handler : function(file, data, response) {
	        	var data = eval("(" + data + ")");
	            if(data.status){
	            	//alert(data.status);
	            	$('#avatar').attr('src',data.path);
	            }
	        },
	        upload_error_handler : function(file, errorCode, message) {
	            
	        },
	        file_queue_error_handler : function(file, errorCode, message) {
	            
	        }
	    };
	     
	    swfu = new SWFUpload(settings);
	</script>
</body>
</html>