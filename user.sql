SET names utf8;
DROP DATABASE IF EXISTS mz;
CREATE DATABASE mz charset utf8;
USE mz;
#用户表
CREATE TABLE mz_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname CHAR(10),
	upwd CHAR(10) ,
	img	CHAR(50)
);
INSERT INTO mz_user VALUES (null,"heyang",123456,"img/user_img/timg.jpg"),
(null,"何阳",123456,"img/user_img/何阳.jpg");
#商品信息表
CREATE TABLE mz_details(
	did INT PRIMARY KEY AUTO_INCREMENT,
	pid INT,
	title CHAR(20),
	title_desc CHAR(20),
	price decimal(6,2) ,
	price_desc CHAR(20),
	discount CHAR(30),
	img_lg	CHAR(50),
	img_sm  CHAR(255)
);
INSERT INTO mz_details VALUES(null,1,"魅族 Note9","现货开售 | 骁龙675 后置4800万","1398.00","另外再加19元，即可换购超值商品",null,"img/params-lg/魅族 note9_big.jpg","img/params-sm/魅族note9_sm1.jpg,img/params-sm/魅族note9_sm2.jpg,img/params-sm/魅族note9_sm4.jpg,img/params-sm/魅族note9_sm3.jpg,img/params-sm/魅族note9_sm4.jpg,img/params-sm/魅族note9_sm3.jpg"),
(null,2,"魅族 X8","限时领券更优惠 | 骁龙710 人脸+指纹双解锁","1298.00","另外再加15元，即可换购超值商品","优惠券,满1298减50,更多 >","img/params-lg/魅族 X8_big.jpg","img/params-sm/魅族 X8_sm1.jpg,img/params-sm/魅族 X8_sm2.jpg,img/params-sm/魅族 X8_sm3.jpg,img/params-sm/魅族 X8_sm4.jpg"),
(null,3,"魅族16th","限量领券更优惠 | 骁龙845 屏下指纹","2498.00","另外再加15元，即可换购超值商品","优惠券,满2498减100,更多 >","img/params-lg/16th_big.jpg","img/params-sm/16th_sm1.jpg,img/params-sm/16th_sm2.jpg,img/params-sm/16th_sm3.jpg,img/params-sm/16th_sm4.jpg"),
(null,4,"魅族 16th Plus","限量领券更优惠 | 骁龙845 屏下指纹","3198.00","另外再加15元，即可换购超值商品","优惠券,满2998减150,满3198减200,满3698减300,更多 >","img/params-lg/16th_big.jpg","img/params-sm/魅族 16th Plus_sm1.jpg,img/params-sm/魅族 16th Plus_sm2.jpg,img/params-sm/魅族 16th Plus_sm3.jpg,img/params-sm/魅族 16th Plus_sm4.jpg"),
(null,5,"魅族 16 X","限量领券更优惠 | 骁龙710 屏下指纹","1798.00","另外再加15元，即可换购超值商品","优惠券,满1798减100,更多 >","img/params-lg/魅族 16 X_big.jpg","img/params-sm/魅族 16 X_sm1.jpg,img/params-sm/魅族 16 X_sm2.jpg,img/params-sm/魅族 16 X_sm3.jpg,img/params-sm/魅族 16 X_sm4.jpg"),
(null,6,"魅族 Note8","限量领券更优惠 | 骁龙632 人脸指纹双解锁","1298.00","另外再加15元，即可换购超值商品","优惠券,满1298减200,更多 >","img/params-lg/魅族 Note8_big.jpg","img/params-sm/魅族 Note8_sm1.jpg,img/params-sm/魅族 Note8_sm2.jpg,img/params-sm/魅族 Note8_sm3.jpg,img/params-sm/魅族 Note8_sm4.jpg"),
(null,7,"魅族 V8 高配版","限量领券更优惠 | 高清双摄 指纹+人脸双解锁","898.00","另外再加15元，即可换购超值商品",null,"img/params-lg/魅族 V8 高配版_big.jpg","img/params-sm/魅族 V8 高配版_sm1.jpg,img/params-sm/魅族 V8 高配版_sm2.jpg,img/params-sm/魅族 V8 高配版_sm3.jpg,img/params-sm/魅族 V8 高配版_sm4.jpg"),
(null,8,"魅族 15","限量领券更优惠 | 骁龙660 2000万暗光双摄","1498.00","另外再加19元，即可换购超值商品","优惠券,满1498减100,满1498减300,更多 >","img/params-lg/魅族 15_big.jpg","img/params-sm/魅族 15_sm1.jpg,img/params-sm/魅族 15_sm2.jpg,img/params-sm/魅族 15_sm3.jpg,img/params-sm/魅族 15_sm4.jpg"),
(null,9,"魅族 15 Plus","三星8895处理器 2000万暗光双摄","1798.00",null,"优惠券,满1498减100,满1498减300,更多 >","img/params-lg/魅族 15 Plus_big.jpg","img/params-sm/魅族 15 Plus_sm1.jpg,img/params-sm/魅族 15 Plus_sm2.jpg,img/params-sm/魅族 15 Plus_sm3.jpg,img/params-sm/魅族 15 Plus_sm4.jpg"),
(null,10,"魅蓝 E3","骁龙636处理器 全系6G大运存","1799.00","另外再加19元，即可换购超值商品",null,"img/params-lg/魅蓝 E3_big.jpg","img/params-sm/魅蓝 E3_sm1.jpg,img/params-sm/魅蓝 E3_sm2.jpg,img/params-sm/魅蓝 E3_sm3.jpg,img/params-sm/魅蓝 E3_sm4.jpg");