const express=require("express");
const router=express.Router();
const pool=require("../pool.js");
router.get("/pid",(req,res)=>{
    var pid=req.query.pid;
    var sql="select img_lg,img_sm,title,title_desc,price,price_desc,discount from mz_details where pid=?"
    pool.query(sql,[pid],(err,result)=>{
        if (err) throw err;
        if(result.length>0){
            res.send(result);
        }
    })
});

module .exports=router;