<template file="Content/header.php"/>

  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/index/index.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/index/index.js"></script>

  <main class="page-wrap  index">

    <section class="banner">
      <div class="inner">
        <h2>
          倾力打造中国首个<b>企业级B2B云平台</b>
        </h2>
        <h2>
          YUN88专家以严谨的态度,为您甄选可靠安全的云产品&服务
        </h2>
      </div>
    </section>

    <section class="floors">

      <div class="floor f-1" >
        <div class="contents">
          <div class="row" autoHi>
            <div class="l-col-3 m-col-3 s-col-6 ">
              <div class="icon-holder">
                <img src="{$config_siteurl}statics/images/index/ticon01.png" alt="">
                <span>甄选  Selection</span>
              </div>
            </div>
            <div class="l-col-3 m-col-3 s-col-6">
              <div class="icon-holder">
                <img src="{$config_siteurl}statics/images/index/ticon02.png" alt="">
                <span>服务  Service</span>
              </div>
            </div>
            <div class="l-col-3 m-col-3 s-col-6">
              <div class="icon-holder">
                <img src="{$config_siteurl}statics/images/index/ticon03.png" alt="">
                <span>可靠  Reliable</span>
              </div>
            </div>
            <div class="l-col-3 m-col-3 s-col-6">
              <div class="icon-holder">
                <img src="{$config_siteurl}statics/images/index/ticon04.png" alt="">
                <span>效率  Efficiency</span>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="floor f-2">
        <div class="titles">
          <h2>优选、领先的公有云平台</h2>
          <p>整合国内外顶尖厂商的公有云产品，供不同业务需求的用户选择和使用</p>
        </div>
        <div class="hero">
          <div class="contents">
            <div class="row">

              <div class="l-col-3 m-col-3 s-col-12 l-push-1 m-push-1 left-column">

                <div class="row">
<volist name="cloud" id="vo"  offset="0" length='3'>
                  <div class="l-col-12 m-col-12 s-col-6 blocky-con">
                    <div class="blocky">
                      <a href="{:U('Yun/Company/details',array('id'=>$vo[com_id]))}"></a>
                      <img src="{$vo.index_logo}" alt="">
                    </div>
                  </div>
</volist>                 

                </div>

              </div>

              <div class="l-col-8 m-col-8 isHidden-s right-side ">

                <div class="right-con">
                  <img src="{$config_siteurl}statics/images/index/f2-right.png" alt="">
                </div>

                <div class="right-text">
                  <div class="row">
                    <div class="l-col-9 m-col-9">
                      <h2>满足更多需求</h2>
                      <h2>整合国内外 顶尖厂商</h2>
                    </div>
                    <div class="l-col-3 m-col-3">
                      <a href="/index.php?g=Yun&m=Company&a=lists&type=1" class="btns btn-details">
                        更多产品
                      </a>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>

      </div>

      <div class="floor f-3">

        <div class="titles">
          <h2>甄选可靠云端应用</h2>
          <p>YUN88设立独立的云产品研究院，基于客户应用场景测试各种云应用，力求帮用户
          </p>
          <p>甄选出最优质的产品</p>
        </div>

        <div class="row hiCon">
<volist name="app" id="vo" > 
          <div class="l-col-2 m-col-3 s-col-6">
            <div class="blocky hiWatch">
              <div class="alt">
                <h3>{$vo.name}</h3>
                <div class="arrow">
                  <a href="{:U('Yun/Company/details',array('id'=>$vo[com_id]))}">
                     <svg t="1495701914535" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="19291"
                      xmlns:xlink="http://www.w3.org/1999/xlink">
                      <path d="M511.051 67.548c246.454 0 446.323 199.802 446.323 446.324 0 246.524-199.869 446.324-446.323 446.324-246.524 0-446.324-199.8-446.325-446.324 0-246.524 199.801-446.325 446.325-446.325zM511.051 904.407c215.7 0 390.534-174.834 390.534-390.534 0-215.702-174.799-390.604-390.534-390.604-215.735 0-390.569 174.903-390.569 390.604 0.001 215.701 174.869 390.534 390.569 390.534zM384.545 275.788c10.88-10.95 28.524-10.95 39.401 0l213.573 213.538c6.694 6.763 8.787 15.9 7.252 24.547 1.535 8.647-0.593 17.853-7.252 24.548l-213.573 213.608c-10.914 10.879-28.557 10.879-39.401 0-10.948-10.879-10.948-28.592 0-39.472l198.616-198.684-198.615-198.615c-10.95-10.948-10.95-28.592-0.001-39.471z"
                        p-id="19292" fill="#fff"></path>
                    </svg>

                  </a>
                </div>

              </div>
              <div>
                <h3>{$vo.name}</h3>
                <p>{$vo.txt_intro|mb_strimwidth=0,100, '[了解更多...]'}</p>
                <img src="{$vo.index_logo}" alt=""></div>
            </div>
          </div>
</volist>

        </div>

        <div class="more-btn">
          <a href="/index.php?g=Yun&m=Company&a=lists&type=2" class="btns btn-more">
            MORE
          </a>
        </div>

      </div>

      <div class="floor f-4">

        <div class="titles">
          <h2>专业、个性化的一站式服务</h2>
          <p>全程、专人为客户提供咨询规划、技术服务 （数据迁移、集成、托管等）等一站式服务。
          </p>
          <p>为用户带来更便捷高效的体验。</p>
        </div>

        <div class="back-row " >
          <div class="row" autoHi>
<volist name='service' id='vo'> 
            <div class="l-col-4 m-col-4 s-col-6">
              <div class="blockie">
              <a href="{:U('Bazaar/Ser/detail',array('id'=>$vo[id]))}"></a> 
                <img src="{$vo.img_logo}" alt="">
                  <p>{$vo.name}</p>
                  <p>{$vo.eng}</p>
              </div>
            </div>
</volist>
          </div>
        </div>

      </div>

      <div class="floor f-5 parallax">
        <div class="titles">
          <h2>合作案例</h2>
        </div>

        <div class="row hiCon">
<content action="lists" catid="9" order="id DESC" num="3" >
       <volist name="data" id="vo">
          <div class="l-col-4 m-col-4 s-col-12 coop-block">
            <a href="{$vo.url}"></a>
            <div class="text-holder">
              <p>{$vo.description}</p>
            </div>
            <div class="logo-holder">
              <div class="logo-wrap ">
                <img src="{$vo.thumb}" alt="">
              </div>
              <span>IMO云办公室客户案例</span>
            </div>
          </div>
      </volist>
</content>      


        </div>

      </div>

      <div class="floor f-6">
        <div class="container">
          <div class="row">
            <div class="l-col-8 m-col-8 s-col-8 left-sider isHidden-s">
              <p>YUN88专家以严谨的态度为您甄选可靠、安全的云产品&服务，</p>
              <p>倾力打造中国首个企业级B2B云平台</p>
            </div>
            <div class="l-col-4 m-col-4 s-col-12 right-sider">
              <a href="" class="btns btn-contact">联系我们</a>
            </div>
          </div>
        </div>
      </div>

    </section>

  </main>
<template file="Content/footer.php"/>
</body>

</html>