<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/clients/clients.css" rel="stylesheet">

  <main class="page-wrap clients">
    <section class="banner banner-clients parallax">
      <div class="container">
        <h1 class="banner-title">优选客户</h1>
        <p class="banner-text">云88专家以严谨的态度为您甄选可靠安全的云产品&服务，倾力打造中国首个企业级B2B云平台</p>
        <a href="" class="btns btn-details">立即咨询</a>
      </div>
    </section>
    <section class="clients-show">
        <div class="container">
            <div class="shelf">
<content action="lists" catid="$catid" order="id DESC" num="12" >
<volist name="data" id="vo">
                <div>
                    <a href="{$vo.url}" target="_blank"></a>
                    <img src="{$vo.thumb}" alt="" />
                    <span>{$vo.title}</span>
                </div>
</volist>
</content>
        </div>
    </section>
  </main>
<template file="Content/footer.php"/>
</body>

</html>