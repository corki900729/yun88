<?php
/**
* 商品类型
* @date: 2016年8月9日
* @author: hupeng
*/
namespace Mail\Controller;
use Common\Controller\AdminBase;
class GoodsTypeController extends AdminBase {
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
        $model = M('GoodsType');
        $count = $model->where($_map)->count();
        $page = $this->page($count,20);
        $list = $model
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('gp_id')
            ->select();
        foreach ($list as $k=>$v){
            $list[$k]['goods_name'] = M('GoodsPackage')->where('gp_id=%d',$v['gp_id'])->getField('name');
        }
        
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }

    /**
     * 添加
     */
    public function add() {
        if (IS_POST) {
           $_post = I('post.info','');
           $_rules = array(
               array('name','require','类型名称必填',1,'regex',1)
           );
           $model = M('GoodsType');
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
            $goods = M('GoodsPackage')->field('gp_id,name')->select();
            $this->assign('goods',$goods);
            $this->display();
        }
    }

    /**
     * 编辑
     */
    public function edit() {
        if (IS_POST) {
            $_post = I('post.info','');
            $id = I('post.id',0,'intval');
            $_rules = array(
               array('name','require','类型名称必填',1,'regex',2),
            );
            $model = M('GoodsType');
            $validate_res = $model->validate($_rules)->create($_post,2);
            if($validate_res){
                $_res = $model->where('type_id=%d',$id)->save();
                if($_res !== false){
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
            $goods = M('GoodsPackage')->field('gp_id,name')->select();
            $this->assign('goods',$goods);
            $info = M('GoodsType')->where('type_id=%d',$id)->find(); 
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
        $model = M('GoodsType');
        $_res = $model->where('type_id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }

}
