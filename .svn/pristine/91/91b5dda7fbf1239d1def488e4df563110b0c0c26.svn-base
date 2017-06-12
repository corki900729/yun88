<?php
namespace Libs\Util;
class Category {

    //一维数组
    static public function toLevel($cate, $delimiter = '|——', $parent_id = 0, $level = 0) {

        $arr = array();
        foreach ($cate as $v) {
            if ($v['parent_id'] == $parent_id) {
                $v['type'] = $level + 1;
                $v['delimiter'] = str_repeat($delimiter, $level);
                $arr[] = $v;
                $arr = array_merge($arr, self::toLevel($cate, $delimiter, $v['cate_id'], $v['type']));
            }
        }

        return $arr;

    }

//    static public $arr = array();
    //组成多维数组
    static public function toLayer($cate, $name = 'child', $pid = 0){

        $arr = array();
        foreach ($cate as $v) {
            if ($v['parent_id'] == $pid) {
                $v[$name] = self::toLayer($cate, $name, $v['cate_id']);
                $arr[] = $v;
            }
        }

        return $arr;
    }
    static public function role_toLayer($cate, $name = 'child', $pid = 0){
        $arr = array();
        foreach ($cate as $v) {
            if ($v['parent_id'] == $pid) {
                $v[$name] = self::role_toLayer($cate, $name, $v['id']);
                if(empty($v[$name])) {
                    unset($v[$name]);
                }
                $arr[] = $v;
            }
        }
        return $arr;
    }

    //一维数组(同模型)(model = tablename相同)，删除其他模型的分类
    static public function getLevelOfModel($cate, $tablename = 'article') {

        $arr = array();
        foreach ($cate as $v) {
            if ($v['tablename'] == $tablename) {
                $arr[] = $v;
            }
        }

        return $arr;

    }

    //一维数组(同模型)(modelid)，删除其他模型的分类
    static public function getLevelOfModelId($cate, $modelid = 0) {

        $arr = array();
        foreach ($cate as $v) {
            if ($v['modelid'] == $modelid) {
                $arr[] = $v;
            }
        }

        return $arr;

    }

    //传递一个子分类ID返回他的所有父级分类
    static public function getParents($cate, $id) {
        $arr = array();
        foreach ($cate as $v) {
            if ($v['cate_id'] == $id) {
                $arr[] = $v;
                $arr = array_merge(self::getParents($cate, $v['parent_id']), $arr);
            }
        }
        return $arr;
    }
    //传递一个子分类ID返回他的同级分类
    static public function getSameCate($cate, $id) {
        $arr = array();
        $self = self::getSelf($cate, $id);
        if (empty($self)) {
            return $arr;
        }

        foreach ($cate as $v) {
            if ($v['id'] == $self['pid']) {
                $arr[] = $v;
            }
        }
        return $arr;
    }



    //判断分类是否有子分类,返回false,true
    static public function hasChild($cate, $id) {
        $arr = false;
        foreach ($cate as $v) {
            if ($v['pid'] == $id) {
                $arr = true;
                return $arr;
            }
        }

        return $arr;
    }

    //传递一个父级分类ID返回所有子分类ID
    /**
    *@param $cate 全部分类数组
    *@param $pid 父级ID
    *@param $flag 是否包括父级自己的ID，默认不包括
    **/
    static public function getChildsId($cate, $pid=0, $flag = 0) {
        $arr = array();
        if ($flag) {
            $arr[] = $pid;
        }
        foreach ($cate as $v) {
            if ($v['parent_id'] == $pid) {
                $arr[] = $v['cate_id'];
                $arr = array_merge($arr , self::getChildsId($cate, $v['cate_id']));
            }
        }

        return $arr;
    }


    //传递一个父级分类ID返回所有子级分类
    static public function getChilds($cate, $pid) {
        $arr = array();
        foreach ($cate as $v) {
            if ($v['pid'] == $pid) {
                $arr[] = $v;
                $arr = array_merge($arr, self::getChilds($cate, $v['id']));
            }
        }
        return $arr;
    }
    
    static public function getCityChilds($cate, $pid, $flag = 0) {
        
        $arr = array();
        if ($flag) {
            $arr[] = $pid;
        }
        foreach ($cate as $v) {
            if ($v['parent_id'] == $pid) {
                $arr[] = $v['city_id'];
                $arr = array_merge($arr , self::getCityChilds($cate, $v['city_id']));
            }
        }
        
        return $arr;
       
    }
    //获取所有子机构包括自己
    static public function getOrgChilds($cate, $pid, $flag = 0) {
    
        $arr = array();
        if ($flag) {
            $arr[] = $pid;
        }
        foreach ($cate as $v) {
            if ($v['parentid'] == $pid) {
                $arr[] = $v['organ_id'];
                $arr = array_merge($arr , self::getOrgChilds($cate, $v['organ_id']));
            }
        }
    
        return $arr;
         
    }

    //传递一个分类ID返回该分类相当信息
    static public function getSelf($cate, $id) {
        $arr = array();
        foreach ($cate as $v) {
            if ($v['id'] == $id) {
                $arr = $v;
                return $arr;
            }
        }
        return $arr;
    }

    //传递一个分类ID返回该分类相当信息
    static public function getSelfByEName($cate, $ename) {
        $arr = array();
        foreach ($cate as $v) {
            if ($v['ename'] == $ename) {
                $arr = $v;
                return $arr;
            }
        }
        return $arr;
    }
    /*
 * 传递商品的二维数组,获取商品和商品所属分类的全部上级分类
 * */
    static public function getparentlist($cate,$list){
        foreach($list as $k=>$v){
            $cate_info = self::getParents($cate,$v['cate_id']);
            foreach($cate_info as $k1=>$v1){
                $list[$k]['cate'][] = $v1['name'];
            }
            $list[$k]['cate'] = implode('——',$list[$k]['cate']);
        }
        return $list;
    }
    /*
* 传递一个一级分类id,获取所有的二级分类对应的所有三级分类
* */
    static public function getchildlist($cate,$cate_id){
        foreach($cate as $k=>$v){
            if($v['parent_id']==$cate_id){
                foreach($cate as $k1=>$v1){
                    if($v1['parent_id']==$v['cate_id']){

//                        $arr[$k]['child'][]=$v1;
                        $v['child'][] = $v1;
                    }
                }
                $arr[] = $v;
            }
        }
        return $arr;
    }
}