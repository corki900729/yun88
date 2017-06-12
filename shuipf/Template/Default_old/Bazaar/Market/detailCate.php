<!DOCTYPE html>
<html lang="en">

<head>
  <title>云产品</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <!--通用样式-->
  <link href="{$config_siteurl}statics/market/dist/compos.css" rel="stylesheet">
  <!-- <script src="{$config_siteurl}statics/market/dist/headerfooter/headerfooter.js"></script> -->

</head>

<body>
  <link href="{$config_siteurl}statics/market/dist/yunshicha/ysc.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/market/dist/index/index.js"></script>
  <script src="{$config_siteurl}statics/market/dist/yunshicha/ysc.js"></script>


  <div class="page-contents-wrapper">
    <!--header-->
<template file="Content/header.php"/>


    <!--banner-->

    <div class="banner">
      <div>
        <img src="{$config_siteurl}statics/market/images/index/banner.jpg" />
      </div>
      <div>
        <img src="{$config_siteurl}statics/market/images/index/banner.jpg" />
      </div>

    </div>


    <div class="container">
      <div class="row">
        <div class="lay01">
          <div class="l-col-3">
            <div class="lay01-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market/images/ysc/ys1.png" />
              </div>
              <div class="text-holder">
                <p>甄选/Selection</p>
                <p>帮你严选可靠、安全、领先的云产品、应用</p>
              </div>
            </div>
          </div>
          <div class="l-col-3">
            <div class="lay01-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market/images/ysc/ys2.png" />
              </div>
              <div class="text-holder">
                <p>服务/Service</p>
                <p>提供专业、个性化的线上+线下咨询和服务</p>
              </div>
            </div>
          </div>
          <div class="l-col-3">
            <div class="lay01-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market/images/ysc/ys3.png" />
              </div>
              <div class="text-holder">
                <p>可靠/Reliable</p>
                <p>依托元鼎专业技术实力加速传统IT架构,IT业务系统和云的融合，迁移</p>
              </div>
            </div>
          </div>
          <div class="l-col-3">
            <div class="lay01-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market/images/ysc/ys4.png" />
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

    <div class="lay02">
      <div class="container">
        <div class="lay02-inner">
<volist name='cates' id='vo'>       
          <div class="lay02-block lay02-block2 lay02-block1">
            <div class="small-block" style="display: none;">
              <p class="icon"><img src="{$config_siteurl}statics/market/images/ysc/ic1.png" /></p>
              <p class="market"><span>{$vo.name}</span></p>
              <p class="qs">问卷调查</p>
              <p class="qs">过程分析</p>
              <p class="qs">结果统计</p>
              <p class="see"><a href="">查看详细</a></p>
            </div>
            <div class="big-block">
              <div class="title">{$vo.name}</div>
<?php foreach ($vo['child'] as $key => $vo1) : ?>              
              <div class="satisfaction">
                <p>{$vo1.name}<a href="/index.php?g=Bazaar&m=Market&a=detail&cate_id={$vo1.cate_id}">+</a></p>
                <p>{$vo1.tag}</p>
              </div>
<?php endforeach; ?>
             <!--  <div class="analysis">
                <p>过程分析<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="statistics">
                <p>结果统计<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div> -->
            </div>
          </div>
