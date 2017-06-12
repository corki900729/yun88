<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/shichang/shichang.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/shichang/index.js"></script>

  <main class="page-wrap  shichang-index">

    <section class="top">
      <div class="contents">
        <h2>在云端继续您的人力云业务</h2>
        <div class="row">
          <div class="l-col-4 m-col-5 s-col-12">

            <div class="desc-roller">
<volist name="cate_goods" id="vo" key='k' offset="0" length='3'>  
              <div>
                <p>不管你处于什么行业，YUN88云已定制多套解决方案,助你轻松 跨入“互联网+”时代
                </p>
                <div class="icons-row">
                  <div class="row">                 
    <volist name="vo['goods']" id='goods' offset="0" length='3' key="k1">               
                      <div class="l-col-4">
                        <div  class="icon-wrapper">
                          <a href="/index.php?g=Bazaar&m=Market&a=detail&gp_id={$goods.gp_id}">
                            <img width="91px" height="31px" src="{$goods.small_logo}" alt="">
                          </a>
                        </div>
                      </div>    
    </volist>                  

                    </div>
                </div>
              </div>
</volist>


            </div>

            <div class="btn-row">
              <a href="/index.php?g=Bazaar&m=Market&a=products" class="btn-more btns">More</a>
              <div class="arrows isHidden-s">
                <i class="fa fa-arrow-left"></i>
                <i class="fa fa-arrow-right"></i>
              </div>
            </div>

          </div>
          <div class="l-col-8 m-col-7 s-col-12">
            <div class="row img-roller">
<volist name="cate_goods" id="vo" key='k' offset="0" length='4'>             
              <div class="l-col-3 m-col-6 s-col-6 blocky-con">
                <span class="isHidden-s isHidden-m">{$vo.eng|substr=0,1}</span>
                <!--data-desc-goto 之属性与 .desc-roller 对应-->
                <div class="blocky" data-desc-goto="{$k-1}">
                <img src="{$vo.baklogo}" class="alt">
                  <img src="{$vo.logo}" class="normal">
                  
                  <p>{$vo.name} {$vo.eng}</p>
                </div>
              </div>
</volist>


            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="mid">
      <h2>明星产品</h2>
      <div class="logo-wall">
        <div class="container">
          <div class="row logo-con" autoHi>
<volist name="market" id="vo" key='k' >    
            <div class="l-col-3 m-col-4 s-col-6 logo-item">
              <a href="/index.php?g=Bazaar&m=Market&a=detail&gp_id={$vo.gp_id}"></a>
              <div class="logo-inner">
                <img src="{$vo.index_logo}" alt="">
              </div>
            </div>
</volist>
            <div class="l-col-3 m-col-4 s-col-6 logo-item">
              <a href="/index.php?g=Bazaar&m=Market&a=products"></a>
              <div class="logo-inner">
                <p>MORE</p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="bottom">
      <div class="container">
        <div class="row">
          <div class="l-col-7 m-col-6 isHidden-s left-col">
            <div>
              <img src="{$config_siteurl}statics/images/shichang/icon-quote.jpg" alt="">
              <p class="notey">也许您不明白什么是最适合您，点击咨询了解更多云产品 YUN88为您甄选提供主流云产品及服务
              </p>
            </div>
          </div>
          <div class="l-col-5 m-col-6 s-col-12 right-col">
            <img class="btns" src="{$config_siteurl}statics/images/shichang/buckle-btm.png" alt="">
          </div>
        </div>
      </div>
    </section>
  </main>
<template file="Content/footer.php"/>  
</body>

</html>