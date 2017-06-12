<?php
/**
 * Created by PhpStorm.
 * User: corki
 * Date: 2017/1/23
 * Time: 17:42
 */
namespace Mail\Controller;
use Common\Controller\AdminBase;
class ProController extends AdminBase {
    /*
     * 通过cate_id获取商品名称
     * ******/

    public function ajaxgoods(){
        $model = M('GoodsPackage');
        if(IS_AJAX){
            $type = I('get.','');
            $list = $model->order('create_time desc')->where('cate_id=%d',$type)->select();
//            var_dump($type);
            echo json_encode($list);
            exit;
        }
    }
    /*
     * 问题列表
     *
     * **/
    public function index(){
        $search = I('get.search',null);
        $_map = '';
        if($search){
            $keyword = I('get.keyword','');
            if(!empty($keyword)){
                $_map['name'] = array('like','%'.$keyword.'%');
            }
        }
        $model = M('GoodsProblem');

        $count = $model->where($_map)->count();
        /*var_dump($count);
        exit;*/
        $page = $this->page($count,20);
        $list = $model
            ->alias('a')
            ->field('a.*,b.gp_id,b.name,b.type,b.create_time,b.cate_id')
            ->join('LEFT JOIN yun_goods_package b ON a.goods_id=b.gp_id ')
            ->where($_map)
            ->limit($page->firstRow . ',' . $page->listRows)
            ->order('id desc')
            ->select();
//        dump($list);die;
        $cate = M('Cate')->select();
        $list = \Libs\Util\Category::getparentlist($cate,$list);
        $this->assign("cate", $cate);
        $this->assign('page',$page->show('Admin'));
        $this->assign("data", $list);
        $this->display();
    }
    /*
     * 添加问题
     *
     * ********/
    public function add(){
        $model = M('GoodsPackage');
        $gpModel = M('GoodsProblem');
        if(IS_POST){
            $_rules = array(
                array('goods_id','require','必须选择对应的商品',1,'regex', 3),
                array('pro','require','请提出问题',1),
                array('intru','require','问题说明',1),
            );
            if($gpModel->validate($_rules)->create(I('post.'),1)){
                $gp_id = $gpModel->add();
//                echo $gpModel->getLastSql();
                if($gp_id){
                    $this->success('操作成功',U('index'));
                }else{
                    $this->error('操作失败');
                }
            }else{
                $this->error($gpModel->getError());
            }
        }
        if(IS_AJAX){
            $type = I('get.','');
            $list = $model->order('create_time desc')->where('type=%d',$type)->select();
//            var_dump($list);
            echo json_encode($list);
            exit;
        }
        $cateModel = M('Cate');
        $cat = $cateModel->where('parent_id=%d',0)->select();
        $cate_info = M('Cate')->select();
        $cate_info = \Libs\Util\Category::toLevel($cate_info);
        $this->assign('cate_info',$cate_info);
        $this->display();
    }
    /*
     * 修改问题
     * ***********/
    public function edit()
    {
        $model = M('GoodsProblem');
        if (IS_POST) {
            $_rules = array(
                array('pro', 'require', '请提出问题', 1),
                array('intru', 'require', '问题说明', 1),
            );
            if ($model->validate($_rules)->create(I('post.'), 1)) {
                $gp_id = $model->save();
//                echo $gpModel->getLastSql();
                if ($gp_id) {
                    $this->success('操作成功', U('index'));
                } else {
                    $this->error('操作失败');
                }
            } else {
                $this->error($model->getError());
            }
        } else {
            $id = I('get.id', '');
            if (empty($id)) {
                $this->error('非法操作');
            }
            $pro = $model
                ->alias('a')
                ->field('a.*,b.gp_id,b.name,b.type,b.create_time')
                ->join('LEFT JOIN yun_goods_package b ON a.goods_id=b.gp_id ')
                ->where('id=%d',$id)
                ->find();
//            dump($pro);die;
            $this->assign('vo', $pro);
            $this->display();

        }
    }
    /*
     * 删除问题
     * ***************/
    public function delete(){
        $id = I('get.id',0,'intval');
        if($id == 0){
            $this->error('参数错误');
        }
        $model = M('GoodsProblem');
        $_res = $model->where('id=%d',$id)->delete();
        if($_res !== false){
            $this->success('操作成功',U('index'));
        }else{
            $this->error('操作失败');
        }
    }
}