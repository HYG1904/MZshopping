const express=require("express");
var pool=require("../pool.js");
var router=express.Router();
// 用户注册
router.post("/reg",(req,res)=>{
    var obj=req.body;
    var uname=obj.uname;
    console.log(uname)
    var sql="insert into mz_user set ?";
    var sql2="select *from mz_user where uname=?";
    pool.query(sql2,[uname],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send("用户名已使用")
            console.log(111)
        }else{
            pool.query(sql,[obj],(err,result)=>{
                if(err) throw err;
                if(result.affectedRows>0){
                    res.send("注册成功")
                }
            })
        }
    })
});
// 用户登录
router.post("/login",(req,res)=>{
    var obj=req.body;
    var $uname=obj.uname;
    var $upwd=obj.upwd;
    var sql="select * from mz_user where uname=? and upwd=?";
    pool.query(sql,[$uname,$upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send("登录成功");
        }else{
            res.send("账号或密码错误")
        }
    })
});
//获取用户图片
router.get("/img",(req,res)=>{
    var img=req.query.uname;
    var sql="select img from mz_user where uname=?"
    pool.query(sql,[img],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result)
        }
    })
})
module.exports=router;