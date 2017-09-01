/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : gzphp27_shop

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-18 14:36:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` int(10) unsigned DEFAULT NULL,
  `goodsid` int(10) unsigned DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `num` int(10) unsigned DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('312', '1', '3', '凡茜绿豆卸妆水180ml', '39.00', '1', '1492479572');
INSERT INTO `detail` VALUES ('313', '3', '7', '雅诗兰黛 特润修护肌透精华露', '698.00', '1', '1492479716');
INSERT INTO `detail` VALUES ('314', '3', '9', '兰蔻 新精华肌底液', '899.00', '1', '1492479716');
INSERT INTO `detail` VALUES ('315', '5', '3', '凡茜绿豆卸妆水180ml', '39.00', '1', '1492481757');
INSERT INTO `detail` VALUES ('316', '5', '14', '玉兰油 面霜', '119.00', '2', '1492481757');

-- ----------------------------
-- Table structure for friendlink
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `url` varchar(255) NOT NULL,
  `picname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friendlink
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `goods` varchar(32) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `descr` text,
  `price` double(6,2) DEFAULT NULL,
  `picname` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '1',
  `store` int(11) DEFAULT '0',
  `num` int(11) DEFAULT '0',
  `clicknum` int(11) DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '21', '贝德玛卸妆水', '法国 ', '法国 贝德玛（Bioderma）深层舒妍卸妆水 蓝水（适合混合型、油性肌肤 海外发行S版） 500ml 控油收缩毛孔', '139.00', '201704101122404778.jpg', '3', '100', '0', '0', '1491794560');
