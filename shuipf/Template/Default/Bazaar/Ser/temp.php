<template file="Content/header.php"/>

<body class="banner-toped-navi">

  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/yunfuwu/yunfuwu.css" rel="stylesheet">
  <!--<script src="../dist/i/index.js"></script>-->

  <main class="page-wrap  yunfuwu fuwu-shishi">

    <section class="top">
      <div class="container">
        <div class="row">

          <div class="l-col-6 m-col-6 isHidden-s">
            <div class="img-holder">
              <img src="{$goods.detail_logo}" alt="">
            </div>
          </div>

          <div class="l-col-6 m-col-6 s-col-12 text-holder">
            <h2>{$goods.name}</h2>
            <p>{$goods.description|htmlspecialchars_decode}</p>
            <a href="" class="btns btn-contact">立即咨询</a>
          </div>

        </div>
      </div>
    </section>

    <section class="mid">
      <h2>专家级讲师为您提供多样的系统化培训</h2>

      <div class="row hiCon">
<volist name='intro' id='vo' >
        <div class="l-col-4 m-col-4 s-col-12">

          <div class="row-blockie hiWatch">
            <div class="img-holder">
              <img src="{$vo.img_intro}" alt="">
            </div>
            <div class="desc-text ">
              <h4>{$vo.intro_name}</h4>
              <p>{$vo.intro}</p>
            </div>
          </div>

        </div>
</volist>


      </div>
    </section>

    <section class="lower">
      <h2>了解云服务</h2>

      <div class="container">
        <div class="row">
<volist name='service' id='list' >  
        
          <div class="l-col-2 m-col-3 s-col-6" <if condition="($list.id eq $id)"> style='display:none;'<else/> style='' </if>>
            <a href="/index.php?g=Bazaar&m=Ser&a=detail&id={$list.id}"> </a>
            <img src="{$list.show_logo}" alt="">
            <p>{$list.name}</p>
          </div>        
</volist>          

        </div>
      </div>

    </section>

    <section class="bottom">
      <div class="row">
        <div class="l-col-9 m-col-8 s-col-12 lefty">
          <p>YUN88专家以严谨的态度为您甄选可靠、安全的云产品&服务，倾力打造中国首个企业级B2B云平台</p>
        </div>
        <div class="l-col-3 m-col-4 s-col-12 righty">
          <a href="" class="btns btn-reg">注册享优惠</a>
          <a href="" class="btns btn-contact">立即咨询</a>
        </div>
      </div>
    </section>

  </main>
<template file="Content/footer.php"/>  
</body>

</html>