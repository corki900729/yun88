<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/personal-center/personal-center.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/personal-center/personal-center.js"></script>
<script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
  <main class="page-wrap personal-center cart ">

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
            <!--side bar-->
  <div class="l-col-9 m-col-9 s-col-12">
            <!--main display-->
            <div class="col-inner main-area">

              <form action="{:U('User/cartSubmit')}" method="post" >

                <div class="generic-table">
                  <table>
                    <caption><b>商品名称</b></caption>
                    <thead>
                      <tr>
                        <!-- <input type="hidden" name="the-id" value=""> -->
                        <td width="30%">商品名称</td>
                        <td>单价（元/月）</td>
                        <td>购买数量</td>
                        <td>购买时长（月）</td>
                        <td width="10%">总计</td>
                        <td width="8%">操作</td>
                      </tr>
                    </thead>
                    <tbody>
 <volist name="cart" id="vo"> 
                      <tr>
                        <td>
                        <input type="hidden" name="cart_id[]" value="{$vo.cart_id}">
                        <input type="hidden" name="type_id[]" value="{$vo.type_id}">
                        <input type="hidden" name="spec01_id[]" value="{$vo.spec01_id}">
                        <input type="hidden" name="spec02_id[]" value="{$vo.spec02_id}">
                        <input type="hidden" name="gp_id[]" value="{$vo.gp_id}">
                          <p><b>{$vo.goods_name}({$vo.type_name})</b></p>
                          <p><b>{$vo.spec}</b></p>  
                        </td>
                        <td class="cart-price">
                          ￥<input type="text" value="{$vo.price}" disabled name="price[]">
                          <input type="hidden" value="{$vo.price}"  name="price[]">
                        </td>
                        <td class="cart-num item-quantity">
                          <a href="" class="btns btn-plus"><i class="fa fa-plus-circle"></i></a>
                          <input type="text" name="num[]" id="" value="{$vo.num}" >
                          <a href="" class="btns btn-minus"><i class="fa fa-minus-circle"></i></a>
                        </td>
                        <td class="cart-num item-time-length">
                          <a href="" class="btns btn-plus"><i class="fa fa-plus-circle"></i></a>
                          <input type="text" name="purchase[]" id="" value="{$vo.purchase}">
                          <a href="" class="btns btn-minus"><i class="fa fa-minus-circle"></i></a>
                        </td>
                        <td class="total-amount">
                          <input type="hidden" name="type_id[]" value="{$vo.type_id}">
                          {$vo.total}
                        </td>
                        <td>
                          <a href="" class="btns btn-cart-delete delete" data-cartid="{$vo.cart_id}">删除</a>
                        </td>
                      </tr>
 </volist>                     
                    </tbody>
                  </table>
                </div>
                <div class="lower-section">
                  <span>合计金额：￥</span>
                  <span class="grand-total">0.00</span>
                </div>

                <div class="btn-row">
                  <button href="" class="btns btn-submit">提交</button>
                </div>

              </form>

            </div>
          </div>
        </div>

      </div>
    </section>

  </main>
<template file="Content/footer.php"/>

</body>
  <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
  <script src="{$config_siteurl}statics/extres/newmember/js/usercenter/shopping.js"></script>
  <script src="{$config_siteurl}statics/extres/newmember/layer/layer.js"></script>
 <script>
   $(function(){
$('.delete').click(function(){
        var cartid = $(this).data('cartid');
        var url = "{:U('User/cartDel')}";
        layer.confirm('您确定要删除吗？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            $.post(url,{id:cartid},function(data){
               if(data.status){
                location.reload();
      
               }else{
                layer.alert(data.msg, {icon: 6});
               }
            },'json');
          }, function(){
            
          });
          //layer.alert(cartid, {icon: 6});
      })

     $(".btn-submit").click(function () {
        var data = '{';
        var jsonList = [];
        //var total_fee = 
        $(".shopping-cart .table").find("input[name=check]:checked").each(function () {
          var _this = $(this);
          var obj = '{';
          obj += '"cart_id":'+_this.data("cartid");
          obj += ',"spec01_id":'+_this.data("spec_01");
          obj += ',"spec02_id":'+_this.data("spec_02");
          obj += ',"gp_id":'+_this.data("gpid");
          obj += ',"purchase":'+_this.parent().siblings(".month").find("input[type='text']").val();
          obj += ',"num":'+_this.parent().siblings(".number").find("input[type='text']").val();
          obj += ',"price":'+_this.parent().siblings(".price").find("span").html();
          obj += '}';
          jsonList.push(obj);
        });
        var s = jsonList.join(",");
        data += '"cart":[' + s;
        data += ']}';
        //data += ',"total_fee"]:'++'}';
        //console.log(data);
        
        //var d = eval("("+data+")");
        //console.log(d);
        var url = "{:U('User/cartSubmit')}";
        $.post(url,{cart:data},function(data){
           if(data.status){
            location.href=data.url;
  
           }else{
            layer.alert(data.msg, {icon: 6});
           }
        },'json');
      });
   })
 </script>
</html>