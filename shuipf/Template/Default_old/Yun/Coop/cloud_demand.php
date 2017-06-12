<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>公有云 - 需求提交</title>
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/normalize.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/common.css">
    <link rel="stylesheet" href="{$config_siteurl}statics/extres/newmember/css/gongyouyun.css">
    <script src="{$config_siteurl}statics/extres/newmember/js/respond.min.js"></script>
</head>

<body>
    <!-- header start -->
<template file="Content/header.php"/>
    <!-- header end -->
    <!-- *content area* -->
    <div class="submit-demands">
        <div class="inner-head">
            <div class="container">
                <h3>{$pro_name}</h3>
            </div>
        </div>
        <div>
            <div class='container'>
                <h1>请填写并核对您的需求订单</h1>
                <div class="row">
                    <div class="col-md-9">
                        <div class="demands-selection">
                            <h2>基本配置</h2>
                            <div class='row-of-options'>
                                <p>云服务器：</p>
                                <div class='option-btns service'>
                                	<volist name="company" id="vo">
                                    <a href="" class='btn-option' data-value='{$vo.name}'>{$vo.name}</a>
                                    </volist>
                                   
                                </div>
                            </div>
                            <div class='row-of-options'>
                                <p>地域：</p>
                                <div class='option-btns locations'>
                                    <a href="" class='btn-option' data-value='北京'>北京</a>
                                    <a href="" class='btn-option' data-value='上海'>上海</a>
                                    <a href="" class='btn-option' data-value='广州'>广州</a>
                                    <a href="" class='btn-option' data-value='青岛'>青岛</a>
                                    <a href="" class='btn-option' data-value='香港'>香港</a>
                                    <a href="" class='btn-option' data-value='亚太'>亚太</a>
                                    <a href="" class='btn-option' data-value='北美'>北美</a>
                                </div>
                            </div>
                            <div class='row-of-options'>
                                <p>CPU：</p>
                                <div class='option-btns cpu'>
                                    <a href="" class='btn-option' data-value='1'>1核</a>
                                    <a href="" class='btn-option' data-value='2'>2核</a>
                                    <a href="" class='btn-option' data-value='4'>4核</a>
                                    <a href="" class='btn-option' data-value='8'>8核</a>
                                    <a href="" class='btn-option' data-value='16'>16核</a>
                                    <a href="" class='btn-option' data-value='32'>32核</a>
                                    <a href="" class='btn-option' data-value='64'>64核</a>
                                </div>
                            </div>
                            <div class='row-of-options'>
                                <p>内存：</p>
                                <div class='option-btns memory'>
                                    <a href="" class='btn-option' data-value='4'>4GB</a>
                                    <a href="" class='btn-option' data-value='6'>6GB</a>
                                    <a href="" class='btn-option' data-value='8'>8GB</a>
                                    <a href="" class='btn-option' data-value='12'>12GB</a>
                                    <a href="" class='btn-option' data-value='16'>16GB</a>
                                    <a href="" class='btn-option' data-value='32'>32GB</a>
                                    <a href="" class='btn-option' data-value='64'>64GB</a>
                                </div>
                            </div>
                            <div class='row-of-options'>
                                <p>宽带值：</p>
                                <div class='option-btns bandwidth'>
                                    <a href="" class='btn-option' data-value='200'>200M</a>
                                    <a href="" class='btn-option' data-value='400'>400M</a>
                                    <a href="" class='btn-option' data-value='600'>600M</a>
                                    <a href="" class='btn-option' data-value='800'>800M</a>
                                </div>
                            </div>
                            <h2>购买数量</h2>
                            <div class='row-of-options'>
                                <p>购买时长：</p>
                                <div class="range-container">
                                    <div class="range-block"><a>II</a></div>
                                    <a class='blk-option' data-value='1'>1月</a>
                                    <a class='blk-option' data-value='2'>2月</a>
                                    <a class='blk-option' data-value='3'>3月</a>
                                    <a class='blk-option' data-value='4'>4月</a>
                                    <a class='blk-option' data-value='5'>5月</a>
                                    <a class='blk-option' data-value='6'>6月</a>
                                    <a class='blk-option' data-value='12'>1年</a>
                                    <a class='blk-option' data-value='24'>2年</a>
                                    <a class='blk-option' data-value='36'>3年</a>
                                </div>
                            </div>
                            <div class='row-of-options'>
                                <p>购买数量：</p>
                                <div class='input-spinner'>
                                    <input type="" name="" value="1" placeholder="">
                                    <a href="" class='plus'></a>
                                    <a href="" class='min'></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 pt-3">
                        <div class="demands-summary">
                            <form action="{:U('Coop/demandCloud')}" method="post">
                                <h2>当前配置</h2>
                                 <div>
                                    <p>云服务器：</p>
                                    <p id="p-service"></p>
                                    <input type="hidden" name="service" value="">
                                </div>
                                <div>
                                    <p>地域：</p>
                                    <p id="p-locations"></p>
                                    <input type="hidden" name="locations" value="">
                                </div>
                                <div>
                                    <p>CPU：</p>
                                    <p id="p-cpu"></p>
                                    <input type="hidden" name="cpu" value="">
                                </div>
                                <div>
                                    <p>内存：</p>
                                    <p id="p-memory"></p>
                                    <input type="hidden" name="memory" value="">
                                </div>
                                <div>
                                    <p>宽带值：</p>
                                    <p id="p-bandwidth"></p>
                                    <input type="hidden" name="bandwidth" value="">
                                </div>
                                <div>
                                    <p>购买数量：</p>
                                    <span id="p-length"></span>
                                    <span>X</span>
                                    <span id="p-quantity"></span>
                                    <span>台</span>
                                    <input type="hidden" name="length" value="">
                                    <input type="hidden" name="quantity" value="">
                                </div>
                                <button href="" class="btn-positive">确认提交</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer start -->
 <template file="Content/footer.php"/>
    <!-- footer end -->
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.js"></script>
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.event.drag.js"></script>
    <script src="{$config_siteurl}statics/extres/newmember/js/jquery.event.drop.js"></script>
    <script src="{$config_siteurl}statics/extres/newmember/js/gongyouyun-submit-demands.js"></script>
</body>

</html>
