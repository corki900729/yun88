<!DOCTYPE html>
<html lang="en">
  <head>
    <title>云产品</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- 美洽聊天窗口 -->

    <!--通用样式-->
    <link href="{$config_siteurl}statics/market/dist/compos.css" rel="stylesheet">
    <!-- <script src="{$config_siteurl}statics/market/dist/headerfooter/headerfooter.js"></script> -->
  </head>
  <body>
    <link href="{$config_siteurl}statics/market/dist/products/products-details.css" rel="stylesheet">
    <script src="{$config_siteurl}statics/market/dist/products/products-details.js"></script>

      <div class="page-contents-wrapper">
        <!--header-->
       
<template file="Content/header.php"/>        

        <!--banner-->

        <div class="banner">
          <div class="container">
            <div class="banner-inner">
              <div class="banner-left f_l">
              <img src="{$intro.use}" alt="">
                
              </div>
              <div class="banner-right f_l">
                <p class="tit1">{$goods.name}</p>
                <p class="exp1">{$goods.company|htmlspecialchars_decode}</p>
                <p class="experience">
                  <a href="{$goods.www}" class="exper">立即体验</a>
                 <a href="javascript:void(0)" target="_self"  class="consult advice" >商务咨询</a>
                </p>
              </div>
            </div>
          </div>
        </div>

        <div class="lay01">
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
                    <div class="img-holder"><img src="{$goods.img_logo}"/></div>                   
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
                       <video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered vjs-16-9" controls preload="auto" width="642" height="352" poster="{$intro.use}"  
				                       data-setup="{}">
				                <source src="{$goods.is_new}" type='video/mp4' />				    				
                     </div>
                   </div>
                   <div class="l-col-4">
                     <div class="img-holder">
                       <img src="{$goods.is_hot}"/>
                     </div>
                   </div>
                 </div>
               </div>

               <div class="products-explain">
                 <p class="border-left">产品说明</p>
                 <div class="row">
                   <div class="l-col-12">{$intro.intru|htmlspecialchars_decode}</div>
                 </div>
               </div>
               <div class="products-function">
                 <p class="border-left">产品功能</p>
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
                      <img src="{$config_siteurl}statics/market/images/products-details/doc.png"/>
                      <a class="doc" href="{$vo.source}">{$vo.source_name|mb_strimwidth=0,23,'...'}</a>
                      <a class="load" href="{$vo.source}">立即下载</a>
                    </div>
                  </div>
</volist>                  

                </div>

                <div class="row divide">
<volist name='source' id='vo' offset="3" length='3'>
                  <div class="l-col-4">
                    <div class="source-block">
                      <img src="{$config_siteurl}statics/market/images/products-details/doc.png"/>
                      <a class="doc" href="">{$vo.source_name|mb_strimwidth=0,23,'...'}</a>
                      <a class="load" href="{$vo.source}">立即下载</a>
                    </div>
                  </div>
</volist> 

                </div>
                <div class="row divide">
<volist name='source' id='vo' offset="6" length='3'>
                  <div class="l-col-4">
                    <div class="source-block">
                      <img src="{$config_siteurl}statics/market/images/products-details/doc.png"/>
                      <a class="doc" href="">{$vo.source_name|mb_strimwidth=0,23,'...'}</a>
                      <a class="load" href="{$vo.source}">立即下载</a>
                    </div>
                  </div>
</volist> 

                </div>

              </div>

              <div class="content common-problem">
                <div class="question">
<volist name='pro' id='vo' >             
                  <p class="ask">Q：{$vo.pro}</p>
                  <div class="answer">{$vo.intru|htmlspecialchars_decode}</div>
</volist>                 

                </div>
                <div class="solution">
                  <p>以上信息是否解决您的问题？</p>
                  <p><a class="yes" href="">是</a><a class="no" href="">否</a></p>
                </div>
              </div>

        

          </div>

 <!--详情页底部-->
