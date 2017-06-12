<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/personal-center/personal-center.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/personal-center/personal-center.js"></script>

  <main class="page-wrap personal-center invoice invoice-index ">

    <section class="bread-crumb">
      <div class="container">
        <div>
          <span><a href="">首页</a></span>
          <span><a href="">个人中心</a></span>
        </div>
      </div>
    </section>
<form  action="./index.php?g=Member&m=User&a=addr" method="post">
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

              <div class="invoice-action">
                <div class="row">
                  <div class="l-col-9 m-col-9 s-col-9">
                    <span><b>已选择总金额：</b></span>
                    <spanc class="headsUp-color"><b id="price"></b></span>
                  </div>
                  <div class="l-col-3 m-col-3 s-col-3">
                   <input type="submit" value="索取发票" class="btns btn-getInvoice"> 
                  </div>
                </div>
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
                      <td width="5%"></td>
                    </tr>
                  </thead>
                  <tbody>
<volist name="orderlist" id="vo">                  
                    <tr>
                      <td>{$vo.orderno}</td>
                      <td><a href="javascript:void(0)" class="orderdetail" orderid="{$vo.order_id}">查看详情</a></td>
                      <td class="headsUp-color" id="total">￥{$vo.total_fee}</td>
                      <td>{$vo.add_time|date='Y-m-d H:i:s',###}</td>
                      <td>
                        <input type="radio" name="orderid" id="" value="{$vo.orderno}" change="getPrice(this)" data="￥{$vo.total_fee}">
                      </td>
                    </tr>
</volist>                   
                  </tbody>
                </table>
              </div>

            </div>
          </div>
       
        </div>

      </div>
    </section>
</form>   
  </main>
<template file="Content/footer.php"/>
</body>
  <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
  <script src="{$config_siteurl}statics/extres/newmember/layer/layer.js"></script>
  <script>
$(':radio').change(function(){
  if($(this).is( ":checked" )){
      var price = $(this).attr('data');
      console.log(price);
      $('#price').html(price);
  }else{
     $('#price').html('');
  }

})
    $(function(){
      $('.orderdetail').click(function(){
        var url = "{:U('User/getOrderDetail')}";
      var orderid = $(this).attr('orderid');
     // layer.alert(orderid, {icon: 6});
        $.post(url,{id:orderid},function(data){
         if(data.status){
          var table = form_table(data.data);
          layer.open({
            type: 1,
            title: '商品明细',
            skin: 'layui-layer-rim', //加上边框
            area: ['560px', '360px'], //宽高
            content: table
          });

         }else{
          layer.alert(data.msg, {icon: 6});
         }
      },'json');
      })
       
    })
  
  function form_table(form_data){
    //console.log(form_data);
       var html = '<table width="100%" cellpadding="0" cellspacing="0" class="table">';
       html += '<thead><tr><th>商品名称</th><th>购买时长(月)</th><th>数量</th><th>单价(元)</th><th>类型</th><th>规格</th></tr></thead><tbody>';
       for(var i=0;i<form_data.length;i++){
         var str ='<tr>';
           str+='<td align="center">'+form_data[i].goods_name+'</td>';
           str+='<td align="center">'+form_data[i].purchase+'</td>';
           str+='<td align="center">'+form_data[i].num+'</td>';
           str+='<td align="center">'+form_data[i].price+'</td>';
           str+='<td align="center">'+form_data[i].type_name+'</td>';
           str+='<td align="center">'+form_data[i].spec+'</td>';
           str += '</tr>';
            html += str;
       }
       html += '</tbody></table>';
       
       return html;

    }
  </script>
</html>