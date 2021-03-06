<?php
//自定义分页类

class Page{
    //成员属性
    protected $page=1; //当前页
    protected $pageSize; //页大小
    protected $maxRows; //最大数据条数
    protected $maxPage; //最大页数
    
    //构造方法，初始化总条数和页大小
    public function __construct($total,$pageSize=5){
        $this->maxRows = $total;
        $this->pageSize = $pageSize;
        $this->page = isset($_GET['p'])?$_GET['p']:1; //获取当前页
        //计算总页数和当前页数
        $this->getMaxPage();
        $this->checkPage();
    }
    
    //计算总页数
    private function getMaxPage(){
        $this->maxPage = ceil($this->maxRows/$this->pageSize);
    }
    
    //判断过滤当前页
    private function checkPage(){
        //判断最大页
        if($this->page>$this->maxPage){
            $this->page = $this->maxPage;
        }
        //判断过小
        if($this->page<1){
            $this->page=1;
        }
    }
    
    //返回limit子句
    public function limit(){
        return (($this->page-1)*$this->pageSize).",".$this->pageSize;
    }
    
    //显示页码信息
    public function show(){
        //获取当前网页的url地址
        $url = $_SERVER["PHP_SELF"];
        //拼装ur地址中的参数（除p字母外）
        
        $param = "";
        foreach($_GET as $k=>$v){
            if($k!=="p"){ //排除p条件
            $param .= "&{$k}={$v}";
            }
        }
        //拼装输出页码信息
        $str = "当前第{$this->page}/{$this->maxPage}页 共计{$this->maxRows}条 ";
        $str .= " <a href='{$url}?p=1{$param}'>首页</a> ";
        $str .= " <a href='{$url}?p=".($this->page-1)."{$param}'>上一页</a> ";
        $str .= " <a href='{$url}?p=".($this->page+1)."{$param}'>下一页</a> ";
        $str .= " <a href='{$url}?p={$this->maxPage}{$param}'>尾页</a> ";
        
        return $str;//返回
    }
}