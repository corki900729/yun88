<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" type="text/css" href="{$config_siteurl}statics/extres/newmember/css/log.css">
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>

    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
    <script src="{$config_siteurl}statics/extres/newmember/js/logPage/logPage.js"></script>
</head>

<body>
    <div class="log-head">
        <div class="container">
            <div class="logo"><a href="/"><img src="{$config_siteurl}statics/extres/newmember/images/yun88.png" alt="yun88" /></a></div>
            <div class="logo-text">优选云产品服务平台</div>
            <div class="head-right">已注册用户,<a href="">立即登录</a></div>
        </div>
    </div>
    <div class="reg-sheet">
        <div class="container pt-5">
            <div class="title">免费注册</div>
            <div class="sheet">
                <p class="blue t-c large-sized">请认真填写注册信息！</p>
                <form action="{:U('Public/doRegister')}" method="post">
                    <div>
                        <label>用户名 ：
                        </label>
                        <input type="text" name="username" id="" class="inp-normal" />
                    </div>
                    <div>
                        <label>邮箱 ：
                        </label>
                        <input type="email" name="remail"id="" class="inp-large" />
                    </div>
                    <div>
                        <label>设置密码 ：
                        </label>
                        <input type="password" name="rpassword" id="" class="inp-normal" />
                    </div>
                    <div class="security-level">
                        <span>安全强度:</span>
                        <div class="strong">强</div>
                        <div class="middle">中</div>
                        <div class="weak">弱</div>
                        <div class="too-weak active">无效</div>
                    </div>
                    <div>
                        <label>确认密码 ：
                        </label>
                        <input type="password" name="rpassword2"  class="inp-normal" />
                    </div>
                    <div>
                        <label>手机号 ：
                        </label>
                        <input type="text" name="cellPhone" id="cellPhone"  class="inp-normal" />
                    </div>
                    <div>
                        <label>验证码 ：
                        </label>
                        <input  id="verifycode" name="code" maxlength=5 tabindex="3" class="input_txt" type="text" value=""  placeholder="请输入验证码" />
                        <img class="yanzheng_img" id="code_img" alt="" src="{:U('Api/Checkcode/index','code_len=4&font_size=20&width=130&height=50&font_color=&background=')}"><a href="javascript:;;" onClick="refreshs()" class="change_img">看不清，换一张</a>
                    </div>                    
                    <div>
                        <label>手机验证码 ：
                        </label>
                        <input type="text" name="cap" id="" class="inp-small" />
                       <input href="" class="captcha-button" id="btnSendCode" onClick="sendMessage()" value="免费获取验证码">
                    </div>

                    <div class="agreement">
                        <input type="checkbox" name="" value="" checked="checked" />
                        <p class="pl-05">我已阅读并同意</p><a href="">《Yun88网站服务协议》</a>
                    </div>
                    <div class=" bottom-line">
                        <button class="reg-button">
                            注册
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="log-footer">
        <div class="container">
            <div class="footer-left">版权所有2003-2015北京元鼎时代科技股份有限公司 京ICP-3备06005430号 京公网安备11010802010037</div>
            <div class="footer-right">法律声明 | 隐私保护 | 入网信息安全责任书 | 云88用户协议</div>
        </div>
    </div>
</body>
<script src="{$config_siteurl}statics/extres/newmember/layer/layer.js"></script>
<script>
// 验证码刷新
function refreshs(){
    document.getElementById('code_img').src='{:U('Api/Checkcode/index','code_len=4&font_size=20&width=130&height=50&font_color=&background=&refresh=1')}&time='+Math.random();void(0);
}
$(function(){
    $('#verifycode').focus(function(){
        $('a.change_img').trigger("click");
    });
});

var InterValObj; //timer变量，控制时间
var count = 120; //间隔函数，1秒执行
var curCount;//当前剩余秒数
var cellPhone = $("#cellPhone");
var verifycode = $("#verifycode");
function sendMessage() {
    var search_str = /^1[34578][0-9]{9}$/;
    if (!search_str.test(cellPhone.val())) {
    	console.log(cellPhone.val());
        layer.alert('手机号格式错误 !');
        return false;
    }
  　curCount = count;
    //设置button效果，开始计时
    $("#btnSendCode").attr("disabled", "true");
    $("#btnSendCode").val(curCount + "秒后重新获取");
    InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
    //向后台发送处理数据
    $.ajax({
        type: "POST", //用POST方式传输
        dataType: "JSON", //数据格式:JSON
        url: "{:U('Member/Public/dosmsCode')}", //目标地址
        data: {cellPhone:cellPhone.val(),code:verifycode.val()},
        error: function(){
            layer.alert('数据执行错误。');
            return false;            
        },
        success: function(data){
            console.log(data)
            if(data.status){
            	layer.alert(data.info);
                return true;
            }else{
                layer.alert(data.info);
                return false;
            }
        }
    });
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
</script>
</html>