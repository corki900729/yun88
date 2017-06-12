<?php
/**
 * Created by PhpStorm.
 * User: corki
 * Date: 2017/1/23
 * Time: 17:42
 * 云服务控制器
 */
namespace Mail\Controller;
use Common\Controller\AdminBase;
class ServicesController extends AdminBase {
    /*
     * 通过一级分类找到相对应的二级分类
     * ***/
    public function isajax(){
        $model = M('Cate');
        if(IS_AJAX){
            $type = I('get.type','');
//            var_dump($type);die;
            $list = $model->order('create_time desc')->where('parent_id=%d',$type)->select();


            echo json_encode($list);
            exit;
        }
    }
    /*
     * 找到一级分类下的所有子分类
     * ******/
    public function getchild(){
        $model = M('Cate');
        $cate = $model->select();
        $type = I('get.type','');
        $cate_info = \Libs\Util\Category::getChildsId($cate,$type);
        $cate_info = implode($cate_info);
        $cate_info = $model->where(array('parent_id=%d'=>array('IN',$cate_info)))->select();
        $cate_info = \Libs\Util\Category::toLevel($cate_info);
        echo json_encode($cate_info);
    }
    /**
     * 列表
     */
    public function index() {
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['name'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M('Goods');
        $count = $model->where($_map)->count();
        $page = $this->page($count,20);
        $list = $model
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('create_time desc')
            ->select();
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }

    /**
     * 添加
     */
    public function add(){
        if (IS_POST) {
           $_post = I('post.info','');
           $_post['create_time'] = time();
           $_rules = array(
               array('name','require','商品名称必填',1,'regex',1),
               array('img_logo','require','商品logo必须长传',1,'regex',1),
//               array('price_logo','require','价格格式必填',1,'regex',1),
//               array('instro','require','商品简介必填',1,'regex',1),
//               array('cate_id','require','商品分类必填',1,'regex',1),
//               array('price','require','商品起价必填',1,'regex',1),
//               array('is_sale','require','商品是否销售',1,'regex',1),
//               array('is_new','require','推荐视频必填',1,'regex',1),
//               array('is_hot','require','推荐图片必填',1,'regex',1),
//               array('www','require','产品体验网址必填',1,'regex',1),
//               array('company','require','公司简介必填',1,'regex',1),
//               array('description','require','商品概述必填',1,'regex',1),
           );
           $model = M('Goods');
           $validate_res = $model->validate($_rules)->create($_post,1);
           if($validate_res){
               $_res = $model->add();
               if($_res){
                   $this->success('操作成功',U('index'));
               }else{
                   $this->error('操作失败');
               }
           }else{
               $this->error($model->getError());
           }
        } else {
            $this->display();
        }
    }

    /**
     * 编辑
     */
    public function edit() {
        $id = I('get.id',0,'intval');
        if (IS_POST) {
            $_post = I('post.info','');
            $id = I('post.id',0,'intval');
            $_rules = array(
               array('name','require','商品名称必填',1,'regex',2),
               array('img_logo','require','商品logo必须长传',1,'regex',2),
//               array('price_logo','require','价格不对',1,'regex',2),
               array('description','require','商品简介必填',1,'regex',2),
            );
            $model = M('Goods');
            $validate_res = $model->validate($_rules)->create($_post,2);
            if($validate_res){
                $_res = $model->where('id=%d',$id)->save($_post);
//                echo $model->getLastSql();die;
                if($_res !== false){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($model->getError());
            }
        } else {

            if(empty($id)){
                $this->error('非法操作');
            }
            $info = M('Goods')->where('id=%d',$id)->find();
            $this->assign('info',$info);
            $this->display();
        }
    }
    
    /**
     * 删除
     */
    public function delete(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('Goods');
//        $goods_model =  M('GoodsIntro');
//        获取商品的上传资源地址
        $oldLogo = $model->field('img_logo,img_banner')->find($id);
//        $img = $goods_model->field('use')->find($id);
//        $source = M('GoodsSource')->where('goods_id=%d',$id)->select();
//        foreach($source as $k=>$v){
//            @unlink('./'.$v['source']);
//        }
        // 删除资源
        @unlink('./'.$oldLogo['img_logo']);
        @unlink('./'.$oldLogo['img_banner']);
        $_res = $model->where('id=%d',$id)->delete();
//        $_res1 = $goods_model->where('goods_id=%d',$id)->delete();
//        $_res2 = M('GoodsSource')->where('goods_id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }

}
