<?php

/**
 * Created by PhpStorm.
 * User: corki
 * Date: 2017/1/18
 * Time: 15:17
 */
namespace Bazaar\Controller;
use Common\Controller\Base;

class MarketController extends Base{
    //初始化
    protected function _initialize() {
        parent::_initialize();
        $this->assign('mark','Market');
    }
/*
 * 根据一级分类获取一级分类下有商品
 * **********/
    public function ajaxgoods(){
        $cate_id = I('get.cate_id',0,'intval');
        $cate = M('Cate')->field('cate_id,name,parent_id')->select();
//        传递一个父级分类ID返回所有子分类ID
        $cateIds = \Libs\Util\Category::getChildsId($cate,$cate_id);
        $goods = M('GoodsPackage')->where(array(
            'cate_id'=>array('IN',$cateIds)
        ))->order('is_sale desc')->select();
//        dump($goods);
        echo json_encode($goods);
        exit;
    }
    /*
 * 根据一级分类获取一级分类和标签下有商品
 * **********/
    public function gettagsgoods(){
        $cate_id = I('post.cate_id',0,'intval');
        $tag_id  = I('post.tag_id',0,'intval');

        $cate = M('Cate')->field('cate_id,name,parent_id')->select();
//        传递一个父级分类ID返回所有子分类ID
        $cateIds = \Libs\Util\Category::getChildsId($cate,$cate_id);
        if(!empty($cateIds)){
//                根据商品标签取出对应的商品,0的时候取出全部商品
            if($tag_id == 0){
                $goods = M('GoodsPackage')
                    ->alias('a')
                    ->field('a.*,b.tag_id')
                    ->join('LEFT JOIN yun_goods_tag b ON a.gp_id=b.goods_id ')
                    ->where(
                        array('cate_id'=>array('IN',$cateIds))
                    )
                    ->order('is_sale desc')->select();
            }else{
                $goods = M('GoodsPackage')
                    ->alias('a')
                    ->field('a.*,b.tag_id')
                    ->join('LEFT JOIN yun_goods_tag b ON a.gp_id=b.goods_id ')
                    ->where(
                        array('cate_id'=>array('IN',$cateIds),
                            'tag_id'=>array('EQ',$tag_id))
                    )
                    ->order('is_sale desc')->select();
            }
        }
        echo json_encode($goods);
        exit;
//        $this->display('Market/products');
    }
    /*
     * 获取所有的顶级分类
     * *******/
    public function getgoods()
    {
        $cate = M('Cate')->field('cate_id,name,parent_id')->select();
//        获取所有的商品
        $goods = M('GoodsPackage')->where(array(
            'type'=>array('EQ',3)
        ))->order('is_sale desc')->select();
        $arr = array();
//        dump($goods);
        foreach($goods as $k=>$v){
//            传递一个父级分类ID返回所有子分类ID
            $cate_p = \Libs\Util\Category::getParents($cate,$v['cate_id']);
//                dump($cate_p);die;
            foreach($cate_p as $k1=>$v1){
                if($v1['parent_id']==0){
                    $v['pid'] = $v1['cate_id'];
                }
            }

//            $goods = M('GoodsPackage')->where(array(
//                'cate_id'=>array('IN',$cateIds)
//            ))->order('is_sale desc')->select();
//            $v['goods']=$goods;
            $arr[] = $v;
        }
//        dump($arr);
        return $arr;

    }
    /*
     * 返回一级分类下所有商品
     * ************/
    public function getcategoods()
    {
        $cate = M('Cate')->field('cate_id,name,parent_id')->select();
//        获取所有的一级分类
        $cate_par = M('Cate')->where('parent_id=0')->select();
        $arr = array();
        foreach($cate_par as $k=>$v){
//            传递一个父级分类ID返回所有子分类ID
            $cateIds = \Libs\Util\Category::getChildsId($cate,$v['cate_id']);
//            dump($cateIds);die;
            if(!empty($cateIds)){
                $goods = M('GoodsPackage')->where(array(
                    'cate_id'=>array('IN',$cateIds)
                ))->order('is_sale desc')->select();
                $v['goods']=$goods;

            }

            $arr[] = $v;
        }
//        print_r($arr);die;
        return $arr;
    }
    /*
 * 返回一级分类下所有商品
 * ************/
    public function gettaggoods($tags)
    {
        $cate = M('Cate')->field('cate_id,name,parent_id')->select();
//        获取所有的一级分类
        $cate_par = M('Cate')->where('parent_id=0')->select();
        $arr = array();
        foreach($cate_par as $k=>$v){
//            传递一个父级分类ID返回所有子分类ID
            $cateIds = \Libs\Util\Category::getChildsId($cate,$v['cate_id']);
//            dump($cateIds);die;
            if(!empty($cateIds)){
//                根据商品标签取出对应的商品,0的时候取出全部商品
                if($tags == 0){
                    $goods = M('GoodsPackage')
//                        ->alias('a')
//                        ->field('a.*,b.tag_id')
//                        ->join('LEFT JOIN yun_goods_tag b ON a.gp_id=b.goods_id ')
                        ->where(
                            array('cate_id'=>array('IN',$cateIds))
                        )
                        ->order('is_sale desc')->select();
                    $v['goods']=$goods;
                }else{
                    $goods = M('GoodsPackage')
                        ->alias('a')
                        ->field('a.*,b.tag_id')
                        ->join('LEFT JOIN yun_goods_tag b ON a.gp_id=b.goods_id ')
                        ->where(
                            array('cate_id'=>array('IN',$cateIds),
                                'tag_id'=>array('EQ',$tags))
                        )
                        ->order('is_sale desc')->select();
                    $v['goods']=$goods;
//                    echo M('GoodsPackage')->getLastSql();
                }
            }

            $arr[] = $v;
        }

//        print_r($arr);die;
        return $arr;


    }
    /*
     * 云市场首页
     * *******/
    public function index() {
        $cate = M('Cate')->field('cate_id,name,parent_id')->select();
        $cateIds = \Libs\Util\Category::getChildsId($cate,1);
//        $goods = M('GoodsPackage')->where(array(
//            'cate_id'=>array('IN',$cateIds)
//        ))->order('is_sale desc')->select();
        $goods_count = M('GoodsPackage')->where('type=3')->count();
//        获取云市场推荐产品
        $goods = M('GoodsPackage')->where(array(
            'type'=>array('EQ',3),
            'is_sale'=>array('EQ',1)
        ))->select();


        $cate = M('Cate')->where('parent_id=0')->select();
        $cate_goods = $this->getcategoods();
//        dump($goods);die;
        $this->assign('header','云88-云市场');
        $this->assign('cate_goods',$cate_goods);
        $this->assign('goods_count',$goods_count);

        $this->assign('market',$goods);
        $this->assign('cate',$cate);
//        dump($cate);
        $this->display();
    }

