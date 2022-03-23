/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : python

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 10/07/2019 18:27:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for suoim_dwz
-- ----------------------------
DROP TABLE IF EXISTS `suoim_dwz`;
CREATE TABLE `suoim_dwz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_date` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `time_date`(`time_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suoim_dwz
-- ----------------------------
INSERT INTO `suoim_dwz` VALUES (2, '20180911', 'http://suo.im/5rCDls');
INSERT INTO `suoim_dwz` VALUES (6, '20190424', 'http://suo.im/4AZLup\n');
INSERT INTO `suoim_dwz` VALUES (8, '20190425', 'http://suo.im/5rFHjG\n');
INSERT INTO `suoim_dwz` VALUES (20, '20190426', 'http://suo.im/4Q7cof\n');
INSERT INTO `suoim_dwz` VALUES (23, '20190427', 'http://suo.im/5cHkLu\n');
INSERT INTO `suoim_dwz` VALUES (25, '20190428', 'http://suo.im/4XHTcC\n');
INSERT INTO `suoim_dwz` VALUES (26, '20190503', 'http://www.biaohua123.com/a/jingyan/46.html');
INSERT INTO `suoim_dwz` VALUES (27, '20190506', 'http://suo.im/4CgfyH\n');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `height` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'tom', '123', 18, 180.5);
INSERT INTO `t_user` VALUES (2, '夏京', '123', 18, 180.5);
INSERT INTO `t_user` VALUES (3, 'xj', '123', 18, 180.5);

-- ----------------------------
-- Table structure for xj_dwz
-- ----------------------------
DROP TABLE IF EXISTS `xj_dwz`;
CREATE TABLE `xj_dwz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_date` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `long_url` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `time_date`(`time_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100044 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xj_dwz
-- ----------------------------
INSERT INTO `xj_dwz` VALUES (100000, '1561738584', 'bHGT8a', 'http://127.0.0.1:5050/');
INSERT INTO `xj_dwz` VALUES (100001, '1561738646', 'bHGT9a', 'http://127.0.0.1:5050/');
INSERT INTO `xj_dwz` VALUES (100002, '1561738753', 'bHGTAJ', 'https://www.so.com/?src=se_favorite');
INSERT INTO `xj_dwz` VALUES (100003, '1561739503', 'bHGTMP', 'http://www.google.com.hk/search?client=aff-cs-360se-channel&channel=bookmark&q=');
INSERT INTO `xj_dwz` VALUES (100004, '1561740777', 'bHGUhx', 'http://www.51cto.com/');
INSERT INTO `xj_dwz` VALUES (100005, '1561740963', 'bHGUkx', 'https://www.m5c.top/');
INSERT INTO `xj_dwz` VALUES (100006, '1561741067', 'bHGUmd', 'www.biaohua123.com');
INSERT INTO `xj_dwz` VALUES (100007, '1561741394', 'bHGUru', 'https://hao.360.com/?src=bm');
INSERT INTO `xj_dwz` VALUES (100008, '1561741436', 'bHGUsa', 'https://www.360kan.com/dianshi/index.html');
INSERT INTO `xj_dwz` VALUES (100009, '1561764477', 'bHHarD', 'https://mini.eastday.com/a/190628104854881.html?qid=02160');
INSERT INTO `xj_dwz` VALUES (100010, '1561767147', 'bHHaYH', 'http://wan.360.cn/?src=se-scj-top01&channel=515460173');
INSERT INTO `xj_dwz` VALUES (100011, '1561767490', 'bHHbeo', 'http://wan.360.cn/game');
INSERT INTO `xj_dwz` VALUES (100012, '1561792441', 'bHHh8F', 'https://www.360kuai.com/pc/detail?url=http%3A%2F%2Ffawen.news.so.com%2F3009e1f2c47fff4d594ccfe1fe56aa79&check=45283ce1c50be748&subt=fifteen_words_title&subi=fifteen_image&uid=g1561792357697445250&sign=360_8910f42c&tj_url=99ceb19851124f7b0&scene=&refer_scene=0');
INSERT INTO `xj_dwz` VALUES (100013, '1561820046', 'bHHoJU', 'https://mini.eastday.com/a/190629193906571.html?qid=02160');
INSERT INTO `xj_dwz` VALUES (100014, '1561820092', 'bHHoKE', 'https://mini.eastday.com/topic/index.html?uk=190629083159495&newstype=guonei&channel=mainland');
INSERT INTO `xj_dwz` VALUES (100015, '1561942750', 'bHHKFa', 'https://www.tmall.com/?ali_trackid=2:mm_26632323_6762370_25910656:1561942743_278_690565481');
INSERT INTO `xj_dwz` VALUES (100016, '1561942781', 'bHHKF5', 'http://www.china.com.cn/');
INSERT INTO `xj_dwz` VALUES (100017, '3044903', 'mMhv', 'http://blog.chinaunix.net/uid/30810013.html');
INSERT INTO `xj_dwz` VALUES (100018, '1249389', 'fpb1', 'https://gitee.com/sun0591/gopub');
INSERT INTO `xj_dwz` VALUES (100019, '1224278', 'fi40', 'http://doc.zhrt.com.cn/web/#/15?page_id=9');
INSERT INTO `xj_dwz` VALUES (100020, '881292', 'dHqy', 'http://doc.zhrt.com.cn/web/#/15?page_id=9');
INSERT INTO `xj_dwz` VALUES (100021, '243690', 'bby4', 'https://www.so.com/?src=se_favorite');
INSERT INTO `xj_dwz` VALUES (100022, '81348', 'vke', 'https://hao.360.com/?src=bm');
INSERT INTO `xj_dwz` VALUES (100023, '292389', 'bodX', 'https://hao.360.com/?src=bm');
INSERT INTO `xj_dwz` VALUES (100024, '125973', '6LP', 'http://www.biaohua123.com');
INSERT INTO `xj_dwz` VALUES (100025, '193453', 'Oun', 'http://www.biaohua123.com');
INSERT INTO `xj_dwz` VALUES (100026, '1282741', 'fxHx', 'http://pay.wan.360.cn/');
INSERT INTO `xj_dwz` VALUES (100027, '134213', '8UJ', 'http://www.biaohua123.com');
INSERT INTO `xj_dwz` VALUES (100028, '103249', '0Rt', 'http://wan.360.cn/?src=se-scj-top01&channel=515460173');
INSERT INTO `xj_dwz` VALUES (100029, '165331', 'HaD', 'http://wan.360.cn/?src=se-scj-top01&channel=515460173');
INSERT INTO `xj_dwz` VALUES (100030, '117239', '44X', 'www.biaohua123.com');
INSERT INTO `xj_dwz` VALUES (100031, '86301', 'w1X', 'http://wan.360.cn/?src=se-scj-top01&channel=515460173');
INSERT INTO `xj_dwz` VALUES (100032, '652387', 'cJIx', 'http://wan.360.cn/?src=se-scj-top01&channel=515460173');
INSERT INTO `xj_dwz` VALUES (100033, '105343', '1zf', 'http://wan.360.cn/?src=se-scj-top01&channel=515460173');
INSERT INTO `xj_dwz` VALUES (100034, '2358049', 'jT1d', 'http://wan.360.cn/?src=se-scj-top01&channel=515460173');
INSERT INTO `xj_dwz` VALUES (100035, '4951292', 'uMd8', 'http://wan.360.cn/?src=se-scj-top01&channel=515460173');
INSERT INTO `xj_dwz` VALUES (100036, '86923', 'wBZ', 'https://ke.qq.com/webcourse/index.html#cid=293104&term_id=100347314&taid=2203876568889584&vid=i14257135jy');
INSERT INTO `xj_dwz` VALUES (100037, '6489260', '1oj4', 'http://kibana.zlkjbj.cn/app/kibana#/dashboard/8626ca70-9ad9-11e8-a7ec-a309ac1859b4?_g=(refreshInterval:(display:Off,pause:!f,value:0),time:(from:now-15m,mode:quick,to:now))&_a=(filters:!(),options:(darkTheme:!f),panels:!((col:1,id:\'2ffdcb80-e0e3-11e8-828a-292cfa475b92\',panelIndex:8,row:4,size_x:6,size_y:3,type:visualization),(col:1,id:\'69eedd20-e0e3-11e8-828a-292cfa475b92\',panelIndex:9,row:7,size_x:6,size_y:3,type:visualization),(col:7,id:c0a7f1b0-e0e3-11e8-828a-292cfa475b92,panelIndex:10,row:7,size_x:6,size_y:3,type:visualization),(col:7,id:f500c820-e0e2-11e8-828a-292cfa475b92,panelIndex:11,row:4,size_x:6,size_y:3,type:visualization),(col:1,id:f9e11f90-e194-11e8-a0ca-11264b4b2ec8,panelIndex:12,row:10,size_x:6,size_y:3,type:visualization),(col:7,id:d4ead7d0-e194-11e8-a0ca-11264b4b2ec8,panelIndex:13,row:10,size_x:6,size_y:3,type:visualization),(col:1,id:\'4515aab0-1ee6-11e9-a4ff-7bffc5070c8b\',panelIndex:15,row:1,size_x:6,size_y:3,type:visualization),(col:7,id:\'58c15f50-1ee6-11e9-a4ff-7bffc5070c8b\',panelIndex:16,row:1,size_x:6,size_y:3,type:visualization),(col:1,id:\'1e0255d0-aaa7-11e8-b1cf-99795ccf5f91\',panelIndex:17,row:13,size_x:6,size_y:3,type:visualization)),query:(query_string:(analyze_wildcard:!t,query:\'*\')),timeRestore:!f,title:access_suo_im-95nginx%E7%BB%9F%E8%AE%A1%E4%BF%A1%E6%81%AF,uiState:(),viewMode:view)');
INSERT INTO `xj_dwz` VALUES (100038, '606327', 'c7J3', 'https://new.qq.com/omn/20190708/20190708V0FSUK00.html');
INSERT INTO `xj_dwz` VALUES (100039, '87290', 'wHU', 'http://www.biaohua123.com');
INSERT INTO `xj_dwz` VALUES (100040, '121324', '58Q', 'https://translate.google.cn/');
INSERT INTO `xj_dwz` VALUES (100041, '564812', 'cwVS', 'http://www.360doc.com/content/18/0207/17/16915_728405707.shtml');
INSERT INTO `xj_dwz` VALUES (100042, '122851', '5X3', 'http://www.360doc.com/content/18/0207/17/16915_728405707.shtml');
INSERT INTO `xj_dwz` VALUES (100043, '228272', 'XxO', 'http://www.biaohua123.com');

SET FOREIGN_KEY_CHECKS = 1;