<link rel="stylesheet" href='{$config_siteurl}statics/market//dist/products/products-details.css' >
 <script  src="{$config_siteurl}statics/market/dist/products/products-details.js" ></script>
    <div class="btm" id="ocean" >
      <div class="container">
        <p class="service">
        <span class="offer">YUN88为您甄选提供主流云产品及服务</span>
        <!-- <span><b>甄选</b>/Selection</span>•<span><b>服务</b>/Service</span>•<span><b>可靠</b>/Reliable</span>•<span><b>效率</b>/Efficiency</span> -->
        <a class="consult advice" href="javascript:void(0)" target="_self" class="consult advice">咨询了解</a></p>
        <p class="see-more"><a href="{:U('Bazaar/Market/index')}" target="_blank" class="more">查看更多云产品>>></a></p>
        
      </div>
            <!--波浪效果-->
  <!--     <div class="svg-box">
        <svg version="1.1" id="logoSvg" x="0px" y="0px" width="100%" height="100%" viewBox="0 0 1920 100" xml:space="preserve" zoomAndPan="magnify">
          <defs>
            <pattern id="water" width=".25" height="1.1" patternContentUnits="objectBoundingBox">
              <path opacity="1" fill="#fff" d="M0.25,1H0c0,0,0-0.659,0-0.916c0.083-0.303,0.158,0.334,0.25,0C0.25,0.327,0.25,1,0.25,1z"></path>
            </pattern>
            <pattern id="water2" width=".25" height="1.1" patternContentUnits="objectBoundingBox">
              <path opacity="1" fill="#40cdd0" d="M0.25,1H0c0,0,0-0.659,0-0.916c0.083-0.303,0.158,0.334,0.25,0C0.25,0.327,0.25,1,0.25,1z"></path>
            </pattern> -->
      <!-- <path opacity="0.3" id="logo" class="logo-mask" fill-rule="evenodd" clip-rule="evenodd" fill="#FFFFFF" d=""></path> -->
 <!--       <rect opacity="0.3" id="logo" class="logo-mask" fill-rule="evenodd" clip-rule="evenodd" fill="#FFFFFF"></rect>
      <mask id="logo-mask">
              <use x="0" y="0" xlink:href="#logo" opacity="1" fill="#ffffff"></use>
            </mask>
      <g id="eff">
              <use x="0" y="0" xlink:href="#logo" fill="#fff"></use>
              <rect class="water-fill" fill="url(#water2)" x="-1920" y="0" width="3840" height="100" opacity="0.3">
                <animate attributeType="xml" attributeName="x" from="-1920" to="-20" repeatCount="indefinite" dur="3s"></animate>
              </rect>
              <rect class="water-fill" fill="url(#water)" x="-1920" y="0" width="3840" height="100" opacity="0.3">
                <animate attributeType="xml" attributeName="x" from="-1920" to="-20" repeatCount="indefinite" dur="3s"></animate>
              </rect> -->
              <!--<rect class="water-container" fill="#fff" x="0" y="200" width="100%" height="0" opacity="0.5">
              </rect>
            </g>
          </defs>
          <use xlink:href="#eff" opacity="1"></use>
        </svg>       
    </div> -->
        <div class="wave1">

        </div>
    
        <div class="wave2">

        </div>
<!--       <p class="wave1"><img src="{$config_siteurl}statics/market//images/products-details/1.png"></p>
      <p class="wave2"><img src="{$config_siteurl}statics/market//images/products-details/2.png"></p> -->
    </div>
          <!--bottom-->
<link href="{$config_siteurl}statics/market//dist/compos.css" rel="stylesheet">
<script src="{$config_siteurl}statics/market/dist/headerfooter/footer_common.js"></script>
<div class="bottom">
      <div class="container">
 <div class="row">
          <div class="l-col-2 m-col-3 s-col-6">
            <ul>
              <li>公司</li>
              <li><a href="/index.php?a=lists&catid=6">关于我们</a></li>
              <li><a href="/index.php?a=lists&catid=5">加入YUN88</a></li>
              <li><a href="/index.php?a=lists&catid=11">联系我们</a></li>
            </ul>
          </div>
          <div class="l-col-2 m-col-3 s-col-6">
            <ul>
              <li>合作</li>
              <li><a href="/index.php?a=lists&catid=7">已合作厂商</a></li>
              <li><a href="/index.php?a=lists&catid=7">成为合作伙伴</a></li>
            </ul>
          </div>
          <div class="l-col-2 m-col-3 s-col-6">
            <ul>
              <li>资源</li>
              <li><a href="http://www.otpub.com">云课堂</a></li>
            </ul>
          </div>
          <div class="l-col-2 m-col-3 s-col-6">
            <ul>
              <li>关注</li>
              <li><a href="/index.php?a=lists&catid=2">新闻中心</a></li>
              <!-- <li><a href="" target="_blank">官方微博</a></li> -->
            </ul>
          </div>
          <div class="l-col-2 m-col-3 s-col-6">
            <ul class="no-border">
              <li>成员</li>
              <li>
                <a href="http://www.yuandingit.com/" target="_blank"><img src="{$config_siteurl}statics/market/images/products-details/yd.png" /></a>
              </li>
              <li>
                <a href="http://otpub.yuandingit.com/" target="_blank"><img src="{$config_siteurl}statics/market/images/products-details/ot.png" /></a>
              </li>
            </ul>
          </div>
          <div class="l-col-2 m-col-3 s-col-6">
            <ul class="no-border">
              <li><img src="{$config_siteurl}statics/market/images/products-details/ewm.png" /></li>
          </div>
        </div>
        <p class="record">版权所有2003-2015北京元鼎时代科技股份有限公司 京ICP-3备06005430号 京公网安备11010802010037<img src="{$config_siteurl}statics/market/images/new_index/license1.png"/><img src="{$config_siteurl}statics/market/images/new_index/license2.png"/></p>
      </div>
    </div>   


        </div>

      </div>

  </body>
</html>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1261586763'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1261586763%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>