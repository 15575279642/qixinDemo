/*
Navicat MySQL Data Transfer

Source Server         : 阿拉拉
Source Server Version : 50727
Source Host           : 47.56.107.186:3306
Source Database       : OfficeWebSite

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-08-30 10:08:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `example`
-- ----------------------------
DROP TABLE IF EXISTS `example`;
CREATE TABLE `example` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '案例主键id',
  `exp_title` int(11) DEFAULT NULL COMMENT '标题',
  `exp_name` varchar(32) NOT NULL COMMENT '名字',
  `exp_type` int(1) NOT NULL COMMENT '1.小程序案例2.app案例，\r\n1.小程序案例2.app案例，\r\n3.网站案例',
  `exp_content` varchar(255) NOT NULL COMMENT '内容',
  `pic_id` varchar(11) NOT NULL COMMENT '图片表外键',
  `create_time` varchar(32) NOT NULL COMMENT '创建时间',
  `update_time` varchar(32) NOT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of example
-- ----------------------------
INSERT INTO `example` VALUES ('1', '2', 'expName', '3', 'this is expName', '1', '2019/08/29', '2019/08/29', '1');
INSERT INTO `example` VALUES ('4', '2', 'dorary', '3', 'this is dorary', '1', '2019/08/29', '2019/08/29', '1');
INSERT INTO `example` VALUES ('5', '2', 'dorary', '3', 'this is dorary', '1', '2019/08/29', '2019/08/29', '1');

-- ----------------------------
-- Table structure for `example_pic`
-- ----------------------------
DROP TABLE IF EXISTS `example_pic`;
CREATE TABLE `example_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(32) DEFAULT NULL COMMENT '图片标题',
  `url` varchar(255) NOT NULL COMMENT '图片路径',
  `example_id` int(11) NOT NULL COMMENT '案例id',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of example_pic
-- ----------------------------
INSERT INTO `example_pic` VALUES ('3', 'doraemon', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567070923143&di=f2b68b69de22a97beecfe20bd5649d6e&imgtype=0&src=http%3A%2F%2Fimg01.cztv.com%2F201611%2F20%2F84eae5bf1e03cc04222d40aaa2389e99.gif', '1', '1');
INSERT INTO `example_pic` VALUES ('4', 'dorary', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567070923143&di=f2b68b69de22a97beecfe20bd5649d6e&imgtype=0&src=http%3A%2F%2Fimg01.cztv.com%2F201611%2F20%2F84eae5bf1e03cc04222d40aaa2389e99.gif', '1', '1');
INSERT INTO `example_pic` VALUES ('5', 'doraemon', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567070923143&di=f2b68b69de22a97beecfe20bd5649d6e&imgtype=0&src=http%3A%2F%2Fimg01.cztv.com%2F201611%2F20%2F84eae5bf1e03cc04222d40aaa2389e99.gif', '2', '1');
INSERT INTO `example_pic` VALUES ('6', 'doraemon', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567070923143&di=f2b68b69de22a97beecfe20bd5649d6e&imgtype=0&src=http%3A%2F%2Fimg01.cztv.com%2F201611%2F20%2F84eae5bf1e03cc04222d40aaa2389e99.gif', '4', '1');
INSERT INTO `example_pic` VALUES ('7', 'doraemon', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567070923143&di=f2b68b69de22a97beecfe20bd5649d6e&imgtype=0&src=http%3A%2F%2Fimg01.cztv.com%2F201611%2F20%2F84eae5bf1e03cc04222d40aaa2389e99.gif', '4', '1');

-- ----------------------------
-- Table structure for `logo`
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `logo_tilte` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `logo_image` varchar(255) NOT NULL,
  `ction` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logo
-- ----------------------------
INSERT INTO `logo` VALUES ('0000000001', '微信小程序', '为各行业提供线上电商交易平台。支持单店商城、多店商城、商家入驻型商城O2O新零售商城等多种商城模式。', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l9XKAGO9cAAAd6UKSZBk157.png', '');
INSERT INTO `logo` VALUES ('0000000002', '展示类小程序', '为企业展示需求的客户提供个性化解决方案，更加贴合实际满足企业的业务及服务需求。展示企业的服务、宣传企业品牌、为企业客户提供客服服务。', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l9eSACw-FAAAeSE-XIhA439.png', '');
INSERT INTO `logo` VALUES ('0000000003', '外送类小程序', '为餐饮、鲜花预订、蛋糕定做等企业提供小程序解决方案。消费者在小程序,用户端选择外送产品或服务下单，外送员在小程序外送员端接单及提供配送服务，企业后台管理用户端数据及销售业绩统计。', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l9guACe2hAAAeDGkv-wQ745.png', '');
INSERT INTO `logo` VALUES ('0000000004', '酒店类小程序', '为酒店、公寓、名宿、KTV等类行业实现房间预订、入住管理、退房核销等功能。支持单店、多店模式。强大的后台管理，优质的用户体验。', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l9XKAGO9cAAAd6UKSZBk157.png', '');
INSERT INTO `logo` VALUES ('0000000005', '教育类小程序', '为教育培训类企业提供线上线下课程购买、课程预约、在线课程学习、 线下课程培训、编制课程表、上课签到等功能的解决方案', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l9eSACw-FAAAeSE-XIhA439.png', '');
INSERT INTO `logo` VALUES ('0000000006', '餐饮类小程序', '给餐饮类企业提供线上点餐预定，现场堂食扫码点餐，外送等功能定制。 支持单店、多店形式。消费者扫描台面二维码或输入台号进入点餐流程， 选取产品立即下单，出菜之后前台核销。用户端操作简单、后台查询订单 详情及销售业绩，管理便捷。', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l9guACe2hAAAeDGkv-wQ745.png', '');
INSERT INTO `logo` VALUES ('0000000007', '分销类小程序', '快速裂变。分销返佣多层级裂变分销，多级返佣金,让用户成为推客，层级智能锁定多种方式智能锁定推客,上级或下级代理的链路关系。', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l9XKAGO9cAAAd6UKSZBk157.png', '');
INSERT INTO `logo` VALUES ('0000000008', '多门店小程序', '针对于传统连锁店所开发的小程序。帮助商家全面接入互联网，实现线上线下结合，提供更多优质的服务。通过丰富的自定义互联网接入方案，帮助传统企业顺利转型，加快服务升级，把握未来商业趋势。连锁店可设置多个店铺服务信息，按照地图定位帮助用户选择服务店铺，提升用户体验，获得用户青睐。', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l9guACe2hAAAeDGkv-wQ745.png', '');

-- ----------------------------
-- Table structure for `logo_image`
-- ----------------------------
DROP TABLE IF EXISTS `logo_image`;
CREATE TABLE `logo_image` (
  `l_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tilte` varchar(255) NOT NULL,
  `logo_id` int(11) NOT NULL,
  PRIMARY KEY (`l_id`),
  KEY `logo_id` (`logo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logo_image
-- ----------------------------
INSERT INTO `logo_image` VALUES ('1', 'http://192.168.31.54:8080/images/icon／06@2x.png', '商品', '1');
INSERT INTO `logo_image` VALUES ('2', 'http://192.168.31.54:8080/images/icon／06@2x(2).png', '订单', '1');
INSERT INTO `logo_image` VALUES ('3', 'http://192.168.31.54:8080/images/icon／06@2x(4).png', '会员', '1');
INSERT INTO `logo_image` VALUES ('4', 'http://192.168.31.54:8080/images/icon／06@2x(6).png', '积分', '1');
INSERT INTO `logo_image` VALUES ('5', 'http://192.168.31.54:8080/images/icon／06@2x(1).png', '拼图', '1');
INSERT INTO `logo_image` VALUES ('6', 'http://192.168.31.54:8080/images/icon／06@2x(3).png', '活动', '1');
INSERT INTO `logo_image` VALUES ('7', 'http://192.168.31.54:8080/images/icon／06@2x(5).png', '入驻', '1');
INSERT INTO `logo_image` VALUES ('8', 'http://192.168.31.54:8080/images/icon／06@2x(7).png', '分销', '1');
INSERT INTO `logo_image` VALUES ('9', 'http://192.168.31.54:8080/images/icon／06@2x(8).png', '公司简介', '2');
INSERT INTO `logo_image` VALUES ('10', 'http://192.168.31.54:8080/images/icon／06@2x(10).png', '商务展示', '2');
INSERT INTO `logo_image` VALUES ('11', 'http://192.168.31.54:8080/images/icon／06@2x(12).png', '产品展示', '2');
INSERT INTO `logo_image` VALUES ('12', 'http://192.168.31.54:8080/images/icon／06@2x(14).png', '预约留言', '2');
INSERT INTO `logo_image` VALUES ('13', 'http://192.168.31.54:8080/images/icon／06@2x(9).png', '新闻资讯', '2');
INSERT INTO `logo_image` VALUES ('14', 'http://192.168.31.54:8080/images/icon／06@2x(11).png', '案例展示', '2');
INSERT INTO `logo_image` VALUES ('15', 'http://192.168.31.54:8080/images/icon／06@2x(13).png', '加盟信息', '2');
INSERT INTO `logo_image` VALUES ('16', 'http://192.168.31.54:8080/images/icon／06@2x(15).png', '客服功能', '2');
INSERT INTO `logo_image` VALUES ('17', 'http://192.168.31.54:8080/images/icon／06@2x(16).png', '下单', '3');
INSERT INTO `logo_image` VALUES ('18', 'http://192.168.31.54:8080/images/icon／06@2x(18).png', '派单', '3');
INSERT INTO `logo_image` VALUES ('19', 'http://192.168.31.54:8080/images/icon／06@2x(20).png', '签收', '3');
INSERT INTO `logo_image` VALUES ('20', 'http://192.168.31.54:8080/images/icon／06@2x(22).png', '积分', '3');
INSERT INTO `logo_image` VALUES ('21', 'http://192.168.31.54:8080/images/icon／06@2x(17).png', '优惠', '3');
INSERT INTO `logo_image` VALUES ('22', 'http://192.168.31.54:8080/images/icon／06@2x(19).png', '结算', '3');
INSERT INTO `logo_image` VALUES ('23', 'http://192.168.31.54:8080/images/icon／06@2x(21).png', '业绩', '3');
INSERT INTO `logo_image` VALUES ('24', 'http://192.168.31.54:8080/images/icon／06@2x(23).png', '统计', '3');
INSERT INTO `logo_image` VALUES ('25', 'http://192.168.31.54:8080/images/icon／06@2x(24).png', '约定', '4');
INSERT INTO `logo_image` VALUES ('26', 'http://192.168.31.54:8080/images/icon／06@2x(26).png', '入驻', '4');
INSERT INTO `logo_image` VALUES ('27', 'http://192.168.31.54:8080/images/icon／06@2x(28).png', '退房', '4');
INSERT INTO `logo_image` VALUES ('28', 'http://192.168.31.54:8080/images/icon／06@2x(30).png', '房态', '4');
INSERT INTO `logo_image` VALUES ('29', 'http://192.168.31.54:8080/images/icon／06@2x(25).png', '结算', '4');
INSERT INTO `logo_image` VALUES ('30', 'http://192.168.31.54:8080/images/icon／06@2x(27).png', '服务', '4');
INSERT INTO `logo_image` VALUES ('31', 'http://192.168.31.54:8080/images/icon／06@2x(29).png', '套餐', '4');
INSERT INTO `logo_image` VALUES ('32', 'http://192.168.31.54:8080/images/icon／06@2x(31).png', '会员', '4');
INSERT INTO `logo_image` VALUES ('33', 'http://192.168.31.54:8080/images/icon／06@2x(32).png', '课程购买', '5');
INSERT INTO `logo_image` VALUES ('34', 'http://192.168.31.54:8080/images/icon／06@2x(34).png', '课程预约', '5');
INSERT INTO `logo_image` VALUES ('35', 'http://192.168.31.54:8080/images/icon／06@2x(36).png', '上课签到', '5');
INSERT INTO `logo_image` VALUES ('36', 'http://192.168.31.54:8080/images/icon／06@2x(38).png', '课程管理', '5');
INSERT INTO `logo_image` VALUES ('37', 'http://192.168.31.54:8080/images/icon／06@2x(33).png', '学院管理', '5');
INSERT INTO `logo_image` VALUES ('38', 'http://192.168.31.54:8080/images/icon／06@2x(35).png', '在线学习', '5');
INSERT INTO `logo_image` VALUES ('39', 'http://192.168.31.54:8080/images/icon／06@2x(37).png', '在线答疑', '5');
INSERT INTO `logo_image` VALUES ('40', 'http://192.168.31.54:8080/images/icon／06@2x(39).png', '在线笔记', '5');
INSERT INTO `logo_image` VALUES ('41', 'http://192.168.31.54:8080/images/icon／06@2x(40).png', '点餐', '6');
INSERT INTO `logo_image` VALUES ('42', 'http://192.168.31.54:8080/images/icon／06@2x(42).png', '外卖', '6');
INSERT INTO `logo_image` VALUES ('43', 'http://192.168.31.54:8080/images/icon／06@2x(44).png', '订单', '6');
INSERT INTO `logo_image` VALUES ('44', 'http://192.168.31.54:8080/images/icon／06@2x(46).png', '优惠', '6');
INSERT INTO `logo_image` VALUES ('45', 'http://192.168.31.54:8080/images/icon／06@2x(41).png', '小票', '6');
INSERT INTO `logo_image` VALUES ('46', 'http://192.168.31.54:8080/images/icon／06@2x(43).png', '结算', '6');
INSERT INTO `logo_image` VALUES ('47', 'http://192.168.31.54:8080/images/icon／06@2x(45).png', '积分', '6');
INSERT INTO `logo_image` VALUES ('48', 'http://192.168.31.54:8080/images/icon／06@2x(47).png', '统计', '6');
INSERT INTO `logo_image` VALUES ('49', 'http://192.168.31.54:8080/images/icon／06@2x(48).png', '商品', '7');
INSERT INTO `logo_image` VALUES ('50', 'http://192.168.31.54:8080/images/icon／06@2x(50).png', '订单', '7');
INSERT INTO `logo_image` VALUES ('51', 'http://192.168.31.54:8080/images/icon／06@2x(52).png', '会员', '7');
INSERT INTO `logo_image` VALUES ('52', 'http://192.168.31.54:8080/images/icon／06@2x(54).png', '提现', '7');
INSERT INTO `logo_image` VALUES ('53', 'http://192.168.31.54:8080/images/icon／06@2x(49).png', '关系', '7');
INSERT INTO `logo_image` VALUES ('54', 'http://192.168.31.54:8080/images/icon／06@2x(51).png', '活动', '7');
INSERT INTO `logo_image` VALUES ('55', 'http://192.168.31.54:8080/images/icon／06@2x(53).png', '级别', '7');
INSERT INTO `logo_image` VALUES ('56', 'http://192.168.31.54:8080/images/icon／06@2x(55).png', '佣金', '7');
INSERT INTO `logo_image` VALUES ('57', 'http://192.168.31.54:8080/images/icon／06@2x(56).png', '门店', '8');
INSERT INTO `logo_image` VALUES ('58', 'http://192.168.31.54:8080/images/icon／06@2x(58).png', '订单', '8');
INSERT INTO `logo_image` VALUES ('59', 'http://192.168.31.54:8080/images/icon／06@2x(60).png', '会员', '8');
INSERT INTO `logo_image` VALUES ('60', 'http://192.168.31.54:8080/images/icon／06@2x(62).png', '积分', '8');
INSERT INTO `logo_image` VALUES ('61', 'http://192.168.31.54:8080/images/icon／06@2x(57).png', '拼团', '8');
INSERT INTO `logo_image` VALUES ('62', 'http://192.168.31.54:8080/images/icon／06@2x(59).png', '活动', '8');
INSERT INTO `logo_image` VALUES ('63', 'http://192.168.31.54:8080/images/icon／06@2x(61).png', '入驻', '8');
INSERT INTO `logo_image` VALUES ('64', 'http://192.168.31.54:8080/images/icon／06@2x(63).png', '商品', '8');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '案例主键id',
  `news_title` varchar(50) DEFAULT NULL COMMENT '新闻标题',
  `news_name` varchar(50) NOT NULL COMMENT '新闻名称',
  `news_type` int(1) NOT NULL COMMENT '新闻类型：1.行业动态，2.企业动态，3.开发动态',
  `news_content` varchar(255) NOT NULL COMMENT '新闻内容',
  `news_source` varchar(50) NOT NULL COMMENT '新闻来源处',
  `public_time` varchar(50) NOT NULL COMMENT '发表时间',
  `create_time` varchar(50) NOT NULL COMMENT '创建时间',
  `update_time` varchar(50) DEFAULT NULL COMMENT '修改时间',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('8', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '2', '【环球时报-环球网报道】据澳大利亚媒体报道，澳大利亚籍人员杨', '环球网', '2019-08-27 15:49:37', '2019-08-27 17:13:29', null, '1');
INSERT INTO `news` VALUES ('9', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '2', '【环球时报-环球网报道】据澳大利亚媒体报道，澳大利亚籍人员杨', '环球网', '2019-08-27 15:49:37', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('10', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', '2', '8月27日，外交部发言人耿爽主持例行记者会。问：据报道，七国', '人民日报', '2019-08-27 15:20:37', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('11', '2019年版第五套人民币有啥变化？最全图解来了', '2019年版第五套人民币有啥变化？最全图解来了', '3', '8月30日起，2019年版第五套人民币将正式发行，包括：50', '中国人民银行', '2019-08-27 16:26:48', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('12', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', '3', '近日，台湾财经媒体人黄世聪因一句“大陆人吃不起榨菜”遭到群嘲', '观察者网', '2019-08-27 16:27:51', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('13', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', '2', '国泰航空证实，两架停泊在多伦多机场的客机，于起飞前例行检查中', '国泰航空', '2019-08-27 15:15:32', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('14', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', '2', '“老人、保姆、房产、遗嘱”，这几个词语联系在一起时，你们会想', '钱江晚报', '2019-08-27 14:10:06', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('15', '男子5年前捡到放射源带回家 3年花掉300万治疗费', '男子5年前捡到放射源带回家 3年花掉300万治疗费', '3', '王先生曾是5年前一件新闻事件的主角——南京江北被“铱-192', '扬子晚报', '2019-08-27 10:06:09', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('16', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', '3', '8月27日，公安部发布A级通缉令，公开通缉第二批50名重大在', '南方都市报', '2019-08-27 16:17:49', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('17', '林郑月娥重申不会辞职 特区政府仍能掌控局面', '林郑月娥重申不会辞职 特区政府仍能掌控局面', '3', '8月27日上午10时，香港特区行政长官林郑月娥在特首行政会议', '环球网', '2019-08-27 12:52:40', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('18', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', '3', '近日，单某某在北京妇产医院驾车堵塞急救通道，扰乱公共秩序一案', '平安北京', '2019-08-27 09:34:28', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('19', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', '2', '【台节目造谣大陆每天只能买2公斤猪肉】据报道，8月26晚，在', '中新经纬', '2019-08-27 16:26:01', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('20', '美方指责中国干预越南在南海油气开发 外交部回应', '美方指责中国干预越南在南海油气开发 外交部回应', '3', '【环球时报-环球网】美国国防部26日就南海问题发表声明，指责', '环球网', '2019-08-27 16:06:25', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('21', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', '2', '8月26日，巴西总统拒绝G7集团对亚马孙雨林提供的资金援助。', '新京报', '2019-08-27 15:18:39', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('22', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', '1', '网易体育8月27日报道：北京时间8月27日，据北京媒体《天天', '网易体育', '2019-08-27 16:32:20', '2019-08-27 17:13:55', null, '1');
INSERT INTO `news` VALUES ('23', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', '3', '近日，桂林一名女子在网上上传视频挑衅交警，遭到警方处罚。视频', '看看新闻', '2019-08-27 16:20:45', '2019-08-27 17:13:56', null, '1');
INSERT INTO `news` VALUES ('24', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', '2', '两个多月来，香港反对派和一些激进势力以“反修例”为幌子进行各', '南方都市报', '2019-08-27 16:09:41', '2019-08-27 17:13:56', null, '1');
INSERT INTO `news` VALUES ('25', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', '2', '海外网8月27日电27日，日本京都警方搜查总部公布了“京都动', '海外网', '2019-08-27 15:49:30', '2019-08-27 17:13:56', null, '1');
INSERT INTO `news` VALUES ('26', '外交部：美方进一步提高对中国产品关税损人害己', '外交部：美方进一步提高对中国产品关税损人害己', '2', '8月27日，外交部发言人耿爽主持例行记者会。问：美国总统特朗', '人民日报', '2019-08-27 15:35:32', '2019-08-27 17:13:56', null, '1');
INSERT INTO `news` VALUES ('27', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', '1', '人在G7峰会现场的特朗普，不忘为中美经贸问题操心。当然，他实', '观察者网', '2019-08-27 15:18:57', '2019-08-27 17:13:56', null, '1');
INSERT INTO `news` VALUES ('28', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', '2', '8月26日，记者获悉，九江市政协原党组成员古小平（副厅级）涉', '江南都市报', '2019-08-27 15:13:02', '2019-08-27 17:13:56', null, '1');
INSERT INTO `news` VALUES ('29', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '3', '【环球时报-环球网报道】据澳大利亚媒体报道，澳大利亚籍人员杨', '环球网', '2019-08-27 15:49:37', '2019-08-27 17:19:14', null, '1');
INSERT INTO `news` VALUES ('30', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', '2', '8月27日，外交部发言人耿爽主持例行记者会。问：据报道，七国', '人民日报', '2019-08-27 15:20:37', '2019-08-27 17:19:15', null, '1');
INSERT INTO `news` VALUES ('31', '2019年版第五套人民币有啥变化？最全图解来了', '2019年版第五套人民币有啥变化？最全图解来了', '1', '8月30日起，2019年版第五套人民币将正式发行，包括：50', '中国人民银行', '2019-08-27 16:26:48', '2019-08-27 17:19:15', null, '1');
INSERT INTO `news` VALUES ('32', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', '3', '近日，台湾财经媒体人黄世聪因一句“大陆人吃不起榨菜”遭到群嘲', '观察者网', '2019-08-27 16:27:51', '2019-08-27 17:19:15', null, '1');
INSERT INTO `news` VALUES ('33', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', '3', '国泰航空证实，两架停泊在多伦多机场的客机，于起飞前例行检查中', '国泰航空', '2019-08-27 15:15:32', '2019-08-27 17:19:15', null, '1');
INSERT INTO `news` VALUES ('34', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', '3', '“老人、保姆、房产、遗嘱”，这几个词语联系在一起时，你们会想', '钱江晚报', '2019-08-27 14:10:06', '2019-08-27 17:19:15', null, '1');
INSERT INTO `news` VALUES ('35', '男子5年前捡到放射源带回家 3年花掉300万治疗费', '男子5年前捡到放射源带回家 3年花掉300万治疗费', '3', '王先生曾是5年前一件新闻事件的主角——南京江北被“铱-192', '扬子晚报', '2019-08-27 10:06:09', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('36', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', '1', '8月27日，公安部发布A级通缉令，公开通缉第二批50名重大在', '南方都市报', '2019-08-27 16:17:49', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('37', '林郑月娥重申不会辞职 特区政府仍能掌控局面', '林郑月娥重申不会辞职 特区政府仍能掌控局面', '2', '8月27日上午10时，香港特区行政长官林郑月娥在特首行政会议', '环球网', '2019-08-27 12:52:40', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('38', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', '3', '近日，单某某在北京妇产医院驾车堵塞急救通道，扰乱公共秩序一案', '平安北京', '2019-08-27 09:34:28', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('39', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', '1', '【台节目造谣大陆每天只能买2公斤猪肉】据报道，8月26晚，在', '中新经纬', '2019-08-27 16:26:01', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('40', '美方指责中国干预越南在南海油气开发 外交部回应', '美方指责中国干预越南在南海油气开发 外交部回应', '1', '【环球时报-环球网】美国国防部26日就南海问题发表声明，指责', '环球网', '2019-08-27 16:06:25', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('41', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', '3', '8月26日，巴西总统拒绝G7集团对亚马孙雨林提供的资金援助。', '新京报', '2019-08-27 15:18:39', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('42', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', '2', '网易体育8月27日报道：北京时间8月27日，据北京媒体《天天', '网易体育', '2019-08-27 16:32:20', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('43', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', '1', '近日，桂林一名女子在网上上传视频挑衅交警，遭到警方处罚。视频', '看看新闻', '2019-08-27 16:20:45', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('44', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', '2', '两个多月来，香港反对派和一些激进势力以“反修例”为幌子进行各', '南方都市报', '2019-08-27 16:09:41', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('45', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', '1', '海外网8月27日电27日，日本京都警方搜查总部公布了“京都动', '海外网', '2019-08-27 15:49:30', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('46', '外交部：美方进一步提高对中国产品关税损人害己', '外交部：美方进一步提高对中国产品关税损人害己', '2', '8月27日，外交部发言人耿爽主持例行记者会。问：美国总统特朗', '人民日报', '2019-08-27 15:35:32', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('47', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', '1', '人在G7峰会现场的特朗普，不忘为中美经贸问题操心。当然，他实', '观察者网', '2019-08-27 15:18:57', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('48', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', '3', '8月26日，记者获悉，九江市政协原党组成员古小平（副厅级）涉', '江南都市报', '2019-08-27 15:13:02', '2019-08-27 17:19:16', null, '1');
INSERT INTO `news` VALUES ('49', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '3', '【环球时报-环球网报道】据澳大利亚媒体报道，澳大利亚籍人员杨', '环球网', '2019-08-27 15:49:37', '2019-08-27 17:19:45', null, '1');
INSERT INTO `news` VALUES ('50', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', '3', '8月27日，外交部发言人耿爽主持例行记者会。问：据报道，七国', '人民日报', '2019-08-27 15:20:37', '2019-08-27 17:19:45', null, '1');
INSERT INTO `news` VALUES ('51', '2019年版第五套人民币有啥变化？最全图解来了', '2019年版第五套人民币有啥变化？最全图解来了', '2', '8月30日起，2019年版第五套人民币将正式发行，包括：50', '中国人民银行', '2019-08-27 16:26:48', '2019-08-27 17:19:45', null, '1');
INSERT INTO `news` VALUES ('52', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', '1', '近日，台湾财经媒体人黄世聪因一句“大陆人吃不起榨菜”遭到群嘲', '观察者网', '2019-08-27 16:27:51', '2019-08-27 17:19:45', null, '1');
INSERT INTO `news` VALUES ('53', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', '2', '国泰航空证实，两架停泊在多伦多机场的客机，于起飞前例行检查中', '国泰航空', '2019-08-27 15:15:32', '2019-08-27 17:19:45', null, '1');
INSERT INTO `news` VALUES ('54', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', '3', '“老人、保姆、房产、遗嘱”，这几个词语联系在一起时，你们会想', '钱江晚报', '2019-08-27 14:10:06', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('55', '男子5年前捡到放射源带回家 3年花掉300万治疗费', '男子5年前捡到放射源带回家 3年花掉300万治疗费', '1', '王先生曾是5年前一件新闻事件的主角——南京江北被“铱-192', '扬子晚报', '2019-08-27 10:06:09', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('56', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', '2', '8月27日，公安部发布A级通缉令，公开通缉第二批50名重大在', '南方都市报', '2019-08-27 16:17:49', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('57', '林郑月娥重申不会辞职 特区政府仍能掌控局面', '林郑月娥重申不会辞职 特区政府仍能掌控局面', '1', '8月27日上午10时，香港特区行政长官林郑月娥在特首行政会议', '环球网', '2019-08-27 12:52:40', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('58', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', '2', '近日，单某某在北京妇产医院驾车堵塞急救通道，扰乱公共秩序一案', '平安北京', '2019-08-27 09:34:28', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('59', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', '1', '【台节目造谣大陆每天只能买2公斤猪肉】据报道，8月26晚，在', '中新经纬', '2019-08-27 16:26:01', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('60', '美方指责中国干预越南在南海油气开发 外交部回应', '美方指责中国干预越南在南海油气开发 外交部回应', '3', '【环球时报-环球网】美国国防部26日就南海问题发表声明，指责', '环球网', '2019-08-27 16:06:25', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('61', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', '2', '8月26日，巴西总统拒绝G7集团对亚马孙雨林提供的资金援助。', '新京报', '2019-08-27 15:18:39', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('62', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', '1', '网易体育8月27日报道：北京时间8月27日，据北京媒体《天天', '网易体育', '2019-08-27 16:32:20', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('63', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', '3', '近日，桂林一名女子在网上上传视频挑衅交警，遭到警方处罚。视频', '看看新闻', '2019-08-27 16:20:45', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('64', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', '1', '两个多月来，香港反对派和一些激进势力以“反修例”为幌子进行各', '南方都市报', '2019-08-27 16:09:41', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('65', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', '2', '海外网8月27日电27日，日本京都警方搜查总部公布了“京都动', '海外网', '2019-08-27 15:49:30', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('66', '外交部：美方进一步提高对中国产品关税损人害己', '外交部：美方进一步提高对中国产品关税损人害己', '3', '8月27日，外交部发言人耿爽主持例行记者会。问：美国总统特朗', '人民日报', '2019-08-27 15:35:32', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('67', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', '1', '人在G7峰会现场的特朗普，不忘为中美经贸问题操心。当然，他实', '观察者网', '2019-08-27 15:18:57', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('68', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', '3', '8月26日，记者获悉，九江市政协原党组成员古小平（副厅级）涉', '江南都市报', '2019-08-27 15:13:02', '2019-08-27 17:19:46', null, '1');
INSERT INTO `news` VALUES ('69', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', '3', '【环球时报-环球网报道】据澳大利亚媒体报道，澳大利亚籍人员杨', '环球网', '2019-08-27 15:49:37', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('70', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', '3', '8月27日，外交部发言人耿爽主持例行记者会。问：据报道，七国', '人民日报', '2019-08-27 15:20:37', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('71', '2019年版第五套人民币有啥变化？最全图解来了', '2019年版第五套人民币有啥变化？最全图解来了', '1', '8月30日起，2019年版第五套人民币将正式发行，包括：50', '中国人民银行', '2019-08-27 16:26:48', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('72', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', '1', '近日，台湾财经媒体人黄世聪因一句“大陆人吃不起榨菜”遭到群嘲', '观察者网', '2019-08-27 16:27:51', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('73', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', '3', '国泰航空证实，两架停泊在多伦多机场的客机，于起飞前例行检查中', '国泰航空', '2019-08-27 15:15:32', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('74', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', '1', '“老人、保姆、房产、遗嘱”，这几个词语联系在一起时，你们会想', '钱江晚报', '2019-08-27 14:10:06', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('75', '男子5年前捡到放射源带回家 3年花掉300万治疗费', '男子5年前捡到放射源带回家 3年花掉300万治疗费', '1', '王先生曾是5年前一件新闻事件的主角——南京江北被“铱-192', '扬子晚报', '2019-08-27 10:06:09', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('76', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', '1', '8月27日，公安部发布A级通缉令，公开通缉第二批50名重大在', '南方都市报', '2019-08-27 16:17:49', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('77', '林郑月娥重申不会辞职 特区政府仍能掌控局面', '林郑月娥重申不会辞职 特区政府仍能掌控局面', '2', '8月27日上午10时，香港特区行政长官林郑月娥在特首行政会议', '环球网', '2019-08-27 12:52:40', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('78', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', '1', '近日，单某某在北京妇产医院驾车堵塞急救通道，扰乱公共秩序一案', '平安北京', '2019-08-27 09:34:28', '2019-08-27 17:20:12', null, '1');
INSERT INTO `news` VALUES ('79', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', '2', '【台节目造谣大陆每天只能买2公斤猪肉】据报道，8月26晚，在', '中新经纬', '2019-08-27 16:26:01', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('80', '美方指责中国干预越南在南海油气开发 外交部回应', '美方指责中国干预越南在南海油气开发 外交部回应', '3', '【环球时报-环球网】美国国防部26日就南海问题发表声明，指责', '环球网', '2019-08-27 16:06:25', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('81', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', '3', '8月26日，巴西总统拒绝G7集团对亚马孙雨林提供的资金援助。', '新京报', '2019-08-27 15:18:39', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('82', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', '3', '网易体育8月27日报道：北京时间8月27日，据北京媒体《天天', '网易体育', '2019-08-27 16:32:20', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('83', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', '3', '近日，桂林一名女子在网上上传视频挑衅交警，遭到警方处罚。视频', '看看新闻', '2019-08-27 16:20:45', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('84', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', '1', '两个多月来，香港反对派和一些激进势力以“反修例”为幌子进行各', '南方都市报', '2019-08-27 16:09:41', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('85', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', '3', '海外网8月27日电27日，日本京都警方搜查总部公布了“京都动', '海外网', '2019-08-27 15:49:30', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('86', '外交部：美方进一步提高对中国产品关税损人害己', '外交部：美方进一步提高对中国产品关税损人害己', '2', '8月27日，外交部发言人耿爽主持例行记者会。问：美国总统特朗', '人民日报', '2019-08-27 15:35:32', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('87', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', '2', '人在G7峰会现场的特朗普，不忘为中美经贸问题操心。当然，他实', '观察者网', '2019-08-27 15:18:57', '2019-08-27 17:20:13', null, '1');
INSERT INTO `news` VALUES ('88', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', '3', '8月26日，记者获悉，九江市政协原党组成员古小平（副厅级）涉', '江南都市报', '2019-08-27 15:13:02', '2019-08-27 17:20:13', null, '1');

-- ----------------------------
-- Table structure for `news_pic`
-- ----------------------------
DROP TABLE IF EXISTS `news_pic`;
CREATE TABLE `news_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻图片主键',
  `title` varchar(50) DEFAULT NULL COMMENT '新闻图片标题',
  `url` varchar(255) DEFAULT NULL COMMENT '新闻图片地址',
  `news_id` int(11) DEFAULT NULL COMMENT '新闻的主键',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_pic
-- ----------------------------
INSERT INTO `news_pic` VALUES ('6', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', 'http://cms-bucket.ws.126.net/2019/08/27/75a47948b5b14d66aa0b6447822e66be.png', '9', '1');
INSERT INTO `news_pic` VALUES ('7', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', 'http://cms-bucket.ws.126.net/2019/08/27/c248525d14604f96bdf8804ddba2ff2a.png', '10', '1');
INSERT INTO `news_pic` VALUES ('8', '2019年版第五套人民币有啥变化？最全图解来了', 'http://cms-bucket.ws.126.net/2019/08/27/3d6daba58a1b403abaefe0ceb18e80a9.png', '11', '1');
INSERT INTO `news_pic` VALUES ('9', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', 'http://cms-bucket.ws.126.net/2019/08/27/2eda232cc4184520b91222767031bd96.png', '12', '1');
INSERT INTO `news_pic` VALUES ('10', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', 'http://cms-bucket.ws.126.net/2019/08/27/138924f0428f431790fe94a54550ec7a.png', '13', '1');
INSERT INTO `news_pic` VALUES ('11', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', 'http://cms-bucket.ws.126.net/2019/08/27/ad5b4023dd5e40768796812529ffd1f5.png', '14', '1');
INSERT INTO `news_pic` VALUES ('12', '男子5年前捡到放射源带回家 3年花掉300万治疗费', 'http://cms-bucket.ws.126.net/2019/08/27/dbc7cb2c6ff143b0ac6c2961ec2dcd39.png', '15', '1');
INSERT INTO `news_pic` VALUES ('13', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', 'http://cms-bucket.ws.126.net/2019/08/27/eec1091c67f64a619258c188a061aae8.png', '16', '1');
INSERT INTO `news_pic` VALUES ('14', '林郑月娥重申不会辞职 特区政府仍能掌控局面', 'http://cms-bucket.ws.126.net/2019/08/27/fff3a36294bd406db21580e3c460bdc0.png', '17', '1');
INSERT INTO `news_pic` VALUES ('15', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', 'http://cms-bucket.ws.126.net/2019/08/27/a920449a4c6445d7833208d0e0eede80.png', '18', '1');
INSERT INTO `news_pic` VALUES ('16', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', 'http://cms-bucket.ws.126.net/2019/08/27/650656572c2b4588a038f98a15f44217.png', '19', '1');
INSERT INTO `news_pic` VALUES ('17', '美方指责中国干预越南在南海油气开发 外交部回应', 'http://cms-bucket.ws.126.net/2019/08/27/e2102dbcaa3f4ad79a2f500da122e75b.png', '20', '1');
INSERT INTO `news_pic` VALUES ('18', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', 'http://cms-bucket.ws.126.net/2019/08/27/2cead0d24cd2484ea9c6d56c905371e3.png', '21', '1');
INSERT INTO `news_pic` VALUES ('19', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', 'http://cms-bucket.ws.126.net/2019/08/27/2a979de1b039457ab2e1ba13b541062c.png', '22', '1');
INSERT INTO `news_pic` VALUES ('20', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', 'http://cms-bucket.ws.126.net/2019/08/27/8fce373c85874d17b064d952eceab5b3.png', '23', '1');
INSERT INTO `news_pic` VALUES ('21', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', 'http://cms-bucket.ws.126.net/2019/08/27/7928d0896ff341d19ede18584f89aaf6.png', '24', '1');
INSERT INTO `news_pic` VALUES ('22', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', 'http://cms-bucket.ws.126.net/2019/08/27/cee32138e9a441e2ada8e5447f3df1b8.png', '25', '1');
INSERT INTO `news_pic` VALUES ('23', '外交部：美方进一步提高对中国产品关税损人害己', 'http://cms-bucket.ws.126.net/2019/08/27/ff12e8e05d3b49278f078754cf5ed26b.png', '26', '1');
INSERT INTO `news_pic` VALUES ('24', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', 'http://cms-bucket.ws.126.net/2019/08/27/f17c4d5b758248c6be3338e117217ed4.png', '27', '1');
INSERT INTO `news_pic` VALUES ('25', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', 'http://cms-bucket.ws.126.net/2019/07/20/5b301533e296459493aa8cd7d52c0e20.png', '28', '1');
INSERT INTO `news_pic` VALUES ('26', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', 'http://cms-bucket.ws.126.net/2019/08/27/75a47948b5b14d66aa0b6447822e66be.png', '29', '1');
INSERT INTO `news_pic` VALUES ('27', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', 'http://cms-bucket.ws.126.net/2019/08/27/c248525d14604f96bdf8804ddba2ff2a.png', '30', '1');
INSERT INTO `news_pic` VALUES ('28', '2019年版第五套人民币有啥变化？最全图解来了', 'http://cms-bucket.ws.126.net/2019/08/27/3d6daba58a1b403abaefe0ceb18e80a9.png', '31', '1');
INSERT INTO `news_pic` VALUES ('29', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', 'http://cms-bucket.ws.126.net/2019/08/27/2eda232cc4184520b91222767031bd96.png', '32', '1');
INSERT INTO `news_pic` VALUES ('30', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', 'http://cms-bucket.ws.126.net/2019/08/27/138924f0428f431790fe94a54550ec7a.png', '33', '1');
INSERT INTO `news_pic` VALUES ('31', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', 'http://cms-bucket.ws.126.net/2019/08/27/ad5b4023dd5e40768796812529ffd1f5.png', '34', '1');
INSERT INTO `news_pic` VALUES ('32', '男子5年前捡到放射源带回家 3年花掉300万治疗费', 'http://cms-bucket.ws.126.net/2019/08/27/dbc7cb2c6ff143b0ac6c2961ec2dcd39.png', '35', '1');
INSERT INTO `news_pic` VALUES ('33', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', 'http://cms-bucket.ws.126.net/2019/08/27/eec1091c67f64a619258c188a061aae8.png', '36', '1');
INSERT INTO `news_pic` VALUES ('34', '林郑月娥重申不会辞职 特区政府仍能掌控局面', 'http://cms-bucket.ws.126.net/2019/08/27/fff3a36294bd406db21580e3c460bdc0.png', '37', '1');
INSERT INTO `news_pic` VALUES ('35', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', 'http://cms-bucket.ws.126.net/2019/08/27/a920449a4c6445d7833208d0e0eede80.png', '38', '1');
INSERT INTO `news_pic` VALUES ('36', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', 'http://cms-bucket.ws.126.net/2019/08/27/650656572c2b4588a038f98a15f44217.png', '39', '1');
INSERT INTO `news_pic` VALUES ('37', '美方指责中国干预越南在南海油气开发 外交部回应', 'http://cms-bucket.ws.126.net/2019/08/27/e2102dbcaa3f4ad79a2f500da122e75b.png', '40', '1');
INSERT INTO `news_pic` VALUES ('38', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', 'http://cms-bucket.ws.126.net/2019/08/27/2cead0d24cd2484ea9c6d56c905371e3.png', '41', '1');
INSERT INTO `news_pic` VALUES ('39', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', 'http://cms-bucket.ws.126.net/2019/08/27/2a979de1b039457ab2e1ba13b541062c.png', '42', '1');
INSERT INTO `news_pic` VALUES ('40', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', 'http://cms-bucket.ws.126.net/2019/08/27/8fce373c85874d17b064d952eceab5b3.png', '43', '1');
INSERT INTO `news_pic` VALUES ('41', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', 'http://cms-bucket.ws.126.net/2019/08/27/7928d0896ff341d19ede18584f89aaf6.png', '44', '1');
INSERT INTO `news_pic` VALUES ('42', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', 'http://cms-bucket.ws.126.net/2019/08/27/cee32138e9a441e2ada8e5447f3df1b8.png', '45', '1');
INSERT INTO `news_pic` VALUES ('43', '外交部：美方进一步提高对中国产品关税损人害己', 'http://cms-bucket.ws.126.net/2019/08/27/ff12e8e05d3b49278f078754cf5ed26b.png', '46', '1');
INSERT INTO `news_pic` VALUES ('44', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', 'http://cms-bucket.ws.126.net/2019/08/27/f17c4d5b758248c6be3338e117217ed4.png', '47', '1');
INSERT INTO `news_pic` VALUES ('45', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', 'http://cms-bucket.ws.126.net/2019/07/20/5b301533e296459493aa8cd7d52c0e20.png', '48', '1');
INSERT INTO `news_pic` VALUES ('46', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', 'http://cms-bucket.ws.126.net/2019/08/27/75a47948b5b14d66aa0b6447822e66be.png', '49', '1');
INSERT INTO `news_pic` VALUES ('47', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', 'http://cms-bucket.ws.126.net/2019/08/27/c248525d14604f96bdf8804ddba2ff2a.png', '50', '1');
INSERT INTO `news_pic` VALUES ('48', '2019年版第五套人民币有啥变化？最全图解来了', 'http://cms-bucket.ws.126.net/2019/08/27/3d6daba58a1b403abaefe0ceb18e80a9.png', '51', '1');
INSERT INTO `news_pic` VALUES ('49', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', 'http://cms-bucket.ws.126.net/2019/08/27/2eda232cc4184520b91222767031bd96.png', '52', '1');
INSERT INTO `news_pic` VALUES ('50', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', 'http://cms-bucket.ws.126.net/2019/08/27/138924f0428f431790fe94a54550ec7a.png', '53', '1');
INSERT INTO `news_pic` VALUES ('51', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', 'http://cms-bucket.ws.126.net/2019/08/27/ad5b4023dd5e40768796812529ffd1f5.png', '54', '1');
INSERT INTO `news_pic` VALUES ('52', '男子5年前捡到放射源带回家 3年花掉300万治疗费', 'http://cms-bucket.ws.126.net/2019/08/27/dbc7cb2c6ff143b0ac6c2961ec2dcd39.png', '55', '1');
INSERT INTO `news_pic` VALUES ('53', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', 'http://cms-bucket.ws.126.net/2019/08/27/eec1091c67f64a619258c188a061aae8.png', '56', '1');
INSERT INTO `news_pic` VALUES ('54', '林郑月娥重申不会辞职 特区政府仍能掌控局面', 'http://cms-bucket.ws.126.net/2019/08/27/fff3a36294bd406db21580e3c460bdc0.png', '57', '1');
INSERT INTO `news_pic` VALUES ('55', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', 'http://cms-bucket.ws.126.net/2019/08/27/a920449a4c6445d7833208d0e0eede80.png', '58', '1');
INSERT INTO `news_pic` VALUES ('56', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', 'http://cms-bucket.ws.126.net/2019/08/27/650656572c2b4588a038f98a15f44217.png', '59', '1');
INSERT INTO `news_pic` VALUES ('57', '美方指责中国干预越南在南海油气开发 外交部回应', 'http://cms-bucket.ws.126.net/2019/08/27/e2102dbcaa3f4ad79a2f500da122e75b.png', '60', '1');
INSERT INTO `news_pic` VALUES ('58', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', 'http://cms-bucket.ws.126.net/2019/08/27/2cead0d24cd2484ea9c6d56c905371e3.png', '61', '1');
INSERT INTO `news_pic` VALUES ('59', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', 'http://cms-bucket.ws.126.net/2019/08/27/2a979de1b039457ab2e1ba13b541062c.png', '62', '1');
INSERT INTO `news_pic` VALUES ('60', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', 'http://cms-bucket.ws.126.net/2019/08/27/8fce373c85874d17b064d952eceab5b3.png', '63', '1');
INSERT INTO `news_pic` VALUES ('61', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', 'http://cms-bucket.ws.126.net/2019/08/27/7928d0896ff341d19ede18584f89aaf6.png', '64', '1');
INSERT INTO `news_pic` VALUES ('62', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', 'http://cms-bucket.ws.126.net/2019/08/27/cee32138e9a441e2ada8e5447f3df1b8.png', '65', '1');
INSERT INTO `news_pic` VALUES ('63', '外交部：美方进一步提高对中国产品关税损人害己', 'http://cms-bucket.ws.126.net/2019/08/27/ff12e8e05d3b49278f078754cf5ed26b.png', '66', '1');
INSERT INTO `news_pic` VALUES ('64', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', 'http://cms-bucket.ws.126.net/2019/08/27/f17c4d5b758248c6be3338e117217ed4.png', '67', '1');
INSERT INTO `news_pic` VALUES ('65', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', 'http://cms-bucket.ws.126.net/2019/07/20/5b301533e296459493aa8cd7d52c0e20.png', '68', '1');
INSERT INTO `news_pic` VALUES ('66', '外交部：澳籍人员杨军涉嫌间谍犯罪在北京被逮捕 ', 'http://cms-bucket.ws.126.net/2019/08/27/75a47948b5b14d66aa0b6447822e66be.png', '69', '1');
INSERT INTO `news_pic` VALUES ('67', 'G7重申中英联合声明重要性 外交部:不要再多管闲事', 'http://cms-bucket.ws.126.net/2019/08/27/c248525d14604f96bdf8804ddba2ff2a.png', '70', '1');
INSERT INTO `news_pic` VALUES ('68', '2019年版第五套人民币有啥变化？最全图解来了', 'http://cms-bucket.ws.126.net/2019/08/27/3d6daba58a1b403abaefe0ceb18e80a9.png', '71', '1');
INSERT INTO `news_pic` VALUES ('69', '台湾名嘴批\"榨菜哥\":吹捧\"台独\"讨好大陆 是两面人', 'http://cms-bucket.ws.126.net/2019/08/27/2eda232cc4184520b91222767031bd96.png', '72', '1');
INSERT INTO `news_pic` VALUES ('70', '国泰航空：航班起飞前发现氧气瓶被排气 正在调查', 'http://cms-bucket.ws.126.net/2019/08/27/138924f0428f431790fe94a54550ec7a.png', '73', '1');
INSERT INTO `news_pic` VALUES ('71', '上海一老人立遗嘱只给女儿1元 80万和房产全给保姆', 'http://cms-bucket.ws.126.net/2019/08/27/ad5b4023dd5e40768796812529ffd1f5.png', '74', '1');
INSERT INTO `news_pic` VALUES ('72', '男子5年前捡到放射源带回家 3年花掉300万治疗费', 'http://cms-bucket.ws.126.net/2019/08/27/dbc7cb2c6ff143b0ac6c2961ec2dcd39.png', '75', '1');
INSERT INTO `news_pic` VALUES ('73', '女黑老大悬赏金两月涨至50万 又上公安部A级通缉令', 'http://cms-bucket.ws.126.net/2019/08/27/eec1091c67f64a619258c188a061aae8.png', '76', '1');
INSERT INTO `news_pic` VALUES ('74', '林郑月娥重申不会辞职 特区政府仍能掌控局面', 'http://cms-bucket.ws.126.net/2019/08/27/fff3a36294bd406db21580e3c460bdc0.png', '77', '1');
INSERT INTO `news_pic` VALUES ('75', '\"劳斯莱斯堵医院\"女司机涉伪造买卖身份证被刑拘', 'http://cms-bucket.ws.126.net/2019/08/27/a920449a4c6445d7833208d0e0eede80.png', '78', '1');
INSERT INTO `news_pic` VALUES ('76', '台节目称大陆下\"限肉令\" 每人每天只能买2公斤猪肉', 'http://cms-bucket.ws.126.net/2019/08/27/650656572c2b4588a038f98a15f44217.png', '79', '1');
INSERT INTO `news_pic` VALUES ('77', '美方指责中国干预越南在南海油气开发 外交部回应', 'http://cms-bucket.ws.126.net/2019/08/27/e2102dbcaa3f4ad79a2f500da122e75b.png', '80', '1');
INSERT INTO `news_pic` VALUES ('78', '巴西总统拒绝G7援助亚马孙灭火：当我们是殖民地', 'http://cms-bucket.ws.126.net/2019/08/27/2cead0d24cd2484ea9c6d56c905371e3.png', '81', '1');
INSERT INTO `news_pic` VALUES ('79', '京媒：林书豪加盟首钢今晚官宣 雅尼斯归队会面', 'http://cms-bucket.ws.126.net/2019/08/27/2a979de1b039457ab2e1ba13b541062c.png', '82', '1');
INSERT INTO `news_pic` VALUES ('80', '女子不满罚单拍视频故意违停挑衅 交警:那就继续罚', 'http://cms-bucket.ws.126.net/2019/08/27/8fce373c85874d17b064d952eceab5b3.png', '83', '1');
INSERT INTO `news_pic` VALUES ('81', '示威者冲击香港旅游业:吓走5成游客 酒店低至1折', 'http://cms-bucket.ws.126.net/2019/08/27/7928d0896ff341d19ede18584f89aaf6.png', '84', '1');
INSERT INTO `news_pic` VALUES ('82', '\"京阿尼\"纵火案剩余25位死者姓名公布 曾公布10位', 'http://cms-bucket.ws.126.net/2019/08/27/cee32138e9a441e2ada8e5447f3df1b8.png', '85', '1');
INSERT INTO `news_pic` VALUES ('83', '外交部：美方进一步提高对中国产品关税损人害己', 'http://cms-bucket.ws.126.net/2019/08/27/ff12e8e05d3b49278f078754cf5ed26b.png', '86', '1');
INSERT INTO `news_pic` VALUES ('84', '特朗普G7四次提到中国 媒体:语气犹如在\"求和解\"', 'http://cms-bucket.ws.126.net/2019/08/27/f17c4d5b758248c6be3338e117217ed4.png', '87', '1');
INSERT INTO `news_pic` VALUES ('85', '江西一副厅级官员涉受贿罪被公诉:搞权色钱色交易', 'http://cms-bucket.ws.126.net/2019/07/20/5b301533e296459493aa8cd7d52c0e20.png', '88', '1');

-- ----------------------------
-- Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pic_title` varchar(11) NOT NULL COMMENT '标题',
  `pic_type` int(1) NOT NULL COMMENT '1.主页轮播图，2.小程序轮播图，3.APP轮播图，4网站轮播图，5新闻动态轮播图，6.其他存什么图都行',
  `pic_url` varchar(255) NOT NULL COMMENT '图片地址',
  `create_time` varchar(11) NOT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', '首页轮播图', '1', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l_GeAagHEAAXIguQxnN0113.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('2', '小程序轮播', '2', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l-fOAY4ezAB_zzQNz82g526.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('3', '小程序轮播', '2', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l-fOAS6HNAAXIguQxnN0767.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('4', '小程序轮播', '2', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l-fOAZVQjAB_zzQNz82g280.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('5', 'App轮播', '3', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l_GeAagHEAAXIguQxnN0113.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('6', 'App轮播', '3', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l_GeATBd5ABApWQyvLts138.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('7', 'App轮播', '3', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l_GeACgrwAAXIguQxnN0250.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('8', '网站轮播', '4', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1mDRyAPuAfAA9AcPk3s3o036.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('9', '网站轮播', '4', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l_GeACgrwAAXIguQxnN0250.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('10', '网站轮播', '4', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1mDRyAPuAfAA9AcPk3s3o036.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('11', '新闻轮播', '5', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1mGRSAJMuYABApWQyvLts311.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('12', '新闻轮播', '5', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1mDRyAPuAfAA9AcPk3s3o036.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('13', '新闻轮播', '5', 'fOAZVQjAB_zzQNz82g280.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('14', '首页轮播', '1', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1mGRSAJMuYABApWQyvLts311.png', '2019-08-28', '1');
INSERT INTO `picture` VALUES ('15', '首页轮播', '1', 'http://47.56.107.186/group1/M00/00/00/rB_GuF1l_GeAagHEAAXIguQxnN0113.png', '2019-08-28', '1');





DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pic_title` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `pic_type` int(1) NOT NULL COMMENT '1.主页轮播图，2.小程序轮播图，3.APP轮播图，4网站轮播图，5新闻动态轮播图，6.其他存什么图都行',
  `pic_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `create_time` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES (1, '首页轮播图', 1, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/47211728-e93a-4c41-bc8b-fca65b8f5f0c.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (2, '小程序轮播', 2, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/846f96a2-5729-45e6-b115-4eb26fe0c88c.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (3, '小程序轮播', 2, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/f00cf239-1cfb-4c1a-b0c6-1edb53b60063.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (4, '小程序轮播', 2, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/3dec7442-54ae-4aad-9103-6e2b67124533.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (5, 'App轮播', 3, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/846f96a2-5729-45e6-b115-4eb26fe0c88c.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (6, 'App轮播', 3, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/f00cf239-1cfb-4c1a-b0c6-1edb53b60063.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (7, 'App轮播', 3, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/3dec7442-54ae-4aad-9103-6e2b67124533.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (8, '网站轮播', 4, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/846f96a2-5729-45e6-b115-4eb26fe0c88c.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (9, '网站轮播', 4, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/f00cf239-1cfb-4c1a-b0c6-1edb53b60063.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (10, '网站轮播', 4, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/3dec7442-54ae-4aad-9103-6e2b67124533.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (11, '新闻轮播', 5, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/846f96a2-5729-45e6-b115-4eb26fe0c88c.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (12, '新闻轮播', 5, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/f00cf239-1cfb-4c1a-b0c6-1edb53b60063.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (13, '新闻轮播', 5, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/3dec7442-54ae-4aad-9103-6e2b67124533.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (14, '首页轮播', 1, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/102aa16c-8f77-4e07-a2e9-c95747d58330.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (15, '首页轮播', 1, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/5d404149-844f-4de0-8147-3b09adee484f.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (16, '首页轮播', 1, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/3bd06b57-a31d-4d43-8bbd-a71e7c7116c2.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (17, '小程序轮播', 2, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/8da5d5cc-9951-4bd8-a9f1-75ce3b3ea734.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (18, 'App轮播', 3, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/8da5d5cc-9951-4bd8-a9f1-75ce3b3ea734.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (19, '网站轮播', 4, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/8da5d5cc-9951-4bd8-a9f1-75ce3b3ea734.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (20, '新闻轮播', 5, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/8da5d5cc-9951-4bd8-a9f1-75ce3b3ea734.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (22, '新闻轮播', 5, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/1641140c-3e01-4127-85d9-2e3042aad6e4.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (23, '网站轮播', 4, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/1641140c-3e01-4127-85d9-2e3042aad6e4.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (24, 'App轮播', 3, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/1641140c-3e01-4127-85d9-2e3042aad6e4.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (25, '小程序轮播', 2, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/1641140c-3e01-4127-85d9-2e3042aad6e4.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (26, '首页轮播', 1, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/226a1356-613b-4f57-93a9-42db86657bd2.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (27, '首页轮播', 1, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/5b14f5a1-fe2f-4d59-86a9-a90f796722b2.png', '2019-08-28', 1);
INSERT INTO `picture` VALUES (28, '首页轮播', 1, 'https://qxkj-prod.oss-cn-shenzhen.aliyuncs.com/demo/roration/0c863532-eaaf-4f5b-9013-e8665d740dbf.png', '2019-08-28', 1);

SET FOREIGN_KEY_CHECKS = 1;
