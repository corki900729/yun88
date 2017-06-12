<template file="Content/header.php"/>

  <link href="{$config_siteurl}statics/dist/shichang/shichang.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/shichang/details.js"></script>

  <main class="page-wrap shichang-details ">
    <!--banner-->
    <section class="banner">
      <div class="container">
        <div class="banner-inner">

          <div class="row">

            <div class="l-col-6 m-col-6 s-col-12">
              <div class="banner-left">
                <img src="{$intro.use}" />
              </div>
            </div>

            <div class="l-col-6 m-col-6 s-col-12">

              <div class="banner-right">
                <p class="tit1">{$goods.name}</p>
                <p class="exp1">{$goods.company|htmlspecialchars_decode}</p>
                <p class="experience">
                  <a href="{$goods.www}" class="exper">立即体验</a>
                  <a href="javascript:void(0)" target="_self" class="consult advice">商务咨询</a>
                </p>
              </div>

            </div>

          </div>

        </div>
      </div>
    </section>

    <section class="display-area">
      <div class="container">
        <div class="tab">
          <ul>
            <li class="pro-details">产品详情<span></span></li>
            <li class="pro-price">产品价格<span></span></li>
            <li class="pro-cases">用户案例<span></span></li>
            <li class="resource-center">资源中心<span></span></li>
            <li class="com-problem">常见问题<span></span></li>
          </ul>
        </div>
        <div class="content p-details">
          <div class="product-details">
            <div class="row">
              <div class="l-col-3">
                <div class="img-holder"><img src="{$goods.img_logo}" /></div>
              </div>
              <div class="l-col-9">
                <div class="text-holder">
                  {$goods.instro|htmlspecialchars_decode}
                    </div>
              </div>
            </div>
          </div>

          <div class="products-video">
            <div class="row">
              <div class="l-col-8">
                <div class="video-box">
                  <video id="example_video_1" controls crossorigin>
                    <source src="{$goods.is_new}" type='video/mp4' />
                  </video>
                </div>
              </div>
              <div class="l-col-4">
                <div class="img-holder">
                  <img src="{$goods.is_hot}" />
                </div>
              </div>
            </div>
          </div>

          <div class="products-explain">
            <p>产品说明</p>
            <div class="row">
	 <div class="l-col-12">{$intro.intru|htmlspecialchars_decode}</div>
                 </div>
               </div>

          <div class="products-function">
            <p>产品功能</p>
            <div class="row">
              <div class="l-col-6"><img src="{$config_siteurl}statics/images/products-details/f1_03.png" /></div>

            </div>
          </div>

          <div class="products-icon">
            <div class="row">
<div class="l-col-12">{$intro.func|htmlspecialchars_decode}</div>  

            </div>
          </div>


        </div>

        <div class="content p-price">
{$goods.price_logo|htmlspecialchars_decode}   
        </div>

        <div class="content p-cases">
<volist name='exp' id='vo'>
                <div class="row">
                  <div class="case">                  
                    <div class="l-col-3">
                      <div class="img-holder"><img src="{$vo.img_logo}"/></div>                   
                    </div>
                    <div class="l-col-9">
                      <div class="text-holder">
                        <p class="product-title">{$vo.instro|htmlspecialchars_decode}</p>

                      </div>
                    </div>
                  </div>
                </div>
</volist>
              </div>

        <div class="content p-resource">
          <div class="row">
<volist name='source' id='vo' offset="0" length='3'>
            <div class="l-col-4">
              <div class="source-block">
                <img src="{$config_siteurl}statics/images/products-details/doc.png" />
                <a class="doc" href="{$vo.source}">{$vo.source_name|mb_strimwidth=0,23,'...'}</a>
                <a class="load" href="{$vo.source}">立即下载</a>
              </div>
            </div>
</volist>
          </div>

          <div class="row divide">
<volist name='source' id='vo' offset="3" length='3' key="k">
                  <div class="l-col-4">
                    <div class="source-block">
                      <img src="{$config_siteurl}statics/market/images/products-details/doc.png"/>
                      <a class="doc" href="">{$vo.source_name|mb_strimwidth=0,23,'...'}</a>
                      <a class="load" href="{$vo.source}">立即下载</a>
                    </div>
                  </div>
   <if condition="($k%3 eq 0)" >
     </div>
    <div class="row divide">
    </if>             
</volist> 
  </div>
 </div>         

        <div class="content common-problem">
          <div class="question">
<volist name='pro' id='vo' >          
            <p class="ask">Q：{$vo.pro}</p>
            <p class="answer">{$vo.intru|htmlspecialchars_decode}
            </p>
</volist>            
          </div>
          <div class="solution">
            <p>以上信息是否解决您的问题？</p>
            <p><a class="yes" href="">是</a><a class="no" href="">否</a></p>
          </div>
        </div>



      </div>

    </section>

    <!--详情页底部-->
    <section class="bottom" id="ocean">
      <div class="container">
        <div class="service-box">
          <p class="service">
            <span class="offer">YUN88为您甄选提供主流云产品及服务</span>
            <!--<span><b>甄选</b>/Selection</span>•<span><b>服务</b>/Service</span>•<span><b>可靠</b>/Reliable</span>•<span><b>效率</b>/Efficiency</span>-->
            <a href="javascript:void(0)" target="_self" class="consult advice">咨询了解</a>
          </p>
          <div class="see-more">
            <a class="more consult" href="javascript:void(0)" target="_self">查看更多云产品>>></a>
          </div>
        </div>
      </div>


      <div class="wave1">

      </div>

      <div class="wave2">
      </div>




    </section>

  </main>
<template file="Content/footer.php"/>
</body>

</html>