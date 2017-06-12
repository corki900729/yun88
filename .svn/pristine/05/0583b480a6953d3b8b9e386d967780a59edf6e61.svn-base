<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>云巴巴- 新闻中心</title>
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
    <div class="news-list-headsup">
        <div class="container">
            <span>新闻中心</span>
        </div>
    </div>
    <div class="news-list">
        <div class="container">
        	 <content action="lists" catid="$catid" order="id DESC" num="3" page="$page">
    		<volist name="data" id="vo">
	            <div class="news-item">
	                <div class="news-date"><span>{$vo.updatetime|date="Y",###}</span><span>{$vo.updatetime|date="m.d",###}</span></div>
	                <div class="news-img"><a href="{$vo.url}"><img src='<if condition="$vo['thumb']">{$vo.thumb}<else />{$config_siteurl}statics/default/images/defaultpic.gif</if>' width='140' height='85' alt='{$vo.title}'></a></div>
	                <div class="news-des">
	                    <span style="font-size:22px;"><a href="{$vo.url}">{$vo.title}</a></span>
	                    <div style="font-size:14px;">{$vo.description}</div>
	                </div>
	            </div>
           </volist>
           </content>
        </div>
    </div>
    <div class="news-paging">
        <div class="container">
    	 <div class="server-pagination">
           <div class="pages"> {$pages} </div>
          </div>
        </div>
    </div>
    <!-- footer start -->
  		<template file="Content/footer.php"/>
    <!-- footer end -->
</body>

</html>
