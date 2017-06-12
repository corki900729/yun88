<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/personal-center/personal-center.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/personal-center/personal-center.js"></script>

  <main class="page-wrap personal-center invoice invoice-submition ">

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

              <div class="step-indi">
                <ul>
                  <li <eq name="action" value="invoice"> class='active'</eq>>开票订单选择 ></li>
                  <li <eq name="action" value="addr"> class='active'</eq>>确定开票订单及地址 ></li>
                  <li <eq name="action" value="submit"> class='active'</eq>>提交结果信息 ></li>
                </ul>
              </div>

              <div class="generic-table">
                <table>
                  <caption>可开发票订单</caption>
                  <thead>
                    <tr>
                      <td width="30%">订单编号</td>
                      <td>商品名称</td>
                      <td>金额</td>
                      <td>支付时间</td>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        1111111111111111 1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
                      </td>
                      <td>
                        111111
                      </td>
                      <td class="headsUp-color">
                        111111
                      </td>
                      <td>
                        111111
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>

              <div class="btn-row">
                <a href="" class="btns btn-submit">提交</a>
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