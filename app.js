const express=require("express");
const bodyParser=require("body-parser");
const user=require("./user/user.js");
const product=require("./user/product.js");
var server=express();
server.listen(3000);
server.use(express.static("./public"));
server.use(bodyParser.urlencoded(
    { extended: false }
));
server.use("/user",user);
server.use("/product",product);
///111
