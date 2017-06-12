<template file="Content/header.php"/>
  <!--页面特有CSS-->
  <link href="{$config_siteurl}statics/dist/shichang/shichang.css" rel="stylesheet">

  <main class="page-wrap shichang-list">

    <section class="top parallax">
      <div class="inner parallax">

        <div class="contents">
          <h3>产品分类</h3>
          <div class="filter-row">
            <span>分类:</span>
            <div><span <if condition='($cate_id eq 0)'> class="active" </if> ><a href="/index.php?g=Bazaar&m=Market&a=products">全部</a></span>
<volist name="cate_goods" id="vo" key='k'> 
    <if condition="$tag_id eq 0" >             
       <span <if condition="($cate_id eq $vo['cate_id'])"> class="active" </if>>  <a href="/index.php?g=Bazaar&m=Market&a=products&cate_id={$vo.cate_id}"> 
    <else />
        <span <if condition="($cate_id eq $vo['cate_id'])"> class="active" </if>>  <a href="/index.php?g=Bazaar&m=Market&a=products&cate_id={$vo.cate_id}&tag_id={$tag_id}">
     </if>    
        <li <if condition="($vo.cate_id eq $cate_id) "> class="active" </if>>
        {$vo.name}
      </li>
</a></span>
</volist>    
            </div>
          </div>
          <div class="filter-row">
            <span>标签:</span>

            <div>
<volist name='tag' id='vo' key='k' > 
    <if condition="$cate_id eq 0" >    
        <span <if condition="($tag_id eq $vo['id'])"> class="active" </if> ><a href="/index.php?g=Bazaar&m=Market&a=products&tag_id={$vo.id}">    
    <else />  
       <span <if condition="($tag_id eq $vo['id'])"> class="active" </if> > <a href="/index.php?g=Bazaar&m=Market&a=products&cate_id={$cate_id}&tag_id={$vo.id}">   
    </if>        
      <li data-tagid="{$vo.id}" <if condition="($vo.id eq $tag_id) "> class="active" </if>>{$vo.tag_name}</li>
                </a></span>
              
</volist>  


            </div>
          </div>
          <div class="search-row">
            <div class="search-block">
              <!--搜索表单-->
              <form action="">
                <input type="" name="" value="" placeholder="搜索">
                <button class="btns btn-search">
                  <i class="fa fa-search"></i>
                </button>
              </form>
            </div>
          </div>
        </div>

      </div>
    </section>

<notempty name="cate_id">  
    <volist name="cate_goods" id="vo" key='k'> 
        <section class="list" <if condition="($vo.cate_id eq $cate_id) "> style="display:block" <else /> style="display:none" </if> >
          <div class="contents">
            <div class="row hiCon cloak-from-mishap" autoHi>
      <volist name="vo['goods']" id="goods" >

              <div class="l-col-3 m-col-4 s-col-6">
                <div class="list-blocky">
                  <div class="img-holder hiWatch">
                    <img src="{$goods.img_logo}" alt="">
                  </div>
                  <h6>{$goods.name}</h6>
                  <p>{$goods.description|mb_strimwidth=0,100,' [了解更多...]'}</p>
                  <a href="/index.php?g=Bazaar&m=Market&a=detail&gp_id={$goods.gp_id}" class="btns">
                    ￥{$goods.price}/月 起
                    <b>></b>
                  </a>
                </div>
              </div>
    </volist>
            </div>
      </div>
    </section>
</volist>
<else />
      <section class="list">
        <div class="contents">
          <div class="row hiCon cloak-from-mishap" autoHi>
    <volist name="market" id="vo">
              <div class="l-col-3 m-col-4 s-col-6">
                <div class="list-blocky">
                  <div class="img-holder hiWatch">
                    <img src="{$vo.img_logo}" alt="">
                  </div>
                  <h6>{$vo.name}</h6>
                  <p>{$vo.description|mb_strimwidth=0,100,' [了解更多...]'}</p>
                  <a href="/index.php?g=Bazaar&m=Market&a=detail&gp_id={$vo.gp_id}" class="btns">
                    ￥{$vo.price}/月 起
                    <b>></b>
                  </a>
                </div>
              </div>
    </volist>
        </div>
      </div>
    </section>
</volist>
</notempty>




    <section class="bottom">
      <div class="contents">
        <p>YUN88专家以严谨的态度为您甄选可靠、安全的云产品&服务，倾力打造中国首个企业级B2B云平台</p>

        <div class="lower">
          <span>点击咨询了解更多云产品</span>
          <a href="" class="btns">注册享优惠</a>
          <a href="" class="btns second">立即咨询</a>
        </div>

      </div>
    </section>

  </main>
<template file="Content/footer.php"/>
</body>

</html>