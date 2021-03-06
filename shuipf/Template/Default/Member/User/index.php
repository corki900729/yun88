<template file="Content/header.php"/>

  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/personal-center/personal-center.css" rel="stylesheet">

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
<template file="Member/Public/homeUserMenu.php"/>
          <div class="l-col-9 m-col-9 s-col-12">
            <!--main display-->
            <div class="col-inner main-area">

              <div class="row" autoHi>
                <div class="l-col-6 m-col-6 s-col-12">
                  <div class="row">

                    <div class="con-holder img-holder">
                      <img <empty name="userinfo.userpic">src="{$config_siteurl}statics/images/personal-center/def-protrait.png" alt=""> <else/> src="{$userinfo.userpic}"></empty> 
                    </div>
                    <div class="con-holder">
                      <p class="fa_1-35">{$userinfo.username}</p>
                      <p class="fa_075 mt_1 mb_1">早上好</p>
                      <p class="edit-info"><a href="javascript:location.href='/index.php?g=Member&m=User&a=edit';" class="edit">修改个人信息></a></p>
                    </div>

                  </div>
                </div>
                <div class="l-col-6 m-col-6 s-col-12 right-side-text">
                  <p>账户安全：<a href="">修改密码</a></p>
                  <p>绑定手机:{$userinfo.mobile}</p>
                  <p>绑定邮箱：{$userinfo.email}<a href="" class="btns btn-bind-mail">绑定</a></p>
                </div>
              </div>

              <div class="row">

                <div class="l-col-6 m-col-6 s-col-6">
                  <div class="con-holder img-holder">
                    <img src="{$config_siteurl}statics/images/personal-center/payment-b.png" alt="">
                  </div>
                  <div class="con-holder">
                    <p>待支付订单：<b class="price-note">{$count_no}</b></p>
                    <p class="fa_075"><a href="{:U('ordered')}">查看待支付订单</a>></p>
                  </div>
                </div>

                <div class="l-col-6 m-col-6 s-col-6">
                  <div class="con-holder img-holder">
                    <img src="{$config_siteurl}statics/images/personal-center/payment-g.png" alt="">
                  </div>
                  <div class="con-holder">
                    <p>已支付订单：<b class="price-note">{$count_yes}</b></p>
                    <p class="fa_075"><a href="{:U('ordering')}">查看已支付订单</a>></p>
                  </div>
                </div>

              </div>

            </div>
          </div>
        </div>

      </div>
    </section>

  </main>
<template file="Content/footer.php"/>
</body>

</html>