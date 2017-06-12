<!DOCTYPE html>
<html lang="en">

<head>
  <title>云市场</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <script src="{$config_siteurl}statics/market/dist/products/products-list.js"/>
  <!--通用样式-->
  <link href="{$config_siteurl}statics/market/dist/compos.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/market/dist/headerfooter/headerfooter.js"></script>
</head>

<body>
  <link href="{$config_siteurl}statics/market/dist/products/products-list.css" rel="stylesheet">

  <div class="page-contents-wrapper">
    <!--header-->
<template file="Content/header.php"/>

    <!--banner-->
    <div class="banner">
      <img src="{$config_siteurl}statics/market//images/index/banner.jpg" />
    </div>

    <!--content-->
    <div class="lay01">
      <div class="container">
        <div class="title">
          <p>产品分类</p>
        </div>
        <div class="products-class">     
         <!-- <form action="__SELF__" method="post" id="form"> -->
            <ul class="cate ul-click">
              <li class="first">分类：</li>
              <a href="/index.php?g=Bazaar&m=Market&a=products">    
          <li  <if condition='($cate_id eq 0)'> class="active" </if> >全部</li></a>
<volist name="cate_goods" id="vo" key='k'> 
    <if condition="$tag_id eq 0" >             
        <a href="/index.php?g=Bazaar&m=Market&a=products&cate_id={$vo.cate_id}"> 
    <else />
         <a href="/index.php?g=Bazaar&m=Market&a=products&cate_id={$vo.cate_id}&tag_id={$tag_id}">
     </if>    
        <li <if condition="($vo.cate_id eq $cate_id) "> class="active" </if>>
        {$vo.name}
      </li>
</a>
</volist>              
            </ul>          
            <ul class="tag">
              <li class="first">标签：</li>
<volist name='tag' id='vo' key='k' > 
    <if condition="$cate_id eq 0" >    
        <a href="/index.php?g=Bazaar&m=Market&a=products&tag_id={$vo.id}">    
    <else />  
        <a href="/index.php?g=Bazaar&m=Market&a=products&cate_id={$cate_id}&tag_id={$vo.id}">   
    </if>        
      <li data-tagid="{$vo.id}" <if condition="($vo.id eq $tag_id) "> class="active" </if>>{$vo.tag_name}</li>
                </a>
              
</volist>              
            </ul>
          <!-- </form> -->
        </div>
      </div>
    </div>
<!--产品列表-->
    <div class="lay02" id="1F">  

      <div class="container">

<volist name="cate_goods" id="vo" key='k'>      
        <div  class="products-list  <if condition='$vo[cate_id] neq $cate_id'>hidden<else/>visible</if>" id="list<?php echo ($k) ?>" <if condition="$vo[cate_id] eq $cate_id">style="diplay:block"</if>>

          <div class="row">
<?php foreach ($vo['goods'] as $k1 => $v1) :?> 
        
            <div class="l-col-3 m-col-6 s-col-6">
<a href="/index.php?g=Bazaar&m=Market&a=detail&gp_id={$v1.gp_id}"> 
              <div class="list-block">
                <div class="img-holder">
                  <img src="{$v1.img_logo}" />
                </div>
                <div class="text-holder">
                  <p class="p-name">{$v1.name}</p>
                  <p class="p-text">{$v1.description|mb_strimwidth=0,100,' [了解更多...]'}</p>
                  <p class="p-price">￥{$v1.price}/月 起</p>
                </div>
              </div>
 </a>                
            </div>
      <if condition="($k1+1)%4 eq 0" >
       </div>
       <div class="row">
       </if>  

 <?php endforeach; ?>            
            
          </div>

<!--           <div class="page">
            <p></p>
          </div>    -->  

        </div>

</volist>
<!-- 展示所有商品   -->
        <div class="products-list <if condition='$cate_id'>hidden<else/>visible</if>" id="list0">

          <div class="row">
<volist name="goods" id="v1" key='k'>   
   
            <div class="l-col-3 m-col-6 s-col-6">
      <a href="/index.php?g=Bazaar&m=Market&a=detail&gp_id={$v1.gp_id}">         
              <div class="list-block">
                <div class="img-holder">
                  <img src="{$v1.img_logo}" />
                </div>
                <div class="text-holder">
                  <p class="p-name">{$v1.name}</p>
                  <p class="p-text">{$v1.description|mb_strimwidth=0,140,' [了解更多...]'}</p>
                  <p class="p-price">￥{$v1.price}/月 起</p>
                </div>
              </div>
     </a>               
            </div>
            <if condition="($k)%4 eq 0" >
       </div>
       <div class="row">
       </if>   
</volist>  
       
            
          </div>

<!--           <div class="page">
            <p></p>
          </div>  -->    

        </div>
<!-- 展示所有商品 -->
   


      </div>

    </div>
  </div>
  
<link href="{$config_siteurl}statics/market//dist/compos.css" rel="stylesheet">
<script src="{$config_siteurl}statics/market/dist/headerfooter/footer_common.js"></script>
<div class="bottom">
      <div class="container">
        <div class="row">
          <div class="l-col-2  m-col-3 s-col-6">
            <ul>
              <li>公司</li>
              <li><a href="">关于我们</a></li>
              <li><a href="">加入YUN88</a></li>
              <li><a href="">联系我们</a></li>
            </ul>
          </div>
          <div class="l-col-2 m-col-3 s-col-6">
            <ul>
              <li>合作</li>
              <li><a href="">已合作厂商</a></li>
              <li><a href="">成为合作伙伴</a></li>
            </ul>
          </div>
          <div class="l-col-2 m-col-3 s-col-6">
            <ul>
              <li>资源</li>
              <li><a href="">云课堂</a></li>
            </ul>
          </div>
          <div class="l-col-2 m-col-3 s-col-6">
            <ul>
              <li>关注</li>
              <li><a href="">新闻中心</a></li>
              <li><a href="">官方微博</a></li>
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
</body>

</html>