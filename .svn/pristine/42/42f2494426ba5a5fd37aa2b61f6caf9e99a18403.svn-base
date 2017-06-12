<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/personal-center/personal-center.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/personal-center/personal-center.js"></script>

  <main class="page-wrap personal-center orders ">

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
            <form action="">

              <!--main display-->
              <div class="col-inner main-area">

                <div class="step-indi">
                  <ul>
                    <li <eq name="action" value="order">class="active"</eq>>全部订单</li>
                    <li <eq name="action" value="ordered">class="active"</eq>>已支付订单</li>
                    <li <eq name="action" value="ordering">class="active"</eq>>未支付订单</li>
                  </ul>
                </div>

                <div class="generic-table">
                  <table>
                    <caption><b>可开发票订单</b></caption>
                    <thead>
                      <tr>
                        <td width="30%">订单编号</td>
                        <td>商品名称</td>
                        <td>金额</td>
                        <td>日期</td>
                        <td></td>
                      </tr>
                    </thead>
                    <tbody>
 <volist name="order" id="vo">                   
                      <tr>
                        <td>
                          {$vo.orderno}
                        </td>
                        <td>
                          <a href="javascript:void(0)" class="orderdetail" orderid="{$vo.order_id}">查看详情</a>
                        </td>
                        <td class="headsUp-color">
                          {$vo.total_fee}
                        </td>
                        <td>
                          {$vo.add_time|date='Y-m-d H:i:s',###}
                        </td>
                        <td>
                          {$vo.order_status}
                        </td>
                      </tr>
</volist>                      
                    </tbody>
                  </table>
                </div>
              <div class="server-pagination">
                <div class="pages"> {$page} </div>
              </div>
                <!--详情内容-->


              </div>

            </form>
          </div>
        </div>

      </div>
    </section>

  </main>
<template file="Content/footer.php"/>
</body>
  <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
  <script src="{$config_siteurl}statics/extres/newmember/layer/layer.js"></script>
<script>
    $(function(){
      $('.orderdetail').click(function(){
        var url = "{:U('User/getOrderDetail')}";
      var orderid = $(this).attr('orderid');
    //  layer.alert(orderid, {icon: 6});
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