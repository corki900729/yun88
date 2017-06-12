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
  <script src="{$config_siteurl}statics/dist/assets.js"></script>

</head>

<body>

<header class="page-header">
  <section class="logo">
    <a href=""><img src="{$config_siteurl}statics//images/logo.png" alt=""></a>
  </section>
  <nav>
    <!--pc端菜单-->
    <ul>
      <li  <if condition="$mark eq 'Market'"> class="navact"</if>><label><a href="{:U('Bazaar/Market/index')}">云市场</a></label></li>
      <li  class="nav-hover <if condition="$mark eq 'service'"> navact</if> "> >
          <label><input type="checkbox"> <span><a href="">云服务</a><i class="fa fa-caret-down"></i></span>
            <div class="submenu">
              <p>云服务</p>
              <p>云服务111111111111111111111111</p>
              <p>云服务</p>
              <p>云服务</p>
              <p>云服务</p>
          </div>
        </label>
      </li>
      <li><label><a href="">解决方案</a></label></li>
      <li <if condition="$mark eq 'why'">class="navact"</if>><label><a href="/index.php?a=lists&catid=8">Why us?</a></label></li>
    </ul>
  </nav>
  <section class="mid">
    <label for="">快速搜素</label>
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
        <li><label><a href=""></a>云市场</label></li>
        <li><label><a href=""></a>云服务</label></li>
        <li><label><a href=""></a>解决方案</label></li>
        <li><label><a href=""></a>Why us?</label></li>
      </ul>
    </div>

  </section>
</header>