INSERT INTO `goods` VALUES ('2', '21', '姬芮 净颜两用卸妆油 ', '上海', '姬芮(Za）净颜两用卸妆油 100ml(轻松卸妆 温和去黑头 清爽干净可沾水用)', '78.00', '201704101127529115.jpg', '1', '100', '0', '0', '1491794872');
INSERT INTO `goods` VALUES ('3', '21', '凡茜绿豆卸妆水180ml', '北京', '凡茜绿豆卸妆水180ml（温和卸妆油脸部唇部眼部深层控油清洁卸妆液）', '39.00', '201704101129155034.jpg', '1', '100', '0', '0', '1491794955');
INSERT INTO `goods` VALUES ('4', '22', '素派男士护肤品套', '北京', '素派男士护肤品套装洗面奶面膜爽肤水面霜化妆品保湿补水控油去黑头 男士护肤4件套', '39.00', '201704111531002387.jpg', '1', '100', '0', '0', '1491795009');
INSERT INTO `goods` VALUES ('5', '22', '澳雅婷马油7件套', '上海', '澳雅婷马油7件套护肤套装春季补水保湿化妆品护手霜洗面奶身体乳男女\r\n洁面乳、肌底水、润凝乳、滋养霜、手霜、身体乳、眼霜', '79.00', '201704101131167625.jpg', '1', '100', '0', '0', '1491795076');
INSERT INTO `goods` VALUES ('6', '22', '补水保湿靓肤护肤品', '北京', '补水保湿靓肤护肤品 红酒多酚水凝面膜 男女士 20片（水润光泽 保湿嫩肤 滋养 补水静神） 红酒多酚水凝20片装', '59.00', '201704101136596983.jpg', '1', '100', '0', '0', '1491795419');
INSERT INTO `goods` VALUES ('7', '23', '雅诗兰黛 特润修护肌透精华露', '英国', '雅诗兰黛（Estee Lauder）特润修护肌透精华露 50ml（精华肌底液 ANR 小棕瓶 收缩毛孔）', '698.00', '201704101144223401.jpg', '1', '100', '0', '0', '1491795862');
INSERT INTO `goods` VALUES ('8', '23', '兰芝 新水酷特润精华露', '韩国', '兰芝（LANEIGE）新水酷特润精华露 60ML（保湿补水 完美清爽滋润）', '295.00', '201704101148328541.jpg', '1', '100', '0', '0', '1491796112');
INSERT INTO `goods` VALUES ('9', '23', '兰蔻 新精华肌底液', '法国', '兰蔻（Lancome）新精华肌底液50ml（又名：大黑瓶）（限量版 普通版随机发货）精华液 补水', '899.00', '201704101150384782.jpg', '1', '100', '0', '0', '1491796238');
INSERT INTO `goods` VALUES ('10', '24', '欧莱雅 清润葡萄籽保湿乳液', '江苏', '欧莱雅 （LOREAL） 清润葡萄籽保湿乳液 110ml（欧莱雅女士 补水保湿 深层保湿）', '159.00', '201704101152253477.jpg', '1', '100', '0', '0', '1491796345');
INSERT INTO `goods` VALUES ('11', '24', '丝塔芙 保湿润肤乳', '加拿大', '丝塔芙Cetaphil保湿润肤乳118ml（乳液面霜 温和 补水 保湿 不添加香料 敏感肌宝宝适用）', '69.00', '201704101153333977.jpg', '1', '100', '0', '0', '1491796413');
INSERT INTO `goods` VALUES ('12', '24', '雪肌精 乳液 ', '日本', '雪肌精 SEKKISEI 乳液 130ml（乳液 补水滋润）', '259.00', '201704101155531540.jpg', '1', '100', '0', '0', '1491796553');
INSERT INTO `goods` VALUES ('13', '25', '雅诗兰黛面霜 保湿霜 ', '上海', 'Estee Lauder雅诗兰黛面霜 红石榴/鲜活亮采保湿霜 日霜15ml*2', '158.00', '201704101157448072.jpg', '1', '100', '0', '0', '1491796664');
INSERT INTO `goods` VALUES ('14', '25', '玉兰油 面霜', '广州', '玉兰油Olay面霜多效修护50g（补水保湿 提拉紧致 减少皱纹 新老包装随机发货）', '119.00', '201704101158564943.jpg', '1', '100', '0', '0', '1491796736');
INSERT INTO `goods` VALUES ('15', '25', '丝塔芙 致润保湿霜', '加拿大', '丝塔芙Cetaphil致润保湿霜566g（乳液 护手霜 身体乳 温和 补水 保湿 敏感肌宝宝适用）', '188.00', '201704101159572407.jpg', '1', '100', '0', '0', '1491796797');
INSERT INTO `goods` VALUES ('16', '26', '温碧泉八杯水亲亲水润五件套装', '广州', '温碧泉八杯水亲亲水润五件套装（洁面乳+保湿水+活肤乳+嫩肤霜+眼精华）补水保湿护肤化妆品', '198.00', '201704101915354993.jpg', '1', '100', '0', '0', '1491822935');
INSERT INTO `goods` VALUES ('17', '26', '妮维雅 男士水活畅透精华露', '上海', '妮维雅 男士水活畅透精华露50g（小蓝管 瞬间化水 超薄面霜 保湿补水）持久滋润 随身携带', '85.00', '201704101916331497.jpg', '1', '100', '0', '0', '1491822993');
INSERT INTO `goods` VALUES ('18', '26', '兰蔻 清滢柔肤水', '法国', '兰蔻（Lancome）清滢柔肤水400ml（又名：大粉水） 补水 保湿 爽肤水', '389.00', '201704101918072839.jpg', '1', '100', '0', '0', '1491823087');
INSERT INTO `goods` VALUES ('19', '27', '莱薇尔 美白祛斑霜套装组合', '广州', '莱薇尔LAVER美白祛斑霜套装组合 祛斑产品去斑面霜 淡斑精华色斑晒斑保湿补水男女适用 祛斑套装', '189.00', '201704101920534526.jpeg', '1', '100', '0', '0', '1491823190');
INSERT INTO `goods` VALUES ('20', '27', '京润珍珠珍珠美白祛斑霜', '海南', '京润珍珠珍珠美白祛斑霜30g', '98.00', '201704101922383257.jpg', '1', '100', '0', '0', '1491823358');
INSERT INTO `goods` VALUES ('21', '27', '知医堂思兰朵焕颜祛斑霜组合套装', '中国', '（买2送1）知医堂思兰朵焕颜祛斑霜组合套装补水保湿美白去斑产品去色斑晒斑男女士 1套', '128.00', '201704101923352527.jpg', '1', '100', '0', '0', '1491823415');
INSERT INTO `goods` VALUES ('22', '28', '欧莱雅 男士火山岩控油清痘洁面膏', '江苏', '欧莱雅（LOREAL）男士火山岩控油清痘洁面膏100ml（男士洗面奶 祛痘清爽 深层清洁）', '39.00', '201704101928281480.jpg', '1', '100', '0', '0', '1491823708');
INSERT INTO `goods` VALUES ('23', '28', '锐度男士洗面奶', '中国', '锐度男士洗面奶控油祛痘去黑头黑钻洁面乳护肤品补水深层清洁套装 洁面礼盒', '68.00', '201704101957403441.jpg', '1', '100', '0', '0', '1491825460');
INSERT INTO `goods` VALUES ('24', '28', '索璞蜗牛氨基酸洗面奶男士女士', '中国', '索璞蜗牛氨基酸洗面奶男士女士 泡沫控油祛痘去黑头去白皙头粉刺收缩毛孔 洗脸洁面乳120ml', '39.00', '201704101959219145.jpg', '1', '100', '0', '0', '1491825561');
INSERT INTO `goods` VALUES ('25', '29', '欧莱雅 男士露 抗皱紧肤霜', '中国', '欧莱雅（LOREAL）男士护肤面霜/露 抗皱紧肤霜50ml', '83.50', '201704102002221505.jpg', '1', '100', '0', '0', '1491825742');
INSERT INTO `goods` VALUES ('26', '29', '欧莱雅 女士复颜玻尿酸水光充盈导入抗皱套装 ', '中国', '欧莱雅 （LOREAL）复颜玻尿酸水光充盈导入抗皱套装 晶露0227+乳液0265+面霜1080+眼霜', '675.00', '201704102017254240.jpg', '1', '100', '0', '0', '1491826646');
INSERT INTO `goods` VALUES ('27', '29', '百雀羚 面霜', '太原', '百雀羚（PECHOIN）面霜 精华霜肌初赋活紧肤抗皱菁华霜50g ', '155.00', '201704102019031252.jpg', '1', '100', '0', '0', '1491826743');
INSERT INTO `goods` VALUES ('28', '30', '欧诗漫 提拉紧致走珠眼部护理精华凝露眼霜', '中国', '欧诗漫OSM提拉紧致走珠眼部护理精华凝露眼霜15g 去细纹紧致补水保湿 去眼袋黑眼圈', '39.90', '201704102020377667.jpg', '1', '100', '0', '0', '1491826837');
INSERT INTO `goods` VALUES ('29', '30', '爱肤宜 金桂花眼贴膜', '中国', '(货到付款)爱肤宜 金桂花眼贴膜 60片/瓶 去淡化细纹眼袋黑眼圈补水眼霜 眼部护理', '47.00', '201704102021377332.jpg', '1', '100', '0', '0', '1491826897');
INSERT INTO `goods` VALUES ('30', '30', '透真 女士全能眼霜', '中国', '透真全能眼霜女15g去淡化黑眼圈眼袋脂肪粒细纹补水保湿去鱼尾纹提拉紧致抗皱眼部护理', '89.00', '201704102022504999.jpg', '1', '100', '0', '0', '1491826970');
INSERT INTO `goods` VALUES ('31', '31', '美宝莲巨遮瑕BB霜 自然色 ', '北京', '美宝莲巨遮瑕新颜霜 自然色 30ml（BB霜 裸妆遮瑕 保湿 防护）', '118.00', '201704110910115146.jpg', '1', '100', '0', '0', '1491873011');
INSERT INTO `goods` VALUES ('32', '31', '爱斯贝绮凝彩水漾气垫bb霜', '北京', 'CB爱斯贝绮凝彩水漾气垫bb霜保湿水润裸妆粉底液不脱妆', '109.00', '201704110913563970.jpg', '1', '100', '0', '0', '1491873236');
INSERT INTO `goods` VALUES ('33', '31', '卡姿兰 气垫bb霜', '北京', '卡姿兰（Carslan）蜗牛气垫调控霜礼盒装02#柔缎色 14.5g*2（气垫bb霜升级 保湿 遮瑕 提亮）', '199.00', '201704110915452168.jpg', '1', '100', '0', '0', '1491873345');
INSERT INTO `goods` VALUES ('34', '32', 'BOB无限魅惑眼影', '北京', 'BOB无限魅惑眼影 大地色裸妆眼影盘多色眼影盒 彩妆套装 彩妆盘5色眼影 01桃粉盘', '39.00', '201704110917184791.jpg', '1', '100', '0', '0', '1491873438');
INSERT INTO `goods` VALUES ('35', '32', '美宝莲 裸色风暴眼影盘', '北京', '美宝莲（MAYBELLINE）裸色风暴眼影盘 9g（裸妆 易上手 不晕染）', '168.00', '201704110918241963.jpg', '1', '100', '0', '0', '1491873504');
INSERT INTO `goods` VALUES ('36', '32', '稚优泉六色眼影含大地色眼影盘眼影笔眼影棒彩妆盘 ', '北京', '稚优泉六色眼影含大地色眼影盘眼影笔眼影棒彩妆盘 裸妆哑光珠 六色眼影01', '69.00', '201704110919194114.jpg', '1', '100', '0', '0', '1491873559');
INSERT INTO `goods` VALUES ('37', '33', '美宝莲 好气色轻唇膏', '北京', '美宝莲（MAYBELLINE）好气色轻唇膏07 粉嫩蔷薇3g（唇彩 唇膏 口红 保湿滋润）', '78.00', '201704110921222668.jpg', '1', '100', '0', '0', '1491873682');
INSERT INTO `goods` VALUES ('38', '33', '澳雅婷口红持久保湿滋润唇膏唇彩', '北京', '澳雅婷口红持久保湿滋润唇膏唇彩3.8g不掉色不沾杯女士唇蜜唇釉 热吻红', '49.00', '201704110922335840.jpg', '1', '100', '0', '0', '1491873753');
INSERT INTO `goods` VALUES ('39', '33', '梦妆 花心丝绒唇膏笔 ', '北京', '梦妆（Mamonde）花心丝绒唇膏笔 11（豆沙） 2.5g（豆沙色口红 唇彩 保湿 润唇 持久显色）', '89.00', '201704110923396638.jpg', '1', '100', '0', '0', '1491873819');
INSERT INTO `goods` VALUES ('40', '34', '火烈鸟双头造型眉笔', '北京', '火烈鸟双头造型眉笔 防水防汗不易晕染眉毛笔 塑型纤细描绘不易脱妆画眉笔 05#可可深棕', '29.00', '201704110925335716.jpg', '1', '100', '0', '0', '1491873933');
INSERT INTO `goods` VALUES ('41', '34', '伊蒂之屋 睛彩自然眉笔', '北京', '伊蒂之屋（ETUDE HOUSE）睛彩自然眉笔#04 0.26g深灰色(自然上色 爱丽小屋 原名)', '29.00', '201704110930119197.jpg', '1', '100', '0', '0', '1491874211');
INSERT INTO `goods` VALUES ('42', '34', '欧莱雅 眉笔大师三头塑形眉笔', '北京', '欧莱雅（LOREAL）眉笔大师三头塑形眉笔 浅棕 2*0.2g（欧莱雅彩妆 一笔三头 简单塑型）', '119.00', '201704110934147083.jpg', '1', '100', '0', '0', '1491874454');

