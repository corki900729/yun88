<template file="Content/header.php"/>
  <!-- 公用组件 -->

  <!-- 页面特有CSS -->

  <link
    href="{$config_siteurl}statics/dist/clients/clients.css"
    rel="stylesheet"
  ></link>

  <main class="page-wrap clients">
    <section class="banner banner-clients parallax">
      <div class="container">
        <h1 class="banner-title">优选客户</h1>

        <p class="banner-text">
          云88专家以严谨的态度为您甄选可靠安全的云产品&服务，倾力打造中国首个企业级B2B云平台
        </p>

        <a
          href=""
          class="btns btn-details"
        >立即咨询</a>
      </div>
    </section>

    <section class="client-details">
      <div class="container">
        <a href="">返回优选客户</a>

        <div class="snapshot">
          <div class="row">
            <div class="l-col-3 m-col-3 s-col-12">
              <div class="logo">
                <img
                  src="{$thumb}"
                  alt=""
                >
              </div>
            </div>

            <div class="l-col-9 m-col-9 s-col-12">
              <div>
                <h3>{$title}:</h3>

                <p>
                  {$company_intro}
                </p>
              </div>
            </div>
          </div>
        </div>

        <div class="details">
          {$content}
        </div>
      </div>
    </section>
  </main>
<template file="Content/footer.php"/>  
</body>
</html>