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
  <link href="<?php echo ($config_siteurl); ?>statics/dist/personal-center/personal-center.css" rel="stylesheet">

  <main class="page-wrap personal-center index ">

    <section class="bread-crumb">
      <div class="container">
        <div>
          <span><a href="">首页</a></span>
          <span><a href="">个人中心</a></span>
        </div>
      </div>
    </section>

    <section class="page-prim">
      <div class="container">

        <div class="main-row row" autoHi>
          <!--手机菜单-->
<div class="s-col-12 isHidden-l" noAutoHi>
<div class="col-inner side-bar mobile-side">
  <ul>
    <li <?php if(($action) == "profile"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/profile');?>">个人资料管理</a></li>
    <li <?php if(($action) == "invoice"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/invoice');?>">发票管理</a></li>
    <li <?php if(($action) == "order"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/order');?>">订单管理</a></li>
    <li <?php if(($action) == "cart"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/cart');?>">我的购物车</a></li>
    <li <?php if(($action) == "account"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/account');?>">账户安全</a></li>
  </ul>
</div>
</div>
<!--菜单-->
<div class="l-col-3 m-col-3 isHidden-s">
<!--side bar-->
<div class="col-inner side-bar ">
  <ul>
    <li <?php if(($action) == "profile"): ?>class="active"<?php endif; ?> <?php if(($action) == "edit"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/profile');?>">个人资料管理</a></li>
    <li <?php if(($action) == "invoice"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/invoice');?>">发票管理</a></li>
    <li <?php if(($action) == "order"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/order');?>">订单管理</a></li>
    <li <?php if(($action) == "cart"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/cart');?>">我的购物车</a></li>
    <li <?php if(($action) == "account"): ?>class="active"<?php endif; ?>><a href="<?php echo U('User/account');?>">账户安全</a></li>
  </ul>
</div>
</div>
          <div class="l-col-9 m-col-9 s-col-12">
            <!--main display-->
            <div class="col-inner main-area">

              <div class="row" autoHi>
                <div class="l-col-6 m-col-6 s-col-12">
                  <div class="row">

                    <div class="con-holder img-holder">
                      <img <?php if(empty($userinfo["userpic"])): ?>src="<?php echo ($config_siteurl); ?>statics/images/personal-center/def-protrait.png" alt=""> <?php else: ?> src="<?php echo ($userinfo["userpic"]); ?>"><?php endif; ?> 
                    </div>
                    <div class="con-holder">
                      <p class="fa_1-35"><?php echo ($userinfo["username"]); ?></p>
                      <p class="fa_075 mt_1 mb_1">早上好</p>
                      <p class="edit-info"><a href="javascript:location.href='/index.php?g=Member&m=User&a=edit';" class="edit">修改个人信息></a></p>
                    </div>

                  </div>
                </div>
                <div class="l-col-6 m-col-6 s-col-12 right-side-text">
                  <p>账户安全：<a href="">修改密码</a></p>
                  <p>绑定手机:<?php echo ($userinfo["mobile"]); ?></p>
                  <p>绑定邮箱：<?php echo ($userinfo["email"]); ?><a href="" class="btns btn-bind-mail">绑定</a></p>
                </div>
              </div>

              <div class="row">

                <div class="l-col-6 m-col-6 s-col-6">
                  <div class="con-holder img-holder">
                    <img src="<?php echo ($config_siteurl); ?>statics/images/personal-center/payment-b.png" alt="">
                  </div>
                  <div class="con-holder">
                    <p>待支付订单：<b class="price-note"><?php echo ($count_no); ?></b></p>
                    <p class="fa_075"><a href="<?php echo U('ordered');?>">查看待支付订单</a>></p>
                  </div>
                </div>

                <div class="l-col-6 m-col-6 s-col-6">
                  <div class="con-holder img-holder">
                    <img src="<?php echo ($config_siteurl); ?>statics/images/personal-center/payment-g.png" alt="">
                  </div>
                  <div class="con-holder">
                    <p>已支付订单：<b class="price-note"><?php echo ($count_yes); ?></b></p>
                    <p class="fa_075"><a href="<?php echo U('ordering');?>">查看已支付订单</a>></p>
                  </div>
                </div>

              </div>

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