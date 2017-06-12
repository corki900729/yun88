
<!DOCTYPE html>
<html lang="en">

<head>
  <title>{$header}</title>
  <meta charset="UTF-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <!--公用组件-->
  <link href="{$config_siteurl}statics/dist/assets.css" rel="stylesheet">


</head>

<body><header class="page-header">
  <section class="logo">
    <a href="/index.php"><img src="{$config_siteurl}statics/images/logo.png" alt=""></a>
  </section>
  <nav>
    <!--pc端菜单-->
    <ul>
      <li><label><a href="{:U('Bazaar/Market/index')}"><span>云市场</span></a></label></li>
      <li>
        <label>
        <input type="checkbox">
        <span>云服务<i class="fa fa-caret-down"></i></span>
        <div class="submenu">
      <volist name='service' id='vo' >  
          <p><a href="/index.php?g=Bazaar&m=Ser&a=detail&id={$vo.id}">{$vo.name}</a></p>
      </volist>
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
    <form action="{:U('content/index/search')}">
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
        <if condition="login_status()">
          <span><a href="{:U('Member/User/profile')}">个人中心</a></span>
          <b>|</b>
          <span><a href="{:U('Member/Index/logout')}">退出登录</a></span>
          <else />
            <span><a href="{:U('Member/Index/login')}">登录</a></span>
            <b>|</b>
            <span><a href="{:U('Member/Index/register')}">注册</a></span>
          </if>    
    </div>

    <!--移动端菜单-->
    <div class="mobile-nav">
      <input type="checkbox" id="mobile-ck" class="">
      <label class="mobile-nav mobile-nav-label" for="mobile-ck"><i class="fa"></i></label>
      <ul class="mobile-nav mobile-menu">
        <li>
          <form action="{:U('Content/Index/search')}">
            <div>
              <i class="fa fa-search"></i>
              <input class="mobile-search-box" placeholder="search..." type="text" />
            </div>
          </form>
        </li>
        <li><label><a href="{:U('Bazaar/Market/index')}"></a>云市场</label></li>
        <li><label><a href=""></a>云服务
              <div class="submenu">
            <volist name='service' id='vo' >  
                <p><a href="/index.php?g=Bazaar&m=Ser&a=detail&id={$vo.id}">{$vo.name}</a></p>
            </volist>
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