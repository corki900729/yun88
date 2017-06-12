<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html lang="en">

<head>
  <title><?php echo ($header); ?></title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <!--公用组件-->
  <link href="<?php echo ($config_siteurl); ?>statics/dist/assets.css" rel="stylesheet">


</head>

<body><header class="page-header">
  <section class="logo">
    <a href="/index.php"><img src="<?php echo ($config_siteurl); ?>statics/images/logo.png" alt=""></a>
  </section>
  <nav>
    <!--pc端菜单-->
    <ul>
      <li><label><a href="<?php echo U('Bazaar/Market/index');?>"><span>云市场</span></a></label></li>
      <li>
        <label>
        <input type="checkbox">
        <span>云服务<i class="fa fa-caret-down"></i></span>
        <div class="submenu">
      <?php if(is_array($service)): $i = 0; $__LIST__ = $service;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><p><a href="/index.php?g=Bazaar&m=Ser&a=detail&id=<?php echo ($vo["id"]); ?>"><?php echo ($vo["name"]); ?></a></p><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
      </label>
      </li>
      <li>
        <label>
        <input type="checkbox">
        <span>解决方案<i class="fa fa-caret-down"></i></span>
        <div class="submenu">
          <p><a href="/index.php?g=Bazaar&m=Solution&a=video">视频</a>    </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=medical">医疗</a>  </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=game">游戏</a>     </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=safe">安全</a>     </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=finance">金融</a>  </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=figure">数字营销</a> </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=travel">旅游</a>   </p>
        </div>
        </label>
      </li>
      <li><label><a href="/index.php?a=lists&catid=8"><span>Why us</span></a></label></li>
    </ul>
  </nav>
  <section class="mid">

    <!--搜索-->
    <form action="<?php echo U('content/index/search');?>">
      <i class="fa fa-search"></i>
      <label for="">
      <input class="search-box" placeholder="search..." type="text" />
      <div class="search-notice">
        <p>按回车搜索</p>
      </div>
    </label>
    </form>

  </section>
  <section class="end">

    <!--登录-->
    <div class="log">
        <?php if(login_status()): ?><span><a href="<?php echo U('Member/User/profile');?>">个人中心</a></span>
          <b>|</b>
          <span><a href="<?php echo U('Member/Index/logout');?>">退出登录</a></span>
          <?php else: ?>
            <span><a href="<?php echo U('Member/Index/login');?>">登录</a></span>
            <b>|</b>
            <span><a href="<?php echo U('Member/Index/register');?>">注册</a></span><?php endif; ?>    
    </div>

    <!--移动端菜单-->
    <div class="mobile-nav">
      <input type="checkbox" id="mobile-ck" class="">
      <label class="mobile-nav mobile-nav-label" for="mobile-ck"><i class="fa"></i></label>
      <ul class="mobile-nav mobile-menu">
        <li>
          <form action="<?php echo U('Content/Index/search');?>">
            <div>
              <i class="fa fa-search"></i>
              <input class="mobile-search-box" placeholder="search..." type="text" />
            </div>
          </form>
        </li>
        <li><label><a href="<?php echo U('Bazaar/Market/index');?>"></a>云市场</label></li>
        <li><label><a href=""></a>云服务
              <div class="submenu">
            <?php if(is_array($service)): $i = 0; $__LIST__ = $service;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><p><a href="/index.php?g=Bazaar&m=Ser&a=detail&id=<?php echo ($vo["id"]); ?>"><?php echo ($vo["name"]); ?></a></p><?php endforeach; endif; else: echo "" ;endif; ?>
              </div>
        </label>

        </li>
        <li><label><a href=""></a>解决方案
         <div class="submenu">
          <p><a href="/index.php?g=Bazaar&m=Solution&a=video">视频</a>    </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=medical">医疗</a>  </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=game">游戏</a>     </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=safe">安全</a>     </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=finance">金融</a>  </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=figure">数字营销</a> </p>
          <p><a href="/index.php?g=Bazaar&m=Solution&a=travel">旅游</a>   </p>
        </div>
        </label></li>
        <li><label><a href="/index.php?a=lists&catid=8"></a>Why us</label></li>
      </ul>
    </div>

  </section>
