<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/personal-center/personal-center.css" rel="stylesheet">

  <main class="page-wrap personal-center account-sec ">

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

              <div>
                <form action="{:U('User/dopassword')}" method="post">
<!--                   <div class="info-row">
                    <label for="">邮      箱</label>
                    <span>1111</span>
                    <a href="" class="">修改邮箱</a>
                  </div>
                  <div class="info-row">
                    <label for="">密      码</label>
                    <span>1111</span>
                    <a href="" class="">修改密码</a>
                  </div> -->
                  <div class="info-row"><label for="">当前密码</label><input type="password" name="oldPassword" value=""></div>
                  <div class="info-row"><label for="">新密码</label><input type="password" name="password" value=""></div>
                  <div class="info-row"><label for="">确认密码</label><input type="password" name="password2" value=""></div>
              </div>
              <div class="btn-row">
                <button href="" class="btns btn-confirm">提交</button>
              </div>
              </form>

            </div>
          </div>
        </div>

      </div>
    </section>

  </main>

</body>

</html>