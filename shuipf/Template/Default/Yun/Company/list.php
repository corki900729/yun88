    <template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/gongyongyun/gongyouyun.css" rel="stylesheet">

  <main class="page-wrap index-list">
    <section class="banner parallax">
      <div class="container">
        <h2>云巴巴整合国内外<b>顶尖厂商的公有云产品</b></h2>
        <h2>供不同业务需求的客户选择和使用</h2>

        <a href="" class="btns btn-details">立即咨询</a>
      </div>
    </section>
    <section class="mid">
      <div class="container">
       <eq name="type" value="1"> <h3>公有云<i>Public cloud</i></h3> <else /><h3>云应用<i>Cloud application</i></h3></eq>

<volist name="data" id="vo">
        <div class="list-row">
          <div class="row" autoHi>
            <div class="l-col-3 m-col-5 s-col-12 list-head"><img src="{$vo.img_logo}" alt=""></div>
            <div class="l-col-7 m-col-7 s-col-12 list-text">
              <p>公司简介:</p>
              <p> {$vo.txt_intro}</p>
            </div>
            <div class="l-col-2 m-col-12 s-col-12 list-act">
              <a href="{:U('Company/details',array('id'=>$vo[com_id]))}" class="btns btn-details">立即咨询</a>
              <h4>{$vo.name}</h4>
            </div>
          </div>
        </div>
</volist>

      </div>
    </section>
  </main>
    <template file="Content/footer.php"/>
</body>

</html>