</header>

  <!--页面特有CSS-->
  <link href="<?php echo ($config_siteurl); ?>statics/dist/index/index.css" rel="stylesheet">
  <script src="<?php echo ($config_siteurl); ?>statics/dist/index/index.js"></script>

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
                <img src="<?php echo ($config_siteurl); ?>statics/images/index/ticon01.png" alt="">
                <span>甄选  Selection</span>
              </div>
            </div>
            <div class="l-col-3 m-col-3 s-col-6">
              <div class="icon-holder">
                <img src="<?php echo ($config_siteurl); ?>statics/images/index/ticon02.png" alt="">
                <span>服务  Service</span>
              </div>
            </div>
            <div class="l-col-3 m-col-3 s-col-6">
              <div class="icon-holder">
                <img src="<?php echo ($config_siteurl); ?>statics/images/index/ticon03.png" alt="">
                <span>可靠  Reliable</span>
              </div>
            </div>
            <div class="l-col-3 m-col-3 s-col-6">
              <div class="icon-holder">
                <img src="<?php echo ($config_siteurl); ?>statics/images/index/ticon04.png" alt="">
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
<?php if(is_array($cloud)): $i = 0; $__LIST__ = array_slice($cloud,0,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="l-col-12 m-col-12 s-col-6 blocky-con">
                    <div class="blocky">
                      <a href="<?php echo U('Yun/Company/details',array('id'=>$vo[com_id]));?>"></a>
                      <img src="<?php echo ($vo["index_logo"]); ?>" alt="">
                    </div>
                  </div><?php endforeach; endif; else: echo "" ;endif; ?>                 

                </div>

              </div>

              <div class="l-col-8 m-col-8 isHidden-s right-side ">

                <div class="right-con">
                  <img src="<?php echo ($config_siteurl); ?>statics/images/index/f2-right.png" alt="">
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
<?php if(is_array($app)): $i = 0; $__LIST__ = $app;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="l-col-2 m-col-3 s-col-6">
            <div class="blocky hiWatch">
              <div class="alt">
                <h3><?php echo ($vo["name"]); ?></h3>
                <div class="arrow">
                  <a href="<?php echo U('Yun/Company/details',array('id'=>$vo[com_id]));?>">
                     <svg t="1495701914535" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="19291"
                      xmlns:xlink="http://www.w3.org/1999/xlink">
                      <path d="M511.051 67.548c246.454 0 446.323 199.802 446.323 446.324 0 246.524-199.869 446.324-446.323 446.324-246.524 0-446.324-199.8-446.325-446.324 0-246.524 199.801-446.325 446.325-446.325zM511.051 904.407c215.7 0 390.534-174.834 390.534-390.534 0-215.702-174.799-390.604-390.534-390.604-215.735 0-390.569 174.903-390.569 390.604 0.001 215.701 174.869 390.534 390.569 390.534zM384.545 275.788c10.88-10.95 28.524-10.95 39.401 0l213.573 213.538c6.694 6.763 8.787 15.9 7.252 24.547 1.535 8.647-0.593 17.853-7.252 24.548l-213.573 213.608c-10.914 10.879-28.557 10.879-39.401 0-10.948-10.879-10.948-28.592 0-39.472l198.616-198.684-198.615-198.615c-10.95-10.948-10.95-28.592-0.001-39.471z"
                        p-id="19292" fill="#fff"></path>
                    </svg>

                  </a>
                </div>

              </div>
              <div>
                <h3><?php echo ($vo["name"]); ?></h3>
                <p><?php echo (mb_strimwidth($vo["txt_intro"],0,100, '[了解更多...]')); ?></p>
                <img src="<?php echo ($vo["index_logo"]); ?>" alt=""></div>
            </div>
          </div><?php endforeach; endif; else: echo "" ;endif; ?>

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
<?php if(is_array($service)): $i = 0; $__LIST__ = $service;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="l-col-4 m-col-4 s-col-6">
              <div class="blockie">
              <a href="<?php echo U('Bazaar/Ser/detail',array('id'=>$vo[id]));?>"></a> 
                <img src="<?php echo ($vo["img_logo"]); ?>" alt="">
                  <p><?php echo ($vo["name"]); ?></p>
                  <p><?php echo ($vo["eng"]); ?></p>
              </div>
            </div><?php endforeach; endif; else: echo "" ;endif; ?>
          </div>
        </div>

      </div>

      <div class="floor f-5 parallax">
        <div class="titles">
          <h2>合作案例</h2>
        </div>

        <div class="row hiCon">
<?php $content_tag = \Think\Think::instance("\Content\TagLib\Content"); if(method_exists($content_tag, "lists")){ $data = $content_tag->lists(array('action'=>'lists','catid'=>'9','order'=>'id DESC','num'=>'3','page'=>'0','pagefun'=>'page','return'=>'data',)); } if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="l-col-4 m-col-4 s-col-12 coop-block">
            <a href="<?php echo ($vo["url"]); ?>"></a>
            <div class="text-holder">
              <p><?php echo ($vo["description"]); ?></p>
            </div>
            <div class="logo-holder">
              <div class="logo-wrap ">
                <img src="<?php echo ($vo["thumb"]); ?>" alt="">
              </div>
              <span>IMO云办公室客户案例</span>
            </div>
          </div><?php endforeach; endif; else: echo "" ;endif; ?>      


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
<footer class="page-foot">
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
          <li><a href="">官方微博</a></li>
        </ul>
      </div>
      <div class="l-col-2 m-col-3 s-col-6">
        <ul class="no-border">
          <li>成员</li>
          <li>
            <a href="http://www.yuandingit.com/" target="_blank"><img src="<?php echo ($config_siteurl); ?>statics//images/yuanding.png" /></a>
          </li>
          <li>
            <a href="http://otpub.yuandingit.com/" target="_blank"><img src="<?php echo ($config_siteurl); ?>statics//images/otpub.png" /></a>
          </li>
        </ul>
      </div>
      <div class="l-col-2 m-col-3 s-col-6">
        <ul class="no-border">
          <li>
            <img src="<?php echo ($config_siteurl); ?>statics/images/wm.jpg" />
            <p>关注微信公众平台</p>
          </li>
      </div>
    </div>
    <p class="copyrights">版权所有2003-2015北京元鼎时代科技股份有限公司 京ICP-3备06005430号 京公网安备11010802010037</p>
  </div>
</footer>
<script src="<?php echo ($config_siteurl); ?>statics/dist/assets.js"></script>
</body>

</html>