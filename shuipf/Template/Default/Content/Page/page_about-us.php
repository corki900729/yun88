<template file="Content/header.php"/>
    <!--页面特有CSS-->
    <link href="{$config_siteurl}statics/dist/about-us/about-us.css" rel="stylesheet">

    <main class="page-wrap about-us">
        <section class="banner banner-boutus parallax">
            <div class="container">
                <h1 class="banner-title">关于我们</h1>
                <p class="banner-text">是元鼎科技整合、优选国内外领先云产品及应用倾力打造的首个企业级B2B云业务平台</p>
                <a href="" class="btns btn-details">立即咨询</a>
            </div>
        </section>
        <section class="container">
            {$content}
        </section>
        <section class="contact-us">
            <div class="container">
                <!-- contact info above -->
                <div class="infos">
                    <div class='lefty'>
                        <div class='first-line'>
                            <h1>任何问题，拨打</h1>
                            <h1 class='phone-num'>400-008-9419</h1><br/><br/>
                            <h1>我们全年7*24无休，随时待命，为您提供技术支持。</h1>
                        </div>

                    </div>
                    <div class='righty'>
                        <img src="{$config_siteurl}statics/images/about-us/wm.jpg" alt="" />
                        <h2>关注YUN88</h2>
                    </div>
                </div>
                <!-- the map locations -->
                <div class="map">
                    <div class="lefty">
                        <h1>北京总部</h1>
                        <div>
                            <p>电话：400-008-9419</p>
                            <p>总机：010-52550628</p>
                            <p>传真：010-88878521</p>
                            <p>邮编：100086</p>
                            <p>邮箱：service@yun88.com</p>
                            <p>地址：北京市海淀区北三环西路99号院西海国际3号楼7层</p>
                        </div>
                    </div>
                    <div class="righty"><img src="{$config_siteurl}statics/images/about-us/mapLocation.png" alt="" /></div>
                </div>
            </div>
        </section>
    </main>
   <template file="Content/footer.php"/>
</body>

</html>