-- ----------------------------
-- Table structure for goods_orders
-- ----------------------------
DROP TABLE IF EXISTS `goods_orders`;
CREATE TABLE `goods_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_orders
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `linkman` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '10', '苍井大波啊', '日本东京热', '159326', '15555555557', '1492479572', '39.00', '1');
INSERT INTO `orders` VALUES ('2', '1', 'Mr.chen', 'wu', '100086', '12345678901', '1492479675', '0.00', '0');
INSERT INTO `orders` VALUES ('3', '10', '苍井大波啊', '日本东京热', '159326', '15555555557', '1492479716', '1597.00', '0');
INSERT INTO `orders` VALUES ('4', '10', '苍井大波啊', '日本东京热', '159326', '15555555557', '1492479732', '0.00', '0');
INSERT INTO `orders` VALUES ('5', '14', '666', '666', '666', '666', '1492481757', '277.00', '2');

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `content` text,
  `score` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for root
-- ----------------------------
DROP TABLE IF EXISTS `root`;
CREATE TABLE `root` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `pass` char(32) NOT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `state` tinyint(1) DEFAULT '1',
  `addtime` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of root
-- ----------------------------
INSERT INTO `root` VALUES ('1', '123456', 'Mr.chen', '123456', '1', 'wu', '100086', '12345678901', 'admin@126.com', '0', '1234567809');

-- ----------------------------
-- Table structure for showpping
-- ----------------------------
DROP TABLE IF EXISTS `showpping`;
CREATE TABLE `showpping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usersid` varchar(128) NOT NULL,
  `goodsid` varchar(255) NOT NULL,
  `gouwunum` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of showpping
-- ----------------------------

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '护肤品', '0', '0,');
INSERT INTO `type` VALUES ('2', '保养品', '0', '0,');
INSERT INTO `type` VALUES ('3', '彩妆品', '0', '0,');
INSERT INTO `type` VALUES ('4', '卸妆', '1', '0,1,');
INSERT INTO `type` VALUES ('6', '面膜', '1', '0,1,');
INSERT INTO `type` VALUES ('7', '精华', '1', '0,1,');
INSERT INTO `type` VALUES ('8', '乳液', '1', '0,1,');
INSERT INTO `type` VALUES ('9', '面霜', '1', '0,1,');
INSERT INTO `type` VALUES ('10', 'BB霜', '3', '0,3,');
INSERT INTO `type` VALUES ('12', '眼影', '3', '0,3,');
INSERT INTO `type` VALUES ('13', '唇彩', '3', '0,3,');
INSERT INTO `type` VALUES ('14', '眉笔', '3', '0,3,');
INSERT INTO `type` VALUES ('15', '保湿补水', '2', '0,2,');
INSERT INTO `type` VALUES ('16', '美白祛斑', '2', '0,2,');
INSERT INTO `type` VALUES ('17', '控油祛痘', '2', '0,2,');
INSERT INTO `type` VALUES ('18', '紧肤抗皱', '2', '0,2,');
INSERT INTO `type` VALUES ('19', '眼部护理', '2', '0,2,');
INSERT INTO `type` VALUES ('20', '粉底', '3', '0,3,');
INSERT INTO `type` VALUES ('21', '卸妆水', '4', '0,1,4,');
INSERT INTO `type` VALUES ('22', '护肤', '6', '0,1,6,');
INSERT INTO `type` VALUES ('23', '精华露', '7', '0,1,7,');
INSERT INTO `type` VALUES ('24', '保湿润肤乳', '8', '0,1,8,');
INSERT INTO `type` VALUES ('25', '保湿霜', '9', '0,1,9,');
INSERT INTO `type` VALUES ('26', '湿补水', '15', '0,2,15,');
INSERT INTO `type` VALUES ('27', '美白祛斑霜', '16', '0,2,16,');
INSERT INTO `type` VALUES ('28', '洗面奶', '17', '0,2,17,');
INSERT INTO `type` VALUES ('29', '紧肤抗皱膏', '18', '0,2,18,');
INSERT INTO `type` VALUES ('30', '眼部保养', '19', '0,2,19,');
INSERT INTO `type` VALUES ('31', '气垫bb霜', '10', '0,3,10,');
INSERT INTO `type` VALUES ('32', '彩色眼影', '12', '0,3,12,');
INSERT INTO `type` VALUES ('33', '彩色唇彩', '13', '0,3,13,');
INSERT INTO `type` VALUES ('34', '彩色眉笔', '14', '0,3,14,');
INSERT INTO `type` VALUES ('35', '彩色', '20', '0,3,20,');
INSERT INTO `type` VALUES ('36', '粉色', '0', '0,');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `pass` char(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `state` tinyint(1) DEFAULT '1',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'jack', '霸王枪', '1', '123456', '广州市天河区东圃', '518101', '12345678911', 'www2222@qq.com', '1', '1491365127');
INSERT INTO `users` VALUES ('2', '大波空', '波多野空', '0', '123456', '东京市无码区', '696969', '14725836988', 'makelove@qq.com', '1', '1491372931');
INSERT INTO `users` VALUES ('3', '钻石王老五', '隔壁的老王', '1', '123456', '富士康市五号车间', '521230', '15935748624', 'fushikma@163.com', '1', '1491372948');
INSERT INTO `users` VALUES ('4', '欧美女', '朱迪', '0', '123456', '纽约市红灯区', '518101', '11111111111', 'baby123@gmail.com', '1', '1491373311');
INSERT INTO `users` VALUES ('5', '日本女', '16岁学生', '1', '123456', '东京市无码区', '159357', '69696969696', '6666666@126.com', '1', '1491373311');
INSERT INTO `users` VALUES ('6', '导演', 'zzz', '1', '123456', '纽约市红灯区', '152828', '13468798521', 'liuliuliuw@126.com', '2', '1491373311');
INSERT INTO `users` VALUES ('7', 'ja68', '霸王枪68', '1', '123456', '广州市天河区东圃', '518101', '12345678922', 'www456@qq.com', '1', '1491365127');
INSERT INTO `users` VALUES ('8', 'jack93', '霸王枪93', '1', '123456', '广州市天河区东圃', '518101', '12345678944', 'www789@qq.com', '1', '1491365127');
INSERT INTO `users` VALUES ('9', 'jack9', '霸王枪9', '0', '123456', '广州市天河区东圃', '518101', '12345678958', 'www741@126.com', '2', '1491365127');
INSERT INTO `users` VALUES ('10', '789', '苍井大波啊', '0', '123456', '日本东京热', '159326', '1555555555', '日本东京热', '1', '1491365127');
INSERT INTO `users` VALUES ('11', '111', '风间由美', '1', '123456', '日本制片厂', '158202', '15395543129', '111aa00@gmail.com', '1', '1491399740');
INSERT INTO `users` VALUES ('12', '222', '麻布由衣', '1', '123456', '日本制片厂', '150002', '12345681232', '89snsn8@163.com', '1', '1491404282');
INSERT INTO `users` VALUES ('13', '888', '888', '1', '888', '888', '888', '888', '8888888@qq.com', '1', '1492480702');
INSERT INTO `users` VALUES ('14', '666', '666', '1', '666', '666', '666', '666', '666', '1', '1492481682');
