<?php
/**
* 商品管理
* @date: 2016年7月8日
* @author: hupeng
*/
namespace Mail\Controller;
use Common\Controller\AdminBase;
class GoodsController extends AdminBase {
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
        $model = M('GoodsPackage');
      
        $count = $model->where($_map)->count();
        /*var_dump($count);
        exit;*/
        $page = $this->page($count,20);
        $list = $model
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('create_time desc')
            ->select();
//        dump($list);die;
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }

    /**
     * 添加
     */
    public function add(){
        $goods_model =  M('GoodsIntro');
//        $goods_source = M('GoodsSource');
        if (IS_POST) {
           $_post = I('post.info','');
           $_post['create_time'] = time();
            $_good = I('post.intro','');
           $_rules = array(
               array('name','require','商品名称必填',1,'regex',1),
               array('img_logo','require','商品logo必须长传',1,'regex',1),
               array('price','currency','价格格式不对',1,'regex',1),
               array('instro','require','商品简介必填',1,'regex',1),
           );
           $model = D('GoodsPackage');
           $validate_res = $model->validate($_rules)->create($_post,1);
           if($validate_res){
               $_res = $model->add();
               $_good['goods_id'] = $_res;
               $_res2 = $goods_model->add($_good);
//               $_res3 = $goods_source->add($_source);
               if($_res && $_res2){
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
        $goods_model =  M('GoodsIntro');
        if (IS_POST) {
            $_post = I('post.info','');
            $_good = I('post.intro','');
            $id = I('post.id',0,'intval');
            $_rules = array(
//               array('name','require','商品名称必填',1,'regex',2),
//               array('img_logo','require','商品logo必须长传',1,'regex',2),
//               array('price','currency','价格格式不对',1,'regex',2),
//               array('instro','require','商品简介必填',1,'regex',2),
            );
            $model = M('GoodsPackage');
            $validate_res = $model->validate($_rules)->create($_post,2);
            if($validate_res){
                $_res = $model->where('gp_id=%d',$id)->save($_post);
                if($_res !== false){
                    $_res2 = $goods_model->where('goods_id=%d',$id)->find();
                    if($_res2){
                        $_res2 = $goods_model->where('goods_id=%d',$id)->save($_good);
                    }else{
                        $_good['goods_id'] = $id;
                        $_res2 = $goods_model->add($_good);
                    }
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($model->getError());
            }
        } else {
            $id = I('get.id','');
            if(empty($id)){
                $this->error('非法操作');
            }
            $info = M('GoodsPackage')->where('gp_id=%d',$id)->find();
            $intro =$goods_model->where('goods_id=%d',$id)->find();
            $this->assign('info',$info);
            $this->assign('intro',$intro);
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
        $model = M('GoodsPackage');
        $goods_model =  M('GoodsIntro');
        $oldLogo = $model->field('img_logo,install,func,use')->find($id);
        // 删除资源
        @unlink('./'.$oldLogo['img_logo']);
        @unlink('./'.$oldLogo['install']);
        @unlink('./'.$oldLogo['func']);
        @unlink('./'.$oldLogo['use']);
        $_res2 = $goods_model->where('goods_id=%d',$id)->delete();
        $_res = $model->where('gp_id=%d',$id)->delete();
        if($_res !== false && $_res2 !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
    /**
    *常见问题
     */
    public function problem(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        if (IS_POST) {
            $_post = I('post.info','');
            var_dump($_post);
        }
        $model = M('GoodsProblem');
        $goods_model = M('GoodsPackage');
        $info = $model
            ->alias('a')
            ->field('a.*,b.name,b.type,b.create_time')
            ->join('LEFT JOIN yun_goods_package b ON a.goods_id=b.gp_id ')
            ->where('a.goods_id=%d',$id)
            ->select();
//        dump($info);die;
        $this->assign('vo',$info);
        $this->display();
    }

}