</volist>
<!--           <div class="lay02-block lay02-block2">
            <div class="small-block">
              <p class="icon"><img src="{$config_siteurl}statics/market/images/ysc/ic1.png" /></p>
              <p class="market"><span>市场调研</span></p>
              <p class="qs">问卷调查</p>
              <p class="qs">过程分析</p>
              <p class="qs">结果统计</p>
              <p class="see"><a href="">查看详细</a></p>
            </div>
            <div class="big-block" style="display: none;">
              <div class="title">促销管理</div>
              <div class="satisfaction">
                <p>问卷调查<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="analysis">
                <p>过程分析<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="statistics">
                <p>结果统计<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
            </div>
          </div>
          <div class="lay02-block lay02-block2">
            <div class="small-block">
              <p class="icon"><img src="{$config_siteurl}statics/market/images/ysc/ic1.png" /></p>
              <p class="market"><span>市场调研</span></p>
              <p class="qs">问卷调查</p>
              <p class="qs">过程分析</p>
              <p class="qs">结果统计</p>
              <p class="see"><a href="">查看详细</a></p>
            </div>
            <div class="big-block" style="display: none;">
              <div class="title">促销管理</div>
              <div class="satisfaction">
                <p>问卷调查<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="analysis">
                <p>过程分析<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="statistics">
                <p>结果统计<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
            </div>
          </div>
          <div class="lay02-block lay02-block2">
            <div class="small-block">
              <p class="icon"><img src="{$config_siteurl}statics/market/images/ysc/ic1.png" /></p>
              <p class="market"><span>市场调研</span></p>
              <p class="qs">问卷调查</p>
              <p class="qs">过程分析</p>
              <p class="qs">结果统计</p>
              <p class="see"><a href="">查看详细</a></p>
            </div>
            <div class="big-block" style="display: none;">
              <div class="title">促销管理</div>
              <div class="satisfaction">
                <p>问卷调查<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="analysis">
                <p>过程分析<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="statistics">
                <p>结果统计<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
            </div>
          </div>
          <div class="lay02-block lay02-block2">
            <div class="small-block">
              <p class="icon"><img src="{$config_siteurl}statics/market/images/ysc/ic1.png" /></p>
              <p class="market"><span>市场调研</span></p>
              <p class="qs">问卷调查</p>
              <p class="qs">过程分析</p>
              <p class="qs">结果统计</p>
              <p class="see"><a href="">查看详细</a></p>
            </div>
            <div class="big-block" style="display: none;">
              <div class="title">促销管理</div>
              <div class="satisfaction">
                <p>问卷调查<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="analysis">
                <p>过程分析<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="statistics">
                <p>结果统计<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
            </div>
          </div>
          <div class="lay02-block lay02-block2">
            <div class="small-block">
              <p class="icon"><img src="{$config_siteurl}statics/market/images/ysc/ic1.png" /></p>
              <p class="market"><span>市场调研</span></p>
              <p class="qs">问卷调查</p>
              <p class="qs">过程分析</p>
              <p class="qs">结果统计</p>
              <p class="see"><a href="">查看详细</a></p>
            </div>
            <div class="big-block" style="display: none;">
              <div class="title">促销管理</div>
              <div class="satisfaction">
                <p>问卷调查<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="analysis">
                <p>过程分析<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
              <div class="statistics">
                <p>结果统计<a href="">+</a></p>
                <p>基于客户应用场景测试各种云应用</p>
              </div>
            </div>
          </div> -->
        </div>
      </div>
    </div>

    <div class="lay03">
      <div class="container">
        <div class="lay03-title">市场报道</div>
        <div class="lay03-box">
          <div class="row lay03-inner">
            <div class="l-col-4">
              <div class="lay03-block">
                <div class="img-holder">
                  <img src="{$config_siteurl}statics/market/images/ysc/bg1.png" />
                </div>
                <div class="text-holder">
                  <p>机器学习为您解密雾霾形成原因</p>
                  <p>移动开源框架Weex的技术核心及双11应用经验使用API网关建立多场景测试环境</p>
                </div>
              </div>
            </div>
            <div class="l-col-4">
              <div class="lay03-block">
                <div class="img-holder">
                  <img src="{$config_siteurl}statics/market/images/ysc/bg1.png" />
                </div>
                <div class="text-holder">
                  <p>机器学习为您解密雾霾形成原因</p>
                  <p>移动开源框架Weex的技术核心及双11应用经验使用API网关建立多场景测试环境</p>
                </div>
              </div>
            </div>
            <div class="l-col-4">
              <div class="lay03-block">
                <div class="img-holder">
                  <img src="{$config_siteurl}statics/market/images/ysc/bg1.png" />
                </div>
                <div class="text-holder">
                  <p>机器学习为您解密雾霾形成原因</p>
                  <p>移动开源框架Weex的技术核心及双11应用经验使用API网关建立多场景测试环境</p>
                </div>
              </div>
            </div>
            <div class="l-col-4">
              <div class="lay03-block">
                <div class="img-holder">
                  <img src="{$config_siteurl}statics/market/images/ysc/bg1.png" />
                </div>
                <div class="text-holder">
                  <p>机器学习为您解密雾霾形成原因</p>
                  <p>移动开源框架Weex的技术核心及双11应用经验使用API网关建立多场景测试环境</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="click-more">
          点击加载
        </div>
      </div>
    </div>

    <div class="lay04">
      <div class="container">
        <div class="lay04-title">专家咨询</div>
        <div class="row">
          <div class="l-col-3">
            <div class="lay04-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market/images/ysc/bg2.png" />
              </div>
              <div class="text-holder">
                <p class="name">岳晓东</p>
                <p class="job">人力资源高级管理师</p>
              </div>
            </div>
          </div>
          <div class="l-col-3">
            <div class="lay04-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market/images/ysc/bg2.png" />
              </div>
              <div class="text-holder">
                <p class="name">岳晓东</p>
                <p class="job">人力资源高级管理师</p>
              </div>
            </div>
          </div>
          <div class="l-col-3">
            <div class="lay04-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market/images/ysc/bg2.png" />
              </div>
              <div class="text-holder">
                <p class="name">岳晓东</p>
                <p class="job">人力资源高级管理师</p>
              </div>
            </div>
          </div>
          <div class="l-col-3">
            <div class="lay04-block">
              <div class="img-holder">
                <img src="{$config_siteurl}statics/market/images/ysc/bg2.png" />
              </div>
              <div class="text-holder">
                <p class="name">岳晓东</p>
                <p class="job">人力资源高级管理师</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="lay05">
      <div class="container">
        <div class="lay05-title">
          他们都在使用
        </div>
        <div class="row">
          <div class="l-col-2">
            <img src="{$config_siteurl}statics/market/images/ysc/tb1.png" />
          </div>
          <div class="l-col-2">
            <img src="{$config_siteurl}statics/market/images/ysc/tb2.png" />
          </div>
          <div class="l-col-2">
            <img src="{$config_siteurl}statics/market/images/ysc/tb3.png" />
          </div>
          <div class="l-col-2">
            <img src="{$config_siteurl}statics/market/images/ysc/tb4.png" />
          </div>
          <div class="l-col-2">
            <img src="{$config_siteurl}statics/market/images/ysc/tb5.png" />
          </div>
          <div class="l-col-2">
            <a href=""><img src="{$config_siteurl}statics/market/images/ysc/tb6.png" /></a>
          </div>

        </div>
      </div>
    </div>









    <!--bottom-->



    <template file="Content/footer.php"/>

  </div>

</body>

</html>