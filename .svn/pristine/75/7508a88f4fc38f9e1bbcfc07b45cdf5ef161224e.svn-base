<!DOCTYPE html>
<html lang="en">

<head>
  <title>云市场</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


<!-- 美洽聊天窗口 -->


  <!--通用样式-->
  <link href="{$config_siteurl}statics/market/dist/compos.css" rel="stylesheet">
  <!-- <script src="{$config_siteurl}statics/market/dist/headerfooter/headerfooter.js"></script> -->
</head>

<body>
  <link href="{$config_siteurl}statics/market/dist/index/index.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/market/dist/index/index.js"></script>
  <!-- <script src="{$config_siteurl}statics/market/dist/products/products-details.js"></script> -->
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>


  <div class="page-contents-wrapper">
    <!--header-->
   
<template file="Content/header.php"/>

    <!--banner-->
 
    <div class="banner">
      <div>
        <div class="img-holder" style="background-image: url('{$config_siteurl}statics/market//images/index/banner2.jpg');">
          <div class="container">
            <div class="banner-inner">
              <p class="banner-title">YUN88 为您甄选</p>
              <p class="banner-text1">安全可靠的<span>云产品、云服务</span></p>
              <p class="banner-text2">茫茫“云”海，YUN88专家以严谨的态度，为您甄选可靠、安全的云产品&服务，倾力打造中国首个企业级B2B云平台</p>
            </div>
          </div>
        </div>
      </div>
    </div>



    <div class="container">
      <div class="row">
        <div class="lay01">
          <div class="l-col-3 m-col-6 s-col-12">
            <div class="lay01-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market//images/ysc/ys1.png"/>
              </div>
              <div class="text-holder">
                <p>甄选/Selection</p>
                <p>帮你严选可靠、安全、领先的云产品、应用</p>
              </div>
            </div>           
          </div>
          <div class="l-col-3 m-col-6 s-col-12">
            <div class="lay01-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market//images/ysc/ys2.png"/>
              </div>
              <div class="text-holder">
                <p>服务/Service</p>
                <p>提供专业、个性化的线上+线下咨询和服务</p>
              </div>
            </div> 
          </div>
          <div class="l-col-3 m-col-6 s-col-12">
            <div class="lay01-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market//images/ysc/ys3.png"/>
              </div>
              <div class="text-holder">
                <p>可靠/Reliable</p>
                <p>依托元鼎专业技术实力加速传统IT架构,IT业务系统和云的融合，迁移</p>
              </div>
            </div> 
          </div>
          <div class="l-col-3 m-col-6 s-col-12">
            <div class="lay01-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market//images/ysc/ys4.png"/>
              </div>
              <div class="text-holder">
                <p>效率/Efficiency</p>
                <p>一站式采购综合型管理平台便捷、高效、降低成本</p>
              </div>
            </div> 
          </div>
        </div>
      </div>

    </div>
    <div class="lay02" style="background-image: url({$config_siteurl}statics/market//images/index/bg1.jpg)">
      <div class="container">
        <div class="lay02-inner">
        
          <p class="title">在云端继续你的业务</p>
          <p class="exp">不管你处于什么行业，YUN88云已定制多套解决方案，助你轻松跨入“互联网+”时代</p>  
<volist name="cate_goods" id="vo" key='k'> 
          <div class="product-list" id="p<?php echo ($k) ?>">  
      <?php foreach ($vo['goods'] as $k1 => $v1):
      if($k1<3){
      ?>
        <p class="y-wrap y-wrap<?php echo ($k1+1) ?>">
          <span ><a href="/index.php?g=Bazaar&m=Market&a=detail&gp_id={$v1.gp_id}"><img src="{$v1.img_logo}"/></a></span>  </p>
       <?php  } endforeach; ?>   
            <p class="y-wrap y-wrap4"><span ><a href="/index.php?g=Bazaar&m=Market&a=products&cate_id={$vo.cate_id}">了解更多</a></span></p>
         </div> 
</volist>
          <div class="lay02-btm">
            <ul>
<volist name="cate_goods" id="vo" key='k'> 
              <li <if condition="($vo.cate_id eq 1) "> class="active" </if> >{$vo.name}  </li>

</volist>             
            </ul>
          </div>
        
        </div>
      </div>
    </div>






    <!--bottom-->
    
    <template file="Content/footer.php"/>



  </div>

</body>
<script>
  function ajaxrequire(e){
    // console.log(e);
    var cate_id = e.value;
        $.getJSON("{:U('Market/ajaxgoods')}",{cate_id:cate_id},function(data){ 
          console.log(data);

    }); 
  }
</script>
</html>