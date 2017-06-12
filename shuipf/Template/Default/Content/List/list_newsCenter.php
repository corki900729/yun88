<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/news/news.css" rel="stylesheet">

  <main class="page-wrap news-center">
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
                    <span><a href="{$vo.url}">{$vo.title}</a></span>
                    <div>{$vo.description}</div>
                </div>
            </div>
         </volist>   
        </content>
        </div>
    </div>
    <div class="news-paging">
        <div class="container">
            <div class="page-num-btns">
                <button>{$pages}</button>
            </div>
        </div>
    </div>
  </main>
<template file="Content/footer.php"/>
</body>

</html>