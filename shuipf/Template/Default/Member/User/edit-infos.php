<template file="Content/header.php"/>

  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/personal-center/personal-center.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/personal-center/personal-center.js"></script>



  <main class="page-wrap personal-center edit-infos ">

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
                  <div class="l-col-3 m-col-3 s-col-12">
                    <div class="row">
                      <form method="post" action="" enctype="multipart/form-data">
                      <div class="img-holder">
                        <img id="avatar"
<empty name="userinfo.userpic">src="{$config_siteurl}statics/images/personal-center/def-protrait.png" alt=""> <else/> src="{$userinfo.userpic}" alt=""></empty>
                      </div>
                      <div class="actions-con">
                        <p><label for="proUp" class="btns btn-upload">选择图片</label></p>
                        <input type="file" name="avatarFile" id="proUp">
                        <p class="notice">支持jpg、PNG格式，不要超过2M</p>
                      </div>
                      </form>
                    </div>
                  </div>
                  <div class="l-col-9 m-col-9 s-col-12 right-side-text">
                  <form action="{:U('User/doprofile')}" method="post">
                    <div class="info-row">
                      <label>手机号</label>
                      <div class="va_t">
                        <span><b id="cellPhone">{$userinfo.mobile}</b></span>
                        <div class="mobile-action-row">
                          <a href="" class="btns btn-sendSMS" data-addr="{:U('Member/Public/dosmsCode',array('cellPhone'=>$userinfo['mobile'],'token'=>$token))}" onclick="">获取动态码</a>
                          <span>没收到短信验证码？</span>
                          <div class="sms-help">
                            <p>· 网络通讯异常可能会造成短信丢失，请重新发送短信</p>
                            <p>· 请核实手机是否已欠费停机，或者屏蔽了系统短信</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="info-row">
                      <label>
                      短息动态码:
                     </label>
                     <input type="hidden" name="oldmobile" value="{$userinfo.mobile}">
                      <input type="" name="code" value="">
                    </div>
                    <div class="info-row">
                      <label>
                      新手机号:
                     </label>
                      <input type="" name="mobile" value="">
                    </div>                    
                    <div class="info-row">
                      <label>
                      用户名:
                     </label>
                      <input type="" name="username" value="">
                    </div>
                    <div>
                      <button href="" type="submit" class="btns btn-save">保存</button>
                    </div>
                    </form>
                  </div>
                </div>
              

            </div>
          </div>
        </div>

      </div>
    </section>

  </main>
<template file="Content/footer.php"/>
  <script type="text/javascript" src="{$config_siteurl}statics/default/js/jquery-1.6.1.min.js"></script>
  <script type="text/javascript" src="{$config_siteurl}statics/default/js/jquery.ajaxfileupload.js"></script>

</body>

  <!-- 上传 -->
<script>
var InterValObj; //timer变量，控制时间
var count = 120; //间隔函数，1秒执行
var curCount;//当前剩余秒数
var cellPhone = $("#cellPhone");
var verifycode = $("#verifycode");
function sendMessage() {
  　curCount = count;
    //设置button效果，开始计时
    $("#btnSendCode").attr("disabled", "true");
    $("#btnSendCode").val(curCount + "秒后重新获取");
    InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
    //向后台发送处理数据

}

//timer处理函数
function SetRemainTime() {
    if (curCount == 0) {                
        window.clearInterval(InterValObj);//停止计时器
        $("#btnSendCode").removeAttr("disabled");//启用按钮
        $("#btnSendCode").val("重新发送验证码");
    }
    else {
        curCount--;
        $("#btnSendCode").val(curCount + "秒后重新获取");
    }
}
// 使用ajaxupload上传用户头像
    $(document).ready(function() {
      $("#proUp").AjaxFileUpload({
        action: "{:U('User/avatarUpload')}",
        onComplete: function(filename, response) {
          if (response.status) {
            $('#avatar').attr('src', response.path);
          } else {
            //错误提示
          }
        }
      });
    });
  </script>
</html>