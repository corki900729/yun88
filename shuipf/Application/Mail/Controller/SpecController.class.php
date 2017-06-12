<?php
/**
* 规格管理
* @date: 2016年7月8日
* @author: hupeng
*/
namespace Mail\Controller;
use Common\Controller\AdminBase;
class SpecController extends AdminBase {
    /**
     * 公有云规格列表
     */
    public function cloudlist() {
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['gp.name'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M();
        $count = $model
            ->table('__GOODS_SPEC01__ as gs')
            ->join('left join __GOODS_TYPE__ as gt on gs.type_id=gt.type_id')
            ->where($_map)->count();
        $page = $this->page($count,20);
        $list = $model
            ->table('__GOODS_SPEC01__ as gs')
            ->join('left join __GOODS_TYPE__ as gt on gs.type_id=gt.type_id')
            ->field('gs.*,gt.name')
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->select();
        
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }

    /**
     * 公有云规格添加
     */
    public function cloudadd() {
        if (IS_POST) {
           $_post = I('post.info','');
           $_rules = array(
               array('type','require','规格类型必填',1,'regex',1),
               array('cpu','integer','cpu核心数必须为数值',1,'regex',1),
               array('memory','integer','内存容量必须为数值',1,'regex',1),
               array('broadband','integer','宽带值必须为数值',1,'regex',1),
               array('price','currency','价格格式不对',1,'regex',1),
              
           );
           $model = M('GoodsSpec01');
           $validate_res = $model->validate($_rules)->create($_post,1);
           if($validate_res){
               $_res = $model->add();
               if($_res){
                   $this->success('操作成功',U('cloudlist'));
               }else{
                   $this->error('操作失败');
               }
           }else{
               $this->error($model->getError());
           }
        } else {
            $gp_ids = M('GoodsPackage')->where('type=1')->getField('gp_id',true);
            $gp_ids_str = implode(',', $gp_ids);
            $types = M('GoodsType')->field('type_id,name')->where("gp_id in ({$gp_ids_str})")->select();
            $this->assign('types',$types);
            $this->display();
        }
    }

    /**
     * 公有云规格编辑
     */
    public function cloudedit() {
        if (IS_POST) {
            $_post = I('post.info','');
            $id = I('post.id',0,'intval');
            $_rules = array(
               array('type','require','规格类型必填',1,'regex',2),
               array('cpu','integer','cpu核心数必须为数值',1,'regex',2),
               array('memory','integer','内存容量必须为数值',1,'regex',2),
               array('broadband','integer','宽带值必须为数值',1,'regex',2),
               array('price','currency','价格格式不对',1,'regex',2),
            );
            $model = M('GoodsSpec01');
            $validate_res = $model->validate($_rules)->create($_post,2);
            if($validate_res){
                $_res = $model->where('id=%d',$id)->save();
                if($_res !== false){
                    $this->success('操作成功',U('cloudlist'));
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
            $info = M('GoodsSpec01')->where('id=%d',$id)->find(); 
            $this->assign('info',$info);
            $gp_ids = M('GoodsPackage')->where('type=1')->getField('gp_id',true);
            $gp_ids_str = implode(',', $gp_ids);
            $types = M('GoodsType')->field('type_id,name')->where("gp_id in ({$gp_ids_str})")->select();
            $this->assign('types',$types);
            $this->display();
        }
    }
    
    /**
     * 公有云规格删除
     */
    public function clouddel(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('GoodsSpec01');
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('cloudlist'));
        }else{
            $this->error('操作失败');
        }
    }
    
    /**
     * 云应用规格列表
     */
    public function applist() {
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['gp.name'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M();
        $count = $model
            ->table('__GOODS_SPEC02__ as gs')
            ->join('left join __GOODS_TYPE__ as gt on gs.type_id=gt.type_id')
            ->where($_map)->count();
        $page = $this->page($count,20);
        $list = $model
            ->table('__GOODS_SPEC02__ as gs')
            ->join('left join __GOODS_TYPE__ as gt on gs.type_id=gt.type_id')
            ->field('gs.*,gt.name')
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->select();
    
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }
    
    /**
     * 云应用规格添加
     */
    public function appadd() {
        if (IS_POST) {
            $_post = I('post.info','');
            $_rules = array(
                array('version','require','版本名称必填',1,'regex',1),
                array('price','currency','价格格式不对',1,'regex',1),
    
            );
            $model = M('GoodsSpec02');
            $validate_res = $model->validate($_rules)->create($_post,1);
            if($validate_res){
                $_res = $model->add();
                if($_res){
                    $this->success('操作成功',U('applist'));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($model->getError());
            }
        } else {
            $gp_ids = M('GoodsPackage')->where('type=2')->getField('gp_id',true);
            $gp_ids_str = implode(',', $gp_ids);
            $types = M('GoodsType')->field('type_id,name')->where("gp_id in ({$gp_ids_str})")->select();
            $this->assign('types',$types);
            $this->display();
        }
    }
    
    /**
     * 云应用规格编辑
     */
    public function appedit() {
        if (IS_POST) {
            $_post = I('post.info','');
            $id = I('post.id',0,'intval');
            $_rules = array(
                array('version','require','版本名称必填',1,'regex',2),
                array('price','currency','价格格式不对',1,'regex',2),
            );
            $model = M('GoodsSpec02');
            $validate_res = $model->validate($_rules)->create($_post,2);
            if($validate_res){
                $_res = $model->where('id=%d',$id)->save();
                if($_res !== false){
                    $this->success('操作成功',U('applist'));
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
            $info = M('GoodsSpec02')->where('id=%d',$id)->find();
            $this->assign('info',$info);
            $gp_ids = M('GoodsPackage')->where('type=2')->getField('gp_id',true);
            $gp_ids_str = implode(',', $gp_ids);
            $types = M('GoodsType')->field('type_id,name')->where("gp_id in ({$gp_ids_str})")->select();
            $this->assign('types',$types);
            $this->display();
        }
    }
    
    /**
     * 云应用规格删除
     */
    public function appdel(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('GoodsSpec02');
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('applist'));
        }else{
            $this->error('操作失败');
        }
    }

}
