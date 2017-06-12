<!DOCTYPE html>
<html lang="en">

<head>
  <title>云服务</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <!--通用样式-->
  <script src="{$config_siteurl}statics/market/dist/headerfooter/headerfooter.js"></script>

</head>

<body>
  <link href="{$config_siteurl}statics/market/dist/service-cloud/service-cloud.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/market/dist/new_index/new_index.js"></script>
  <script src="{$config_siteurl}statics/market/dist/service-cloud/service-cloud.js"></script>


  <div class="page-contents-wrapper">
    <!--header-->
<template file="Content/header.php"/>  
    <!--banner-->
    <div class="banner">
      <div class="img-holder" style="background-image: url('{$goods.img_banner}');">
        <div class="container">
          <div class="banner-inner">
            <p class="banner-title"><img class="zx" src="{$goods.img_logo}"/>{$goods.name}</p>
            <p class="banner-text1">{$goods.description}</p>
            <p class="consult2"><a href="javascript:void(0)" target="_self"  class="consult advice" >立即咨询</a></p>
          </div>
        </div>
      </div>
    </div>

    <!--第一层-->

    <div class="lay01">
      <div class="container">
        <p class="lay01-title">{$goods.manual}</p>
        <div class="list-box">
          <div class="row">
<volist name='intro' id='vo' >
            <div class="l-col-3  m-col-6 s-col-12">
              <div class="list-block">
                <div class="show-block">
                  <div class="img-holder"><img src="{$vo.img_intro}"/></div>
                  <div class="text-holder">
                    <p class="pro-title">{$vo.intro_name}</p>
                    <p class="pro-text">{$vo.intro|mb_strimwidth=0,100,' [了解更多...]'}</p>
                  </div>
                </div>
                <div class="hide-block">
                  <p class="hide-title">{$vo.intro_name}</p>
                  <p class="hide-text">{$vo.intro}</p>
                </div>                
              </div>
            </div>     
</volist>
          </div>
        </div>
      </div>
    </div>
    

   <!--第二层-->

  <div class="lay02">
    <div class="container">
      <p class="lay02-title">更多服务</p>
      <div class="service">
        <div class="row">
<volist name='service' id='list' >
  <a href="/index.php?g=Bazaar&m=Ser&a=detail&id={$list.id}">
          <div class="l-col-2 m-col-2 s-col-2" <if condition="($list.id eq $id)"> style='display:none;'<else/> style='' </if> >
            <div class="img-holder"><img src="{$list.img_logo}"/></div>
            <div class="text-holder">{$list.name}</div>
          </div>
   </a>            
</volist>          
        </div>
      </div>
    </div>
  </div>


<template file="Content/footer.php"/>     
  
  </div>
</body>

</html>