    /*
     * 列表详情页
     * *****/
    public function products() {
        $cate_id = I('get.cate_id',0,'intval');
        $tag_id  = I('get.tag_id',0,'intval');
//        dump($cate_id);die;
        $cate = M('Cate')->field('cate_id,name,parent_id')->select();
        $cateIds = \Libs\Util\Category::getChildsId($cate);
//        获取对应标签的所有商品
        if($tag_id==0){
            $goods = M('GoodsPackage')
                ->where(array(
                    'cate_id'=>array('IN',$cateIds),
                ))->order('is_sale desc')->select();
        }else{
            $goods = M('GoodsPackage')
                ->alias('a')
                ->field('a.*,b.tag_id')
                ->join('LEFT JOIN yun_goods_tag b ON a.gp_id=b.goods_id ')
                ->where(array(
                    'cate_id'=>array('IN',$cateIds),
                    'tag_id'=>array('EQ',$tag_id)
                ))->order('is_sale desc')->select();
        }

//dump($tags);die;
        $cate = M('Cate')->where('parent_id=0')->select();
//        $cate_goods = $this->getcategoods();
        $cate_goods = $this->gettaggoods($tag_id);
//        print_r($cate_goods);die;
        $tag = M('Tag')->select();
        $this->assign('tag',$tag);
        $this->assign('tag_id',$tag_id);
        $this->assign('cate_goods',$cate_goods);
        $this->assign('cate_id',$cate_id);
//        dump($goods);die;
        $this->assign('market',$goods);
        $this->assign('cate',$cate);
        $this->assign('header','云市场-列表页');
//        print_r($cate_goods);die;
        $this->display('Market/list');
    }
    /*
     * 分类详情页面,一个三级分类对应一个商品
     * ************/
    public function detailCate(){
        $cate_id = I('get.cate_id',0,'intval');
        $cate = M('Cate')->select();
//        传递一个父级分类ID返回所有子分类ID
//        $cates = \Libs\Util\Category::getchildlist($cate,$cate_id);
        $cates = \Libs\Util\Category::toLayer($cate,'child',$cate_id);
//        print_r($cates);
//        var_dump($cates);
//        print_r($cates);die;
        $this->assign('cates',$cates);
        $this->display();
    }
    /*
     *通过三级分类进入商品详情页面
     * ***********/
    public function detail()
    {
        if(I('get.cate_id','','intval')!=''){
            $cate_id = I('get.cate_id', 0, 'intval');
            $info = M('GoodsPackage')->where(array(
                'cate_id'=>array('EQ',$cate_id),
                'type' =>array('EQ',3)
            ))->limit(1)->find();
//        dump($info);die;
//        $info = M('GoodsPackage')->where('cate_id=%d',$cate_id)->limit()->find();
        }
        if(I('get.gp_id','','intval')!=''){
            $gp_id = I('get.gp_id', 0, 'intval');
            $info = M('GoodsPackage')->where(array(
                'gp_id'=>array('EQ',$gp_id),
//                'type' =>array('EQ',3)
            ))->limit(1)->find();
        }

        if(empty($info)){
            $this->error('操作非法');
        }
        //商品详情
        $intro = M('GoodsIntro')->where('goods_id=%d',$info['gp_id'])->find();

        // echo "<pre>";
        //print_r($spec);
//        常见问题
        $pro = M('GoodsProblem')->where('goods_id=%d',$info['gp_id'])->select();
//        用户案例
        $exp = M('GoodsMember')->where('goods_id=%d',$info['gp_id'])->select();
        //        资源中心
        $source = M('GoodsSource')->where('goods_id=%d',$info['gp_id'])->select();
//                dump($info);die;
        $this->assign('goods',$info);
        $this->assign('intro',$intro);
        $this->assign('pro',$pro);
        $this->assign('exp',$exp);
        $this->assign('source',$source);
        $this->display();
    }
    /*
     * 咨询表单插入
     * *
     * @
     * ****************/
    public function refer(){
//        $is_login = login_status();
        $cate_id = I('get.cate_id', 0, 'intval');
        $member_id = (int) service("Passport")->userid;
//        if(!$is_login){
//            cookie("forward",$_SERVER['HTTP_REFERER']);//$_SERVER['HTTP_REFERER']
//            $this->error('对不起你还没有登陆',U('Member/Index/login'));
//        }
        if(IS_POST){
            $post = I('post.','');
            $post['create_time'] = time();
            $post['member_id'] = $member_id;
            $post['cate_id'] = $cate_id;
            $_rules = array(
                array('name','require','姓名必填',1,'regex',1),
                array('require_info','require','需求应用 必填',1,'regex',1),
                array('iphone','integer','电话',1,'regex',1),
            );
            $model = M('Refer');
            $validate_res = $model->validate($_rules)->create($post,1);
            if($validate_res){
                $_res = $model->add();
                if($_res){
                    //添加成功跳转页面,传入用户姓名
                    $status = ['code'=>1,'mes'=>'恭喜您,提交成功! '];
                    echo json_encode($status);
                }else{
                    $status = ['code'=>0,'mes'=>'提交失败! '];
                    echo json_encode($status);
                }
            }else{
                $this->error($model->getError());
            }
        }
    }
}