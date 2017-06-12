<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
  <script src="{$config_siteurl}statics/extres/newmember/layer/layer.js"></script>  
  <link href="{$config_siteurl}statics/dist/personal-center/personal-center.css" rel="stylesheet">
  <script src="{$config_siteurl}statics/dist/personal-center/personal-center.js"></script>

  <main class="page-wrap personal-center invoice invoice-confirmation ">

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
            <form action="{:U('submit')}" method="post">

              <!--main display-->
              <div class="col-inner main-area">

                <div class="step-indi">
                  <ul>
                    <li <eq name="action" value="invoice"> class='active'</eq>>开票订单选择 ></li>
                    <li <eq name="action" value="addr"> class='active'</eq>>确定开票订单及地址 ></li>
                    <li <eq name="action" value="submit"> class='active'</eq>>提交结果信息 ></li>
                  </ul>
                </div>

                <div class="addr-select">

                  <div class="addr-row">
                    <!--模板行，不要更改。-->
                    <div class="row temp-row">
                      <div class="l-col-1 m-col-1 s-col-1">
                        <input type="radio" name="receptIsSelect" id="">
                      </div>
                      <div class="l-col-3 m-col-3 s-col-3 receiption-name">
                        <span><b>收件人：</b></span>
                        <input disabled name="receptName" class="receptName" type="text">
                      </div>
                      <div class="l-col-5 m-col-5 s-col-5">
                        <input disabled name="receiptAddr" class="province" type="text">
                      </div>
                      <div class="l-col-2 m-col-2 s-col-2">
                        <input disabled name="receptPhone" class="mobile" type="text">
                      </div>
                      <div class="l-col-1 m-col-1 s-col-1"><a href="" class="edit-row-btn"><b>编辑</b></a></div>
                    </div>
<volist name="address" id='vo' >
                    <div class="row">
                      <div class="l-col-1 m-col-1 s-col-1">
                        <input type="radio" name="receptIsSelect8" id="{$vo.id}" value="{$vo.id}">
                      </div>
                      <div class="l-col-3 m-col-3 s-col-3 receiption-name">
                        <span><b>收件人：</b></span>
                        <input disabled name="receptName8" type="text" value="{$vo.name}">
                      </div>
                      <div class="l-col-5 m-col-5 s-col-5">
                        <input disabled name="receiptAddr8" type="text" value="{$vo.province}">
                      </div>
                      <div class="l-col-2 m-col-2 s-col-2">
                        <input disabled name="receptPhone8" type="text" value="{$vo.mobile}">
                      </div>                      
                      <div class="l-col-1 m-col-1 s-col-1"><a href="" class="edit-row-btn"><b>编辑</b></a></div>
                    </div>
</volist>
                  </div>

                  <!---->
                  <div class="addr-row-add">
                    <a href=""></a> 添加新地址
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
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                        <input type="hidden" name="orderno" value="{$data.orderno}">
                          {$data.orderno}
                        </td>
                <td><a href="javascript:void(0)" class="orderdetail" orderid="{$data.order_id}">查看详情</a></td>
                        <td class="headsUp-color">￥{$data.total_fee}
                          
                        </td>
                        <td>{$data.pay_time|date='Y-m-d H:i:s',###}
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>

                <div class="btn-row">
                  <button href="" class="btns btn-confirm">提交</button>
                </div>

              </div>

            </form>
          </div>
        </div>

      </div>
    </section>

  </main>
<template file="Content/footer.php"/>
</body>

  <script>
  $('.finish-editing-row-btn').click(function(){
      console.log(1);
  })
   $('.edit-row-btn').closest(function(){
      var receptName = $(this).parent().children();
      console.log(1);
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