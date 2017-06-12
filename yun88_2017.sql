/*
Navicat MySQL Data Transfer

Source Server         : yun88
Source Server Version : 50623
Source Host           : 123.56.229.193:3306
Source Database       : yun88_2017

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2017-03-02 18:35:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yun_access`
-- ----------------------------
DROP TABLE IF EXISTS `yun_access`;
CREATE TABLE `yun_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  `app` varchar(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否有效',
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of yun_access
-- ----------------------------
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Goods', 'add', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Goods', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Company', 'delete', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Company', 'edit', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Company', 'add', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Company', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Company182', 'index182', '0');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Company181', 'index181', '0');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member', 'memberinfo', '1');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member', 'unlock', '1');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member', 'lock', '1');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member', 'delete', '1');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member', 'edit', '1');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member', 'add', '1');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member114', 'create114', '0');
INSERT INTO `yun_access` VALUES ('2', 'Member', 'Member113', 'index113', '0');
INSERT INTO `yun_access` VALUES ('2', 'Attachment', 'Atadmin', 'delete', '1');
INSERT INTO `yun_access` VALUES ('2', 'Attachment', 'Atadmin', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Content', 'Content', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Content', 'Content45', 'index45', '0');
INSERT INTO `yun_access` VALUES ('2', 'Content', 'Index44', 'index44', '0');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Logs', 'deletelog', '1');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Logs', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Logs', 'deleteloginlog', '1');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Logs', 'loginlog', '1');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Logs31', 'index31', '0');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Config', 'attach', '1');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Config', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Config7', 'index7', '0');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Config3', 'index3', '0');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Adminmanage', 'chanpass', '1');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Adminmanage', 'myinfo', '1');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Adminmanage4', 'myinfo4', '0');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Config2', 'index2', '0');
INSERT INTO `yun_access` VALUES ('2', 'Admin', 'Index', 'cache', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Goods', 'edit', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Goods', 'delete', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Demand', 'cloudlist', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Demand', 'clouddel', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Order', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Order', 'cancel', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Order', 'del', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Cart', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Cooperation', 'index', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Cooperation', 'delete', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Spec', 'cloudlist', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Spec', 'cloudadd', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Spec', 'clouddel', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Spec', 'cloudedit', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Spec', 'applist', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Spec', 'appadd', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Spec', 'appedit', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Spec', 'appdel', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Demand', 'applist', '1');
INSERT INTO `yun_access` VALUES ('2', 'Mail', 'Demand', 'appdel', '1');

-- ----------------------------
-- Table structure for `yun_addons`
-- ----------------------------
DROP TABLE IF EXISTS `yun_addons`;
CREATE TABLE `yun_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '插件名或标识，区分大小写',
  `sign` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1-启用 0-禁用 -1-损坏',
  `config` text COMMENT '配置 序列化存放',
  `author` varchar(40) NOT NULL DEFAULT '' COMMENT '作者',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '版本号',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `has_adminlist` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1-有后台列表 0-无后台列表',
  PRIMARY KEY (`id`),
  KEY `sign` (`sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of yun_addons
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_admin_panel`
-- ----------------------------
DROP TABLE IF EXISTS `yun_admin_panel`;
CREATE TABLE `yun_admin_panel` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(32) NOT NULL DEFAULT '' COMMENT '菜单名',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '菜单地址',
  UNIQUE KEY `userid` (`mid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用菜单';

-- ----------------------------
-- Records of yun_admin_panel
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_app_demand`
-- ----------------------------
DROP TABLE IF EXISTS `yun_app_demand`;
CREATE TABLE `yun_app_demand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '云应用名称',
  `company` varchar(50) NOT NULL COMMENT '公司名称',
  `user_num` smallint(4) NOT NULL COMMENT '用户数量',
  `purchase_times` int(8) NOT NULL COMMENT '购买时长',
  `member_id` int(10) NOT NULL COMMENT '用户id',
  `remark` text COMMENT '备注',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='云应用需求表单';

-- ----------------------------
-- Records of yun_app_demand
-- ----------------------------
INSERT INTO `yun_app_demand` VALUES ('4', 'IMO 班聊', '66', '66', '66', '1', '66', '1468222545');
INSERT INTO `yun_app_demand` VALUES ('5', 'OneApm', '灵通浪潮', '1', '1', '7', '', '1471575806');

-- ----------------------------
-- Table structure for `yun_article`
-- ----------------------------
DROP TABLE IF EXISTS `yun_article`;
CREATE TABLE `yun_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yun_article
-- ----------------------------
INSERT INTO `yun_article` VALUES ('1', '2', '0', '新闻测试', '', '/d/file/content/2016/06/5774ea2f047b0.png', '', '', '近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，更是对我们未来发展的美好展望！近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，更是对我们未来发展的美好展望！近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜...', '0', '/index.php?a=shows&catid=2&id=1', '0', '99', '1', '0', 'admin', '1467279935', '1467279935', '0', '0', '0', '0', '0', '0');
INSERT INTO `yun_article` VALUES ('2', '2', '0', '测试2', '', '', '', '', '近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，更是对我们未来发展的美好展望！近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，更是对我们未来发展的美好展望！近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜...', '0', '/index.php?a=shows&catid=2&id=2', '0', '99', '1', '0', 'admin', '1467280269', '1467280269', '2', '0', '2', '2', '2', '1467280828');
INSERT INTO `yun_article` VALUES ('3', '9', '0', '阿里云客户展示', '', '/d/file/content/2016/07/577ccbc0ea452.png', '', '', '浙江天下商邦科技股份有限公司:浙江天下商邦科技股份有限公司投资1.3个亿，搭建“品牌直供平台”的电子商务技术服务型企业。创造性的B2B2C（BrandToBusinessToCustomer品牌-平台-终端）“天下商邦品牌直供平台”，以全新商业模式实现厂商与店铺零中间商对接，高效整合传统渠道业态的产销链，在直供平台上终端商与品牌商直接的双向选择。面临挑战和问题· 灵活性不够，成本过高：为了应对日益增长的访问量，不得不购置大量机...', '0', '/index.php?a=shows&catid=9&id=3', '0', '99', '1', '0', 'admin', '1467796421', '1467796421', '1', '0', '1', '1', '1', '1467796429');

-- ----------------------------
-- Table structure for `yun_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `yun_article_data`;
CREATE TABLE `yun_article_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `paginationtype` tinyint(1) NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yun_article_data
-- ----------------------------
INSERT INTO `yun_article_data` VALUES ('1', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; font-size: 12px; line-height: 24px;\">近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，更是对我们未来发展的美好展望！近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，更是对我们未来发展的美好展望！近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定</span></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `yun_article_data` VALUES ('2', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; font-size: 12px; line-height: 24px;\">近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，更是对我们未来发展的美好展望！近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，更是对我们未来发展的美好展望！近日，元鼎科技与山东省淄博市国土资源局就私有云优化项目实施方案的事宜完成洽谈合作。此次合作做为2016年的开年巨献，是对我们过去努力的肯定，</span></p>', '2', '10000', '', '0', '1', '');
INSERT INTO `yun_article_data` VALUES ('3', '<div class=\"snapshot\"><div class=\"logo\"><img src=\"/statics/extres/newmember/images/client1.png\" alt=\"\"/></div><div><h3>浙江天下商邦科技股份有限公司:</h3><p>浙江天下商邦科技股份有限公司投资1.3个亿，搭建“品牌直供平台”的电子商务技术服务型企业。创造性的B2B2C（BrandToBusinessToCustomer品牌-平台-终端）“天下商邦品牌直供平台”，以全新商业模式实现厂商与店铺零中间商对接，高效整合传统渠道业态的产销链，在直供平台上终端商与品牌商直接的双向选择。</p></div></div><div class=\"details\"><h1>面临挑战和问题</h1><h2>· &nbsp;灵活性不够，成本过高：</h2><p>为了应对日益增长的访问量，不得不购置大量机器，在IDC机柜租用和带宽费用上的开销也随之大幅增长，但峰值过后，资源严重过剩，造成了极大的浪费。</p><h2>· &nbsp;管的太多，不够聚焦：</h2><p>选机房、买机器、租机柜、装系统、数据备份、异地容灾等事情全部一条龙自己搞定，加之对IDC服务质量的更高要求，历经过多次机房搬迁，这些都消耗运维人员许多精力，导致在运维自动化、系统架构的持续优化等方面不够聚焦，影响了对日益复杂的业务系统的有效支撑。</p><h2>· &nbsp;突发性故障应对能力欠佳：</h2><p>随着服务器数量的增加，硬件故障数也开始攀升，虽然有应对预案，但面对一些突发性硬件故障，恢复的时间和成本还是比较高，直接影响了网站的稳定性和可用性。</p><h1>解决方案</h1><p>元鼎科技通过分析其存在的问题帮其制定了详细的阿里云服务ＥＣＳ方案。通过云监控完备的数据图表和各项服务，可以很及时的发现问题，快速的动态增加云主机和RDS只读实例，比之前临时采购机器的过程简单高效N倍；为应对高峰期图片处理业务对磁盘的频繁读写，还临时购置了性能相比云磁盘高出10倍的SSD盘作为写缓存，高峰过后数据再迁回云磁盘即可；带宽使用上，也灵活选用按量或按带宽的计费方式，比之前IDC按固定带宽包年的方式合理许多；同时还启用了私网SLB的服务，非常便于对各业务应用的动态扩展。</p><h1>使用效果</h1><p>通过元鼎科技使用上阿里云服务器之后，只用之前一半数量的服务器，就可以轻松应对日常的流量。相较以前在IDC的日子，阿里云服务器不仅能给用户带来更稳定的体验，也让运维人员变的更从容，同时也给公司节约了大量成本，可谓是一箭三雕。</p></div>', '2', '10000', '', '0', '1', '');

-- ----------------------------
-- Table structure for `yun_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `yun_attachment`;
CREATE TABLE `yun_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `module` char(15) NOT NULL DEFAULT '' COMMENT '模块名称',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `filename` char(50) NOT NULL DEFAULT '' COMMENT '上传附件名称',
  `filepath` char(200) NOT NULL DEFAULT '' COMMENT '附件路径',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小',
  `fileext` char(10) NOT NULL DEFAULT '' COMMENT '附件扩展名',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为图片 1为图片',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为缩略图 1为缩略图',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上传用户ID',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否后台用户上传',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `uploadip` char(15) NOT NULL DEFAULT '' COMMENT '上传ip',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '附件使用状态',
  `authcode` char(32) NOT NULL DEFAULT '' COMMENT '附件路径MD5值',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`)
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of yun_attachment
-- ----------------------------
INSERT INTO `yun_attachment` VALUES ('1', 'content', '0', '加班剩下日期.png', 'content/2016/06/57722a2bdae07.png', '44140', 'png', '1', '0', '1', '1', '1467099691', '127.0.0.1', '0', 'a9c2fc64fcbcf9a5af76ec414d0479e8');
INSERT INTO `yun_attachment` VALUES ('2', 'content', '0', '加班剩下日期.png', 'content/2016/06/57723211e0854.png', '44140', 'png', '1', '0', '1', '1', '1467101713', '127.0.0.1', '0', '0f048735b57da3461580db35748cc603');
INSERT INTO `yun_attachment` VALUES ('3', 'content', '0', '加班剩下日期.png', 'content/2016/06/57723c5e0520f.png', '44140', 'png', '1', '0', '1', '1', '1467104350', '127.0.0.1', '0', '2f2da0a07c425b44fc0779918e7dbfde');
INSERT INTO `yun_attachment` VALUES ('4', 'content', '0', '加班剩下日期.png', 'content/2016/06/57723d7e285a9.png', '44140', 'png', '1', '0', '1', '1', '1467104638', '127.0.0.1', '0', 'f9440d4c32d8dfba57296539735aa6ae');
INSERT INTO `yun_attachment` VALUES ('5', 'content', '2', 'news-alt-img.png', 'content/2016/06/5774ea2f047b0.png', '28951', 'png', '1', '0', '1', '1', '1467279919', '127.0.0.1', '1', 'c9c1b5645bd68ab3b28d6060146432ac');
INSERT INTO `yun_attachment` VALUES ('6', 'contents', '7', 'coop-aliyun.png', 'contents/2016/07/577cc810186a1.png', '5358', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', '0237fc8ff1cba1219c60672f6596571b');
INSERT INTO `yun_attachment` VALUES ('7', 'contents', '7', 'coop-amazon.png', 'contents/2016/07/577cc81039540.png', '7885', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', '5fc48f19a1847697273a23cf49a0f49d');
INSERT INTO `yun_attachment` VALUES ('8', 'contents', '7', 'coop-azure.png', 'contents/2016/07/577cc8104e538.png', '6641', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', 'c1f3bfaa656f6552f5e539d913e6803d');
INSERT INTO `yun_attachment` VALUES ('9', 'contents', '7', 'coop-guoling.png', 'contents/2016/07/577cc81067fac.png', '5900', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', 'f14ee343ce24d1cbc58e5b89caacb382');
INSERT INTO `yun_attachment` VALUES ('10', 'contents', '7', 'coop-imo.png', 'contents/2016/07/577cc81085615.png', '5217', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', '9f94987a34c41265f52705715d9e442e');
INSERT INTO `yun_attachment` VALUES ('11', 'contents', '7', 'coop-office.png', 'contents/2016/07/577cc8109de60.png', '5985', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', '41cb5d55d0a72af6ab799a6c10cfe135');
INSERT INTO `yun_attachment` VALUES ('12', 'contents', '7', 'coop-oneapm.png', 'contents/2016/07/577cc810b3ea5.png', '4228', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', '0ba4a52efc031868f96a63906a6c84ef');
INSERT INTO `yun_attachment` VALUES ('13', 'contents', '7', 'coop-oracle.png', 'contents/2016/07/577cc810ce11d.png', '7321', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', 'eea81ce94a5431e223c3b087d6d80584');
INSERT INTO `yun_attachment` VALUES ('14', 'contents', '7', 'coop-saleforce.png', 'contents/2016/07/577cc810e383d.png', '9496', 'png', '1', '0', '1', '1', '1467795472', '127.0.0.1', '1', 'b29b84aa38888cd23f70a6e74ab30b13');
INSERT INTO `yun_attachment` VALUES ('15', 'content', '9', 'client1.png', 'content/2016/07/577ccbc0ea452.png', '40846', 'png', '1', '0', '1', '1', '1467796416', '127.0.0.1', '1', '8c96354cf279b9ad90fd55bc32634210');
INSERT INTO `yun_attachment` VALUES ('16', 'content', '9', 'client2.png', 'content/2016/07/577cd23c35c4a.png', '16729', 'png', '1', '0', '1', '1', '1467798076', '127.0.0.1', '1', 'c5420e95f6e56785ecbe42d243b80a24');
INSERT INTO `yun_attachment` VALUES ('17', 'content', '9', 'client1.png', 'content/2016/07/577cd61790206.png', '40846', 'png', '1', '0', '1', '1', '1467799063', '127.0.0.1', '1', '3ff109262fac979cd673822afd6b8de6');
INSERT INTO `yun_attachment` VALUES ('18', 'content', '9', 'client2.png', 'content/2016/07/577cd6ceccffb.png', '16729', 'png', '1', '0', '1', '1', '1467799246', '127.0.0.1', '1', 'e8c5ae5950bb6afcffbb2f7a6bd549b7');
INSERT INTO `yun_attachment` VALUES ('19', 'content', '0', 'ali-logo.png', 'content/2016/07/577e06d1c09ff.png', '20720', 'png', '1', '0', '1', '1', '1467877073', '127.0.0.1', '0', 'a17982d4a56f9d31db13053a41b10226');
INSERT INTO `yun_attachment` VALUES ('20', 'content', '0', 'aws-logo.png', 'content/2016/07/577e070d461fc.png', '18460', 'png', '1', '0', '1', '1', '1467877133', '127.0.0.1', '0', '183e68ba4ad47d925126fab929beeb35');
INSERT INTO `yun_attachment` VALUES ('21', 'content', '0', 'ucloud-logo.png', 'content/2016/07/577e073f15db7.png', '15091', 'png', '1', '0', '1', '1', '1467877183', '127.0.0.1', '0', '9aa0c5949a68133c62f0b1d72925322e');
INSERT INTO `yun_attachment` VALUES ('22', 'content', '0', 'azu-logo.png', 'content/2016/07/577e0794a3ea8.png', '10480', 'png', '1', '0', '1', '1', '1467877268', '127.0.0.1', '0', '89b9cc107fe31b39c29ca50c4f73af37');
INSERT INTO `yun_attachment` VALUES ('23', 'content', '0', 'ali-logo.png', 'content/2016/07/577f05d6add55.png', '20720', 'png', '1', '0', '1', '1', '1467942358', '127.0.0.1', '0', '9b28d9232878c8dc942bcd843f041a22');
INSERT INTO `yun_attachment` VALUES ('24', 'content', '0', 'ali-logo.png', 'content/2016/07/577f09db875e4.png', '20720', 'png', '1', '0', '1', '1', '1467943387', '127.0.0.1', '0', '2500023698f0792548999677c19a8f02');
INSERT INTO `yun_attachment` VALUES ('25', 'content', '0', 'ucloud-logo.png', 'content/2016/07/577f0d3d42db1.png', '15091', 'png', '1', '0', '1', '1', '1467944253', '127.0.0.1', '0', '9e6b3bdd40e5b3956100b449f6aaef29');
INSERT INTO `yun_attachment` VALUES ('26', 'content', '0', 'hex6.png', 'content/2016/07/577f0d7343b8d.png', '5342', 'png', '1', '0', '1', '1', '1467944307', '127.0.0.1', '0', 'd8355b4e40c839b304423542ea395f90');
INSERT INTO `yun_attachment` VALUES ('27', 'content', '0', 'logo-imo.png', 'content/2016/07/577f4ddd0cb8d.png', '10133', 'png', '1', '0', '1', '1', '1467960797', '127.0.0.1', '0', '034c0836c9c89fc4b43a3b4e79b65289');
INSERT INTO `yun_attachment` VALUES ('28', 'content', '0', 'logo-office.png', 'content/2016/07/57834d57e1c36.png', '5376', 'png', '1', '0', '1', '1', '1468222807', '127.0.0.1', '0', 'cd6759e5813d69bfaff17eb1791e9378');
INSERT INTO `yun_attachment` VALUES ('29', 'content', '0', 'logo-oracle.png', 'content/2016/07/5783643691d7e.png', '5451', 'png', '1', '0', '1', '1', '1468228662', '127.0.0.1', '0', '62f423121ab25f8de48ed667279b4763');
INSERT INTO `yun_attachment` VALUES ('30', 'content', '0', 'logo-salesforce.png', 'content/2016/07/5783687a3e6ee.png', '3256', 'png', '1', '0', '1', '1', '1468229754', '127.0.0.1', '0', 'd9f703ae4acfd8ebf46e5277cc2a04d4');
INSERT INTO `yun_attachment` VALUES ('31', 'content', '0', 'logo-azure.png', 'content/2016/07/57844e1e3fc00.png', '4163', 'png', '1', '0', '1', '1', '1468288542', '127.0.0.1', '0', '30e8caf6035bebeef81ee852d4d7fc95');
INSERT INTO `yun_attachment` VALUES ('32', 'content', '0', 'bLogo03.png', 'content/2016/07/5784a1dd20894.png', '3528', 'png', '1', '0', '1', '1', '1468309981', '127.0.0.1', '0', '2732ba0a0340a597b630314f1d1951eb');
INSERT INTO `yun_attachment` VALUES ('33', 'content', '0', 'bLogo03.png', 'content/2016/07/5784a1f5739b4.png', '3528', 'png', '1', '0', '1', '1', '1468310005', '127.0.0.1', '0', '03488a15bd3166e71e745f983b8b4e46');
INSERT INTO `yun_attachment` VALUES ('34', 'content', '0', 'bLogo03.png', 'content/2016/07/5784a22775ba5.png', '3528', 'png', '1', '0', '1', '1', '1468310055', '127.0.0.1', '0', 'e77b43402ad36035f8567bf1f11217ac');
INSERT INTO `yun_attachment` VALUES ('35', 'content', '0', 'bLogo02.png', 'content/2016/07/5784a243e2904.png', '5599', 'png', '1', '0', '1', '1', '1468310083', '127.0.0.1', '0', '9ecbdd57d0da9bcefda0e73225da8d1b');
INSERT INTO `yun_attachment` VALUES ('36', 'content', '0', 'bLogo01.png', 'content/2016/07/5784a259c087e.png', '7056', 'png', '1', '0', '1', '1', '1468310105', '127.0.0.1', '0', 'f8494a9379639ece6ed56c564b4bc42a');
INSERT INTO `yun_attachment` VALUES ('37', 'content', '0', 'bLogo04.png', 'content/2016/07/5784a266162d4.png', '10028', 'png', '1', '0', '1', '1', '1468310118', '127.0.0.1', '0', '0424b5dfe2928e71ec642941ec218db0');
INSERT INTO `yun_attachment` VALUES ('38', 'content', '0', 'bLogo05.png', 'content/2016/07/5784a301b7cfc.png', '9751', 'png', '1', '0', '1', '1', '1468310273', '127.0.0.1', '0', 'd4802ec8aa6d440dd4cfa00e46aaea69');
INSERT INTO `yun_attachment` VALUES ('39', 'content', '0', 'bLogo06.png', 'content/2016/07/5784a40948c91.png', '7580', 'png', '1', '0', '1', '1', '1468310537', '127.0.0.1', '0', '4b85e5fffd2da4a0c7ac82ade041010d');
INSERT INTO `yun_attachment` VALUES ('40', 'content', '0', 'bLogo09.png', 'content/2016/07/5784a41e83540.png', '6119', 'png', '1', '0', '1', '1', '1468310558', '127.0.0.1', '0', '3d75a428d30d6529c4ce438cfe4ec1df');
INSERT INTO `yun_attachment` VALUES ('41', 'content', '0', 'bLogo08.png', 'content/2016/07/5784a42e00e5f.png', '5443', 'png', '1', '0', '1', '1', '1468310573', '127.0.0.1', '0', '8f4ad5f5e0892bc94d1b5a57effdaa53');
INSERT INTO `yun_attachment` VALUES ('42', 'content', '0', 'logo-guoling.png', 'content/2016/07/5784a7f242b62.png', '6215', 'png', '1', '0', '1', '1', '1468311538', '127.0.0.1', '0', '7eec3a8eb4d8330e76c6ae0c58e50b6e');
INSERT INTO `yun_attachment` VALUES ('43', 'content', '0', 'bLogo10.png', 'content/2016/07/5784a803480bd.png', '6120', 'png', '1', '0', '1', '1', '1468311555', '127.0.0.1', '0', 'bfd4024a32f2ad4b06a5568b56f076c4');
INSERT INTO `yun_attachment` VALUES ('44', 'content', '0', 'logo-ali.png', 'content/2016/07/5785b6ca30e37.png', '10280', 'png', '1', '0', '1', '1', '1468380874', '127.0.0.1', '0', '189de2917b47620cc459fe0e505f145e');
INSERT INTO `yun_attachment` VALUES ('45', 'content', '0', 'logo-salesforce.png', 'content/2016/07/5785b706503f8.png', '8105', 'png', '1', '0', '1', '1', '1468380934', '127.0.0.1', '0', '576b96c6b66aad8bd3d851d65f6f4ee0');
INSERT INTO `yun_attachment` VALUES ('46', 'content', '0', 'logo-oneApm.png', 'content/2016/07/57885f434e735.png', '4404', 'png', '1', '0', '1', '1', '1468555075', '127.0.0.1', '0', 'a5ee3aafaa8049c8ced36bc66520bc3c');
INSERT INTO `yun_attachment` VALUES ('47', 'content', '0', 'bLogo07.png', 'content/2016/07/578874db82cf7.png', '4374', 'png', '1', '0', '1', '1', '1468560603', '127.0.0.1', '0', '37bf3dfc58beb4802716cc86aea6672a');
INSERT INTO `yun_attachment` VALUES ('48', 'content', '0', 'logo-oneApm.png', 'content/2016/07/578876aa3cb80.png', '4404', 'png', '1', '0', '1', '1', '1468561066', '127.0.0.1', '0', '1c15cdab960845b42dfbd180632d2cf1');
INSERT INTO `yun_attachment` VALUES ('49', 'content', '0', 'logo-oneApm.png', 'content/2016/07/578877c63bc9c.png', '4404', 'png', '1', '0', '1', '1', '1468561350', '127.0.0.1', '0', '035d95cf94efd81fb7650adba74affbf');
INSERT INTO `yun_attachment` VALUES ('50', 'content', '0', 'gxlt.png', 'content/2016/08/57a00a1eb5f63.png', '13419', 'png', '1', '0', '2', '1', '1470106142', '120.194.3.98', '0', '8f64812f6530ae95f9a4c3f7172a7223');
INSERT INTO `yun_attachment` VALUES ('51', 'content', '0', 'gxlt.png', 'content/2016/08/57a00a2e310a7.png', '13419', 'png', '1', '0', '2', '1', '1470106158', '120.194.3.98', '0', '4c39ad070a74503dd4784b1fdd3392b0');
INSERT INTO `yun_attachment` VALUES ('52', 'content', '0', 'oracle.png', 'content/2016/08/57a00a6f2ae8e.png', '12759', 'png', '1', '0', '2', '1', '1470106223', '120.194.3.98', '0', '58af067a02bdca2496f221bfa59c6a72');
INSERT INTO `yun_attachment` VALUES ('53', 'content', '0', 'oracle.png', 'content/2016/08/57a00a7645a17.png', '12759', 'png', '1', '0', '2', '1', '1470106230', '120.194.3.98', '0', '9d9eb2dd1fc404c4894946f43cc63dc2');
INSERT INTO `yun_attachment` VALUES ('54', 'content', '0', 'imo.png', 'content/2016/08/57a00a8bbbf63.png', '13704', 'png', '1', '0', '2', '1', '1470106251', '120.194.3.98', '0', '9fdb206ef05a2911c50e9aae79798856');
INSERT INTO `yun_attachment` VALUES ('55', 'content', '0', 'imo.png', 'content/2016/08/57a00a919c5ad.png', '13704', 'png', '1', '0', '2', '1', '1470106257', '120.194.3.98', '0', '44d49c1f5ea30137d4569990a3446ba3');
INSERT INTO `yun_attachment` VALUES ('56', 'content', '0', 'oracle.jpg', 'content/2016/08/57a053948985c.jpg', '6017', 'jpg', '1', '0', '1', '1', '1470124948', '120.194.3.98', '0', 'bcf6fecf550c49c9e3d610a435c20fdc');
INSERT INTO `yun_attachment` VALUES ('57', 'content', '0', 'bLogo06.png', 'content/2016/08/57a054477ee0c.png', '7580', 'png', '1', '0', '1', '1', '1470125127', '120.194.3.98', '0', 'ce4777419fab0efdf1fa3a34802c8be8');
INSERT INTO `yun_attachment` VALUES ('58', 'content', '0', 'bLogo10.png', 'content/2016/08/57a054a1d6af0.png', '6120', 'png', '1', '0', '1', '1', '1470125217', '120.194.3.98', '0', 'a73fd33b2a598b07970255dc27177f28');
INSERT INTO `yun_attachment` VALUES ('59', 'content', '0', 'bLogo08.png', 'content/2016/08/57a054b851dc0.png', '5443', 'png', '1', '0', '1', '1', '1470125240', '120.194.3.98', '0', '05a9e1273512649e8d1d6aae2bb06513');
INSERT INTO `yun_attachment` VALUES ('60', 'content', '0', 'azure.png', 'content/2016/08/57a0552979a03.png', '4191', 'png', '1', '0', '1', '1', '1470125353', '120.194.3.98', '0', 'ab745f0ac37f1788b8d8808fbf1a581e');
INSERT INTO `yun_attachment` VALUES ('61', 'content', '0', 'ucloud.png', 'content/2016/08/57a0556a7efa7.png', '10138', 'png', '1', '0', '1', '1', '1470125418', '120.194.3.98', '0', 'a7186ebb430981f71f586db3f0dd504b');
INSERT INTO `yun_attachment` VALUES ('62', 'content', '0', '阿里云.png', 'content/2016/08/57a055868de86.png', '13656', 'png', '1', '0', '1', '1', '1470125446', '120.194.3.98', '0', '07c3d28fdc740a74b982b949d3654cfd');
INSERT INTO `yun_attachment` VALUES ('63', 'content', '0', '亚马逊.png', 'content/2016/08/57a0559fe29d0.png', '14816', 'png', '1', '0', '1', '1', '1470125471', '120.194.3.98', '0', '278b5c1a76e2e90616fbf24a4233944c');
INSERT INTO `yun_attachment` VALUES ('64', 'content', '0', 'oneapm.png', 'content/2016/08/57a055d5dbfe6.png', '8938', 'png', '1', '0', '1', '1', '1470125525', '120.194.3.98', '0', 'd0441e2873748badcf38c4839133f3c6');
INSERT INTO `yun_attachment` VALUES ('65', 'content', '0', 'oracle.png', 'content/2016/08/57a055ef366ea.png', '12839', 'png', '1', '0', '1', '1', '1470125551', '120.194.3.98', '0', 'cb3c777464aa3b180e8ee2330cccf6c2');
INSERT INTO `yun_attachment` VALUES ('66', 'content', '0', 'imo.png', 'content/2016/08/57a05604342fb.png', '10562', 'png', '1', '0', '1', '1', '1470125572', '120.194.3.98', '0', '989cd7ded94ea897f371c63d024f8204');
INSERT INTO `yun_attachment` VALUES ('67', 'content', '0', '5784a41e83540.png', 'content/2016/08/57a2f4ece5542.png', '6119', 'png', '1', '0', '2', '1', '1470297324', '120.194.3.98', '0', '109235ebcd3fe2af51d71934b642d2f4');
INSERT INTO `yun_attachment` VALUES ('68', 'content', '0', 'azure.png', 'content/2016/08/57a3fb9326e15.png', '4191', 'png', '1', '0', '2', '1', '1470364563', '120.194.3.98', '0', '8ebdb16e483116a07d39508cffbd4d53');
INSERT INTO `yun_attachment` VALUES ('69', 'content', '0', '亚马逊.png', 'content/2016/08/57a3fdae8e945.png', '14816', 'png', '1', '0', '2', '1', '1470365102', '120.194.3.98', '0', 'fa71d4443966c9e5511e09e5549445d3');
INSERT INTO `yun_attachment` VALUES ('70', 'content', '0', 'salesforce.png', 'content/2016/08/57a433ea7920f.png', '5498', 'png', '1', '0', '2', '1', '1470378986', '120.194.3.98', '0', '45f85caeacd926f0d2d1c9bdc9cf4295');
INSERT INTO `yun_attachment` VALUES ('71', 'content', '0', 'salesforce.png', 'content/2016/08/57a43433a2135.png', '5498', 'png', '1', '0', '2', '1', '1470379059', '120.194.3.98', '0', 'c29d7011058c4b6b6c1644ccbaa7c3fe');
INSERT INTO `yun_attachment` VALUES ('72', 'content', '0', 'salesforce.png', 'content/2016/08/57a4362b717ee.png', '5498', 'png', '1', '0', '2', '1', '1470379563', '120.194.3.98', '0', 'f5369f673169373646d658cb43581a3d');
INSERT INTO `yun_attachment` VALUES ('73', 'content', '0', 'salesforce.png', 'content/2016/08/57a437157db2a.png', '5498', 'png', '1', '0', '2', '1', '1470379797', '120.194.3.98', '0', '1b931f1cc8fbab59dfd4c64c28c1e30d');
INSERT INTO `yun_attachment` VALUES ('74', 'content', '0', 'salesforce.png', 'content/2016/08/57a43804ae41b.png', '5498', 'png', '1', '0', '2', '1', '1470380036', '120.194.3.98', '0', '6535c23ce9a10fa694fe03bf4cd4e385');
INSERT INTO `yun_attachment` VALUES ('75', 'content', '0', 'oneapm.png', 'content/2016/08/57a43879abedb.png', '8938', 'png', '1', '0', '2', '1', '1470380153', '120.194.3.98', '0', 'c6464b61d2717d2bf63776d74242461a');
INSERT INTO `yun_attachment` VALUES ('76', 'content', '0', '365.png', 'content/2016/08/57a43c0841a70.png', '3758', 'png', '1', '0', '2', '1', '1470381064', '120.194.3.98', '0', '5251b0e94248151a69d35b040fe967d7');
INSERT INTO `yun_attachment` VALUES ('77', 'content', '0', 'oracle.png', 'content/2016/08/57a43e2c799a5.png', '12839', 'png', '1', '0', '2', '1', '1470381612', '120.194.3.98', '0', '1626b82468d1674e2c1722acc3a50f67');
INSERT INTO `yun_attachment` VALUES ('78', 'content', '0', 'imo.png', 'content/2016/08/57a43e55ba168.png', '10562', 'png', '1', '0', '2', '1', '1470381653', '120.194.3.98', '0', '7d869345cef18cd7174d47aaeae58fb1');
INSERT INTO `yun_attachment` VALUES ('79', 'content', '0', '国信灵通.png', 'content/2016/08/57a43e8c73555.png', '11980', 'png', '1', '0', '2', '1', '1470381708', '120.194.3.98', '0', '9c2e6ad64224fc485a540fa367f53761');
INSERT INTO `yun_attachment` VALUES ('80', 'content', '9', 'A3-色彩规范-01.jpg', 'content/2016/08/57ac30046edb9.jpg', '642901', 'jpg', '1', '0', '2', '1', '1470902276', '120.194.3.98', '1', '3c16227955c2d412f5722065daf143ac');
INSERT INTO `yun_attachment` VALUES ('81', 'content', '9', '000.jpg', 'content/2016/08/57b661ec94564.jpg', '6528', 'jpg', '1', '0', '2', '1', '1471570412', '120.194.3.98', '1', '9568116b58a350ac3dc5c1027e29833d');
INSERT INTO `yun_attachment` VALUES ('82', 'content', '0', 'u572.jpg', 'content/2017/01/5885685becf18.jpg', '65914', 'jpg', '1', '0', '1', '1', '1485138011', '127.0.0.1', '0', 'a85d12fca2ef4449531a312b695968de');
INSERT INTO `yun_attachment` VALUES ('83', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/01/588568b51b403.rar', '9211065', 'rar', '0', '0', '1', '1', '1485138101', '127.0.0.1', '0', '02cd5021a9a57b7298d4e4f78f4a16e7');
INSERT INTO `yun_attachment` VALUES ('84', 'content', '0', 'u572.jpg', 'content/2017/01/58856a95c0a78.jpg', '65914', 'jpg', '1', '0', '1', '1', '1485138581', '127.0.0.1', '0', 'c4429a3dcf94659914cb51d7eb669dd8');
INSERT INTO `yun_attachment` VALUES ('85', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/01/58856aa1444d9.rar', '9211065', 'rar', '0', '0', '1', '1', '1485138593', '127.0.0.1', '0', 'ff579207d5d3d0a29200fa81ee70ebcb');
INSERT INTO `yun_attachment` VALUES ('146', 'content', '0', 'u572.jpg', 'content/2017/01/588704c1908b6.jpg', '65914', 'jpg', '1', '0', '1', '1', '1485243585', '127.0.0.1', '0', '3e8de9e9099b07bdd8878b47d14ed3d4');
INSERT INTO `yun_attachment` VALUES ('147', 'content', '0', 'u572.jpg', 'content/2017/01/588704f944a97.jpg', '65914', 'jpg', '1', '0', '1', '1', '1485243641', '127.0.0.1', '0', '08339d5f3ad81e3b053bb27a143a8f0e');
INSERT INTO `yun_attachment` VALUES ('148', 'content', '0', 'u572.jpg', 'content/2017/01/58870538afbfc.jpg', '65914', 'jpg', '1', '0', '1', '1', '1485243704', '127.0.0.1', '0', '03f6bd1e49d07abad184c4f7e927be2f');
INSERT INTO `yun_attachment` VALUES ('149', 'content', '0', 'u572.jpg', 'content/2017/01/5887060b5f31d.jpg', '65914', 'jpg', '1', '0', '1', '1', '1485243915', '127.0.0.1', '0', '9c859361f023c93faaccd6796728f73b');
INSERT INTO `yun_attachment` VALUES ('150', 'content', '0', 'u572.jpg', 'content/2017/01/588707f63c8b9.jpg', '65914', 'jpg', '1', '0', '1', '1', '1485244406', '127.0.0.1', '0', 'e0c00abdac3e8c04c38e9ce294000ab3');
INSERT INTO `yun_attachment` VALUES ('151', 'content', '0', 'u354.jpg', 'content/2017/01/58870ef1eca1d.jpg', '77290', 'jpg', '1', '0', '1', '1', '1485246193', '127.0.0.1', '0', 'b2e8dee89e64b221c265fdd36c850967');
INSERT INTO `yun_attachment` VALUES ('152', 'content', '0', 'u658.png', 'content/2017/01/58870f1124a0c.png', '2025', 'png', '1', '0', '1', '1', '1485246225', '127.0.0.1', '0', '77900b431344fa714e0459000474d98b');
INSERT INTO `yun_attachment` VALUES ('153', 'content', '0', 'u654.png', 'content/2017/01/5887115b8c46a.png', '3467', 'png', '1', '0', '1', '1', '1485246811', '127.0.0.1', '0', '38030e0be2dffa9e20cc28a6a766f663');
INSERT INTO `yun_attachment` VALUES ('154', 'content', '0', 'ci框架2.0中文手册.chm', 'content/2017/02/58983bb76eca6.chm', '1960713', 'chm', '0', '0', '1', '1', '1486371767', '127.0.0.1', '0', '042a2da0953ab748f940da3725073328');
INSERT INTO `yun_attachment` VALUES ('155', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/58984043e5d5a.rar', '9211065', 'rar', '0', '0', '1', '1', '1486372931', '127.0.0.1', '0', '0fb176071a3c3b29e463b57d8e28cb94');
INSERT INTO `yun_attachment` VALUES ('156', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/589840aeca464.rar', '9211065', 'rar', '0', '0', '1', '1', '1486373038', '127.0.0.1', '0', '61f7edcda17fecafeba46a1d5fba8e44');
INSERT INTO `yun_attachment` VALUES ('157', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/589841afe54d6.rar', '9211065', 'rar', '0', '0', '1', '1', '1486373295', '127.0.0.1', '0', 'b0ab5d1768b88784d17f8f130a7d0b62');
INSERT INTO `yun_attachment` VALUES ('158', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/5898438cdf05f.rar', '9211065', 'rar', '0', '0', '1', '1', '1486373772', '127.0.0.1', '0', '4e2f98dd029f37307557e18ca3dfc54a');
INSERT INTO `yun_attachment` VALUES ('159', 'content', '0', 'lantern-installer(愉快的翻墙吧).zip', 'content/2017/02/589843fa3cbb5.zip', '4455876', 'zip', '0', '0', '1', '1', '1486373882', '127.0.0.1', '0', 'fa0c14f30d45ef47dfe06c0f4b61eb7b');
INSERT INTO `yun_attachment` VALUES ('160', 'content', '0', 'Navicat for MySQL.zip', 'content/2017/02/5898443f3d350.zip', '21188355', 'zip', '0', '0', '1', '1', '1486373951', '127.0.0.1', '0', '377fbcf115e8508bf285671ec4b13af0');
INSERT INTO `yun_attachment` VALUES ('161', 'content', '0', 'u572.jpg', 'content/2017/02/589ab9539bd72.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486534995', '127.0.0.1', '0', '045b0a66a9f2e29c461525027328dc99');
INSERT INTO `yun_attachment` VALUES ('162', 'content', '0', 'u572.jpg', 'content/2017/02/589aba257aa35.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486535205', '127.0.0.1', '0', 'bdee8f38e0382d436bfdaf649c8492f4');
INSERT INTO `yun_attachment` VALUES ('163', 'content', '0', 'u572.jpg', 'content/2017/02/589abd490476c.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486536009', '127.0.0.1', '0', '7b3c1dab348163fa588830cc6aa83643');
INSERT INTO `yun_attachment` VALUES ('164', 'content', '0', 'u572.jpg', 'content/2017/02/589abf2852ef3.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486536488', '127.0.0.1', '0', '19def26d54a4c6647b680be16f510e2f');
INSERT INTO `yun_attachment` VALUES ('165', 'content', '0', 'u436.png', 'content/2017/02/589ae1e022314.png', '3803', 'png', '1', '0', '1', '1', '1486545376', '127.0.0.1', '0', 'af1588b4b0bbac34671386bdc80c1430');
INSERT INTO `yun_attachment` VALUES ('166', 'content', '0', 'u430.png', 'content/2017/02/589bcc4e8832c.png', '2475', 'png', '1', '0', '1', '1', '1486605390', '127.0.0.1', '0', 'dd9ccfd0c6fc3cfb546f9f469498f0d9');
INSERT INTO `yun_attachment` VALUES ('167', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/589bd42e80f2f.rar', '9211065', 'rar', '0', '0', '1', '1', '1486607406', '127.0.0.1', '0', '24b48199e712f90e860f0841b6126579');
INSERT INTO `yun_attachment` VALUES ('168', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/589bd4c7ce0a8.rar', '9211065', 'rar', '0', '0', '1', '1', '1486607559', '127.0.0.1', '0', '87237c3fbe267fb09275c0f948fa4a3c');
INSERT INTO `yun_attachment` VALUES ('169', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/589bd5135fc49.rar', '9211065', 'rar', '0', '0', '1', '1', '1486607635', '127.0.0.1', '0', 'd0a9de929f919e38e5ae96dfd299aa2b');
INSERT INTO `yun_attachment` VALUES ('170', 'content', '0', 'u186.jpg', 'content/2017/02/589c1058cba58.jpg', '93878', 'jpg', '1', '0', '1', '1', '1486622808', '127.0.0.1', '0', '7609fa394d1676b1cb4a22d5a9c75250');
INSERT INTO `yun_attachment` VALUES ('171', 'content', '0', 'u572.jpg', 'content/2017/02/589c1064daf3a.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486622820', '127.0.0.1', '0', '942b5ea1527fe266784055691a8f4544');
INSERT INTO `yun_attachment` VALUES ('172', 'content', '0', 'u572.jpg', 'content/2017/02/589c106c89840.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486622828', '127.0.0.1', '0', '64ff026204289fdb432c39e036ee20a3');
INSERT INTO `yun_attachment` VALUES ('173', 'content', '0', 'u354.jpg', 'content/2017/02/589c1179388cf.jpg', '77290', 'jpg', '1', '0', '1', '1', '1486623097', '127.0.0.1', '0', 'a4ba399a79549efbc4fb0e0bab4677b2');
INSERT INTO `yun_attachment` VALUES ('174', 'content', '0', 'u572.jpg', 'content/2017/02/589c1185c0f4e.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486623109', '127.0.0.1', '0', '61aed77a80b6db0260355fd25275ae32');
INSERT INTO `yun_attachment` VALUES ('175', 'content', '0', 'u186.jpg', 'content/2017/02/589c11de16508.jpg', '93878', 'jpg', '1', '0', '1', '1', '1486623198', '127.0.0.1', '0', '312a2a73fe308a2684d192841c92206f');
INSERT INTO `yun_attachment` VALUES ('176', 'content', '0', 'u572.jpg', 'content/2017/02/589c11e98aaf9.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486623209', '127.0.0.1', '0', 'af18f37c6893c43ecf874a21d3541387');
INSERT INTO `yun_attachment` VALUES ('177', 'content', '0', 'u354.jpg', 'content/2017/02/589c1226545bd.jpg', '77290', 'jpg', '1', '0', '1', '1', '1486623270', '127.0.0.1', '0', 'ff36e1c23474f8d6ef43eead11fd5aa2');
INSERT INTO `yun_attachment` VALUES ('178', 'content', '0', 'u572.jpg', 'content/2017/02/589c123094778.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486623280', '127.0.0.1', '0', 'acc0ef519b1292f04f070b0b76cfbd74');
INSERT INTO `yun_attachment` VALUES ('179', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/589c12e1a6138.rar', '9211065', 'rar', '0', '0', '1', '1', '1486623457', '127.0.0.1', '0', '6ec7abe3604ff96ee1b04bf123977b3b');
INSERT INTO `yun_attachment` VALUES ('180', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/589c130a7786e.rar', '9211065', 'rar', '0', '0', '1', '1', '1486623498', '127.0.0.1', '0', 'e420c14ee3887291f15129fd95250e9f');
INSERT INTO `yun_attachment` VALUES ('181', 'content', '0', 'u362.png', 'content/2017/02/589c246704583.png', '2597', 'png', '1', '0', '1', '1', '1486627942', '127.0.0.1', '0', '33bd0cf556ed6e7b3fb99f9e323b9c9c');
INSERT INTO `yun_attachment` VALUES ('182', 'content', '0', 'u572.jpg', 'content/2017/02/589c24708b7cd.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486627952', '127.0.0.1', '0', '5d29767eade74808991d317430238f60');
INSERT INTO `yun_attachment` VALUES ('183', 'content', '0', 'u1062.png', 'content/2017/02/589c24e972cf0.png', '16915', 'png', '1', '0', '1', '1', '1486628073', '127.0.0.1', '0', '955a5a6b1e50a2103fc04aa55646838c');
INSERT INTO `yun_attachment` VALUES ('184', 'content', '0', 'u572.jpg', 'content/2017/02/589c24f72368e.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486628087', '127.0.0.1', '0', '054aa78ddce6b6b99e1dd41784d126aa');
INSERT INTO `yun_attachment` VALUES ('185', 'content', '0', 'u572.jpg', 'content/2017/02/589d2b2183f41.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486695201', '127.0.0.1', '0', 'c11e9ba4ba2b4b6129fdf63f80d02072');
INSERT INTO `yun_attachment` VALUES ('186', 'content', '9', 'u572.jpg', 'content/2017/02/589d6adf9658e.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486711519', '127.0.0.1', '1', '02e31ee409a33d79d5282ff1c7b7dfe5');
INSERT INTO `yun_attachment` VALUES ('187', 'content', '0', 'u572.jpg', 'content/2017/02/58a135a7c55f7.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486960039', '127.0.0.1', '0', '068a09e3618e811f76d337375f7bb287');
INSERT INTO `yun_attachment` VALUES ('188', 'content', '0', 'u572.jpg', 'content/2017/02/58a169d1246d6.jpg', '65914', 'jpg', '1', '0', '1', '1', '1486973393', '127.0.0.1', '0', 'cc2bc3a1103b23db4a00a39105820977');
INSERT INTO `yun_attachment` VALUES ('189', 'content', '0', 'u566.png', 'content/2017/02/58a169e22e6e5.png', '154', 'png', '1', '0', '1', '1', '1486973410', '127.0.0.1', '0', '7a99e5039cfe21bb00359535a54252a2');
INSERT INTO `yun_attachment` VALUES ('190', 'content', '0', 'u566.png', 'content/2017/02/58a16a1716fff.png', '154', 'png', '1', '0', '1', '1', '1486973463', '127.0.0.1', '0', 'eb4b7e492d5a38b16a39950bd071f6ca');
INSERT INTO `yun_attachment` VALUES ('191', 'content', '0', '01.1.1 Linux系统简介-UNIX发展历史和发行版本.mp4', 'content/2017/02/58a16d4d36be6.mp4', '95788454', 'mp4', '0', '0', '1', '1', '1486974285', '127.0.0.1', '0', '9491e776142eda660dd098498ae920ea');
INSERT INTO `yun_attachment` VALUES ('192', '', '0', 'index.jpg', '/2017/02/58a16f879f639.jpg', '380091', 'jpg', '1', '0', '1', '1', '1486974855', '127.0.0.1', '0', '9b5582ee395b3c3d33a68de11639690a');
INSERT INTO `yun_attachment` VALUES ('202', 'content', '0', 'cp.png', 'content/2017/02/58abeb9c35e19.png', '19931', 'png', '1', '0', '1', '1', '1487661980', '192.168.40.106', '0', 'ef161b83d47c4c70b9ff31bb0211dd84');
INSERT INTO `yun_attachment` VALUES ('194', 'content', '0', 'u436.png', 'content/2017/02/58aa634e1bca1.png', '3803', 'png', '1', '0', '1', '1', '1487561550', '127.0.0.1', '0', '6ef3368419b4fe525051d4d2e8a033b0');
INSERT INTO `yun_attachment` VALUES ('195', 'content', '0', 'u430.png', 'content/2017/02/58aa6354d81dc.png', '2475', 'png', '1', '0', '1', '1', '1487561556', '127.0.0.1', '0', 'd32e50960c26f9bd1add25a2fb49bee6');
INSERT INTO `yun_attachment` VALUES ('196', 'content', '0', 'u436.png', 'content/2017/02/58aa63d677899.png', '3803', 'png', '1', '0', '1', '1', '1487561686', '127.0.0.1', '0', '85f054d428bea03b7ca8da3054fbd91f');
INSERT INTO `yun_attachment` VALUES ('197', 'content', '0', 'u440.png', 'content/2017/02/58aa63db08c2d.png', '611', 'png', '1', '0', '1', '1', '1487561691', '127.0.0.1', '0', 'c30fa64161e2d766b9435e5db5e17de5');
INSERT INTO `yun_attachment` VALUES ('198', 'content', '0', 'u460.png', 'content/2017/02/58aa63e848aab.png', '149', 'png', '1', '0', '1', '1', '1487561704', '127.0.0.1', '0', 'a22c0017b7ce2cd8971a6f239f5b8bae');
INSERT INTO `yun_attachment` VALUES ('199', 'content', '0', 'u436.png', 'content/2017/02/58aa6436c7fbf.png', '3803', 'png', '1', '0', '1', '1', '1487561782', '127.0.0.1', '0', '97a53c14b3d9a292b2f00a9394a4001e');
INSERT INTO `yun_attachment` VALUES ('200', 'content', '0', 'u466.png', 'content/2017/02/58aa643b6eb18.png', '6879', 'png', '1', '0', '1', '1', '1487561787', '127.0.0.1', '0', '55bffda6fd9561a26a18013cd2ce3f4c');
INSERT INTO `yun_attachment` VALUES ('201', 'content', '0', 'u460.png', 'content/2017/02/58aa6445b8145.png', '149', 'png', '1', '0', '1', '1', '1487561797', '127.0.0.1', '0', '1cfd600fa49b9de715b80b89ee7a5d27');
INSERT INTO `yun_attachment` VALUES ('203', 'content', '0', 'Office 365_2.mp4', 'content/2017/02/58abecf176ed5.mp4', '14358820', 'mp4', '0', '0', '1', '1', '1487662321', '192.168.40.106', '0', 'b2beec69d47ae2a61596c9d5ffbc5a56');
INSERT INTO `yun_attachment` VALUES ('204', 'content', '0', 'cp.png', 'content/2017/02/58abedfda90e7.png', '19931', 'png', '1', '0', '1', '1', '1487662589', '192.168.40.106', '0', '83b6703342570b6bb5f18764bd24e90e');
INSERT INTO `yun_attachment` VALUES ('205', 'content', '0', 'cp.png', 'content/2017/02/58abefc8a39f2.png', '19931', 'png', '1', '0', '1', '1', '1487663048', '192.168.40.106', '0', 'fbe67b0667aaf4384abf438bb2a9e74f');
INSERT INTO `yun_attachment` VALUES ('206', 'content', '0', 'Office 365_2.mp4', 'content/2017/02/58abefe95e1fe.mp4', '14358820', 'mp4', '0', '0', '1', '1', '1487663081', '192.168.40.106', '0', '15b46e18ea84fec4410bde1b74836210');
INSERT INTO `yun_attachment` VALUES ('207', '', '0', 'jj.png', '/2017/02/58abf05b155d6.png', '7597', 'png', '1', '0', '1', '1', '1487663195', '192.168.40.106', '0', 'bcd33d972b7434645a2b67783093b434');
INSERT INTO `yun_attachment` VALUES ('208', 'content', '0', 'jj.png', 'content/2017/02/58abf06d9c13a.png', '7597', 'png', '1', '0', '1', '1', '1487663213', '192.168.40.106', '0', 'c2f27ecf85815deff110db17e4d6a587');
INSERT INTO `yun_attachment` VALUES ('209', '', '0', 'p1_03.png', '/2017/02/58abf087c7306.png', '13338', 'png', '1', '0', '1', '1', '1487663239', '192.168.40.106', '0', '4a4a9bcbacff3634fff95995eaad7285');
INSERT INTO `yun_attachment` VALUES ('210', '', '0', 'p2_03.png', '/2017/02/58abf087deda1.png', '12573', 'png', '1', '0', '1', '1', '1487663239', '192.168.40.106', '0', '9fd6efae3c5ee2dbd241ba1b67d94c27');
INSERT INTO `yun_attachment` VALUES ('211', '', '0', 'p3_03.png', '/2017/02/58abf087ee2ae.png', '12097', 'png', '1', '0', '1', '1', '1487663239', '192.168.40.106', '0', 'dbd3393c03f11ea15d964b5c607f00fb');
INSERT INTO `yun_attachment` VALUES ('212', '', '0', 'p4_03.png', '/2017/02/58abf0880977b.png', '12891', 'png', '1', '0', '1', '1', '1487663240', '192.168.40.106', '0', '848944629921a85e45dc087ad0403ee1');
INSERT INTO `yun_attachment` VALUES ('213', '', '0', 'x1_03.png', '/2017/02/58abf0b61d2c8.png', '23400', 'png', '1', '0', '1', '1', '1487663286', '192.168.40.106', '0', '5bde482b85a4dd676c47856b592c9ee1');
INSERT INTO `yun_attachment` VALUES ('214', '', '0', 'x2_03.png', '/2017/02/58abf0b630452.png', '13043', 'png', '1', '0', '1', '1', '1487663286', '192.168.40.106', '0', 'cd0c7fcad5fa859ccb9c450a968e6bde');
INSERT INTO `yun_attachment` VALUES ('215', '', '0', 'x3_03.png', '/2017/02/58abf0b641427.png', '18561', 'png', '1', '0', '1', '1', '1487663286', '192.168.40.106', '0', 'd95b0719e9973d7204ee990ad9f5895b');
INSERT INTO `yun_attachment` VALUES ('216', '', '0', 'x4_03.png', '/2017/02/58abf0b65118b.png', '9755', 'png', '1', '0', '1', '1', '1487663286', '192.168.40.106', '0', 'ffe2800a05879b03699620ccd3fdd4ec');
INSERT INTO `yun_attachment` VALUES ('217', '', '0', 'x5_03.png', '/2017/02/58abf0b6616b7.png', '9981', 'png', '1', '0', '1', '1', '1487663286', '192.168.40.106', '0', 'd9a1c3cd6635e4b7ecc8b443db0571a1');
INSERT INTO `yun_attachment` VALUES ('218', '', '0', 'x7_03.png', '/2017/02/58abf0b6719dd.png', '9591', 'png', '1', '0', '1', '1', '1487663286', '192.168.40.106', '0', '3329679671b2388b5263bfbfc92e38ca');
INSERT INTO `yun_attachment` VALUES ('219', '', '0', 'f1_03.png', '/2017/02/58abf1016ae9e.png', '56025', 'png', '1', '0', '1', '1', '1487663361', '192.168.40.106', '0', '23c3a7b10a738ad305d48d4f8f4758a8');
INSERT INTO `yun_attachment` VALUES ('220', '', '0', 'f2_03.png', '/2017/02/58abf10195267.png', '33275', 'png', '1', '0', '1', '1', '1487663361', '192.168.40.106', '0', '63fd216adf708779799f09ba141fc4b8');
INSERT INTO `yun_attachment` VALUES ('221', '', '0', 'f3_03.png', '/2017/02/58abf101abdab.png', '47253', 'png', '1', '0', '1', '1', '1487663361', '192.168.40.106', '0', '9cbe11d23e46c4663fad441a20dd75df');
INSERT INTO `yun_attachment` VALUES ('222', '', '0', 'f4_03.png', '/2017/02/58abf101d728f.png', '42850', 'png', '1', '0', '1', '1', '1487663361', '192.168.40.106', '0', 'a7ac8b5b2c3fd7d981f4a166d22601d5');
INSERT INTO `yun_attachment` VALUES ('223', '', '0', 'f5_03.png', '/2017/02/58abf1020c939.png', '39074', 'png', '1', '0', '1', '1', '1487663362', '192.168.40.106', '0', '89f27f21fbb124e62f905904369dfcb3');
INSERT INTO `yun_attachment` VALUES ('224', '', '0', 'i1_03.png', '/2017/02/58abf16942cb5.png', '7383', 'png', '1', '0', '1', '1', '1487663465', '192.168.40.106', '0', 'af6db99250b9aba5cb9d69ddeed92307');
INSERT INTO `yun_attachment` VALUES ('225', '', '0', 'i2_03.png', '/2017/02/58abf169626c6.png', '6037', 'png', '1', '0', '1', '1', '1487663465', '192.168.40.106', '0', '8fa4e72fad5cfe9ac2d43aec9639aa72');
INSERT INTO `yun_attachment` VALUES ('226', '', '0', 'i4_03.png', '/2017/02/58abf16976500.png', '6274', 'png', '1', '0', '1', '1', '1487663465', '192.168.40.106', '0', '01a18f6d655c9c3c1e8d5cdc57c6a0b0');
INSERT INTO `yun_attachment` VALUES ('227', '', '0', 'i5_03.png', '/2017/02/58abf16985f5d.png', '6751', 'png', '1', '0', '1', '1', '1487663465', '192.168.40.106', '0', 'd95cf0456826c94b405d4f74ceeda472');
INSERT INTO `yun_attachment` VALUES ('228', '', '0', 'i6_03.png', '/2017/02/58abf169988db.png', '7042', 'png', '1', '0', '1', '1', '1487663465', '192.168.40.106', '0', '5d47a15268037fc1d5df6869e746a4a4');
INSERT INTO `yun_attachment` VALUES ('229', 'content', '0', 'QQ截图20170221155905.jpg', 'content/2017/02/58abf35822b18.jpg', '79901', 'jpg', '1', '0', '1', '1', '1487663960', '192.168.40.106', '0', 'ff363bc5704e4e4a78c2210228399c59');
INSERT INTO `yun_attachment` VALUES ('230', 'content', '0', 'cp.png', 'content/2017/02/58acf673d2a7a.png', '19931', 'png', '1', '0', '1', '1', '1487730291', '192.168.40.106', '0', '056c78296583d9cf7d712f1b81bff43a');
INSERT INTO `yun_attachment` VALUES ('231', 'content', '0', 'QQ截图20170221155905.jpg', 'content/2017/02/58acf699dd279.jpg', '79901', 'jpg', '1', '0', '1', '1', '1487730329', '192.168.40.106', '0', '591c4d912a6ee3bb7ab65c6cfbc37ded');
INSERT INTO `yun_attachment` VALUES ('232', 'content', '0', 'Office 365_2.mp4', 'content/2017/02/58acf73ec2dbd.mp4', '14358820', 'mp4', '0', '0', '1', '1', '1487730494', '192.168.40.106', '0', 'ac4c1d578bde77fe1579049032fb8c60');
INSERT INTO `yun_attachment` VALUES ('233', 'content', '0', 'banner.png', 'content/2017/02/58acf75a8b625.png', '10786', 'png', '1', '0', '1', '1', '1487730522', '192.168.40.106', '0', 'fa09b5936048a7d27a23d32c7facca13');
INSERT INTO `yun_attachment` VALUES ('234', 'content', '0', 'jj.png', 'content/2017/02/58acf793ca791.png', '7597', 'png', '1', '0', '1', '1', '1487730579', '192.168.40.106', '0', '35ca23888af7a25ac8e8ab5a6ae7bd1b');
INSERT INTO `yun_attachment` VALUES ('235', '', '0', 'banner.png', '/2017/02/58acf7a3aebdb.png', '10786', 'png', '1', '0', '1', '1', '1487730595', '192.168.40.106', '0', '96c5c31425c45b9b6639e42d047a4667');
INSERT INTO `yun_attachment` VALUES ('236', '', '0', 'p2_03.jpg', '/2017/02/58acf8055d083.jpg', '201648', 'jpg', '1', '0', '1', '1', '1487730693', '192.168.40.106', '0', '156d72e32e50fc16cd0ed8edbc3444ad');
INSERT INTO `yun_attachment` VALUES ('237', '', '0', 'p1_03.jpg', '/2017/02/58acf81870714.jpg', '148048', 'jpg', '1', '0', '1', '1', '1487730712', '192.168.40.106', '0', '0e1bd8252c0bdde7f5dccf28755b1876');
INSERT INTO `yun_attachment` VALUES ('238', 'content', '0', 'banner.png', 'content/2017/02/58ad02d89463b.png', '10786', 'png', '1', '0', '1', '1', '1487733464', '192.168.40.106', '0', '4145f53cfcba4499e7b02f925e3dcd2a');
INSERT INTO `yun_attachment` VALUES ('239', 'content', '0', '上海市政府.png', 'content/2017/02/58ad387a08ffd.png', '15143', 'png', '1', '0', '1', '1', '1487747194', '192.168.40.25', '0', 'efc66449588ebbc208971276d6dd4e71');
INSERT INTO `yun_attachment` VALUES ('240', 'content', '0', 'SDK_PHP.zip', 'content/2017/02/58ad3969e1c78.zip', '903921', 'zip', '0', '0', '1', '1', '1487747433', '192.168.40.25', '0', 'f54a4d6ffb25c2116d2776b66d608e3e');
INSERT INTO `yun_attachment` VALUES ('241', 'content', '0', 'ThinkPHP5.0离线手册(修正乱码等).rar', 'content/2017/02/58ad4062cdada.rar', '9211065', 'rar', '0', '0', '1', '1', '1487749218', '192.168.40.25', '0', '4fb6408e4329314dc91e50d12bc04e9d');
INSERT INTO `yun_attachment` VALUES ('242', 'content', '0', 'yun88(1).zip', 'content/2017/02/58ad4085741af.zip', '1276774', 'zip', '0', '0', '1', '1', '1487749253', '192.168.40.25', '0', 'd958335763935606f61058602b05398c');
INSERT INTO `yun_attachment` VALUES ('243', 'content', '0', '招商信诺人寿保险有限公司.png', 'content/2017/02/58ad421b7ad3b.png', '20074', 'png', '1', '0', '1', '1', '1487749659', '192.168.40.106', '0', 'ca5ea495a87f6cc9914ad0c40f63cb8b');
INSERT INTO `yun_attachment` VALUES ('244', 'content', '0', 'lg3_03.jpg', 'content/2017/02/58ae796cbe55c.jpg', '9403', 'jpg', '1', '0', '1', '1', '1487829356', '192.168.40.25', '0', 'ad8743b6daa737af818a868165df8ee1');
INSERT INTO `yun_attachment` VALUES ('245', '', '0', 'j1_03.jpg', '/2017/02/58ae7a0744c5f.jpg', '50169', 'jpg', '1', '0', '1', '1', '1487829511', '192.168.40.25', '0', '670db65efc7a8bed3a4b4579875140a6');
INSERT INTO `yun_attachment` VALUES ('246', '', '0', 'j2_03.jpg', '/2017/02/58ae7a075e63b.jpg', '60827', 'jpg', '1', '0', '1', '1', '1487829511', '192.168.40.25', '0', '8af70eeb65f2b3667abe43b07e15b23e');
INSERT INTO `yun_attachment` VALUES ('247', '', '0', 'j4_03.jpg', '/2017/02/58ae7a0778b70.jpg', '55995', 'jpg', '1', '0', '1', '1', '1487829511', '192.168.40.25', '0', '7f3a23cf916aa290fac503911ecf7e3c');
INSERT INTO `yun_attachment` VALUES ('248', '', '0', 'j5_03.jpg', '/2017/02/58ae7a0796760.jpg', '64504', 'jpg', '1', '0', '1', '1', '1487829511', '192.168.40.25', '0', '75faf27956de5e585f2150a7e76c97ef');
INSERT INTO `yun_attachment` VALUES ('249', '', '0', 'j6_03.jpg', '/2017/02/58ae7a07b29bf.jpg', '67109', 'jpg', '1', '0', '1', '1', '1487829511', '192.168.40.25', '0', 'ebae87205535eec356656d6efe8c7d75');
INSERT INTO `yun_attachment` VALUES ('250', '', '0', 'j7_03.jpg', '/2017/02/58ae7a07c728b.jpg', '21993', 'jpg', '1', '0', '1', '1', '1487829511', '192.168.40.25', '0', '54695ec4649db854ab5112652eb8212e');
INSERT INTO `yun_attachment` VALUES ('251', '', '0', 'j8_03.jpg', '/2017/02/58ae7a07dc98d.jpg', '22557', 'jpg', '1', '0', '1', '1', '1487829511', '192.168.40.25', '0', '3e903db7b124d6529333cf8fef7381a3');
INSERT INTO `yun_attachment` VALUES ('252', '', '0', 'j9_03.jpg', '/2017/02/58ae7a07f3c48.jpg', '23566', 'jpg', '1', '0', '1', '1', '1487829511', '192.168.40.25', '0', '205bd0c10914dfcad5a659728143b9e1');
INSERT INTO `yun_attachment` VALUES ('253', '', '0', 'j10_03.jpg', '/2017/02/58ae7a08178a5.jpg', '23340', 'jpg', '1', '0', '1', '1', '1487829512', '192.168.40.25', '0', '7d02301ee18458b9ec23c4ca8f2d34c1');
INSERT INTO `yun_attachment` VALUES ('254', '', '0', 'j11_03.jpg', '/2017/02/58ae7a082cb34.jpg', '28514', 'jpg', '1', '0', '1', '1', '1487829512', '192.168.40.25', '0', '694e38fef9a93e2b10f9e48df757574e');
INSERT INTO `yun_attachment` VALUES ('255', '', '0', 'index_details-Service-Cloud产品价格_03.jpg', '/2017/02/58ae7fdf81327.jpg', '170869', 'jpg', '1', '0', '1', '1', '1487831007', '192.168.40.25', '0', 'e56d5e30575439b1c0b23fb6ba602674');
INSERT INTO `yun_attachment` VALUES ('256', 'content', '0', 's2_03.jpg', 'content/2017/02/58ae7ff90cb6c.jpg', '9685', 'jpg', '1', '0', '1', '1', '1487831033', '192.168.40.25', '0', '15ee377fcfe247349ef3696f39cf7eac');
INSERT INTO `yun_attachment` VALUES ('257', 'content', '0', '介绍视频.mp4', 'content/2017/02/58ae806404b2b.mp4', '9928212', 'mp4', '0', '0', '1', '1', '1487831140', '192.168.40.25', '0', '36a00a3fd5d74baaed3912a23729075d');
INSERT INTO `yun_attachment` VALUES ('258', '', '0', '未标题-1.jpg', '/2017/02/58ae846213bac.jpg', '220794', 'jpg', '1', '0', '1', '1', '1487832162', '192.168.40.25', '0', '7d4b0f82ab484f99df835bf717c5444b');
INSERT INTO `yun_attachment` VALUES ('259', '', '0', 'gn2_03.jpg', '/2017/02/58ae847f8c9ac.jpg', '66517', 'jpg', '1', '0', '1', '1', '1487832191', '192.168.40.25', '0', 'a43e05f8bf335f8a8672f357323a1c54');
INSERT INTO `yun_attachment` VALUES ('260', 'content', '0', 'lg2_03.jpg', 'content/2017/02/58ae849ab425c.jpg', '25791', 'jpg', '1', '0', '1', '1', '1487832218', '192.168.40.25', '0', '579b81a4764f612aef0cc4f4b1e3212c');
INSERT INTO `yun_attachment` VALUES ('261', 'content', '0', 'lg1_03.jpg', 'content/2017/02/58ae90d35e5ba.jpg', '6621', 'jpg', '1', '0', '1', '1', '1487835347', '192.168.40.25', '0', 'becd5a027aa7ebc32c6ccd1566fb9232');
INSERT INTO `yun_attachment` VALUES ('262', '', '0', '未标题-1.jpg', '/2017/02/58ae918239c53.jpg', '180271', 'jpg', '1', '0', '1', '1', '1487835522', '192.168.40.25', '0', 'e72367e82cd8434430e21a9c1393f17d');
INSERT INTO `yun_attachment` VALUES ('263', 'content', '0', '介绍视频.mp4', 'content/2017/02/58ae91a9c8fb3.mp4', '9928212', 'mp4', '0', '0', '1', '1', '1487835561', '192.168.40.25', '0', 'c5a75ddf33d4e21f162b1d07ef30e29d');
INSERT INTO `yun_attachment` VALUES ('264', 'content', '0', 's1_03.jpg', 'content/2017/02/58ae91b691f9d.jpg', '9881', 'jpg', '1', '0', '1', '1', '1487835574', '192.168.40.25', '0', '046c5ebcc258cf5767645e7a8946f2ad');
INSERT INTO `yun_attachment` VALUES ('265', '', '0', 'index_details-产品详情-Sales-cloud_06.jpg', '/2017/02/58ae923ac4a24.jpg', '64559', 'jpg', '1', '0', '1', '1', '1487835706', '192.168.40.25', '0', '755d314ab615a06ab1dc372198e40068');
INSERT INTO `yun_attachment` VALUES ('266', '', '0', 'gn1_03.jpg', '/2017/02/58ae92487ab21.jpg', '152883', 'jpg', '1', '0', '1', '1', '1487835720', '192.168.40.25', '0', 'd9ad6a69c690d0121f002c213dfc94c5');
INSERT INTO `yun_attachment` VALUES ('267', 'content', '0', 'ban1.jpg', 'content/2017/02/58af91b6a5e2d.jpg', '20540', 'jpg', '1', '0', '1', '1', '1487901110', '192.168.40.25', '0', '6ee9a1c5b013ab03b86798551b14ef21');
INSERT INTO `yun_attachment` VALUES ('268', 'content', '0', '《Office_365一看就会》.rar', 'content/2017/02/58afd2cfcf1f6.rar', '13775356', 'rar', '0', '0', '1', '1', '1487917775', '192.168.40.25', '0', 'a54c6a0d1b3d776bf0633fddb6b57f5f');
INSERT INTO `yun_attachment` VALUES ('269', 'content', '0', '招商信诺人寿保险有限公司.png', 'content/2017/02/58afd5134652a.png', '20074', 'png', '1', '0', '1', '1', '1487918355', '192.168.40.25', '0', '1ef34946a7c7c8c058823402921b7d54');
INSERT INTO `yun_attachment` VALUES ('270', 'content', '0', '东风雷诺汽车有限公司.png', 'content/2017/02/58afd555cf536.png', '19495', 'png', '1', '0', '1', '1', '1487918421', '192.168.40.25', '0', '6adac000ee05232c3f43c5bcf59e0dd9');
INSERT INTO `yun_attachment` VALUES ('271', 'content', '0', '招商信诺人寿保险有限公司.png', 'content/2017/02/58afd59df4232.png', '20074', 'png', '1', '0', '1', '1', '1487918493', '192.168.40.25', '0', '035b48fdef2fe1138ef59bdf3380c92f');
INSERT INTO `yun_attachment` VALUES ('272', 'content', '0', '上海市政府.png', 'content/2017/02/58afd5cd5a7c1.png', '15143', 'png', '1', '0', '1', '1', '1487918541', '192.168.40.25', '0', 'a020a76fa002e6f8f3ce41e8ea36c647');
INSERT INTO `yun_attachment` VALUES ('273', 'content', '0', '文思海辉技术有限公司.png', 'content/2017/02/58afd5ee41216.png', '13034', 'png', '1', '0', '1', '1', '1487918574', '192.168.40.25', '0', '555a612ab8e8c69e17f3e57dc265e3c8');
INSERT INTO `yun_attachment` VALUES ('274', 'content', '0', '01.png', 'content/2017/02/58afe67b9a4e4.png', '20307', 'png', '1', '0', '1', '1', '1487922811', '192.168.40.25', '0', '8c19e6755b02911d241ffec2d46e8ffd');
INSERT INTO `yun_attachment` VALUES ('275', 'content', '0', '02.png', 'content/2017/02/58afe6bb03933.png', '14584', 'png', '1', '0', '1', '1', '1487922875', '192.168.40.25', '0', '170a3d58837c7de997dd4ba921510b59');
INSERT INTO `yun_attachment` VALUES ('276', '', '0', '0000000000000000000000000000.jpg', '/2017/02/58b0118172938.jpg', '148005', 'jpg', '1', '0', '1', '1', '1487933825', '192.168.40.106', '0', '79364ad0b2e13788f591cc680e104ab2');
INSERT INTO `yun_attachment` VALUES ('277', 'content', '0', '5784a22775ba5.png', 'content/2017/02/58b039b3be0b8.png', '3938', 'png', '1', '0', '1', '1', '1487944115', '120.194.3.98', '0', '7c32a945a9bd48a4946dd196aa027397');
INSERT INTO `yun_attachment` VALUES ('278', 'content', '0', '5784a243e2904.png', 'content/2017/02/58b039d237b57.png', '6649', 'png', '1', '0', '1', '1', '1487944146', '120.194.3.98', '0', 'a4b137d9788da9efdba2318c03cffb39');
INSERT INTO `yun_attachment` VALUES ('279', 'content', '0', '5784a259c087e.png', 'content/2017/02/58b039e07c2dd.png', '8683', 'png', '1', '0', '1', '1', '1487944160', '120.194.3.98', '0', '45de0dd2a14ab2603e41c25bd9a377cd');
INSERT INTO `yun_attachment` VALUES ('280', 'content', '0', '5784a266162d4.png', 'content/2017/02/58b03b0f5ef16.png', '13101', 'png', '1', '0', '1', '1', '1487944463', '120.194.3.98', '0', '7a16b5591e12b73ed52561049d288952');
INSERT INTO `yun_attachment` VALUES ('281', 'content', '0', '02.png', 'content/2017/02/58b03ce9e57b2.png', '14906', 'png', '1', '0', '1', '1', '1487944937', '120.194.3.98', '0', '38a41635b9bbc655c62731b3aeaea101');
INSERT INTO `yun_attachment` VALUES ('282', 'content', '0', 'Eventbank_03.jpg', 'content/2017/02/58b03d6c7eb03.jpg', '99578', 'jpg', '1', '0', '1', '1', '1487945068', '120.194.3.98', '0', '10286177c6d01d578fdcc72d68d51a3d');
INSERT INTO `yun_attachment` VALUES ('283', '', '0', 'Eventbank_07.jpg', '/2017/02/58b03d84673e2.jpg', '191213', 'jpg', '1', '0', '1', '1', '1487945092', '120.194.3.98', '0', 'af658f175aa1f5ae786ef4fa281391cc');
INSERT INTO `yun_attachment` VALUES ('284', '', '0', 'Eventbank_10.jpg', '/2017/02/58b03d9031dfa.jpg', '247571', 'jpg', '1', '0', '1', '1', '1487945104', '120.194.3.98', '0', '71cdf3906b8b1af5bb2214bb1e1244e5');
INSERT INTO `yun_attachment` VALUES ('285', 'content', '0', 'Eventbank_03.jpg', 'content/2017/02/58b03d98c6c70.jpg', '99578', 'jpg', '1', '0', '1', '1', '1487945112', '120.194.3.98', '0', '69a3f6399a09e31dfa9f5052f81f3d83');
INSERT INTO `yun_attachment` VALUES ('286', 'content', '0', '02.png', 'content/2017/02/58b03f59d5598.png', '14906', 'png', '1', '0', '1', '1', '1487945561', '120.194.3.98', '0', '0210023d888e01169ef1dee1f0ee08d7');
INSERT INTO `yun_attachment` VALUES ('287', 'content', '0', 'Eventbank_03.jpg', 'content/2017/02/58b04008a044b.jpg', '99578', 'jpg', '1', '0', '1', '1', '1487945736', '120.194.3.98', '0', 'b80b5f36b6185f4ab2f3e8e9b4626e4e');
INSERT INTO `yun_attachment` VALUES ('288', '', '0', 'Eventbank_07.jpg', '/2017/02/58b04079c05aa.jpg', '191213', 'jpg', '1', '0', '1', '1', '1487945849', '120.194.3.98', '0', 'caa852f11854af416f89cd7059dd851e');
INSERT INTO `yun_attachment` VALUES ('289', '', '0', 'Eventbank_10.jpg', '/2017/02/58b04081f354e.jpg', '247571', 'jpg', '1', '0', '1', '1', '1487945857', '120.194.3.98', '0', 'e13681471cf5253429a9e9eaca042020');
INSERT INTO `yun_attachment` VALUES ('290', 'content', '0', 'QQ截图20170224222145.jpg', 'content/2017/02/58b0418c19b32.jpg', '7599', 'jpg', '1', '0', '1', '1', '1487946124', '120.194.3.98', '0', '8e16bddbe4cb8cdcbb6f4d8daedb8ef5');
INSERT INTO `yun_attachment` VALUES ('291', '', '0', 'Eventbank_07.jpg', '/2017/02/58b0420782582.jpg', '191213', 'jpg', '1', '0', '1', '1', '1487946247', '120.194.3.98', '0', '3aa8bd77d2e0704f73247aba64bee9e1');
INSERT INTO `yun_attachment` VALUES ('292', '', '0', 'Eventbank_07.jpg', '/2017/02/58b0428f1b8f4.jpg', '191213', 'jpg', '1', '0', '1', '1', '1487946383', '120.194.3.98', '0', '5489ad1c828ef9a23ec37f7c23c2a542');
INSERT INTO `yun_attachment` VALUES ('293', '', '0', 'Eventbank_10.jpg', '/2017/02/58b042a07de18.jpg', '247571', 'jpg', '1', '0', '1', '1', '1487946400', '120.194.3.98', '0', '0af975dd5aaf6476d2cc7a8716b51130');
INSERT INTO `yun_attachment` VALUES ('294', '', '0', 'Eventbank_10.jpg', '/2017/02/58b043a2f034a.jpg', '250139', 'jpg', '1', '0', '1', '1', '1487946658', '120.194.3.98', '0', 'd43dab98f3676be8656cc046f8bba269');
INSERT INTO `yun_attachment` VALUES ('295', '', '0', 'Eventbank_07.jpg', '/2017/02/58b043af1f388.jpg', '239824', 'jpg', '1', '0', '1', '1', '1487946671', '120.194.3.98', '0', 'aea9ef6b74b67a1a31e01377b8c6ef04');
INSERT INTO `yun_attachment` VALUES ('296', '', '0', 'Eventbank_07.jpg', '/2017/02/58b044030a77d.jpg', '239824', 'jpg', '1', '0', '1', '1', '1487946755', '120.194.3.98', '0', '1c899b834f63c297fac0de079f4ecadb');
INSERT INTO `yun_attachment` VALUES ('297', '', '0', 'Eventbank_10.jpg', '/2017/02/58b0440b25e3e.jpg', '250139', 'jpg', '1', '0', '1', '1', '1487946763', '120.194.3.98', '0', 'ee0abbe6224c2c37107635d063a8af83');
INSERT INTO `yun_attachment` VALUES ('298', 'content', '0', 'Eventbank_03.jpg', 'content/2017/02/58b0443dae880.jpg', '99578', 'jpg', '1', '0', '1', '1', '1487946813', '120.194.3.98', '0', '0bf96e22efe52bb06411751e0866fe3b');
INSERT INTO `yun_attachment` VALUES ('299', '', '0', 'Eventbank_07.jpg', '/2017/02/58b0466fed080.jpg', '191213', 'jpg', '1', '0', '1', '1', '1487947375', '120.194.3.98', '0', '2e2eb148815936058dbcf467f91f1103');
INSERT INTO `yun_attachment` VALUES ('300', '', '0', 'Eventbank_10.jpg', '/2017/02/58b0467fdaab1.jpg', '174408', 'jpg', '1', '0', '1', '1', '1487947391', '120.194.3.98', '0', 'd2be5c0865c385a065e8789086d50373');
INSERT INTO `yun_attachment` VALUES ('301', '', '0', 'Eventbank_12.jpg', '/2017/02/58b046803bc91.jpg', '250993', 'jpg', '1', '0', '1', '1', '1487947392', '120.194.3.98', '0', '9d70d73ce838913bd44329c2fb7e51a7');
INSERT INTO `yun_attachment` VALUES ('302', 'content', '0', 'QQ截图20170224222145.jpg', 'content/2017/02/58b046d68006e.jpg', '7599', 'jpg', '1', '0', '1', '1', '1487947478', '120.194.3.98', '0', '523f3c6958a03deaaca972ab90735d92');
INSERT INTO `yun_attachment` VALUES ('303', 'content', '0', 'QQ截图20170224222145 副本.jpg', 'content/2017/02/58b0472a1b590.jpg', '34534', 'jpg', '1', '0', '1', '1', '1487947562', '120.194.3.98', '0', '0d2655f927715c7f027bf8bb61768bec');
INSERT INTO `yun_attachment` VALUES ('304', 'content', '0', 'QQ截图20170224222145 副本.jpg', 'content/2017/02/58b0473670464.jpg', '34534', 'jpg', '1', '0', '1', '1', '1487947574', '120.194.3.98', '0', 'f242a5500a5eff1125112c2930bda590');
INSERT INTO `yun_attachment` VALUES ('305', 'content', '0', 's1_03000.jpg', 'content/2017/02/58b04914ac8c3.jpg', '38967', 'jpg', '1', '0', '1', '1', '1487948052', '120.194.3.98', '0', 'b2910e849a77a53674edc5590f951559');
INSERT INTO `yun_attachment` VALUES ('306', '', '0', 'x1_03.jpg', '/2017/02/58b0492c9e7aa.jpg', '111958', 'jpg', '1', '0', '1', '1', '1487948076', '120.194.3.98', '0', 'f6bf7e789eee7244c5a5dad7900e6355');
INSERT INTO `yun_attachment` VALUES ('307', '', '0', 'x2_03.jpg', '/2017/02/58b0493b840d6.jpg', '118748', 'jpg', '1', '0', '1', '1', '1487948091', '120.194.3.98', '0', '2c79d0e45a1c6516d6d0b0438e594ec5');
INSERT INTO `yun_attachment` VALUES ('308', 'content', '0', '58acf673d2a7a.png', 'content/2017/02/58b049eb1ff41.png', '11505', 'png', '1', '0', '1', '1', '1487948267', '120.194.3.98', '0', '6affec8429209ae66adbdb16ae710834');
INSERT INTO `yun_attachment` VALUES ('309', '', '0', 'x3_03.jpg', '/2017/02/58b04a030595f.jpg', '164798', 'jpg', '1', '0', '1', '1', '1487948291', '120.194.3.98', '0', '29a35d7d9a2ce8a7cdb98b85abe9da59');
INSERT INTO `yun_attachment` VALUES ('310', 'content', '0', 'lg2_03.jpg', 'content/2017/02/58b04a39f1aba.jpg', '25791', 'jpg', '1', '0', '1', '1', '1487948345', '120.194.3.98', '0', 'd74480123c6e89d4b952d03c0b4bfc06');
INSERT INTO `yun_attachment` VALUES ('311', '', '0', 'Eventbank_07.jpg', '/2017/02/58b04b91f23e6.jpg', '191213', 'jpg', '1', '0', '1', '1', '1487948689', '120.194.3.98', '0', 'abf7ade20d13d623534250633cc2c347');
INSERT INTO `yun_attachment` VALUES ('312', '', '0', 'Eventbank_10.jpg', '/2017/02/58b04ba1cb415.jpg', '174408', 'jpg', '1', '0', '1', '1', '1487948705', '120.194.3.98', '0', '23a2047b211322fa835b870c0bc0de61');
INSERT INTO `yun_attachment` VALUES ('313', '', '0', 'Eventbank_12.jpg', '/2017/02/58b04ba206341.jpg', '250993', 'jpg', '1', '0', '1', '1', '1487948706', '120.194.3.98', '0', 'e82979eacab6af478ce7970f95599f11');
INSERT INTO `yun_attachment` VALUES ('314', '', '0', 'index_details-产品详情_03.jpg', '/2017/02/58b04c1a7fd9e.jpg', '57095', 'jpg', '1', '0', '1', '1', '1487948826', '120.194.3.98', '0', '18194a6803e606fe96b4f8f87673c2df');
INSERT INTO `yun_attachment` VALUES ('315', '', '0', 'index_details-产品详情_06.jpg', '/2017/02/58b04c1aa4563.jpg', '110203', 'jpg', '1', '0', '1', '1', '1487948826', '120.194.3.98', '0', 'f375a02917323acd383b634b9160ac07');
INSERT INTO `yun_attachment` VALUES ('316', '', '0', 'index_details-产品详情_08.jpg', '/2017/02/58b04c267007f.jpg', '107967', 'jpg', '1', '0', '1', '1', '1487948838', '120.194.3.98', '0', 'af2027fbc362d7d3c7b8ec0a96d7a3b4');
INSERT INTO `yun_attachment` VALUES ('317', '', '0', 'index_details-产品详情_09.jpg', '/2017/02/58b04c2689dc1.jpg', '86019', 'jpg', '1', '0', '1', '1', '1487948838', '120.194.3.98', '0', 'a37b6290507fe60d9f5a5e4a0b616665');
INSERT INTO `yun_attachment` VALUES ('318', '', '0', 'index_details-产品详情-Sales-cloud_03.jpg', '/2017/02/58b04cdcea1a1.jpg', '104652', 'jpg', '1', '0', '1', '1', '1487949020', '120.194.3.98', '0', '189db0d7cd04267f3cdc0a65ded4d41b');
INSERT INTO `yun_attachment` VALUES ('319', '', '0', 'index_details-产品详情-Sales-cloud_06.jpg', '/2017/02/58b04ce451837.jpg', '77358', 'jpg', '1', '0', '1', '1', '1487949028', '120.194.3.98', '0', '0a57d6400d01f2845036d89492ea48ce');
INSERT INTO `yun_attachment` VALUES ('320', '', '0', 'index_details-产品价格_03.jpg', '/2017/02/58b04d23c2b3e.jpg', '104420', 'jpg', '1', '0', '1', '1', '1487949091', '120.194.3.98', '0', 'b5544d1281b79e9bd205b23c01169a9a');
INSERT INTO `yun_attachment` VALUES ('321', '', '0', 'index_details-产品价格_05.jpg', '/2017/02/58b04d23de23c.jpg', '114338', 'jpg', '1', '0', '1', '1', '1487949091', '120.194.3.98', '0', '04c10bfd777ced744162b8f3eb33c828');
INSERT INTO `yun_attachment` VALUES ('322', 'content', '0', 'Office 365_2.mp4', 'content/2017/02/58b050354b2ae.mp4', '14358820', 'mp4', '0', '0', '1', '1', '1487949877', '120.194.3.98', '0', '769eccb91aee38ca42ce7008d946d6f2');
INSERT INTO `yun_attachment` VALUES ('323', 'content', '0', 'Office 365_2.mp4', 'content/2017/02/58b0508fc2943.mp4', '14358820', 'mp4', '0', '0', '1', '1', '1487949967', '120.194.3.98', '0', '19ea1ffa66cb2105f7b006c84ada0cf2');
INSERT INTO `yun_attachment` VALUES ('324', '', '0', 'c1_03.jpg', '/2017/02/58b0515530cca.jpg', '117980', 'jpg', '1', '0', '1', '1', '1487950165', '120.194.3.98', '0', 'f4b72680ef9a24543b01255951a1c5f9');
INSERT INTO `yun_attachment` VALUES ('325', '', '0', 'index_details-产品详情_03.jpg', '/2017/02/58b05215d9caf.jpg', '127120', 'jpg', '1', '0', '1', '1', '1487950357', '120.194.3.98', '0', 'f0919406db2530c0d6ecfb3de6862ff3');
INSERT INTO `yun_attachment` VALUES ('326', '', '0', 'index_details-产品详情_06.jpg', '/2017/02/58b05234ad113.jpg', '118202', 'jpg', '1', '0', '1', '1', '1487950388', '120.194.3.98', '0', 'dc208271e6260ea386e20f7a25c46c7b');
INSERT INTO `yun_attachment` VALUES ('327', '', '0', 'index_details-产品详情_07.jpg', '/2017/02/58b05234bfe32.jpg', '59165', 'jpg', '1', '0', '1', '1', '1487950388', '120.194.3.98', '0', 'b714d784d06a8e7fc5698b143920c4b1');
INSERT INTO `yun_attachment` VALUES ('328', '', '0', 'c1_03.jpg', '/2017/02/58b052c85144e.jpg', '116575', 'jpg', '1', '0', '1', '1', '1487950536', '120.194.3.98', '0', '14134eedc73d6e87f3477ed6783e2246');
INSERT INTO `yun_attachment` VALUES ('329', 'content', '0', '58b049eb1ff42.png', 'content/2017/03/58b63afdaf5c6.png', '11730', 'png', '1', '0', '1', '1', '1488337661', '120.194.3.98', '0', 'f49e4c0f827b6e7846a3b08d7542a0b8');
INSERT INTO `yun_attachment` VALUES ('330', 'content', '0', '58b049eb1ff41.png', 'content/2017/03/58b63c473568a.png', '11937', 'png', '1', '0', '1', '1', '1488337991', '120.194.3.98', '0', '8e0be2621e5a1f83fd12013eaef00bfe');
INSERT INTO `yun_attachment` VALUES ('331', 'content', '0', '58ae90d35e5ba.jpg', 'content/2017/03/58b63c6c73afc.jpg', '26455', 'jpg', '1', '0', '1', '1', '1488338028', '120.194.3.98', '0', '712e19c7db9d9780caa3bcd4ef4b2331');
INSERT INTO `yun_attachment` VALUES ('332', 'content', '0', '01.png', 'content/2017/03/58b6680966e8d.png', '13691', 'png', '1', '0', '1', '1', '1488349193', '120.194.3.98', '0', '6ab27e7b876ba26f0e25be6c558867a4');
INSERT INTO `yun_attachment` VALUES ('333', 'content', '0', '02.png', 'content/2017/03/58b66886ecad9.png', '17325', 'png', '1', '0', '1', '1', '1488349318', '120.194.3.98', '0', '0324799fa55d47646a154517262a8049');
INSERT INTO `yun_attachment` VALUES ('334', 'content', '0', 'Salesforce 解决方案演示 – 高新科技行业_超清.mp4', 'content/2017/03/58b67c3f0077c.mp4', '63215864', 'mp4', '0', '0', '1', '1', '1488354366', '120.194.3.98', '0', '92e71e26a3538508bf9b619d4b273dc2');
INSERT INTO `yun_attachment` VALUES ('335', 'content', '0', 'Salesforce 解决方案演示 – 金融服务行业_超清.mp4', 'content/2017/03/58b67d942db06.mp4', '72667562', 'mp4', '0', '0', '1', '1', '1488354708', '120.194.3.98', '0', 'c91ed0d6f74637df494eafa5f11f6813');
INSERT INTO `yun_attachment` VALUES ('336', 'content', '0', 'Salesforce 解决方案演示 – 高新科技行业_超清.mp4', 'content/2017/03/58b67fb2809c5.mp4', '63215864', 'mp4', '0', '0', '1', '1', '1488355250', '120.194.3.98', '0', 'aa80dbf2d047ecab4445cf6d7cff9144');
INSERT INTO `yun_attachment` VALUES ('337', 'content', '0', 'Salesforce 解决方案演示 – 高新科技行业_超清.mp4', 'content/2017/03/58b680269bbb7.mp4', '63215864', 'mp4', '0', '0', '1', '1', '1488355366', '120.194.3.98', '0', '4784a63da982d76adcee980f7974f88d');
INSERT INTO `yun_attachment` VALUES ('338', 'content', '0', 'Salesforce 解决方案演示 – 高新科技行业_超清.mp4', 'content/2017/03/58b6809857dca.mp4', '63215864', 'mp4', '0', '0', '1', '1', '1488355480', '120.194.3.98', '0', '48076879fed02f79124d0c71cf9eb6ae');
INSERT INTO `yun_attachment` VALUES ('339', 'content', '0', 'Salesforce 解决方案演示 – 高新科技行业_超清.mp4', 'content/2017/03/58b680f1bba94.mp4', '63215864', 'mp4', '0', '0', '1', '1', '1488355569', '120.194.3.98', '0', 'b41e822ae7d080c4e31ec4f2f6ca023d');
INSERT INTO `yun_attachment` VALUES ('340', 'content', '0', 'Salesforce 解决方案演示 – 高新科技行业_超清.mp4', 'content/2017/03/58b681f722e51.mp4', '63215864', 'mp4', '0', '0', '1', '1', '1488355830', '120.194.3.98', '0', '82523a9d892d046fa5d36bf51ee05a3b');
INSERT INTO `yun_attachment` VALUES ('341', 'content', '0', 'Salesforce 解决方案演示 – 高新科技行业_超清.mp4', 'content/2017/03/58b6829828265.mp4', '63215864', 'mp4', '0', '0', '1', '1', '1488355992', '120.194.3.98', '0', '672c3eb2dac59f3616d834927a09cc66');
INSERT INTO `yun_attachment` VALUES ('342', 'content', '0', 'Salesforce 解决方案演示 – 高新科技行业_超清.mp4', 'content/2017/03/58b6844463eda.mp4', '63215864', 'mp4', '0', '0', '1', '1', '1488356420', '120.194.3.98', '0', 'c75dac1ca93407e6e20b8f0fc1a285ba');
INSERT INTO `yun_attachment` VALUES ('343', 'content', '0', 'Salesforce 解决方案演示 – 金融服务行业_超清.mp4', 'content/2017/03/58b691d873820.mp4', '72667562', 'mp4', '0', '0', '1', '1', '1488359896', '120.194.3.98', '0', '750933e4f636f4b4fc85418d1666a587');
INSERT INTO `yun_attachment` VALUES ('344', 'content', '0', 'Salesforce 解决方案演示 – 零售行业_标清.mp4', 'content/2017/03/58b776b427471.mp4', '22804395', 'mp4', '0', '0', '1', '1', '1488418484', '120.194.3.98', '0', 'e686ba2b4e92ec7064440d422b5f0dcf');
INSERT INTO `yun_attachment` VALUES ('345', 'content', '0', 'Salesforce 平台概述与演示_超清.mp4', 'content/2017/03/58b777062b67d.mp4', '24869814', 'mp4', '0', '0', '1', '1', '1488418566', '120.194.3.98', '0', '9f3847338de0be6c977064bb00163dba');
INSERT INTO `yun_attachment` VALUES ('346', 'content', '0', 'Salesforce 平台概述与演示_超清.mp4', 'content/2017/03/58b77719c3b4e.mp4', '24869814', 'mp4', '0', '0', '1', '1', '1488418585', '120.194.3.98', '0', 'd6693cfebbc5e4da39b3599627dfe941');

-- ----------------------------
-- Table structure for `yun_attachment_index`
-- ----------------------------
DROP TABLE IF EXISTS `yun_attachment_index`;
CREATE TABLE `yun_attachment_index` (
  `keyid` char(30) NOT NULL DEFAULT '' COMMENT '关联id',
  `aid` char(10) NOT NULL DEFAULT '' COMMENT '附件ID',
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表';

-- ----------------------------
-- Records of yun_attachment_index
-- ----------------------------
INSERT INTO `yun_attachment_index` VALUES ('c-2-1', '5');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '6');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '7');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '8');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '9');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '10');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '11');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '12');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '13');
INSERT INTO `yun_attachment_index` VALUES ('catid-7', '14');
INSERT INTO `yun_attachment_index` VALUES ('c-9-3', '15');
INSERT INTO `yun_attachment_index` VALUES ('c-9-1', '16');
INSERT INTO `yun_attachment_index` VALUES ('c-9-1', '17');
INSERT INTO `yun_attachment_index` VALUES ('c-9-2', '18');
INSERT INTO `yun_attachment_index` VALUES ('c-9-3', '80');
INSERT INTO `yun_attachment_index` VALUES ('c-9-3', '81');
INSERT INTO `yun_attachment_index` VALUES ('c-9-3', '186');
INSERT INTO `yun_attachment_index` VALUES ('c-9-4', '193');

-- ----------------------------
-- Table structure for `yun_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `yun_attribute`;
CREATE TABLE `yun_attribute` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vension` varchar(20) NOT NULL DEFAULT '' COMMENT '版本名称',
  `price` decimal(10,2) NOT NULL COMMENT '价格单位月',
  `iphone` varchar(90) NOT NULL DEFAULT '' COMMENT '联系方式以逗号分隔',
  `attr_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='云市场属性表';

-- ----------------------------
-- Records of yun_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `yun_behavior`;
CREATE TABLE `yun_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-控制器，2-视图',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态（0：禁用，1：正常）',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '所属模块',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of yun_behavior
-- ----------------------------
INSERT INTO `yun_behavior` VALUES ('1', 'app_init', '应用初始化标签位', '应用初始化标签位', '1', '1', '1', '', '1381021393');
INSERT INTO `yun_behavior` VALUES ('2', 'path_info', 'PATH_INFO检测标签位', 'PATH_INFO检测标签位', '1', '1', '1', '', '1381021411');
INSERT INTO `yun_behavior` VALUES ('3', 'app_begin', '应用开始标签位', '应用开始标签位', '1', '1', '1', '', '1381021424');
INSERT INTO `yun_behavior` VALUES ('4', 'action_name', '操作方法名标签位', '操作方法名标签位', '1', '1', '1', '', '1381021437');
INSERT INTO `yun_behavior` VALUES ('5', 'action_begin', '控制器开始标签位', '控制器开始标签位', '1', '1', '1', '', '1381021450');
INSERT INTO `yun_behavior` VALUES ('6', 'view_begin', '视图输出开始标签位', '视图输出开始标签位', '1', '1', '1', '', '1381021463');
INSERT INTO `yun_behavior` VALUES ('7', 'view_parse', '视图解析标签位', '视图解析标签位', '1', '1', '1', '', '1381021476');
INSERT INTO `yun_behavior` VALUES ('8', 'template_filter', '模板内容解析标签位', '模板内容解析标签位', '1', '1', '1', '', '1381021488');
INSERT INTO `yun_behavior` VALUES ('9', 'view_filter', '视图输出过滤标签位', '视图输出过滤标签位', '1', '1', '1', '', '1381021621');
INSERT INTO `yun_behavior` VALUES ('10', 'view_end', '视图输出结束标签位', '视图输出结束标签位', '1', '1', '1', '', '1381021631');
INSERT INTO `yun_behavior` VALUES ('11', 'action_end', '控制器结束标签位', '控制器结束标签位', '1', '1', '1', '', '1381021642');
INSERT INTO `yun_behavior` VALUES ('12', 'app_end', '应用结束标签位', '应用结束标签位', '1', '1', '1', '', '1381021654');
INSERT INTO `yun_behavior` VALUES ('13', 'appframe_rbac_init', '后台权限控制', '后台权限控制', '1', '1', '1', '', '1381023560');
INSERT INTO `yun_behavior` VALUES ('14', 'view_admin_top_menu', '后台框架首页右上角菜单', '后台框架首页右上角菜单', '2', '1', '0', '', '1467008083');
INSERT INTO `yun_behavior` VALUES ('15', 'view_member_menu', '管理中心左侧导航', '管理中心左侧导航', '2', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('16', 'view_member_right', '管理中心右侧', '管理中心右侧', '2', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('17', 'view_member_show_medal', '会员个人空间首页勋章', '会员个人空间首页勋章显示', '2', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('18', 'view_member_home_indexright', '会员个人空间首页右侧', '会员个人空间首页右侧信息', '2', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('19', 'view_member_home_right', '会员个人空间右侧', '会员个人空间右侧信息', '2', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('20', 'view_member_home_nav', '会员个人空间导航', '会员个人空间导航', '2', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('21', 'action_member_loginend', '会员登陆成功后行为调用', '会员登陆成功后行为调用', '1', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('22', 'action_member_registerend', '会员注册成功后行为调用', '会员注册成功后行为调用', '1', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('23', 'action_member_logout', '会员退出登陆后行为调用', '会员退出登陆后行为调用', '1', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('24', 'content_check_end', '信息审核后的行为调用', '信息审核后的行为调用', '1', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('25', 'content_edit_end', '内容修改完成时行为调用', '内容修改完成时行为调用', '1', '1', '0', 'Member', '1467008083');
INSERT INTO `yun_behavior` VALUES ('26', 'content_delete_end', '内容删除完成时行为调用', '内容删除完成时行为调用', '1', '1', '0', 'Member', '1467008083');

-- ----------------------------
-- Table structure for `yun_behavior_log`
-- ----------------------------
DROP TABLE IF EXISTS `yun_behavior_log`;
CREATE TABLE `yun_behavior_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruleid` int(10) NOT NULL DEFAULT '0' COMMENT '行为ID',
  `guid` char(50) NOT NULL DEFAULT '' COMMENT '标识',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志';

-- ----------------------------
-- Records of yun_behavior_log
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_behavior_rule`
-- ----------------------------
DROP TABLE IF EXISTS `yun_behavior_rule`;
CREATE TABLE `yun_behavior_rule` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `behaviorid` int(11) NOT NULL DEFAULT '0' COMMENT '行为id',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '规则所属模块',
  `addons` char(20) NOT NULL DEFAULT '' COMMENT '规则所属插件',
  `rule` text COMMENT '行为规则',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `datetime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`ruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='行为规则表';

-- ----------------------------
-- Records of yun_behavior_rule
-- ----------------------------
INSERT INTO `yun_behavior_rule` VALUES ('1', '1', '1', '', '', 'phpfile:BuildLiteBehavior', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('2', '3', '1', '', '', 'phpfile:ReadHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('3', '12', '1', '', '', 'phpfile:ShowPageTraceBehavior', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('4', '7', '1', '', '', 'phpfile:ParseTemplateBehavior', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('5', '8', '1', '', '', 'phpfile:ContentReplaceBehavior', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('6', '9', '1', '', '', 'phpfile:WriteHtmlCacheBehavior', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('7', '1', '1', '', '', 'phpfile:AppInitBehavior|module:Common', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('8', '3', '1', '', '', 'phpfile:AppBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('9', '6', '1', '', '', 'phpfile:ViewBeginBehavior|module:Common', '0', '1381021954');
INSERT INTO `yun_behavior_rule` VALUES ('10', '14', '0', 'Member', '', 'phpfile:ViewAdminTopMenuBehavior|module:Member', '0', '1467008083');
INSERT INTO `yun_behavior_rule` VALUES ('11', '17', '0', 'Member', '', 'phpfile:ViewMemberShowMedalBehavior|module:Member', '0', '1467008083');
INSERT INTO `yun_behavior_rule` VALUES ('12', '18', '0', 'Member', '', 'phpfile:ViewMemberHomeIndexrightBehavior|module:Member', '0', '1467008083');
INSERT INTO `yun_behavior_rule` VALUES ('13', '19', '0', 'Member', '', 'phpfile:ViewMemberHomeRightBehavior|module:Member', '0', '1467008083');
INSERT INTO `yun_behavior_rule` VALUES ('14', '24', '0', 'Member', '', 'phpfile:ContentCheckEndBehavior|module:Member', '0', '1467008083');
INSERT INTO `yun_behavior_rule` VALUES ('15', '25', '0', 'Member', '', 'phpfile:ContentEditEndBehavior|module:Member', '0', '1467008083');
INSERT INTO `yun_behavior_rule` VALUES ('16', '26', '0', 'Member', '', 'phpfile:ContentDeleteEndBehavior|module:Member', '0', '1467008083');
INSERT INTO `yun_behavior_rule` VALUES ('17', '26', '0', 'Comments', '', 'phpfile:CommentsApi|module:Comments', '0', '1467008156');

-- ----------------------------
-- Table structure for `yun_cache`
-- ----------------------------
DROP TABLE IF EXISTS `yun_cache`;
CREATE TABLE `yun_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `key` char(100) NOT NULL DEFAULT '' COMMENT '缓存key值',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `param` char(255) NOT NULL DEFAULT '' COMMENT '参数',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='缓存更新列队';

-- ----------------------------
-- Records of yun_cache
-- ----------------------------
INSERT INTO `yun_cache` VALUES ('1', 'Config', '网站配置', '', 'Config', 'config_cache', '', '1');
INSERT INTO `yun_cache` VALUES ('2', 'Module', '可用模块列表', '', 'Module', 'module_cache', '', '1');
INSERT INTO `yun_cache` VALUES ('3', 'Behavior', '行为列表', '', 'Behavior', 'behavior_cache', '', '1');
INSERT INTO `yun_cache` VALUES ('4', 'Menu', '后台菜单', 'Admin', 'Menu', 'menu_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('5', 'Category', '栏目索引', 'Content', 'Category', 'category_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('6', 'Model', '模型列表', 'Content', 'Model', 'model_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('7', 'Urlrules', 'URL规则', 'Content', 'Urlrule', 'urlrule_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('8', 'ModelField', '模型字段', 'Content', 'ModelField', 'model_field_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('9', 'Position', '推荐位', 'Content', 'Position', 'position_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('10', 'Member_Config', '会员配置', 'Member', 'Member', 'member_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('11', 'Member_group', '会员组', 'Member', 'MemberGroup', 'membergroup_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('12', 'Model_Member', '会员模型', 'Member', 'Member', 'member_model_cahce', '', '0');
INSERT INTO `yun_cache` VALUES ('13', 'Comments_setting', '评论配置', 'Comments', 'Comments', 'comments_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('14', 'Emotion', '评论表情', 'Comments', 'Emotion', 'emotion_cache', '', '0');
INSERT INTO `yun_cache` VALUES ('15', 'Addons', '插件列表', 'Addons', 'Addons', 'addons_cache', '', '0');

-- ----------------------------
-- Table structure for `yun_cate`
-- ----------------------------
DROP TABLE IF EXISTS `yun_cate`;
CREATE TABLE `yun_cate` (
  `cate_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `parent_id` mediumint(9) NOT NULL,
  `create_time` int(11) NOT NULL,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yun_cate
-- ----------------------------
INSERT INTO `yun_cate` VALUES ('1', '市场云', '0', '1486528584', '');
INSERT INTO `yun_cate` VALUES ('2', '市场调研', '1', '1486528612', '');
INSERT INTO `yun_cate` VALUES ('3', '人力云', '0', '1486528631', '');
INSERT INTO `yun_cate` VALUES ('5', '招聘', '3', '1486536454', '');
INSERT INTO `yun_cate` VALUES ('6', '市场需求', '1', '1486541720', '');
INSERT INTO `yun_cate` VALUES ('7', '市场推广', '1', '1486541744', '');
INSERT INTO `yun_cate` VALUES ('8', '问卷调查', '2', '1486618849', '好不好');
INSERT INTO `yun_cate` VALUES ('9', '过程分析', '2', '1486618872', '');
INSERT INTO `yun_cate` VALUES ('10', '结果统计', '2', '1486618887', '');
INSERT INTO `yun_cate` VALUES ('11', '问卷调查', '6', '1486618904', '');
INSERT INTO `yun_cate` VALUES ('12', '过程分析', '6', '1486618917', '');
INSERT INTO `yun_cate` VALUES ('13', '结果统计', '6', '1486618930', '');
INSERT INTO `yun_cate` VALUES ('14', '问卷调查', '7', '1486618948', '');
INSERT INTO `yun_cate` VALUES ('18', '问卷调查', '5', '1486619040', '');
INSERT INTO `yun_cate` VALUES ('16', '过程分析', '7', '1486618984', '');
INSERT INTO `yun_cate` VALUES ('17', '结果统计', '7', '1486618998', '');
INSERT INTO `yun_cate` VALUES ('19', '过程分析', '5', '1486619054', '');
INSERT INTO `yun_cate` VALUES ('20', '结果统计', '5', '1486619065', '');
INSERT INTO `yun_cate` VALUES ('21', '资源市场', '3', '1486634010', '');
INSERT INTO `yun_cate` VALUES ('22', '文卷结果', '21', '1486634034', '恩,挺好的');
INSERT INTO `yun_cate` VALUES ('23', '销售云', '0', '1487835965', '');
INSERT INTO `yun_cate` VALUES ('24', '销售测试', '23', '1487836012', '');

-- ----------------------------
-- Table structure for `yun_category`
-- ----------------------------
DROP TABLE IF EXISTS `yun_category`;
CREATE TABLE `yun_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `domain` varchar(200) NOT NULL DEFAULT '' COMMENT '栏目绑定域名',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `arrparentid` varchar(255) NOT NULL DEFAULT '' COMMENT '所有父ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext COMMENT '所有子栏目ID',
  `catname` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `description` mediumtext COMMENT '栏目描述',
  `parentdir` varchar(100) NOT NULL DEFAULT '' COMMENT '父目录',
  `catdir` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目目录',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目点击数',
  `setting` mediumtext COMMENT '相关配置信息',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否生成静态',
  `letter` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目拼音',
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of yun_category
-- ----------------------------
INSERT INTO `yun_category` VALUES ('6', 'content', '1', '0', '', '0', '0', '0', '6', '关于我们', '', '', '', 'aboutus', '/index.php?a=lists&catid=6', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:17:\"page_about-us.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'guanyuwomen');
INSERT INTO `yun_category` VALUES ('7', 'content', '1', '0', '', '0', '0', '0', '7', '合作伙伴', '', '', '', 'coop', '/index.php?a=lists&catid=7', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:13:\"page_coop.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'hezuohuoban');
INSERT INTO `yun_category` VALUES ('2', 'content', '0', '2', '', '0', '0', '0', '2', '新闻中心', '', '', '', 'newscenter', '/index.php?a=lists&catid=2', '0', 'a:19:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:12:\"member_check\";s:1:\"1\";s:12:\"member_admin\";s:1:\"1\";s:16:\"member_editcheck\";s:1:\"1\";s:19:\"member_generatelish\";s:1:\"0\";s:15:\"member_addpoint\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:19:\"list_newsCenter.php\";s:13:\"show_template\";s:20:\"show_newsDetails.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'xinwenzhongxin');
INSERT INTO `yun_category` VALUES ('5', 'content', '1', '0', '', '0', '0', '0', '5', '加入我们', '', '', '', 'joinus', '/index.php?a=lists&catid=5', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:16:\"page_join-us.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'jiaruwomen');
INSERT INTO `yun_category` VALUES ('8', 'content', '1', '0', '', '0', '0', '0', '8', '为什么选择我们', '', '', '', 'why', '/index.php?a=lists&catid=8', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:12:\"page_why.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'weishimexuanzewomen');
INSERT INTO `yun_category` VALUES ('9', 'content', '0', '3', '', '0', '0', '0', '9', '优选客户', '', '', '', 'clients', '/index.php?a=lists&catid=9', '0', 'a:19:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:12:\"member_check\";s:1:\"1\";s:12:\"member_admin\";s:1:\"1\";s:16:\"member_editcheck\";s:1:\"1\";s:19:\"member_generatelish\";s:1:\"0\";s:15:\"member_addpoint\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:16:\"list_clients.php\";s:13:\"show_template\";s:24:\"show_clients-details.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}', '0', '1', '0', 'youxuankehu');
INSERT INTO `yun_category` VALUES ('10', 'content', '1', '0', '', '0', '0', '0', '10', '云服务', '', '', '', 'cloud-services', '/index.php?a=lists&catid=10', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:23:\"page_cloud-services.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'yunfuwu');
INSERT INTO `yun_category` VALUES ('11', 'content', '1', '0', '', '0', '0', '0', '11', '联系我们', '', '', '', 'contact', '/index.php?a=lists&catid=11', '0', 'a:8:{s:6:\"seturl\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"page_template\";s:19:\"page_contact-us.php\";s:6:\"ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}', '0', '1', '0', 'lianxiwomen');

-- ----------------------------
-- Table structure for `yun_category_field`
-- ----------------------------
DROP TABLE IF EXISTS `yun_category_field`;
CREATE TABLE `yun_category_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目扩展字段列表';

-- ----------------------------
-- Records of yun_category_field
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_category_priv`
-- ----------------------------
DROP TABLE IF EXISTS `yun_category_priv`;
CREATE TABLE `yun_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色或者组ID',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员 1、管理员',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '动作',
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目权限表';

-- ----------------------------
-- Records of yun_category_priv
-- ----------------------------
INSERT INTO `yun_category_priv` VALUES ('2', '2', '1', 'add');
INSERT INTO `yun_category_priv` VALUES ('2', '2', '1', 'delete');
INSERT INTO `yun_category_priv` VALUES ('2', '2', '1', 'edit');
INSERT INTO `yun_category_priv` VALUES ('2', '2', '1', 'init');
INSERT INTO `yun_category_priv` VALUES ('2', '2', '1', 'listorder');
INSERT INTO `yun_category_priv` VALUES ('2', '2', '1', 'push');
INSERT INTO `yun_category_priv` VALUES ('2', '2', '1', 'remove');
INSERT INTO `yun_category_priv` VALUES ('5', '2', '1', 'init');
INSERT INTO `yun_category_priv` VALUES ('6', '2', '1', 'init');
INSERT INTO `yun_category_priv` VALUES ('7', '2', '1', 'init');
INSERT INTO `yun_category_priv` VALUES ('8', '2', '1', 'init');
INSERT INTO `yun_category_priv` VALUES ('9', '2', '1', 'add');
INSERT INTO `yun_category_priv` VALUES ('9', '2', '1', 'delete');
INSERT INTO `yun_category_priv` VALUES ('9', '2', '1', 'edit');
INSERT INTO `yun_category_priv` VALUES ('9', '2', '1', 'init');
INSERT INTO `yun_category_priv` VALUES ('9', '2', '1', 'listorder');
INSERT INTO `yun_category_priv` VALUES ('9', '2', '1', 'push');
INSERT INTO `yun_category_priv` VALUES ('9', '2', '1', 'remove');
INSERT INTO `yun_category_priv` VALUES ('10', '2', '1', 'init');
INSERT INTO `yun_category_priv` VALUES ('11', '2', '1', 'init');

-- ----------------------------
-- Table structure for `yun_client`
-- ----------------------------
DROP TABLE IF EXISTS `yun_client`;
CREATE TABLE `yun_client` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yun_client
-- ----------------------------
INSERT INTO `yun_client` VALUES ('1', '9', '0', '阿里云客户案例', '', '/d/file/content/2016/07/577cd61790206.png', '', '', '浙江天下商邦科技股份有限公司投资1.3个亿，搭建“品牌直供平台”的电子商务技术服务型企业。创造性的B2B2C（BrandToBusinessToCustomer品牌-平台-终端）“天下商邦品牌直供平台”，以全新商业模式实现厂商与店铺零中间商对接，高效整合传统渠道业态的产销链，在直供平台上终端商与品牌商直接的双向选择。', '0', '/index.php?a=shows&catid=9&id=1', '0', '99', '1', '0', 'admin', '1467799117', '1467799117', '0', '0', '0', '0', '0', '0');
INSERT INTO `yun_client` VALUES ('2', '9', '0', 'IMO云办公室客户案例', '', '/d/file/content/2016/07/577cd6ceccffb.png', '', '', '车易拍是中国领先的二手车电子商务平台，也是新车置换解决方案、二手车网络交易解决方案以及二手车标准化检测方案的供应商领导者及二手车“行”认证授权单位。\r\n车易拍总部设立于北京，目前以华北、华东、华南、西南四大运营中心为主，六大核心城市，八个卫星城市的线下服务网络的覆盖。\r\n', '0', '/index.php?a=shows&catid=9&id=2', '0', '99', '1', '0', 'admin', '1467799255', '1467799255', '0', '0', '0', '0', '0', '0');
INSERT INTO `yun_client` VALUES ('3', '9', '0', 'Oracle CX云客户案例', '', '', '', '', '北京元鼎时代科技股份有限公司（前身为北京元鼎时代科技有限公司）成立于2003年，是一家以IT综合服务、专业化解决方案、电子商务和互联网为核心业务的综合型高科技企业。总部位于北京，在河南、上海、深圳设立分公司和技术中心，在广州、武汉、大连设有办事处。', '0', '/index.php?a=shows&catid=9&id=3', '0', '99', '1', '0', 'yun88', '1470898401', '1470898401', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `yun_client_data`
-- ----------------------------
DROP TABLE IF EXISTS `yun_client_data`;
CREATE TABLE `yun_client_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  `paginationtype` tinyint(1) NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_intro` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yun_client_data
-- ----------------------------
INSERT INTO `yun_client_data` VALUES ('1', '<p style=\"white-space: normal; line-height: 2em; background: white;\"><span style=\"font-size: 18px;\"><strong><span style=\"font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; color: rgb(0, 153, 255);\">面临挑战和问题</span></strong></span></p><p style=\"margin-bottom: 0px; white-space: normal; line-height: 2em; background: white;\"><span style=\"font-size: 16px;\"><strong><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102);\">灵活性不够，成本过高</span></strong></span></p><p style=\"margin-bottom: 0px; white-space: normal; line-height: 2em; background: white;\"><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">为了应对日益增长的访问量，不得不购置大量机器，在IDC机柜租用和带宽费用上的开销也随之大幅增长，但峰值过后，资源严重过剩，造成了极大的浪费。</span></p><p style=\"margin-bottom: 0px; white-space: normal; line-height: 2em; background: white;\"><span style=\"font-size: 16px;\"><strong><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102);\">管的太多，不够聚焦</span></strong></span></p><p style=\"margin-bottom: 0px; white-space: normal; line-height: 2em; background: white;\"><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">选机房、买机器、租机柜、装系统、数据备份、异地容灾等事情全部一条龙自己搞定，加之对IDC服务质量的更高要求，历经过多次机房搬迁，这些都消耗运维人员许多精力，导致在运维自动化、系统架构的持续优化等方面不够聚焦，影响了对日益复杂的业务系统的有效支撑。</span></p><p style=\"margin-bottom: 0px; white-space: normal; line-height: 2em; background: white;\"><span style=\"font-size: 16px;\"><strong><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102);\">突发性故障应对能力欠佳</span></strong></span></p><p style=\"margin-bottom: 0px; white-space: normal; line-height: 2em; background: white;\"><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">随着服务器数量的增加，硬件故障数也开始攀升，虽然有应对预案，但面对一些突发性硬件故障，恢复的时间和成本还是比较高，直接影响了网站的稳定性和可用性。</span></p><p style=\"white-space: normal; margin-bottom: 0px; line-height: 2em; background: white;\"><strong><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(0, 153, 255); font-weight: normal; font-size: 18px;\"><br/></span></strong></p><p style=\"white-space: normal; margin-bottom: 0px; line-height: 2em; background: white;\"><strong><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(0, 153, 255); font-weight: normal; font-size: 18px;\">解决方案</span></strong></p><p style=\"white-space: normal; line-height: 2em;\"><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102); font-size: 14px;\">元鼎科技通过分析其存在的问题帮其制定了详细的阿里云服务ＥＣＳ方案。通过云监控完备的数据图表和各项服务，可以很及时的发现问题，快速的动态增加云主机和RDS只读实例，比之前临时采购机器的过程简单高效N倍；为应对高峰期图片处理业务对磁盘的频繁读写，还临时购置了性能相比云磁盘高出10倍的SSD盘作为写缓存，高峰过后数据再迁回云磁盘即可；带宽使用上，也灵活选用按量或按带宽的计费方式，比之前IDC按固定带宽包年的方式合理许多；同时还启用了私网SLB的服务，非常便于对各业务应用的动态扩展。</span></p><p style=\"white-space: normal; margin-bottom: 0px; line-height: 2em; background: white;\"><span style=\"font-size: 18px;\"><strong><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(0, 153, 255); font-weight: normal;\"><br/></span></strong></span></p><p style=\"white-space: normal; margin-bottom: 0px; line-height: 2em; background: white;\"><strong><span style=\"font-size: 18px;\"><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(0, 153, 255); font-weight: normal;\">使用效果</span></span></strong></p><p style=\"white-space: normal; line-height: 2em;\"><span style=\"font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102); font-size: 14px; background: white;\">通过元鼎科技使用上阿里云服务器之后，只用之前一半数量的服务器，就可以轻松应对日常的流量。相较以前在IDC的日子，阿里云服务器不仅能给用户带来更稳定的体验，也让运维人员变的更从容，同时也给公司节约了大量成本，可谓是一箭三雕。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 12px; font-family: 微软雅黑, sans-serif; color: rgb(102, 102, 102); background: white;\"><br/></span></p><p><br/></p>', '2', '10000', '', '0', '1', '', '<p style=\"line-height:24px;background:white\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, sans-serif; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">浙江天下商邦科技股份有限公司投资1.3个亿，搭建“品牌直供平台”的电子商务技术服务型企业。创造性的B2B2C（BrandToBusinessToCustomer品牌-平台-终端）“天下商邦品牌直供平台”，以全新商业模式实现厂商与店铺零中间商对接，高效整合传统渠道业态的产销链，在直供平台上终端商与品牌商直接的双向选择。</span></p>');
INSERT INTO `yun_client_data` VALUES ('2', '<p style=\";margin-bottom:0;line-height:24px;background:white\"><strong><span style=\"color:#0099FF\">面临挑战和问题</span></strong><br/> <span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">车易拍在国内整合上千家4S店，建立了覆盖近 30 个省，400 多个城市的销售网络，并在北京、上海、杭州、南京、天津、苏州、成都、广州及保定等十余个城市建立了线下服务中心。可是随着企业的不断发展壮大，车易拍发现其400多个城市的销售网络遇到了沟通难的问题</span></p><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">•公司内部包括公司总部与地区服务中心间联络受阻。有事情沟通只能靠电话进行联络，准确性与时效性严重受损。</span></p><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">•公司管理规章与通知，只能靠口口相传，时常出现传达不到或内容不准确的现象。</span></p><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">•企业员工为了方便沟通使用个人聊天软件，却造成私聊严重，严重影响工作效率</span></p><h2 style=\";margin-bottom:0;line-height:32px;background:white\"><span style=\"font-size:16px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#0099FF;font-weight:normal\">解决方案</span></h2><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">为了解决公司的沟通难题，元鼎科技为其推荐了IMO云办公室，并安排多名工程师为其部署安装。</span></p><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">IMO</span><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">云办公室不仅方便的实现了互联互通，使企业与各地区服务点在一个统一的沟通平台上，还满足了低成本的要求。</span></p><h2 style=\";margin-bottom:0;line-height:32px;background:white\"><span style=\"font-size:16px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#0099FF;font-weight:normal\">使用效果</span></h2><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">1</span><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">、5分钟构建企业沟通平台。</span></p><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IT</span><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">人员从imo官网上注册企业帐号，下载客户端，为同事分配帐号，5分钟即可搭建完成专属安踏的即时沟通平台。而公司员工与门店人员，只需要在电脑上下载客户端，使用IT分配的账号即可登录使用。整个程序方便快捷，无需部署、无需维护。</span></p><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">2</span><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">、组织结构树立体展现公司与地区服务点，方便企业管理、利于员工融入。</span></p><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; imo</span><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">可视化的组织结构树与公司的行政架构保持一致，可清晰的呈现出公司部门与各地区服务点布局。而附加的员工电子名片和照片让所有人都一目了然。</span></p><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">公司管理者通过组织结构树可以第一手掌握公司最新的人员部署情况，员工可以通过组织结构树快速认识其它同事，无论找人还是办事都很方便。</span></p><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">3</span><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">、无娱乐、强大的协同办公功能，让企业与地区服务站之间沟通无障碍。</span></p><p><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; imo</span><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">除了本身就具有的文字传输、文字消息、语音视频等沟通功能外，还创造性地剔除了所有娱乐功能，增加了许多符合企业需求的协同办公功能。</span></p><p><br/></p>', '2', '10000', '', '0', '1', '', '<p style=\";background:white\"><span style=\"font-size:14px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">车易拍是中国领先的二手车电子商务平台，也是新车置换解决方案、二手车网络交易解决方案以及二手车标准化检测方案的供应商领导者及二手车“行”认证授权单位。</span><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, sans-serif; font-size: 14px;\">车易拍总部设立于北京，目前以华北、华东、华南、西南四大运营中心为主，六大核心城市，八个卫星城市的线下服务网络的覆盖。</span></p><p><br/></p>');
INSERT INTO `yun_client_data` VALUES ('3', '<h2 style=\";margin-bottom:0;line-height:32px;background:white\"><span style=\"font-size:16px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#0099FF;font-weight:normal\">面临挑战和问题</span></h2><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">面对变动频繁的IT市场，对于提高销售人员的潜在竞争力势在必行，然而公司在培训效率和水平方面却有所欠缺；</span></p><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">销售对销售流程及客户信息的掌控不够强，错失很多客户资源；</span></p><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">随着行业与企业的发展，产品型销售必须向顾问型销售转型。&nbsp;</span></p><h2 style=\";margin-bottom:0;line-height:32px;background:white\"><span style=\"font-size:16px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#0099FF;font-weight:normal\">解决方案</span></h2><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">元鼎科技结合自身需求，并经过多方对比，最终把目光投向了甲骨文销售云 (Oracle Sales Cloud)。易于学习和使用的特性吸引了元鼎科技，在甲骨文销售云的帮助下，元鼎科技的销售人员培训速度提高了300%。另外，甲骨文销售云内置的社交网络模块改善并增强了销售组织的内部信息交流和共享，有效减少了人员变动或知识缺陷可能对销售业绩产生的影响；单一客户视图和集成的客户数据管理功能帮助元鼎科技在降低信息获取时间的同时将细小的线索转化为商机；产品功能与也与元鼎科技的诉求相吻合，对销售收入的持续增长提供有力的配合与支持。</span></p><h2 style=\";margin-bottom:0;line-height:32px;background:white\"><span style=\"font-size:16px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#0099FF;font-weight:normal\">使用效果</span></h2><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">销售活动的可预测性得到了大幅增强：所有销售活动及客户信息都被完整、实时地记录下来，统一而全面的客户视图一目了然；&nbsp;客户群得到了细分：销售人员可根据客户群的分类创建和管理相应销售活动，更精准地定位商机；&nbsp;获取了针对不同行业的客户洞察：如针对教育、政府、制造业等领域的观察和分析都为元鼎提供了良好的业务发展指向；最后，提升了内部销售团队与其他业务部门的高效和自动化协同，工作效率及客户满意度也随之上扬。</span></p><p style=\";margin-bottom:0;line-height:24px;background:white\"><span style=\"font-size:12px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">&nbsp;</span></p><p style=\"line-height: 24px;background: white\"><span style=\";font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666\">&nbsp;</span></p><p>&nbsp;</p><p><br/></p>', '2', '10000', '', '0', '1', '', '<h2 style=\";margin-bottom:0;line-height:32px;background:white\"><span style=\"font-size:14px;font-family:&#39;微软雅黑&#39;,&#39;sans-serif&#39;;color:#666666;font-weight:normal\">北京元鼎时代科技股份有限公司（前身为北京元鼎时代科技有限公司）成立于2003年，是一家以IT综合服务、专业化解决方案、电子商务和互联网为核心业务的综合型高科技企业。总部位于北京，在河南、上海、深圳设立分公司和技术中心，在广州、武汉、大连设有办事处。</span></h2><p><br/></p>');

-- ----------------------------
-- Table structure for `yun_cloud_demand`
-- ----------------------------
DROP TABLE IF EXISTS `yun_cloud_demand`;
CREATE TABLE `yun_cloud_demand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '公有云名称',
  `area` varchar(10) NOT NULL COMMENT '区域',
  `cpu` smallint(4) NOT NULL COMMENT 'cpu核心数',
  `memory` smallint(4) NOT NULL COMMENT '内存容量单位GB',
  `broadband` smallint(4) NOT NULL COMMENT '宽带值M',
  `purchase_times` int(8) NOT NULL COMMENT '购买时长',
  `num` int(8) NOT NULL COMMENT '购买数量',
  `member_id` int(10) NOT NULL COMMENT '用户id',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='公有云需求表单';

-- ----------------------------
-- Records of yun_cloud_demand
-- ----------------------------
INSERT INTO `yun_cloud_demand` VALUES ('1', '云服务器ECS', '上海', '2', '6', '400', '1', '1', '1', '1468307198');
INSERT INTO `yun_cloud_demand` VALUES ('2', 'AWS', '广州', '8', '64', '800', '24', '3', '1', '1468307869');
INSERT INTO `yun_cloud_demand` VALUES ('3', 'AWS', '上海', '2', '8', '600', '2', '1', '1', '1468312457');
INSERT INTO `yun_cloud_demand` VALUES ('4', '云服务器ECS', '上海', '4', '8', '600', '1', '1', '1', '1468315451');
INSERT INTO `yun_cloud_demand` VALUES ('5', 'AWS', '上海', '2', '6', '400', '1', '1', '1', '1468316519');
INSERT INTO `yun_cloud_demand` VALUES ('6', '云服务器ECS', '上海', '2', '6', '400', '1', '1', '1', '1468316543');
INSERT INTO `yun_cloud_demand` VALUES ('7', 'Windows Azure', '香港', '32', '4', '200', '2', '6', '1', '1468830485');
INSERT INTO `yun_cloud_demand` VALUES ('8', 'UCloud', '广州', '4', '8', '600', '1', '2', '3', '1468986781');

-- ----------------------------
-- Table structure for `yun_collection_content`
-- ----------------------------
DROP TABLE IF EXISTS `yun_collection_content`;
CREATE TABLE `yun_collection_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '采集节点ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '采集状态{0:未采集,1:已采集,2:已导入}',
  `url` char(255) NOT NULL COMMENT '文章URL',
  `title` char(100) NOT NULL COMMENT '文章标题',
  `data` text NOT NULL COMMENT '文章数据',
  PRIMARY KEY (`id`),
  KEY `nodeid` (`nodeid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='采集内容表';

-- ----------------------------
-- Records of yun_collection_content
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_collection_history`
-- ----------------------------
DROP TABLE IF EXISTS `yun_collection_history`;
CREATE TABLE `yun_collection_history` (
  `md5` char(32) NOT NULL COMMENT 'URL地址MD5值',
  `nodeid` smallint(6) NOT NULL COMMENT '采集节点ID',
  PRIMARY KEY (`md5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='采集历史';

-- ----------------------------
-- Records of yun_collection_history
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_collection_node`
-- ----------------------------
DROP TABLE IF EXISTS `yun_collection_node`;
CREATE TABLE `yun_collection_node` (
  `nodeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '采集节点ID',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后采集时间',
  `sourcecharset` varchar(8) NOT NULL COMMENT '采集点字符集',
  `sourcetype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '网址类型',
  `urlpage` text NOT NULL COMMENT '采集地址',
  `pagesize_start` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '页码开始',
  `pagesize_end` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '页码结束',
  `page_base` char(255) NOT NULL COMMENT '网址base',
  `par_num` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '每次增加数',
  `url_contain` char(100) NOT NULL COMMENT '网址中必须包含',
  `url_except` char(100) NOT NULL COMMENT '网址中不能包含',
  `url_start` char(100) NOT NULL DEFAULT '' COMMENT '网址开始',
  `url_end` char(100) NOT NULL DEFAULT '' COMMENT '网址结束',
  `url_regular` char(100) NOT NULL DEFAULT '' COMMENT 'URL地址匹配规则',
  `title_rule` char(100) NOT NULL COMMENT '标题采集规则',
  `title_html_rule` text NOT NULL COMMENT '标题过滤规则',
  `author_rule` char(100) NOT NULL COMMENT '作者采集规则',
  `author_html_rule` text NOT NULL COMMENT '作者过滤规则',
  `comeform_rule` char(100) NOT NULL COMMENT '来源采集规则',
  `comeform_html_rule` text NOT NULL COMMENT '来源过滤规则',
  `time_rule` char(100) NOT NULL COMMENT '时间采集规则',
  `time_html_rule` text NOT NULL COMMENT '时间过滤规则',
  `content_rule` char(100) NOT NULL COMMENT '内容采集规则',
  `content_html_rule` text NOT NULL COMMENT '内容过滤规则',
  `content_page_start` char(100) NOT NULL COMMENT '内容分页开始',
  `content_page_end` char(100) NOT NULL COMMENT '内容分页结束',
  `content_page_rule` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分页模式',
  `content_page` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内容采集是否分页',
  `content_nextpage` char(100) NOT NULL COMMENT '下一页标识符',
  `down_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否下载图片',
  `watermark` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '图片加水印',
  `coll_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '导入顺序',
  `customize_config` text NOT NULL COMMENT '自定义采集规则',
  PRIMARY KEY (`nodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='采集节点配置';

-- ----------------------------
-- Records of yun_collection_node
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_collection_program`
-- ----------------------------
DROP TABLE IF EXISTS `yun_collection_program`;
CREATE TABLE `yun_collection_program` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '方案名称',
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '采集点',
  `modelid` mediumint(6) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `catid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `config` text NOT NULL COMMENT '配置信息',
  PRIMARY KEY (`id`),
  KEY `nodeid` (`nodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='采集导入规则表';

-- ----------------------------
-- Records of yun_collection_program
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_comments`
-- ----------------------------
DROP TABLE IF EXISTS `yun_comments`;
CREATE TABLE `yun_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `comment_id` char(30) NOT NULL COMMENT '所属文章id',
  `author` tinytext NOT NULL COMMENT '评论者名称',
  `author_email` varchar(100) NOT NULL DEFAULT '' COMMENT '评论者电邮地址',
  `author_url` varchar(200) NOT NULL DEFAULT '' COMMENT '评论者网址',
  `author_ip` varchar(100) NOT NULL DEFAULT '' COMMENT '评论者的IP地址',
  `date` int(11) NOT NULL COMMENT '评论发表时间',
  `approved` varchar(20) NOT NULL DEFAULT '1' COMMENT '评论状态，0为审核，1为正常',
  `agent` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者的客户端信息',
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '上级评论id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论对应用户id',
  `stb` varchar(6) NOT NULL COMMENT '存放副表名',
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`),
  KEY `approved` (`approved`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of yun_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_comments_data_1`
-- ----------------------------
DROP TABLE IF EXISTS `yun_comments_data_1`;
CREATE TABLE `yun_comments_data_1` (
  `id` bigint(20) unsigned NOT NULL COMMENT '评论id',
  `comment_id` char(30) NOT NULL COMMENT '所属文章Id',
  `content` text NOT NULL COMMENT '评论内容',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论副表1';

-- ----------------------------
-- Records of yun_comments_data_1
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_comments_emotion`
-- ----------------------------
DROP TABLE IF EXISTS `yun_comments_emotion`;
CREATE TABLE `yun_comments_emotion` (
  `emotion_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表情ID',
  `emotion_name` varchar(20) NOT NULL DEFAULT '' COMMENT '表情名称',
  `emotion_icon` varchar(50) NOT NULL DEFAULT '' COMMENT '表情图标',
  `vieworder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `isused` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否使用',
  PRIMARY KEY (`emotion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表情数据表';

-- ----------------------------
-- Records of yun_comments_emotion
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_comments_field`
-- ----------------------------
DROP TABLE IF EXISTS `yun_comments_field`;
CREATE TABLE `yun_comments_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '字段id',
  `f` varchar(30) NOT NULL COMMENT '字段名',
  `fname` varchar(30) NOT NULL COMMENT '字段标识',
  `fzs` varchar(255) NOT NULL COMMENT '注释',
  `ftype` varchar(30) NOT NULL COMMENT '字段类型',
  `flen` varchar(20) NOT NULL COMMENT '字段长度',
  `ismust` tinyint(1) NOT NULL COMMENT '1为必填，0为非必填',
  `issystem` tinyint(1) NOT NULL COMMENT '是否添加到主表',
  `regular` varchar(255) NOT NULL COMMENT '数据验证正则',
  `system` tinyint(1) NOT NULL COMMENT '是否系统字段',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fname` (`fname`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='评论自定义字段表';

-- ----------------------------
-- Records of yun_comments_field
-- ----------------------------
INSERT INTO `yun_comments_field` VALUES ('1', 'author', '昵称', '昵称不能为空！', 'TEXT', '', '1', '1', '', '1');
INSERT INTO `yun_comments_field` VALUES ('2', 'author_email', '邮箱', '邮箱不能为空！', 'VARCHAR', '100', '1', '1', '/^[\\w\\-\\.]+@[\\w\\-\\.]+(\\.\\w+)+$/', '1');
INSERT INTO `yun_comments_field` VALUES ('3', 'author_url', '网站地址', '网站地址不能为空！', 'VARCHAR', '200', '0', '1', '/^http:\\/\\//', '1');

-- ----------------------------
-- Table structure for `yun_comments_setting`
-- ----------------------------
DROP TABLE IF EXISTS `yun_comments_setting`;
CREATE TABLE `yun_comments_setting` (
  `guest` tinyint(1) NOT NULL COMMENT '是否允许游客评论',
  `code` tinyint(1) NOT NULL COMMENT '是否开启验证码',
  `check` tinyint(1) NOT NULL COMMENT '是否需要审核',
  `stb` tinyint(4) NOT NULL COMMENT '存储分表',
  `stbsum` int(4) NOT NULL COMMENT '分表总数',
  `order` varchar(20) NOT NULL COMMENT '排序',
  `strlength` int(5) NOT NULL COMMENT '允许最大字数',
  `status` tinyint(1) NOT NULL COMMENT '关闭/开启评论',
  `expire` int(11) NOT NULL COMMENT '评论间隔时间单位秒'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论配置';

-- ----------------------------
-- Records of yun_comments_setting
-- ----------------------------
INSERT INTO `yun_comments_setting` VALUES ('1', '0', '0', '1', '1', 'date DESC', '400', '1', '60');

-- ----------------------------
-- Table structure for `yun_company`
-- ----------------------------
DROP TABLE IF EXISTS `yun_company`;
CREATE TABLE `yun_company` (
  `com_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '企业名称',
  `txt_intro` varchar(200) NOT NULL COMMENT '公司文字简介',
  `introduce` text NOT NULL COMMENT '公司图文简介',
  `img_logo` varchar(50) NOT NULL COMMENT '公司logo',
  `index_logo` varchar(50) DEFAULT NULL COMMENT '首页企业logo',
  `hot_product1` text COMMENT '热销产品',
  `adv_product` text COMMENT '产品优势',
  `version1` text COMMENT '版本定价',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `type` tinyint(1) NOT NULL COMMENT '产品类型1公有云2云应用',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示 0不显示1显示',
  `gp_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='企业表';

-- ----------------------------
-- Records of yun_company
-- ----------------------------
INSERT INTO `yun_company` VALUES ('2', 'AWS', 'AWS - 亚马逊公司旗下云计算服务平台，为全世界各个国家和地区的客户提供一整套基础设施和云解决方案。AWS面向用户提供包括弹性计算、存储、数据库、应用程序在内的一整套云计算服务，能够帮助企业降低IT投入成本和维护成本。', ' <div class=\"aws-showcase\" id=\"intro\">\n        <div class=\"floor one intro gray-back\">\n            <div class=\"img-holder\"></div>\n            <div class=\"container\">\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <a name=\"intro\"></a>\n                        <h1>公司简介</h1>\n                        <p>亚马逊公司（Amazon，简称亚马逊；NASDAQ：AMZN），是美国最大的一家网络电子商务公司，位于华盛顿州的西雅图。是网络上最早开始经营电子商务的公司之一，亚马逊成立于1995年，一开始只经营网络的书籍销售业务，现在则扩及了范围相当广的其他产品，已成为全球商品品种最多的网上零售商和全球第二大互联网企业，在公司名下，也包括了AlexaInternet、a9、lab126、和互联网电影数据库（Internet Movie Database，IMDB）等子公司。</p>\n                        <p>亚马逊的Amazon Web Services (AWS) 于2006年推出，以Web服务的形式向企业提供IT基础设施服务。其主要优势之一是能够以根据业务发展来扩展的较低可变成本来替代前期资本基础设施费用。 亚马逊网络服务所提供服务包括：亚马逊弹性计算网云（Amazon EC2）、亚马逊简单储存服务（Amazon S3）、亚马逊简单数据库（Amazon SimpleDB）、亚马逊简单队列服务（Amazon Simple Queue Service）以及Amazon CloudFront等。 AWS已经为全球190个国家/地区内成百上千家企业提供支持，于2013年12月18日宣布即将落地中国。数据中心位于美国、欧洲、巴西、新加坡和日本。</p>\n                    </div>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/08/57a0559fe29d0.png', '/d/file/content/2017/02/58b03b0f5ef16.png', ' <div class=\"floor two\" id=\"products\">\n            <div class=\"img-holder\"></div>\n            <div class=\"container\">\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <a name=\"intro\"></a>\n                        <h1>热销产品</h1>\n                        <div>\n                            <h3>产品概况</h3>\n                            <h4>Amazon EC2 – 虚拟服务器托管</h4>\n                            <p>Amazon Elastic Compute Cloud (Amazon EC2) 是一种 Web 服务，可在云中提供大小可调的计算容量。该服务旨在降低开发人员进行网络规模级云计算的难度。 Amazon EC2 的 Web 服务接口非常简单，您可以轻松获取和配置容量。使用该服务，您可以完全控制您的计算资源，并可以在成熟的 Amazon 计算环境中运行。Amazon EC2 将获取并启动新服务器实例所需要的时间缩短至几分钟，这样一来，在您的计算要求发生变化时，您便可以快速扩展计算容量。Amazon EC2 按您实际使用的容量收费，从而改变了成本结算方式。 Amazon EC2 还为开发人员提供了创建故障恢复应用程序以及排除常见故障情况的工具。</p>\n                        </div>\n                        <div>\n                            <h3>产品功能</h3>\n                            <p>Amazon EC2 向您提供了一个真正的虚拟计算环境，让您使用 Web 服务接口启动多种操作系统的实例，通过自定义应用环境加载这些实例，管理您的网络访问权限，并根据自己需要的系统数量来运行您的映像。 要使用 Amazon EC2，您只需：</p>\n                            <p class=\'dotted\'>选择一个预配置的模板化Amazon 系统映像 (AMI) 启动并立即运行。或者，创建一个包含您的应用程序、库、数据和相关配置设置的 AMI。</p>\n                            <p class=\'dotted\'>在您的 Amazon EC2 实例上配置安全和网络访问权限。</p>\n                            <p class=\'dotted\'>选择您想要的实例类型，然后使用 Web 服务 API 或 EC2 所提供的多种管理工具来启动、终止和监控您的 AMI 实例（实例数量可以按照您的需要增加）。</p>\n                            <p class=\'dotted\'>确定是否要在多个位置上运行、使用静态 IP 终端节点，或将持久性块存储附加在您的实例上。</p>\n                            <p class=\'dotted\'>只需支付您实际消耗的资源，例如实例小时数或数据传输。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '      <div class=\"floor three gray-back\" id=\"adv_product\">\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <h1>产品优势</h1>\n                    <div>\n                        <div class=\"row\">\n                            <div class=\"col-md-4 thumb-nail-container\">\n                                <div class=\"thumb-nail\">\n                                    <div class=\"nail one\"></div>\n                                    <h3>用低廉的月成本替代前期基础设施投资</h3>\n                                    <p>建立本地基础设施费耗时长、成本高，而且涉及订购、付款、安装和配置昂贵的硬件，而所有这些工作都需要在实际使用硬件之前提前很久完成。利用云计算，您就不需要花时间做这些事情；您只需要按实际用量付费。</p>\n                                </div>\n                            </div>\n                            <div class=\"col-md-4 thumb-nail-container\">\n                                <div class=\"thumb-nail\">\n                                    <div class=\"nail two\"></div>\n                                    <h3>持续成本低：缩减您的 IT 总成本</h3>\n                                    <p>云计算以多种方式帮助您缩减您的 IT 总成本。在经济体和效率方面的规模化改进，帮助持续降价，而多种定价模式能帮助您优化可变和稳定工作负荷所需的成本。此外，云计算还能降低前期 IT 人力成本和持续 IT 人力成本，您只需投入相当于传统基础设施成本几分之一的成本就能使用高度分散、功能全面的平台。</p>\n                                </div>\n                            </div>\n                            <div class=\"col-md-4 thumb-nail-container\">\n                                <div class=\"thumb-nail\">\n                                    <div class=\"nail three\"></div>\n                                    <h3>灵活性：消除您对基础设施容量需求的猜想</h3>\n                                    <p>预测客户计划如何使用新应用程序很难，而要正确执行亦绝非易事。所以，如果在部署应用程序前确定了容量，则一般可以避免出现昂贵的闲置资源，或者不必为有限的容量而发愁。如果容量用尽，则在获取更多资源前会出现糟糕的用户体验。而利用云计算，这些问题都不会出现。可以预配置所需的资源量，且可以根据需求轻松扩展资源量。如果不需要资源量，关掉它们并停止付费就好。</p>\n                                </div>\n                            </div>\n                        </div>\n                        <div class=\"row\">\n                            <div class=\"col-md-4 thumb-nail-container\">\n                                <div class=\"thumb-nail\">\n                                    <div class=\"nail four\"></div>\n                                    <h3>速度和灵敏性更快地开发和部署应用程序</h3>\n                                    <p>利用传统基础设施，需要花数周时间才能采购、交付并运行服务器。这么长的时间期扼杀了创新。利用云计算，可以根据需要预配置资源量。可以在几分钟内部署数百个甚至数千个服务器，不用跟任何人讨论。这种自助服务环境的变化速度与开发和部署应用程序一样快，可让团队更快、更频繁的进行试验。</p>\n                                </div>\n                            </div>\n                            <div class=\"col-md-4 thumb-nail-container\">\n                                <div class=\"thumb-nail\">\n                                    <div class=\"nail five\"></div>\n                                    <h3>应用而非运营</h3>\n                                    <p>云计算节省了数据中心投资和运营所需的资源，并将其转投向创新项目。具体来说，可以将少量的 IT 和工程资源用在有助于业务发展的项目上，而非在 IT 基础设施这一重要但几乎不会给业务带来差别的项目上。</p>\n                                </div>\n                            </div>\n                            <div class=\"col-md-4 thumb-nail-container\">\n                                <div class=\"thumb-nail\">\n                                    <div class=\"nail six\"></div>\n                                    <h3>全球性覆盖</h3>\n                                    <p>利用传统基础设施很难为分布广泛的用户基地提供最佳性能，且大多数公司一次只能关注一个地理区域的成本和时间节省。而利用云计算，情况会大不同，您可以在全世界 9 个 AWS 地区或其中一个地区轻松部署您的应用程序。也就是说，您可以用最少的成本帮助您的客户获得较低的延迟和更好的体验。</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '', '0', '1', '1', '0');
INSERT INTO `yun_company` VALUES ('3', '云服务器ECS', '阿里云——阿里巴巴集团旗下公司，致力于打造公共、开放的云计算服务平台。提供云服务器ECS、关系型数据库服务RDS、对象存储服务OSS、内容分发网络CDN等产品服务。', '<div class=\"ali-showcase\" id=\"intro\">\n        <div class=\"floor one intro\">\n            <div class=\"img-holder\"></div>\n            <div class=\"container\">\n                <h1>公司简介</h1>\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <a name=\"intro\"></a>\n                        <p>阿里云——阿里巴巴集团旗下公司，致力于打造公共、开放的云计算服务平台。提供云服务器ECS、关系型数据库服务RDS、对象存储服务OSS、内容分发网络CDN等产品服务。</p>\n                    </div>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/08/57a055868de86.png', '/d/file/content/2017/02/58b039e07c2dd.png', '<div class=\"floor two\" id=\"products\">\n            <div class=\"img-holder\"></div>\n            <div class=\"container\">\n                <h1>热销产品</h1>\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <div>\n                            <h3>产品概况</h3>\n                            <p class=\'dotted\'>云服务器 ECS 是处理能力可弹性伸缩的计算服务，它的管理方式比物理服务器更简单高效。无需提前采购投入，您可以根据业务的需要，随时创建实例、扩容磁盘、或释放任意多台云服务器实例。</p>\n                            <p class=\'dotted\'>云服务器 ECS 实例（以下简称 ECS 实例）是一个虚拟的计算环境，包含 CPU、内存等最基础的计算组件，是云服务器呈献给每个用户的实际操作实体。</p>\n                            <p class=\'dotted\'>ECS 实例是云服务器最为核心的概念。其他的资源，比如磁盘、IP、镜像、快照等，只有与 ECS 实例结合后才具有使用意义。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor three\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <h3>产品功能</h3>\n                        <p class=\'blue\'>云服务器 ECS 提供以下功能：</p>\n                        <p class=\'dotted\'> 8 大地域中创建实例，有的地域提供多个可用区。</p>\n                        <p class=\'dotted\'> 2 种实例系列、3 种实例规格族、数十种实例规格，从 “1 核 1GB” 到 “16 核 128GB”，满足各种不同需求。</p>\n                        <p class=\'dotted\'> 4 种数据存储盘（普通云盘、SSD 云盘、高效云盘、和本地 SSD 盘），并提供 I/O 优化实例。</p>\n                        <p class=\'dotted\'>2 种 IP 地址：公网 IP 和私网 IP，实现内网互联，并能访问 Internet。</p>\n                        <p class=\'dotted\'>2 种网络类型：经典网络和专有网络，在不同维度管理您的网络。</p>\n                        <p class=\'dotted\'> 支持多种 Windows 和 Linux 操作系统。</p>\n                        <p class=\'dotted\'>免费开通云盾并提供网络监控。</p>\n                        <p class=\'dotted\'>丰富的镜像资源，支持公共镜像、自定义镜像、共享镜像和镜像市场，让您免安装、快速部署操作系统和应用软件。</p>\n                        <p class=\'dotted\'>提供控制台、远程终端和 API 等多种管理方式，给您完全管理权限。</p>\n                        <p class=\'dotted\'>灵活的付费方式：包月包年和按量收费 。</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor four\">\n            <div class=\"container\">\n                <h3>应用场景</h3>\n                <p>云服务器 ECS 应用非常广泛，既可以单独使用作为简单的 Web 服务器，也可以与其他阿里云产品（如 OSS、CDN 等）搭配提供强大的多媒体解决方案。以下是云服务器ECS的典型应用场景。</p>\n                <div class=\"row\">\n                    <div class=\"col-md-3 text-blocks\">\n                        <div>\n                            <h2>企业官网、简单的 Web 应用</h2>\n                            <p>网站初始阶段访问量小，只需要一台低配置的云服务器 ECS 即可运行应用程序、数据库、存储文件等。随着网站发展，您可以随时提高 ECS 的配置和增加数量，无需担心低配服务器在业务突增时带来的资源不足问题。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 text-blocks\">\n                        <div>\n                            <h2>多媒体、大流量的 APP 或网站</h2>\n                            <p>云服务器 ECS 与对象存储 OSS 搭配，将 OSS 作为静态图片、视频、下载包的存储，以降低存储费用，同时配合 CDN 和负载均衡 ，可大幅减少用户访问等待时间、降低带宽费用、提高可用性。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 text-blocks\">\n                        <div>\n                            <h2>数据库</h2>\n                            <p>使用较高配置的 I/O 优化型 云服务器 ECS，同时采用 SSD 云盘，可实现支持高 I/O 并发和更高的数据可靠性。也可以采用多台稍微低配的 I/O 优化型 ECS 服务器，搭配负载均衡，实现高可用架构。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 text-blocks\">\n                        <div>\n                            <h2>访问量波动大的 APP 或网站</h2>\n                            <p>某些应用，如 12306 网站，访问量可能会在短时间内产生巨大的波动。通过使用弹性伸缩，实现在业务增长时自动增加 ECS 实例，并在业务下降时自动减少 ECS 实例，保证满足访问量达到峰值时对资源的要求，同时降低了成本。如果搭配负载均衡，则可以实现高可用架构。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '<div class=\"floor five\" id=\"adv_product\">\n            <div class=\"container\">\n                <h1>产品优势</h1>\n                <div class=\"row\">\n                    <div class=\"col-md-4 hybid-blcoks\">\n                        <div>\n                            <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ali01.png\" alt=\"\" />\n                            <h4>稳定</h4>\n                            <p>实例可用性达 99.95% ，数据可靠性不低于 99.999% 自动宕机迁移，自动快照备份，数据恢复更方便\n                            </p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-4 hybid-blcoks\">\n                        <div>\n                            <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ali02.png\" alt=\"\" />\n                            <h4>弹性</h4>\n                            <p>自由配置 CPU、内存、带宽，可随时升级 升级配置数据不丢失，业务暂停时间可控\n                            </p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-4 hybid-blcoks\">\n                        <div>\n                            <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ali03.png\" alt=\"\" />\n                            <h4>安全</h4>\n                            <p>免费提供 DDoS 防护、木马查杀、防暴力破解等服务 可轻松实现多用户对多服务器的访问控制\n                            </p>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"row\">\n                    <div class=\"col-md-4 hybid-blcoks\">\n                        <div>\n                            <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ali04.png\" alt=\"\" />\n                            <h4>成本</h4>\n                            <p>高性价比，支持包年包月或按量计费，满足不同需求 无需服务器网络和硬件等维护，0 成本运维</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-4 hybid-blcoks\">\n                        <div>\n                            <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ali05.png\" alt=\"\" />\n                            <h4>易用性</h4>\n                            <p>丰富的操作系统和应用软件，通过镜像可一键简单部署 同一镜像可在多台 ECS 中快速复制环境，轻松扩展</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-4 hybid-blcoks\">\n                        <div>\n                            <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ali06.png\" alt=\"\" />\n                            <h4>可扩展性</h4>\n                            <p>ECS 可与阿里云各种丰富的云产品无缝衔接 可持续为业务发展提供完整的计算、存储、安全等解决方案\n                            </p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '', '1467104643', '1', '1', '1');
INSERT INTO `yun_company` VALUES ('4', 'UCloud', 'UCloud是中国技术与服务最顶尖的云服务商,也是国家工信部首批认证通过的“可信云”,提供云主机、云数据库、混合云等服务,目前,已有三万家企业用户入驻。', '<div class=\"ucloud-showcase\" id=\"intro\">\n        <div class=\"floor one intro gray-back\">\n            <div class=\"img-holder\"></div>\n            <div class=\"container\">\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <a name=\"intro\"></a>\n                        <h1>公司简介</h1>\n                        <p>UCloud（上海优刻得云计算技术有限公司）是国内顶尖的IaaS（基础云计算）服务商，自主研发并提供计算资源、存储资源、网络资源等企业必需的基础IT架构服务，并深入了解互联网、移动互联网、传统企业不同场景下的业务需求，提供一系列的行业解决方案。依托全球10个数据中心以及全国11地线下服务站，UCloud已为超过2万家的企业级用户提供服务。</p>\n                    </div>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/08/57a0556a7efa7.png', '/d/file/content/2017/02/58b039d237b57.png', '   <div class=\"floor two\">\n            <div class=\"img-holder\"></div>\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <h1>热销产品</h1>\n                    <div>\n                        <h3>产品概况</h3>\n                        <p class=\'dotted\'>云主机 UHost</p>\n                        <p>云主机提供可随时扩展的计算服务，每台云主机以虚拟机的形式运行，主机资源包含CPU、内存、磁盘等最基础的计算组件。</p>\n                        <p>云主机是UCloud最为核心的服务，有些服务，如IP、镜像、云硬盘等必须与云主机结合后使用，其他服务，如数据库、缓存、对象存储等可以和云主机结合共同构建IT架构。</p>\n                    </div>\n                    <div>\n                        <h3>产品功能</h3>\n                        <div class=\"no-wrap\">\n                            <div class=\"finger-blocks\">\n                                <div class=\"fingers\">\n                                    <div class=\"fingers-inner\">\n                                        <div class=\'finger-nails\'> <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud06.png\" alt=\"\" />\n                                        </div>\n                                        <p>将已部署并完成配置的云主机保存为自定义镜像，以在需要的时候直接通过自定义镜像生成UHost，快速完成业务的复制。</p>\n                                    </div>\n                                </div>\n                                <div class=\"fingers\">\n                                    <div class=\"fingers-inner\">\n                                        <div class=\'finger-nails\'> <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud07.png\" alt=\"\" />\n                                        </div>\n                                        <p>每个数据中心均提供了内网本地软件源，安装与部署软件不需要使用外网，节约了外网流量的使用，并且为没有外网的云主机提供了软件安装的方便。UCloud保证提供最全最新的软件源，包括EPEL与Repoforge等。如需其他需求，请发送电子邮件到usupport@ucloud.cn或通过服务QQ联系技术支持。 </p>\n                                    </div>\n                                </div>\n                                <div class=\"fingers\">\n                                    <div class=\"fingers-inner\">\n                                        <div class=\'finger-nails\'> <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud08.png\" alt=\"\" />\n                                        </div>\n                                        <p>UCloud云平台为需要精确时间校验的应用提供了本地NTP服务器，通过简单的对ntp服务调整，即可做到时间精确的同步。本地NTP服务器采用高可用冗余架构，以避免时间同步上的单点故障。 </p>\n                                    </div>\n                                </div>\n                                <div class=\"fingers\">\n                                    <div class=\"fingers-inner\">\n                                        <div class=\'finger-nails\'> <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud09.png\" alt=\"\" />\n                                        </div>\n                                        <p>独立可配置软件防火墙，实现了在管理控制台中对UHost外网的访问控制，而无需登录服务器后再进行配置。该防火墙提供了多种预设协议和场景的设置，并且支持用户通过TCP/UDP/ICMP及源地址或端口进行自定义。 </p>\n                                    </div>\n                                </div>\n                                <div class=\"fingers\">\n                                    <div class=\"fingers-inner\">\n                                        <div class=\'finger-nails\'> <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud10.png\" alt=\"\" />\n                                        </div>\n                                        <p>与用户账户相关联的公网IP地址，在使用时可以直接绑定到任意UHost计算单元上，并可进行随时再绑定或调整网络带宽，以实现对应用服务器的快速替换和带宽调整。</p>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '<div class=\"floor three gray-back\" id=\"adv_product\">\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <h1>产品优势</h1>\n                    <div class=\'blockies\'>\n                        <div class=\"one-of-five\">\n                            <div class=\"bubble-head\">\n                                <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud01.png\" alt=\"\" />\n                                <div>\n                                    <h3>灵活和弹性</h3>\n                                    <p>根据业务的发展趋势，您可随时对云资源进行横向和纵向的伸缩，杜绝资源浪费。分钟级别创建或释放云主机，5分钟内升级或降级主机CPU和内存，在线升级或降级公网带宽，自定义镜像功能轻松复制主机数据和环境。更提供开放API，满足批量管理、自动化管理需求。</p>\n                                </div>\n                            </div>\n                        </div>\n                        <div class=\"one-of-five\">\n                            <div class=\"bubble-head\">\n                                <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud02.png\" alt=\"\" />\n                                <div>\n                                    <h3>稳定和可靠</h3>\n                                    <p>承诺99.95%的服务可用性，数据可靠性不低于99.9999%。云主机本地磁盘采用RAID进行数据保护，防止数据丢失；业界领先的内核优化和热补丁技术，无间断在线迁移技术，提供数据快照等功能，发生故障，百倍赔偿。</p>\n                                </div>\n                            </div>\n                        </div>\n                        <div class=\"one-of-five\">\n                            <div class=\"bubble-head\">\n                                <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud03.png\" alt=\"\" />\n                                <div>\n                                    <h3>高性能</h3>\n                                    <p>主机CPU、内存各项性能指标业界领先，独有的专利存储技术将磁盘随机读写I/O能力提高10倍于普通SAS盘；更有SSD盘云主机，提供超高IOPS性能。优异的网络处理能力，满足各种业务应用要求。</p>\n                                </div>\n                            </div>\n                        </div>\n                        <div class=\"one-of-five\">\n                            <div class=\"bubble-head\">\n                                <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud04.png\" alt=\"\" />\n                                <div>\n                                    <h3>安全保障</h3>\n                                    <p>用户之间100%的完全网络隔离，确保数据安全。提供网络防火墙功能，对公网连接进行严格访问控制。和VPC功能配合，可建立单个账号下的私有子网，支持您的内部安全管理需求。并提供丰富的监控和安全工具。</p>\n                                </div>\n                            </div>\n                        </div>\n                        <div class=\"one-of-five\">\n                            <div class=\"bubble-head\">\n                                <img src=\"/statics/extres/newmember/images/gongyouyun/icon-ucloud05.png\" alt=\"\" />\n                                <div>\n                                    <h3>数据中心</h3>\n                                    <p>UCloud位于国内、国际的数据中心，依托高品质硬件资源和基础设施，为用户提供优质的BGP、电信、联通、以及国际带宽资源。根据业务的需求，可以针对需要覆盖的目标用户区域选择相匹配的数据中心。</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '', '1467877198', '1', '1', '0');
INSERT INTO `yun_company` VALUES ('5', 'Windows Azure', 'Windows Azure是微软的公有云解决方案，是运行在微软数据中心之上的云计算平台。Windows Azure也是微软Cloud OS解决方案与“云优先，移动优先” 战略的核心组成部分。在中国，Windows Azure 结合了微软的全球技术和世纪互联的本地运营经验，强强联手，为中国	打造了一个企业级的国际化云计算平台。', '<div class=\"azure-showcase\" id=\"intro\">\n        <div class=\"floor one intro gray-back\">\n            <div class=\"img-holder\"></div>\n            <div class=\"container\">\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <a name=\"intro\"></a>\n                        <h1>公司简介</h1>\n                        <p>微软，是一家总部位于美国的跨国科技公司，是世界PC（Personal Computer，个人计算机）机软件开发的先导，由比尔·盖茨与保罗·艾伦创办于1975年，公司总部设立在华盛顿州的雷德蒙德市（Redmond，邻近西雅图）。以研发、制造、授权和提供广泛的电脑软件服务业务为主。</p>\n                    </div>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/08/57a0552979a03.png', '/d/file/content/2017/02/58b039b3be0b8.png', '  <div class=\"floor two\" id=\"products\">\n            <div class=\"img-holder\"></div>\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <h1>热销产品</h1>\n                    <div>\n                        <h3>产品概况</h3>\n                        <p>Azure 是 Microsoft 的公有云平台：这里正在汇集越来越多的优质服务——计算、存储、数据、网络和应用程序——帮助您加快发展步伐，提高工作效率，节省运营成本。作为Azure Circle Partner，凭借行业领先的云实施经验，欧唯特信息系统为客户提供可灵活扩展的基于Microsoft Azure的企业级公有云服务。</p>\n                    </div>\n                    <div>\n                        <h3>产品功能</h3>\n                        <div class=\"row\">\n                            <div class=\"col-md-4 bubble-container\">\n                                <div class=\"bubble-head\">\n                                    <img src=\"/statics/extres/newmember/images/gongyouyun/icon-azure01.png\" alt=\"\" />\n                                    <div>\n                                        <h4>将 IaaS 和 PaaS 集于一身</h4>\n                                        <p>Azure 是被 Gartner 评为基础结构即服务 (IaaS) 和平台即服务 (PaaS) 行业领袖的唯一主流云平台。托管和非托管服务的这种强大组合可让您以自己舒适的方式构建、部署和管理应用程序，将工作效率提高到极致。</p>\n                                    </div>\n                                </div>\n                            </div>\n                            <div class=\"col-md-4 bubble-container\">\n                                <div class=\"bubble-head\">\n                                    <img src=\"/statics/extres/newmember/images/gongyouyun/icon-azure02.png\" alt=\"\" />\n                                    <div>\n                                        <h4>随时加入混合部署   </h4>\n                                        <p>某些云平台要求在您的数据中心与公有云之间做出选择，但 Azure 不会这样。Azure 的已经企业验证的混合云解决方案具备两者的最大优势，可以扩大您在 IT 方面拥有的选项，而且还不会提高复杂性。使用 Azure 时，数据存储、备份和恢复将变得更加经济高效。另外，您可以更轻松地构建跨本地和云的应用程序。</p>\n                                    </div>\n                                </div>\n                            </div>\n                            <div class=\"col-md-4 bubble-container\">\n                                <div class=\"bubble-head\">\n                                    <img src=\"/statics/extres/newmember/images/gongyouyun/icon-azure03.png\" alt=\"\" />\n                                    <div>\n                                        <h4>开放而灵活</h4>\n                                        <p>Azure 支持任何操作系统、语言、工具和框架——从 Windows 到 Linux，从 SQL Server 到 Oracle，从 C# 到 Java。您可以随心利用 Windows 和 Linux 生态系统的最大优势，因此可以构建能够在任何设备上运行的完美应用程序和服务。</p>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                        <div class=\"row\">\n                            <div class=\"col-md-4 bubble-container\">\n                                <div class=\"bubble-head\">\n                                    <img src=\"/statics/extres/newmember/images/gongyouyun/icon-azure04.png\" alt=\"\" />\n                                    <div>\n                                        <h4>Azure 服务永不中断</h4>\n                                        <p>您可以分享已经过企业测试的，搭载 Skype、Office 365、必应和Xbox 的同一个平台。Azure 提供 99.95% 的可用性 SLA、全年无休的技术支持和全天不间断的服务运行状况监视。正因如此，57% 以上的财富五百强企业目前都依赖于 Azure。从奥运赛事现场直播到多玩家在线游戏，我们的客户正在 Azure 上享受多彩生活。</p>\n                                    </div>\n                                </div>\n                            </div>\n                            <div class=\"col-md-4 bubble-container\">\n                                <div class=\"bubble-head\">\n                                    <img src=\"/statics/extres/newmember/images/gongyouyun/icon-azure05.png\" alt=\"\" />\n                                    <div>\n                                        <h4>经济高效，缩放性强   </h4>\n                                        <p>Azure 可以根据需要快速扩展或缩减，因此您只需为使用的功能付费。我们将按分钟计费，并承诺与常见基础结构服务（例如计算、存储和带宽）的竞争价格相仿，因此，您始终可以获得无可匹敌的性价比。</p>\n                                    </div>\n                                </div>\n                            </div>\n                            <div class=\"col-md-4 bubble-container\">\n                                <div class=\"bubble-head\">\n                                    <img src=\"/statics/extres/newmember/images/gongyouyun/icon-azure06.png\" alt=\"\" />\n                                    <div>\n                                        <h4>无处不在</h4>\n                                        <p>Azure 在 13 个区域的日益增多的Microsoft 托管数据中心全球网络中运行，为您提供多样化的选项来运行应用程序，同时确保您的客户始终能够获得优异的性能。Azure 是中国大陆的第一家跨国云平台，目前还在不断扩张到全球新的区域。</p>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', ' <div class=\"floor three gray-back\" id=\"adv_product\">\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <h1>产品优势</h1>\n                    <div class=\'block-holder\'>\n                        <div class=\"text-block\">\n                            <h4>构建基础结构：</h4>\n                            <h5>虚拟机、虚拟网络、存储、备份、站点恢复、大型计算</h5>\n                            <p>在几分钟内设置好 Windows 和 Linux 虚拟机以及应用程序：在 Azure 中使用的虚拟机和管理工具与您在本地操作时使用的一样。</p>\n                        </div>\n                        <div class=\"text-block\">\n                            <h4>开发新式应用程序：</h4>\n                            <h5>网站、移动服务、媒体服务、集成、开发、测试</h5>\n                            <p>构建和部署充分利用云的各种新式 Android、iOS 和 Windows 应用程序——包括 Web、移动、媒体和业务线解决方案，自动扩展和缩减以满足任何需要。</p>\n                        </div>\n                    </div>\n                    <div class=\'block-holder\'>\n                        <div class=\"text-block\">\n                            <h4>从数据挖掘有用信息：</h4>\n                            <h5>SQL Database、HDInsight、机器学习、Stream Analytics</h5>\n                            <p>Azure 提供托管的 SQL 和 NoSQL 数据服务和内置支持，用于从数据挖掘有用信息。借助云中的 SQL Server 的所有功能并使用 HDInsight 构建 Hadoop 群集来分析数据。</p>\n                        </div>\n                        <div class=\"text-block\">\n                            <h4>管理标识和访问权限：</h4>\n                            <h5>Active Directory、多重身份验证</h5>\n                            <p>管理用户帐户、与现有的本地目录同步，还可以跨 Azure、Office 365 和数百个常用的软件即服务应用程序（包括 Salesforce、DocuSign、Google Apps、Box、Dropbox 等）进行单一登录。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '', '1467877285', '1', '1', '0');
INSERT INTO `yun_company` VALUES ('6', 'IMO 班聊', 'IMO是中国领先的企业级即时通讯运营平台，致力于为政府、企业、组织用户提供文字/语音、文件传输、文档协作、电子白板、公告传达、短信群发、电子传真、网络文件柜、电子考勤、日程安排等网络化实时沟通、网络化协同办公、网络化运营管理服务，构建组织的“互联网办公室”。', '<div class=\"imo-showcase\" id=\"intro\">\n        <div class=\"floor one intro gray-back\">\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <a name=\"intro\"></a>\n                    <h1>公司简介</h1>\n                    <p> IMO， 中国Slack，成立于2007年，由顶级VC金沙江创投投资imo，中国最大的企业沟通协同工作平台，主打产品imo云办公室日活量达到百万量级，拥有500万注册企业用户以及超过三十万付费用户；拥有最全面的企业社交化产品积累：企业级IM+事务协作+SaaS OA，单点登录，一站式工作平台入口，移动/桌面一体化，公有云+私有云；拥有业内最高的用户粘性：PC端平均在线时长9.01小时，平均每日37条消息；并且是最稳定的企业级服务提供商：99.98%稳定性。</p>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/08/57a05604342fb.png', '/d/file/content/2016/08/57a054b851dc0.png', ' <div class=\"floor two gray-back\" id=\"products\">\n            <div class=\"container\">\n                <a name=\"products\"></a>\n                <h1>热销产品</h1></div>\n        </div>\n        <div class=\"floor three\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <h1>掌控</h1>\n                        <h2>一切事务，尽在”掌控“</h2>\n                        <p>把你关注的所有事务，以量化的形式自动呈现在你面前，让你方便查看、处理</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor four gray-back\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <h1>不一样的沟通</h1>\n                        <p>◆　可发送文字、语音、图片、文件、地理位置</p>\n                        <p>◆　只有同事，只聊工作，纯净无骚扰</p>\n                        <p>◆　对话内容可一键生成任务，日程\n                        </p>\n                        <p>◆　可快速生成会议记录分享给同事</p>\n                        <p>◆　语音播放可暂停</p>\n                        <p>◆　可将同一个话题的讨论汇集在一起，讨论时主题清晰， 　 事后查阅也一目了然</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor five\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <h1>任务协作</h1>\n                        <h2>再也不担心，安排的工作不好跟进</h2>\n                        <p>◆　快速发起：动动嘴就能给同事发任务</p>\n                        <p>◆　防止遗忘：任务到期前自动提醒</p>\n                        <p>◆　随时跟进：执行情况随时掌控</p>\n                        <p>◆　有效管理：汇总分析，考评有依据</p>\n                        <p>◆　任务分享：可将任务分享给其他的同事</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor six gray-back\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <h1>流程审批</h1>\n                        <h2>再也不担心，领导出差耽误签字</h2>\n                        <p>◆　领导：随时随地，及时审批\n                        </p>\n                        <p>◆　员工：请假、报销，出差...不用等领导签字\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor seven\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <h1>电子公告</h1>\n                        <h2>再也不担心，有人假装不知道</h2>\n                        <p>◆　公告回执，每个接受者的阅读状态一目了然</p>\n                        <p>◆　可设置字体、颜色、图片、附件重点突出</p>\n                        <p>◆　发公告权限轻松设定</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor eight gray-back\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <H1>电子考勤</H1>\n                        <h2>再也不担心，考勤会让人不爽</h2>\n                        <p>◆　不用安装打卡机，老板爽</p>\n                        <p>◆　手机摇一摇，定位考勤，员工爽</p>\n                        <p>◆　多维度汇总考勤结果，行政爽</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor nine\">\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <h1>其他</h1>\n                    <div class=\"row\">\n                        <div class=\"col-md-3 nailbutt\">\n                            <div><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rd-1.png\" alt=\"\" />\n                                <h3 class=\"rd-1\">团队日程</h3>\n                                <p>同事间互发会议、日程；智能排档期，防止时间冲突；日程自动同步到iPhone日历</p>\n                            </div>\n                        </div>\n                        <div class=\"col-md-3 nailbutt\">\n                            <div><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rd-2.png\" alt=\"\" />\n                                <h3 class=\"rd-2\">电子投票</h3>\n                                <p>对指定的人群发起实名或匿名投票，方便查看投票结果，让公司决策更民主</p>\n                            </div>\n                        </div>\n                        <div class=\"col-md-3 nailbutt\">\n                            <div><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rd-3.png\" alt=\"\" />\n                                <h3 class=\"rd-3\">企业邮箱</h3>\n                                <p>可绑定企业邮箱，有新邮件时自动在班聊里进行提醒</p>\n                            </div>\n                        </div>\n                        <div class=\"col-md-3 nailbutt\">\n                            <div><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rd-4.png\" alt=\"\" />\n                                <h3 class=\"rd-4\">网络文件柜</h3>\n                                <p>可把文档上传到网络文件柜，让知识有效沉淀；可管理文档权限，保障信息安全</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '', '', '1467961057', '2', '1', '0');
INSERT INTO `yun_company` VALUES ('7', 'Office 365', 'Office 365 是微软为企业打造的完整的办公云服务，它不仅包含最新版的Office软件，同时满足企业对于企业级邮件处理（Exchange Online）、文件分享（SharePoint Online）、即时消息和可视网络会议（Lync Online）的需求。Office 365将帮助您的企业实现办公的运维、管理和使用体验的革新，为您的企业带来更灵活、高效、更安全可靠的云办公方式。', '<div class=\"office-showcase\">\n        <div class=\"floor one intro\" id=\"intro\">\n            <div class=\"container\">\n                <h1>公司简介</h1>\n                <div class=\"floor-inner\">\n                    <img src=\"/statics/extres/newmember/images/yunyingyong/icon-ms.png\" alt=\"\" />\n                    <div>\n                        <a href=\"\" name=\"intro\"></a>\n                        <p>微软，是一家总部位于美国的跨国科技公司，是世界PC（Personal Computer，个人计算机）机软件开发的先导，由比尔·盖茨与保罗·艾伦创办于1975年，公司总部设立在华盛顿州的雷德蒙德市（Redmond，邻近西雅图）。以研发、制造、授权和提供广泛的电脑软件服务业务为主。</p>\n                    </div>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/07/57834d57e1c36.png', '/d/file/content/2016/07/5784a41e83540.png', ' <div class=\"floor two products\"  id=\"products\">\n            <div class=\"container\">\n                <h1>热销产品</h1>\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <p>Office365不仅是您所熟悉的Office办公软件，它更包含邮箱、即时消息与联机会议、日历管理、云存储等现代企业所需的各项办公服务。无需IT基础架构投入，告别冗长的部署流程。</p>\n                        <div class=\"micro-hooper\">\n                            <span><a href=\"#four\" class=\'diamond\'>企业级邮箱</a></span>\n                            <span><a href=\"#five\" class=\'diamond\'>1TB企业网盘和轻松建站</a></span>\n                        </div>\n                        <div class=\"micro-hooper\">\n                            <span><a href=\"#six\" class=\'diamond\'>永远最新的Office软件</a></span>\n                            <span><a href=\"#seven\" class=\'diamond\'>共享日历与视频电话会议</a></span>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor three\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <h3>Office365不仅是您所熟悉的Office办公软件，它更包含邮箱、即时消息与联机会议、日历管理、云存储等现代企业所需的各项办公服务。\n                        </h3>\n                        <p class=\"diamond mt-1\">无需IT基础架构投入，告别冗长的部署流程。</p>\n                    </div>\n                </div>\n                <div class=\"spliter\">\n                    <div class=\"row\">\n                        <div class=\"col-md-3\">\n                            <img src=\"/statics/extres/newmember/images/yunyingyong/icon-mail.png\" alt=\"\" />\n                            <p>企业级邮箱</p>\n                        </div>\n                        <div class=\"col-md-3\">\n                            <img src=\"/statics/extres/newmember/images/yunyingyong/icon-ie.png\" alt=\"\" />\n                            <p>1TB企业网盘和轻松建站</p>\n                        </div>\n                        <div class=\"col-md-3\">\n                            <img src=\"/statics/extres/newmember/images/yunyingyong/icon-hand.png\" alt=\"\" />\n                            <p>永远最新的Office软件</p>\n                        </div>\n                        <div class=\"col-md-3\">\n                            <img src=\"/statics/extres/newmember/images/yunyingyong/icon-hand2.png\" alt=\"\" />\n                            <p>共享日历与视频电话会议</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a name=\"four\"></a>\n        <div class=\"floor four\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <h1>企业级邮箱</h1>\n                        <h3>在任何设备上访问您的企业邮箱，日历和联系人。每用户50GB存储空间，邮箱不再“爆满</h3>\n                        <p>• 使用公司域名的邮箱，提升企业形象</p>\n                        <p>• 50GB超大邮箱储存空间，可发送25MB附件</p>\n                        <p>• 微软EOP技术防垃圾邮件</p>\n                        <p>• 确保国内外邮件畅通无阻</p>\n                        <p>• 可控的邮件安全，避免机密信息外传</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a name=\"five\"></a>\n        <div class=\"floor five gray-back\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <h1>1TB企业网盘和轻松建站</h1>\n                        <h3>通过手机或平板电脑随时随地查看、编辑和分享文档；或建立企业内部网站、与团队高效协作</h3>\n                        <p>• 每用户多达1TB的超大企业网盘，支持文件共享和协同工作</p>\n                        <p>• 多层次访问授权方式，确保重要的文件只对正确的用户以正确的方式开放</p>\n                        <p>• 跨设备同步文件，确保你的文件在所有设备上都可以访问</p>\n                        <p>• 通过简单易用的模板构建公司内部和外部网站</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a name=\"six\"></a>\n        <div class=\"floor six\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <h1>永远最新的Office软件</h1>\n                        <h3>您可以在PC、手机、平板，甚至通过Web浏览器使用Office进行办公，随时随地，随心工作</h3>\n                        <p>• 通过订阅获得最新版的Office软件</p>\n                        <p>• 每个用户许可，可在五台PC/Mac和五台移动设备上安装Office</p>\n                        <p>• 借助Office Web App，在任何设备上使用浏览器编辑Office文档</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a name=\"seven\"></a>\n        <div class=\"floor seven gray-back\">\n            <div class=\"container\">\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <h1>共享日历与视频电话会议</h1>\n                        <h3>无论身在何处，都可以随时召开会议，与团队保持高效沟通，最多支持250人同时在线。</h3>\n                        <p>• 完美结合邮箱和视频会议的行事日历</p>\n                        <p>• 多达250人同时在线会议\n                        </p>\n                        <p>• 共享PPT和桌面、互动、录制，全面的在线会议</p>\n                    </div>\n                </div>\n            </div>\n        </div>', ' <div class=\"floor eight\" id=\"adv_product\">\n            <div class=\"container\">\n                <h1>产品优势</h1>\n                <div class=\"floor-inner\">\n                    <div class=\"row\">\n                        <div class=\"col-md-3 feature\">\n                            <img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-1.png\" alt=\"\" />\n                            <h3>随处访问</h3>\n                            <p>从任意地点访问的功能使用户能够在多个设备 - 包括从台式机到智能手机到平板电脑-等设备上，随时随地访问熟悉的Office应用程序。</p>\n                        </div>\n                        <div class=\"col-md-3 feature\">\n                            <img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-2.png\" alt=\"\" />\n                            <h3>高效协作</h3>\n                            <p>新的Office使得协同工作变得更加容易和高效，无论企业的团队在哪里，通过共享的文档、电子邮件和日程安排，团队都可以实现轻松的协同工作。\n                            </p>\n                        </div>\n                        <div class=\"col-md-3 feature\">\n                            <img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-3.png\" alt=\"\" />\n                            <h3>专业形象</h3>\n                            <p>客户是业务成功的关键。新的Office提供了专业的工具，来支持企业进行快速构建网站并创建高度专业化的文档和演示文档，对客户进行展示并驱动营收。\n                            </p>\n                        </div>\n                        <div class=\"col-md-3 feature\">\n                            <img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-4.png\" alt=\"\" />\n                            <h3>最佳价值</h3>\n                            <p>通过支持无限制的产品升级、无前期基础架构成本、以及高性价比的按月支付计划，使得新的Office 365提供了一个无可比拟的价值。\n                            </p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', ' <div class=\"floor nine\"  id=\"versions\">\n            <div class=\"container\">\n                <h1>版本定价</h1>\n                <div class=\"floor-inner\">\n                    <div class=\"pricing-list\">\n                        <div class=\"group\">\n                            <div class=\"pricing-block\">\n                                <h1>Exchange Online 计划 1</h1>\n                                <div>\n                                    <p>企业邮箱</p>\n                                </div>\n                                <h2>￥ 25.00用户/月</h2>\n                                <div class=\'what-included\'>\n                                    <ul>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-5.png\">\n                                            <h4>企业级电子邮件：</h4>\n                                            <p>50GB收件箱，垃圾邮件防护</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-6.png\">\n                                            <h4>联系人与日历:</h4>\n                                            <p>共享日历，任务，提醒</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-11.png\">\n                                            <h4>最大用户数:</h4>\n                                            <p>不限</p>\n                                        </li>\n                                    </ul>\n                                </div>\n                                <a href=\"\" class=\"btn-purchase\">立即体验</a>\n                            </div>\n                            <div class=\"pricing-block\">\n                                <h1>Office 365 商业协作版</h1>\n                                <div>\n                                    <p>包含企业邮箱、网盘、视频会议等云服务 </p>\n                                </div>\n                                <h2>￥30.00用户/月</h2>\n                                <div class=\'what-included\'>\n                                    <ul>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-5.png\">\n                                            <h4>企业级电子邮件：</h4>\n                                            <p>50GB收件箱，垃圾邮件防护</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-6.png\">\n                                            <h4>联系人与日历:</h4>\n                                            <p>共享日历，任务，提醒</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-7.png\">\n                                            <h4>文件存储与共享:</h4>\n                                            <p>每用户1TB存储空间</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-8.png\">\n                                            <!-- <h4>联系人与日历:</h4> -->\n                                            <p>支持250人的高清联机会议、\n                                                <br>即时消息，桌面及PowerPoint\n                                                <br> 文档共享\n                                                <br>\n                                            </p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-9.png\">\n                                            <p>轻松建站，企业网盘，\n                                                <br />支持协同工作</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-10.png\">\n                                            <h4>Webapp Office联机版本：</h4>\n                                            <p>在浏览器中使用Word，\n                                                <br />Excel和PowerPoint</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-11.png\">\n                                            <h4>最大用户数:</h4>\n                                            <p>300</p>\n                                        </li>\n                                    </ul>\n                                </div>\n                                <a href=\"\" class=\"btn-purchase\">立即体验</a>\n                            </div>\n                        </div>\n                        <div class=\"group\">\n                            <div class=\"pricing-block\">\n                                <h1>Office 365 商业版</h1>\n                                <div>\n                                    <p>完整的Office应用和1TB网盘 </p>\n                                </div>\n                                <h2>￥50.00用户/月</h2>\n                                <div class=\'what-included\'>\n                                    <ul>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-7.png\">\n                                            <h4>文件存储与共享:</h4>\n                                            <p>每用户1TB存储空间</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-10.png\">\n                                            <h4>Webapp Office联机版本：</h4>\n                                            <p>在浏览器中使用Word，\n                                                <br />Excel和PowerPoint</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-12.png\">\n                                            <h4>完整安装版Office应用程序：</h4>\n                                            <p>最多可以在5台PC或Mac上安装</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-13.png\">\n                                            <h4>用于平板电脑的Office:</h4>\n                                            <p>最多可以安装到5台\n                                                <br />Windows平板或iPad平板</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-13.png\">\n                                            <h4>用于智能手机的Office:</h4>\n                                            <p>最多可以在5部手机上\n                                                <br />查看和编辑Office文档</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-11.png\">\n                                            <h4>最大用户数:</h4>\n                                            <p>300</p>\n                                        </li>\n                                    </ul>\n                                </div>\n                                <a href=\"\" class=\"btn-purchase\">立即体验</a>\n                            </div>\n                            <div class=\"pricing-block\">\n                                <h1>Office 365 高级版</h1>\n                                <div>\n                                    <p>完整的Office应用和企业邮箱、\n                                        <br /> 网盘、视频会议等全套服务\n                                    </p>\n                                </div>\n                                <h2>￥80.00用户/月</h2>\n                                <div class=\'what-included\'>\n                                    <ul>\n                                        <li>\n                                            <h3>包涵商业协作版所有功能</h3>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-12.png\">\n                                            <h4>完整安装版Office应用程序：</h4>\n                                            <p>最多可以在5台PC或Mac上安装</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-13.png\">\n                                            <h4>用于平板电脑的Office:</h4>\n                                            <p>最多可以安装到5台\n                                                <br />Windows平板或iPad平板</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-13.png\">\n                                            <h4>用于智能手机的Office:</h4>\n                                            <p>最多可以在5部手机上\n                                                <br />查看和编辑Office文档</p>\n                                        </li>\n                                        <li><img src=\"/statics/extres/newmember/images/yunyingyong/icon-rds-11.png\">\n                                            <h4>最大用户数:</h4>\n                                            <p>不限</p>\n                                        </li>\n                                    </ul>\n                                </div>\n                                <a href=\"\" class=\"btn-purchase\">立即体验</a>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '1468223192', '2', '1', '11');
INSERT INTO `yun_company` VALUES ('8', 'Oracle CX云', 'Oracle CX是甲骨文公司推出的客户体验解决方案，之后甲骨文又将CX解决方案进行了细分推向云端，成为甲骨文SaaS业务中的三朵云之一，甲骨文客户体验云Oracle CX Cloud。Oracle CX云涵盖市场营销、销售、服务、配置定价及报价、电子商务、社交活动与倾听以及数据即服务等模块，它也成为了甲骨文在中国市场增速最快的云服务。', ' <div class=\"oracle-showcase\">\n        <div class=\"floor one\">\n            <h1>公司简介</h1></div>\n        <div class=\"floor two intro\">\n            <div class=\"container\">\n                <a id=\"intro\"></a>\n                <div class=\"floor-inner\">\n                    <div>\n                        <a href=\"\" name=\"intro\"></a>\n                        <div class=\"outter-wrapper\">\n                            <div class=\"table-wrapper\">\n                                <div class=\"div cell-wrapper\">\n                                    <p>甲骨文公司，全称甲骨文股份有限公司(甲骨文软件系统有限公司)，是全球最大的企业级软件公司，总部位于美国加利福尼亚州的红木滩。1989年正式进入中国市场。2013年，甲骨文已超越 IBM ，成为继 Microsoft 后全球第二大软件公司。</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/08/57a055ef366ea.png', '/d/file/content/2016/08/57a054477ee0c.png', '  <div class=\"floor three\">\n            <div class=\"container\">\n                <a id=\"products\"></a>\n                <h1>热销产品</h1>\n            </div>\n        </div>\n        <div class=\"floor four gray-back\">\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <h3>Oracle CX云</h3>\n                    <div class=\"feature-blocky\">\n                        <div class=\"blocky one\">\n                            <div class=\'icon loudspeaker\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-loudspeaker.png\" alt=\"\" />\n                            </div>\n                            <h2>营销</h2>\n                            <p>了解现代营销运作方式。</p>\n                        </div>\n                        <div class=\"blocky two\">\n                            <div class=\'icon target\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-target.png\" alt=\"\" />\n                            </div>\n                            <h2>销售</h2>\n                            <p>了解现代营销运作方式。</p>\n                        </div>\n                        <div class=\"blocky three\">\n                            <div class=\'icon headphone\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-headphone.png\" alt=\"\" />\n                            </div>\n                            <h2>服务</h2>\n                            <p>了解现代营销运作方式。</p>\n                        </div>\n                    </div>\n                    <div class=\"feature-desc one\">\n                        <p>要通过各种沟通渠道适时向合适的人员提供合适的消息，就需要能够快速收集数据、获得洞察并将洞察转变为行动。现代营销使您能够创建个性化、意义深远的客户体验，将临时的潜在客户转化为热情的支持者，从而更快地提高收入。</p>\n                        <p>◆ 汇总营销数据和锁定合适客户，简化并理顺您的CRM\n                            <br /> ◆ 跨渠道编排个性化、相关的客户体验\n                            <br /> ◆ 分析营销绩效和收入表现，更深入地了解所提供的客户体验</p>\n                    </div>\n                    <div class=\"feature-desc two\">\n                        <p>Oracle销售云在云中提供现代销售功能</p>\n                        <p> 您的客户已经改变，您的销售方式也要相应地改变。要增加销量和提高效率，现代销售过程需要简单便捷的工具、移动化的生产力、提供丰富洞察的协作式销售和积极的管道建立。您有更多的需求，而且迫在眉睫。</p>\n\n                    </div>\n                    <div class=\"feature-desc three\">\n                        <p>与客户沟通，支持员工工作，快速适应</p>\n                        <p>Oracle服务云可帮助您更好地了解您的客户，并通过首选服务渠道和设备快速适时地提供适当的解答。</p>\n                        <p>无论是提供web客户服务、建立跨渠道的联系中心、快速提供现场服务、连接孤岛，还是满足合规性，Oracle服务云均能帮助客户与您的品牌轻松互动；帮助您的员工轻松地服务客户；让您的组织适应不断变化的业务需求。</p>\n                    </div>\n                    <div class=\"feature-desc four\">\n                        <p>使每次销售互动具有相关性</p>\n                        <p>Oracle商务解决方案为您提供经过实战检验的商务应用。这些应用专注于提供个性化体验、业务用户能力培养和可扩展性，让您能够跟上不断变化的商务需求。</p>\n                    </div>\n                    <div class=\"feature-desc five\">\n                        <p>更深入的监听、全球适用性、统一平台、与客户体验应用相集成</p>\n                        <p>目前市场中有100逾种社交媒体管理解决方案，都声称能完成同样的任务，您如何区分这些解决方案并选择最佳的供应商？ Oracle社交解决方案具备深入监听、全球适用性、统一的社交媒体管理平台，并集成了客户体验 (CX) 应用。</p>\n                    </div>\n                    <div class=\"feature-desc six\">\n                        <p>Oracle CPQ云（配置、定价和报价）可帮助您更快、更轻松地在任何地点从事销售活动并提供更高的准确性。利用CRM系统生成报价和建议书的传统方法不仅复杂、需要手工操作，而且不易定义，容易导致错误并浪费销售时间。Oracle CPQ云的BigMachines产品可以转变销售流程，帮助您增加销量、加快销售并提供卓越的客户体验。由于这些产品专为云环境设计，因此可随业务增长而扩展。</p>\n                    </div>\n                    <div class=\"feature-blocky\">\n                        <div class=\"blocky four\">\n                            <div class=\'icon suitcase\'><img src=\"/statics/extres/newmember/images/yunyingyong/icon-suitcase.png\" alt=\"\" /></div>\n                            <h2>商务</h2>\n                            <p>了解现代营销运作方式。</p>\n                        </div>\n                        <div class=\"blocky five\">\n                            <div class=\'icon social\'><img src=\"/statics/extres/newmember/images/yunyingyong/icon-social.png\" alt=\"\" /></div>\n                            <h2>社交</h2>\n                            <p>了解现代营销运作方式。</p>\n                        </div>\n                        <div class=\"blocky six\">\n                            <div class=\'icon currency\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-currency.png\" alt=\"\" />\n                            </div>\n                            <h2>CPQ</h2>\n                            <p>了解现代营销运作方式。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>', '', '', '1468228793', '2', '1', '0');
INSERT INTO `yun_company` VALUES ('9', 'Salesforce', 'Salesforce全球第一家云计算厂商，CRM解决案领域的全球领导者，帮助全球10多万个用户走向成功，拥有一套完整、成熟的CRM产品，帮助企业更好地管理客户档案，实现销售自动化，透明化项目追踪，增强与客户的互动，提升客户体验，从而提高顾客满意度和忠诚度，最终提高企业的营收和利润。', '<div class=\"sales-force-showcase\">\n        <a id=\'intro\'></a>\n        <div class=\"floor one\">\n            <div class=\"container\">\n                <h1>公司简介</h1>\n            </div>\n        </div>\n        <div class=\"floor intro\">\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <div class=\"outter-wrapper\">\n                        <div class=\"table-wrapper\">\n                            <div class=\"cell-wrapper\">\n                                <p> Salesforce是创建于1999年3月的一家客户关系管理(CRM)软件服务提供商，总部设于美国旧金山，可提供随需应用的客户关系管理平台。Salesforce允许客户与独立软件供应商定制并整合其产品，同时建立他们各自所需的应用软件。对于用户而言，则可以避免购买硬件、开发软件等前期投资以及复杂的后台管理问题。因其口号“软件的终结”，故在业内常被称作“软件终结者”。</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/08/57a433ea7920f.png', '/d/file/content/2016/07/5784a301b7cfc.png', ' <a id=\'products\'></a>\n        <div class=\"floor two products\">\n            <div class=\"container\">\n                <h1>热销产品</h1>\n            </div>\n        </div>\n        <div class=\"floor product-hopper\">\n            <div class=\"head\">\n                <h1>云计算应用产品及平台</h1>\n                <h2>Salesforce云计算应用平台，您与客户成功邂逅的平台</h2>\n                <p>Salesforce 提供您通过浏览器即可运行销售、服务以及全部业务所需的一切资源。基于 salesforce 的实时、多租户体系结构，公司的平台和 CRM 应用程序彻底变革了公司协作以及与客户之间的沟通方式。</p>\n            </div>\n            <div class=\"container\">\n                <div class=\"row\">\n                    <div class=\"hopper\">\n                        <a href=\"#sales\">\n                            <div class=\"img-wrapper\">\n                                <div class=\"img-holder one\"></div>\n                            </div>\n                            <h2>销售</h2>\n                        </a>\n                    </div>\n                    <div class=\"hopper\">\n                        <a href=\'#service\'>\n                            <div class=\"img-wrapper\">\n                                <div class=\"img-holder two\"></div>\n                            </div>\n                            <h2>服务</h2></a>\n                    </div>\n                    <div class=\"hopper\">\n                        <a href=\"#market\">\n                            <div class=\"img-wrapper\">\n                                <div class=\"img-holder three\"></div>\n                            </div>\n                            <h2>市场营销</h2>\n                        </a>\n                    </div>\n                    <div class=\"hopper\">\n                        <a href=\"#community\">\n                            <div class=\"img-wrapper\">\n                                <div class=\"img-holder four\"></div>\n                            </div>\n                            <h2>社区</h2>\n                        </a>\n                    </div>\n                    <div class=\"hopper\">\n                        <a href=\"#platform\">\n                            <div class=\"img-wrapper\">\n                                <div class=\"img-holder five\"></div>\n                            </div>\n                            <h2>平台和应用程序</h2>\n                        </a>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a href=\"\" id=\"sales\"></a>\n        <div class=\"floor three gray-back flush-floor\">\n            <div class=\"container\">\n                <div class=\"floor-header\">\n                    <h1>市场营销云产品</h1>\n                    <p>借助云平台的大数据功能，充分利用客户每一次的互动信息，打造个性化、跨渠道的客户体验，通过电子邮件、移动、社交、网络等传递卓越的品牌体验。</p>\n                </div>\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <div>\n                            <h1>Marketing Cloud</h1>\n                            <p>建立于云平台基础上的数字营销平台功能强大，帮您打造一对一的顾客旅程并进行管理。</p>\n                            <a href=\"\" class=\"btn-positive\">询问价格</a>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a href=\"\" id=\"service\"></a>\n        <div class=\"floor four flush-floor\">\n            <div class=\"container\">\n                <div class=\"floor-header\">\n                    <h1>服务云产品</h1>\n                    <p>从呼叫中心软件到自助服务门户，我们基于云平台的服务解决方案能更快、更直观、更灵活地来预测客户需求，进而改善您的客户服务。</p>\n                </div>\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <div>\n                            <h1>Service Cloud</h1>\n                            <p>借助云平台提供更快、更智能的服务，让客户及时获得应有的支持。</p>\n                            <a href=\"\" class=\"btn-positive\">询问价格</a>\n                        </div>\n                        <div>\n                            <h1>Desk.com</h1>\n                            <p>一体化客服应用程序, 可以帮助中小型企业在每个渠道上快速提供个性化的服务。</p>\n                            <a href=\"\" class=\"btn-positive\">询问价格</a>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a href=\"\" id=\"market\"></a>\n        <div class=\"floor five gray-back flush-floor\">\n            <div class=\"container\">\n                <div class=\"floor-header\">\n                    <h1>市场营销云产品</h1>\n                    <p>借助云平台的大数据功能，充分利用客户每一次的互动信息，打造个性化、跨渠道的客户体验，通过电子邮件、移动、社交、网络等传递卓越的品牌体验。</p>\n                </div>\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <div>\n                            <h1>Marketing Cloud</h1>\n                            <p>建立于云平台基础上的数字营销平台功能强大，帮您打造一对一的顾客旅程并进行管理。</p>\n                            <a href=\"\" class=\"btn-positive\">询问价格</a>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a href=\"\" id=\"community\"></a>\n        <div class=\"floor six flush-floor\">\n            <div class=\"container\">\n                <div class=\"floor-header\">\n                    <h1>社区云产品</h1>\n                    <p>在云平台上利用社交和移动的优势来创建朝气蓬勃的社区，加强客户互动、员工协作以及经销商、合作伙伴和分销商间的合作。</p>\n                </div>\n                <div class=\"floor-inner img-right\">\n                    <div class=\"floor-desc\">\n                        <div>\n                            <h1>Community Cloud</h1>\n                            <p>有了这一基于云计算的在线协作平台，客户、合作伙伴和员工可以随时随地处理任何事宜。</p>\n                        </div>\n                        <div>\n                            <h1>Chatter</h1>\n                            <p>利用云平台强大的计算功能，将社交转化为强大的业务工具, 让员工随时随地轻松找到所需的文件、数据和专业人士。</p>\n                            <a href=\"\" class=\"btn-positive\">询问价格</a>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <a href=\"\" id=\"platform\"></a>\n        <div class=\"floor seven flush-floor\">\n            <div class=\"container\">\n                <div class=\"floor-header\">\n                    <h1>平台和应用程序云产品</h1>\n                    <p>应用程序已成为当今商业不可或缺的一部分。 如何构建能够满足客户和员工需求的应用程序？您需要一个够广阔够敏捷的平台来连接、集成，并且平台能够提供所有人（包括开发人员、企业用户等）所需的工具。</p>\n                </div>\n                <div class=\"floor-inner img-left\">\n                    <div class=\"floor-desc\">\n                        <div>\n                            <h1>App Cloud</h1>\n                            <p>全球首屈一指的企业云端平台，提供所有构建应用程序所需的工具和服务。</p>\n                            <a href=\"\" class=\"btn-positive\">询问价格</a>\n                        </div>\n                        <div>\n                            <h1>Force.com</h1>\n                            <p>在此云应用平台上，每个人都可以轻松编写面向员工的社交／移动应用程序，快捷且简单。</p>\n                        </div>\n                        <div>\n                            <h1>Heroku</h1>\n                            <p>构建美观、吸引客户的云应用程序，以丰富的用户体验来增进您与客户的关系。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '', '        <div class=\"floor eight\">\n            <h1>定价和版本</h1>\n        </div>\n        <div class=\"floor pricing\">\n            <div class=\"container\">\n                <div class=\"row\">\n                    <div class=\"col-md-2 index\">\n                        <ul>\n                            <li><a href=\" \">Sales Cloud</a></li>\n                            <li class=\"active\"><a href=\" \">Service Cloud</a></li>\n                            <li><a href=\" \">Marketing Cloud</a></li>\n                            <li><a href=\"  \">Community Cloud</a></li>\n                            <li><a href=\"  \">Platform and AppExchange</a></li>\n                            <li><a href=\"  \">Desk.com</a></li>\n                        </ul>\n                    </div>\n                    <div class=\"col-md-10 table\">\n                        <div>\n                            <h1>Sales Cloud</h1>\n                            <h2>销售团队自动化和 CRM</h2>\n                        </div>\n                        <div class=\"pricing-row\">\n                            <div class=\"pricing-column\">\n                                <div class=\'column-inner\'>\n                                    <div class=\'top\'>\n                                        <h3>SalesforceIQ CRM Starter</h3>\n                                    </div>\n                                    <div class=\'mid\'>\n                                        <p>用于多达 5 个用户的基本 CRM\n                                        </p>\n                                        <p>起始价</p>\n                                        <p class=\'price\'>￥160 元</p>\n                                        <p>元//用户/月* （按年收费）。\n                                        </p>\n                                        <a href=\"\" class=\"btn-positive\">立即购买</a>\n                                    </div>\n                                    <div class=\"btm\">\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                    </div>\n                                </div>\n                            </div>\n                            <div class=\"pricing-column\">\n                                <div class=\'column-inner\'>\n                                    <div class=\'top\'>\n                                        <h3>SalesforceIQ CRM Starter</h3>\n                                    </div>\n                                    <div class=\'mid\'>\n                                        <p>用于多达 5 个用户的基本 CRM\n                                        </p>\n                                        <p>起始价</p>\n                                        <p class=\'price\'>￥160 元</p>\n                                        <p>元//用户/月* （按年收费）。\n                                        </p>\n                                        <a href=\"\" class=\"btn-positive\">立即购买</a>\n                                    </div>\n                                    <div class=\"btm\">\n                                        <div>\n                                            <p>获得所有 Professional 版功能，\n                                                <br />以及</p>\n                                        </div>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                        <p>● 一个列表</p>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '1468229903', '2', '1', '4');
INSERT INTO `yun_company` VALUES ('10', '国信灵通', '北京国信灵通网络科技有限公司成立于2005年,是纽交所上市企业-北京网秦天下科技有限公司的控股子公司,此外,国信灵通还是全球企业移动化联盟(GEMA)的大中华区唯一会员。', '   <div class=\"guoling-showcase\">\n        <div class=\"floor one\">\n            <div class=\"container\">\n                <h1>公司简介</h1>\n            </div>\n        </div>\n        <div class=\"floor intro\">\n            <div class=\"container\">\n                <div class=\"floor-inner\">\n                    <div class=\"outter-wrapper\">\n                        <div class=\"table-wrapper\">\n                            <div class=\"cell-wrapper\">\n                                <p> 北京国信灵通网络科技有限公司成立于2005年,是纽交所上市企业-北京网秦天下科技有限公司的控股子公司,此外,国信灵通还是全球企业移动化联盟(GEMA)的大中华区唯一会员。</p>\n                                <p> 国信灵通是一家企业移动服务提供商,也是国内第一家推出移动设备管理平台(MDM)产品的厂商。公司一直专注在企业移动服务领域,具备移动信息咨询、硬件实施部署、软件技术开发、服务托管和外包、移动设备管理等五大核心能力,可提供完整的企业级移动管理服务。</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor two\">\n            <div class=\"container\">\n                <h1>什么是企业移动化管理</h1>\n                <div class=\"no-wrap\">\n                    <div class=\"quoted\">\n                        <img src=\"/statics/extres/newmember/images/yunyingyong/img-quote1.png\" alt=\"\" />\n                        <div class=\'content\'>\n                            <p>企业移动化管理（EMM）主要包含移动设备管理(MDM)、移动应用管理(MAM)、移动内容管理(MCM)三个核心内容。</p>\n                            <p>对企业各式各样、纷繁杂乱的移动智能终端及应用进行系统化、规范化的管理，以解决企业移动智能终端的安全、应用管理、统一配置、文档分发等各种问题，以让企业始终走在移动安全的正轨上。</p>\n                        </div>\n                        <img src=\"/statics/extres/newmember/images/yunyingyong/img-quote2.png\" alt=\"\" />\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor three\">\n            <div class=\"container\">\n                <h1>如何帮您实现企业移动化管理</h1>\n                <div class=\"row thumbnail-line\">\n                    <div class=\"col-md-3 thumbnail\">\n                        <img class=\'nail\' src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling1.png\" alt=\"\" />\n                        <div class=\"text\">\n                            <h2>SecCom</h2>\n                            <p>SecCom完整企业移动化安全解决方案，可以为客户提供移动应用统一安全入口及移动应用全生命周期的管理体系。同时集成企业常用办公套件，实现社交化办公方式。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 thumbnail\">\n                        <img class=\'nail\' src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling2.png\" alt=\"\" />\n                        <div class=\"text\">\n                            <h2>MEAP</h2>\n                            <p>NQSky MEAP平台是集开发、部署、运行、管理、监控为一体的企业移动应用平台。同时支持一次开发任意部署的跨设备支持能力，实现与后台各类业务系统的有效集成，提供统一便捷的移动管理功能等功能。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 thumbnail\">\n                        <img class=\'nail\' src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling3.png\" alt=\"\" />\n                        <div class=\"text\">\n                            <h2>EMM</h2>\n                            <p>NQSky EMM移动管理平台是企业管理移动智能终端的整体解决方案，帮助企业将IT管理能力从传统PC延伸到移动设备甚至移动应用APP、文档、邮件等。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 thumbnail\">\n                        <img class=\'nail\' src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling4.png\" alt=\"\" />\n                        <div class=\"text\">\n                            <h2>BeTalk</h2>\n                            <p>NQSky BeTalk 是一款面向企业的即时通信软件。能够使企业员工在日常协作中沟通变得更加便捷，同时将高度复杂的运营商级 IM 技术，以云端开放的 API 和客户端 SDK 的形式提供给开发者。</p>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"row thumbnail-line\">\n                    <div class=\"col-md-3 thumbnail\">\n                        <img class=\'nail\' src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling5.png\" alt=\"\" />\n                        <div class=\"text\">\n                            <h2>BeMail</h2>\n                            <p>NQSky BeMail 是专注于解决企业级用户移动端邮件收发及管理面临问题，提供多种部署方式及管理模式的企业移动化产品。帮助企业移动化办公实现高效、安全、稳定的邮件处理能力。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 thumbnail\">\n                        <img class=\'nail\' src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling6.png\" alt=\"\" />\n                        <div class=\"text\">\n                            <h2>应用加固</h2>\n                            <p>NQSky应用安全加固产品是专业移动应用安全服务平台，能够有效帮助企业移动应用以及个人移动应用开发者更全面、有效、安全地降低被恶意篡改、非法二次打包、插入广告及盗版、被动态截取机密数据的风险。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 thumbnail\">\n                        <img class=\'nail\' src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling3.png\" alt=\"\" />\n                        <div class=\"text\">\n                            <h2>企业杀毒</h2>\n                            <p>NQSky企业移动杀毒软件是国内第一款通过公安部权威认证和中国移动研究院产品测试的手机杀毒产品。 作为全球领先的企业杀毒解决方案，主要解决全面扫描安卓签名漏洞、查杀漏洞下的所有恶意代码等安全问题。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-3 thumbnail the-last\">\n                        <div><img src=\"/statics/extres/newmember/images/yunyingyong/logo-guoling-square.png\" alt=\"\" /></div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"floor four\">\n            <div class=\"container\">\n                <h1>企业移动化管理解决方案</h1>\n                <div class=\"row\">\n                    <div class=\"col-md-4 column\">\n                        <div class=\"column-inner\">\n                            <div class=\"top\">\n                                <h1>案例01</h1>\n                                <h3>NQ SKY助力江苏出入境检验检疫局移动信息化建设</h3>\n                            </div>\n                            <div class=\"mid\">\n                                <div class=\'type-indi\'>\n                                    <img src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling8.png\" alt=\"\" />\n                                    <h3>客户介绍</h3>\n                                </div>\n                                <div>\n                                    <p> 江苏出入境检验检疫局，多年来忠实地履行国家涉外经济监管和行政执法的重要职责，始终坚持依法施检、严格把关，加强对江苏地区出入境卫生检疫、动植物检疫、进出口商品检验、鉴定和监管，为保证工农牧渔业生产安全 ，保障人民健康，促进开放型经济发展做出了突出的贡献。</p>\n                                </div>\n                            </div>\n                            <div class=\"btm\">\n                                <h3>客户面临的挑战:</h3>\n                                <div>\n                                    <p>“国检通”的运用创新了移动检验检疫方式，检验员持工作手机可以直接登录CIQ2000系统完成施检登记、证稿拟制与审核、现场查验、移动执法等工作。</p>\n                                    <p> 面对越来越多的移动终端，在移动终端管理，终端消息发送，终端应用管理等方面，亟需有效管理办法，来支持业务有效运营。</p>\n                                </div>\n                                <div class=\"clear-fix\">\n                                    <a href=\"\" class=\"button-details\">了解详情 >></a>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-md-4 column\">\n                        <div class=\"column-inner\">\n                            <div class=\"top\">\n                                <h1>案例02</h1>\n                                <h3>NQ SKY助力安邦保险移动化</h3>\n                            </div>\n                            <div class=\"mid\">\n                                <div class=\'type-indi\'>\n                                    <img src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling8.png\" alt=\"\" />\n                                    <h3>客户介绍</h3>\n                                </div>\n                                <div>\n                                    <p>安邦财产保险股份有限公司（以下简称“安邦产险”）是经营财产保险、人身保险等业务的全国性保险公司。集团网络遍布全国31个省市自治区，拥有3000多个网点、1000多万客户以及海外资产管理公司.</p>\n                                </div>\n                            </div>\n                            <div class=\"btm\">\n                                <h3>客户面临的挑战:</h3>\n                                <div>\n                                    <p>安邦保险采用移动信息化实现移动勘察、车险通、移动营销、移动BI、移动OA，从而提升品牌影响力和市场竞争力。随着移动信息化的深入开展，移动设备采购数量将大幅增长，而且品牌和平台都将变得更加多元化。面对海量移动终端，安邦保险亟需有效的办法实现多平台统一管理、资产管理、安全策略、应用管理、内容管理、进程协助，以确保业务的有效运营。</p>\n                                </div>\n                                <div class=\"clear-fix\">\n                                    <a href=\"\" class=\"button-details\">了解详情 >></a>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-md-4 column\">\n                        <div class=\"column-inner\">\n                            <div class=\"top\">\n                                <h1>案例03</h1>\n                                <h3>NQ Sky助力海底捞pad点餐</h3>\n                            </div>\n                            <div class=\"mid\">\n                                <div class=\'type-indi\'>\n                                    <img src=\"/statics/extres/newmember/images/yunyingyong/icon-small-guoling8.png\" alt=\"\" />\n                                    <h3>客户介绍</h3>\n                                </div>\n                                <div>\n                                    <p>四川海底捞餐饮股份有限公司成立于1994年，是一家以经营川味火锅为主，融会各地火锅特色于一体的大型跨省直营餐饮民营企业。为了进一步提升客户服务质量，海底捞在全国餐厅推广使用PAD移动终端设备进行点餐，大幅度提高点餐效率的同时，更能节省纸张消耗、绿色环保，给客户带来全新的点餐体验。 </p>\n                                </div>\n                            </div>\n                            <div class=\"btm\">\n                                <h3>客户面临的挑战:</h3>\n                                <div>\n                                    <p>随着pad点餐在各地门店的推广，如何合理高效地管理好这些移动终端，避免终端遗失、客户随意更改配置等问题，成为海底捞关注的重点，而已经存在的一些问题更是亟待解决。</p>\n                                    <p> 1.菜单应用更新较为频繁，IT部门需要每个门店派2个IT人员现场更新，消耗人力，更新周期长；</p>\n                                    <p> 2.顾客经常自行删除pad上的应用和配置或私设密码，导致IT管理人员不断的现场支持； </p>\n                                    <p> 3.Ipad比较昂贵，可能丢失，每个门店需配置20万的防盗器，即便如此还是存在丢失的情况。</p>\n                                </div>\n                                <div class=\"clear-fix\">\n                                    <a href=\"\" class=\"button-details\">了解详情 >></a>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>', '/d/file/content/2016/08/57a00a1eb5f63.png', '/d/file/content/2016/08/57a054a1d6af0.png', '', '', '', '1468311674', '2', '1', null);
INSERT INTO `yun_company` VALUES ('11', 'OneApm', 'OneAPM 专注于提供新一代应用性能管理软件和服务，帮助用户降低 IT 成本，提高业务生产力。产品适用于复杂的现代应用程序生产环境，提供端到端应用性能管理、移动端和浏览器真实用户体验分析、业务交易实时分析', ' <div class=\"oneApm-showcase\">\n        <div class=\"oneApm-ai\">\n            <div class=\"floor one\">\n                <div class=\"container\">\n                    <h1>公司简介</h1>\n                </div>\n            </div>\n            <div class=\"floor intro splash\">\n                <div class=\"row\">\n                    <div class=\"col-md-7\">\n                        <div class=\"text-wrapper\">\n                            <p> 北京蓝海讯通科技股份有限公司，即 OneAPM，是中国基础软件领域的新兴领军企业。专注于提供新一代应用性能管理软件和服务，帮助用户降低 IT 成本，提高业务生产力。产品适用于复杂的现代应用程序生产环境，提供端到端应用性能管理、移动端和浏览器真实用户体验分析、业务交易实时分析。\n                            </p>\n                            <p> 经过 7 年的技术与产品积累与沉淀，OneAPM 能够提供本地化部署模式和 SaaS 模式，支持所有主流编程语言和框架，帮助企业用户和开发者轻松实现：缓慢的程序代码和 SQL 语句的实时抓取。</p>\n                            <p> OneAPM 也是全球首家可以同时从系统服务层、应用层、用户体验层、业务交易层提供性能管理产品的公司。</p>\n                            <p> 截至 2015 年年初，OneAPM 拥有约 400 名员工；核心研发团队，由美国硅谷归国的资深研发人员组成；总部位于中国北京，在上海、广州、成都、西安等全国多个城市设有分公司，业务已拓展至台湾、日本、韩国、东南亚等亚太国家和地区。\n                                当前有数十万企业和开发者选择 OneAPM，全面覆盖运营商、金融、政府、军工、传统企业、电商、O2O、移动互联网、教育、游戏等领域。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-5\">\n                        <img src=\"/statics/extres/newmember/images/yunyingyong/back-oneApmPc.png\" alt=\"\">\n                    </div>\n                </div>\n            </div>', '/d/file/content/2016/08/57a055d5dbfe6.png', '/d/file/content/2016/07/578874db82cf7.png', '    <div class=\"floor two products\" id=\"products\">\n                <div class=\"container\">\n                    <h1>产品介绍</h1>\n                </div>\n            </div>\n            <div class=\"floor product-menu\">\n                <div class=\"no-wrap\">\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"menu-item one active\">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=11\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>应用性能管理</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item three\">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=12\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>系统监控和中间件监控</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item four\">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=13\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>移动应用性能管理平台</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item five\">\n                                <div>\n                                    <a>\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2></h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item six\">\n                                <div>\n                                    <a>\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2></h2>\n                                    </a>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor three\">\n                <div class=\"container\">\n                    <div class=\"row\">\n                        <div class=\"col-md-3 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-pig.png\" alt=\"\" />\n                            </div>\n                            <h2>永久免费</h2>\n                            <p>企业版免费试用 15 天，\n                                <br />免费版永久免费使用。\n                            </p>\n                        </div>\n                        <div class=\"col-md-3 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-consolo.png\" alt=\"\" />\n                            </div>\n                            <h2>代码级</h2>\n                            <p>无需代码改动，实现代码级别的性能管理和监控。</p>\n                        </div>\n                        <div class=\"col-md-3 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-pc.png\" alt=\"\" />\n                            </div>\n                            <h2>端到端</h2>\n                            <p>端到端应用性能管理，用户到网络，直至服务器性能监控。</p>\n                        </div>\n                        <div class=\"col-md-3 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-person.png\" alt=\"\" />\n                            </div>\n                            <h2>真实用户体验</h2>\n                            <p>实时从真实用户终端采集性能数据，度量应用性能表现。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor four\">\n                <div class=\"container\">\n                    <div class=\"floor-inner img-center\">\n                        <h2>真实用户体验监控</h2>\n                        <h1>根据真实用户体验，发觉问题影响范围</h1>\n                        <p class=\'bottom-line\'>「总览」页面概括应用整体性能，通过 Apdex、报警、错误率，并结合「Browser Insight」； 了解应用性能对用户使用体验的影响，从而挖掘应用可优化的范围。\n                        </p>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor five gray-back\">\n                <div class=\"container\">\n                    <div class=\"floor-inner img-center\">\n                        <h2>分布式事务追踪</h2>\n                        <h1>在分布式环境中，定位事务的性能瓶颈</h1>\n                        <p class=\'bottom-line\'>「端到端拓扑」，解析事务整个过程。「事务 Trace」为应用建立全过程快照，关注最慢组件， 挖掘性能消耗热点。OneAPM 剥离出与后端性能相关的「后台任务」，关注服务器资源消耗。</p>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor six\">\n                <div class=\"container\">\n                    <div class=\"floor-inner img-center\">\n                        <h2>代码级别深度追踪</h2>\n                        <h1>深入至代码层面，轻松地解决性能问题</h1>\n                        <p class=\'bottom-line\'>轻量 OneAPM Agent 以小于 2% 的性能消耗，定位至代码层的性能指标；采集 JVM 性能指标， 为应用建立 「Thread Profiler」，并分析 SQL 语句性能；给予您最科学的性能优化参考。</p>\n                    </div>\n                </div>\n            </div>', '', '  \n            <div class=\"floor features-table\" id=\"versions\">\n                <h1>产品版本</h1>\n                <div class=\"product-details\">\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <!--  -->\n                            <div class=\"col-md-3\">\n                                <table>\n                                    <thead>\n                                        <tr>\n                                            <th>\n                                                <h4>索引</h4>\n                                            </th>\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        <tr>\n                                            <td>数据存储</td>\n                                        </tr>\n                                        <tr>\n                                            <td>Host 数量</td>\n                                        </tr>\n                                        <tr>\n                                            <td>技术支持</td>\n                                        </tr>\n                                        <tr>\n                                            <td>使用方式</td>\n                                        </tr>\n                                        <tr>\n                                            <td>多账户协作</td>\n                                        </tr>\n                                        <tr>\n                                            <td>应用健康总览</td>\n                                        </tr>\n                                        <tr>\n                                            <td>应用拓扑</td>\n                                        </tr>\n                                        <tr>\n                                            <td>数据库性能总览</td>\n                                        </tr>\n                                        <tr>\n                                            <td>HTTP 错误</td>\n                                        </tr>\n                                        <tr>\n                                            <td>第三方服务监控</td>\n                                        </tr>\n                                        <tr>\n                                            <td>故障报警</td>\n                                        </tr>\n                                        <tr>\n                                            <td>JVM 性能分析 (Java)</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢事务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢 SQL 追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢外部服务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢后台任务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>HTTP 错误详情</td>\n                                        </tr>\n                                        <tr>\n                                            <td>性能报表</td>\n                                        </tr>\n                                        <tr>\n                                            <td>自定义事务</td>\n                                        </tr>\n                                        <tr>\n                                            <td>自定义参数收集</td>\n                                        </tr>\n                                        <tr>\n                                            <td>业务拓扑</td>\n                                        </tr>\n                                        <tr>\n                                            <td>深度自定义业务</td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </div>\n                            <!--  -->\n                            <div class=\"col-md-9 details-table\">\n                                <table>\n                                    <thead>\n                                        <tr>\n                                            <th>免费版</th>\n                                            <th>专业版</th>\n                                            <th>企业版</th>\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        <tr>\n                                            <td>24小时</td>\n                                            <td>15 天</td>\n                                            <td>365 天</td>\n                                        </tr>\n                                        <tr>\n                                            <td>5</td>\n                                            <td>视购买数量而定</td>\n                                            <td>视购买数量而定</td>\n                                        </tr>\n                                        <tr>\n                                            <td>电话 & 邮件 & 远程</td>\n                                            <td>电话 & 邮件 & 远程</td>\n                                            <td>电话 & 邮件 & 远程 & 现场</td>\n                                        </tr>\n                                        <tr>\n                                            <td>仅支持 SaaS</td>\n                                            <td>仅支持 SaaS</td>\n                                            <td>SaaS & 本地化部署</td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>', '1468560873', '2', '1', '0');
INSERT INTO `yun_company` VALUES ('12', 'OneApm-bi', 'OneAPM 专注于提供新一代应用性能管理软件和服务，帮助用户降低 IT 成本，提高业务生产力。产品适用于复杂的现代应用程序生产环境，提供端到端应用性能管理、移动端和浏览器真实用户体验分析、业务交易实时分析', ' <div class=\"oneApm-showcase\">\n        <div class=\"oneApm-bi\">\n            <div class=\"floor one\">\n                <div class=\"container\">\n                    <h1>公司简介</h1>\n                </div>\n            </div>\n            <div class=\"floor intro splash\">\n                <div class=\"row\">\n                    <div class=\"col-md-7\">\n                        <div class=\"text-wrapper\">\n                            <p> 北京蓝海讯通科技股份有限公司，即 OneAPM，是中国基础软件领域的新兴领军企业。专注于提供新一代应用性能管理软件和服务，帮助用户降低 IT 成本，提高业务生产力。产品适用于复杂的现代应用程序生产环境，提供端到端应用性能管理、移动端和浏览器真实用户体验分析、业务交易实时分析。\n                            </p>\n                            <p> 经过 7 年的技术与产品积累与沉淀，OneAPM 能够提供本地化部署模式和 SaaS 模式，支持所有主流编程语言和框架，帮助企业用户和开发者轻松实现：缓慢的程序代码和 SQL 语句的实时抓取。</p>\n                            <p> OneAPM 也是全球首家可以同时从系统服务层、应用层、用户体验层、业务交易层提供性能管理产品的公司。</p>\n                            <p> 截至 2015 年年初，OneAPM 拥有约 400 名员工；核心研发团队，由美国硅谷归国的资深研发人员组成；总部位于中国北京，在上海、广州、成都、西安等全国多个城市设有分公司，业务已拓展至台湾、日本、韩国、东南亚等亚太国家和地区。\n                                当前有数十万企业和开发者选择 OneAPM，全面覆盖运营商、金融、政府、军工、传统企业、电商、O2O、移动互联网、教育、游戏等领域。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-5\">\n                        <img src=\"/statics/extres/newmember/images/yunyingyong/back-oneApmPc.png\" alt=\"\">\n                    </div>\n                </div>\n            </div>', '/d/file/content/2016/07/578876aa3cb80.png', '', '          <div class=\"floor two products\">\n                <div class=\"container\">\n                    <h1>产品介绍</h1>\n                </div>\n            </div>\n            <div class=\"floor product-menu\">\n                <div class=\"no-wrap\">\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"menu-item one \">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=11\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>应用性能管理</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item three active\">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=12\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>系统监控和中间件监控</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item four\">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=13\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>移动应用性能管理平台</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item five\">\n                                <div>\n                                    <a>\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2></h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item six\">\n                                <div>\n                                    <a>\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2></h2>\n                                    </a>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor three\">\n                <div class=\"container\">\n                    <div class=\"row\">\n                        <div class=\"row-item col-md-2\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-globe.png\" alt=\"\" />\n                            </div>\n                            <h2>真实用户体验</h2>\n                            <p>实时采集真实用户体验数据，端到端多维度数据分析展示。</p>\n                        </div>\n                        <div class=\"row-item col-md-2\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-files.png\" alt=\"\" />\n                            </div>\n                            <h2>资源详情</h2>\n                            <p>采集资源加载详情，快速统计、评测资源质量，监控 CDN 性能。</p>\n                        </div>\n                        <div class=\"row-item col-md-2\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-pc2.png\" alt=\"\" />\n                            </div>\n                            <h2>脚本错误</h2>\n                            <p>采集用户端浏览器报错信息，收集业务中不可预测的错误。</p>\n                        </div>\n                        <div class=\"row-item col-md-2\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-ajax.png\" alt=\"\" />\n                            </div>\n                            <h2>深入交互</h2>\n                            <p>全量抓取 AJAX 数据，深入用户交互，数据交互可视化。</p>\n                        </div>\n                        <div class=\"row-item col-md-2\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-clock.png\" alt=\"\" />\n                            </div>\n                            <h2>页面加载</h2>\n                            <p>记录页面加载全过程，建立页面和资源的加载时序图。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor four gray-back flush-floor\">\n                <div class=\"container\">\n                    <div class=\"floor-inner img-right\">\n                        <div class=\"floor-desc\">\n                            <h2>全球用户体验可视化</h2>\n                            <h1>实时查看全球各地终端用户体验</h1>\n                            <p>● 实时监控全球用户体验数据；</p>\n                            <p>● 关注业务请求量和响应时间；</p>\n                            <p>● 以用户体验为视角纵览用户群体分布。</p>\n                            <p>● 对比分析不同运营商、不同区域的网络质量。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor five flush-floor\">\n                <div class=\"container\">\n                    <div class=\"floor-inner img-left\">\n                        <div class=\"floor-desc\">\n                            <h2>端到端性能瓶颈定位</h2>\n                            <h1>满足你对性能监控的所有需求</h1>\n                            <p>● 实时查看用户请求的性能瓶颈区间，包括请求排队时间、Web 应用程序耗时、网络耗时、网页加载时间和资源加载时间；\n                            </p>\n                            <p>● 掌握响应时间、吞吐量的性能趋势；</p>\n                            <p>● 端到端的可视化、快速定位缓慢原因及受影响的用户详情。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor six gray-back flush-floor\">\n                <div class=\"container\">\n                    <div class=\"floor-inner img-right\">\n                        <div class=\"floor-desc\">\n                            <h2>基于响应时间分布的定位分析</h2>\n                            <h1>强大的性能瓶颈定位工具</h1>\n                            <p>● 通过了解用户响应时间分布情况优化网站和应用程序；</p>\n                            <p>● 从白屏时间、首屏时间、网页加载时间、资源加载时间和 整页完成时间角度展示用户响应时间分布情况；\n                            </p>\n                            <p>● 通过浏览器类型版本、设备以及地理分布等多维度数据进 行对比分析。\n                            </p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor seven  flush-floor\">\n                <div class=\"container\">\n                    <div class=\"floor-inner img-left\">\n                        <div class=\"floor-desc\">\n                            <h2>慢加载追踪</h2>\n                            <h1>优化网页从减少响应时间开始</h1>\n                            <p>● 查看发生缓慢的用户以及多维度数据；</p>\n                            <p>● 实现 W3C 标准页面加载时序图，包括 DNS、TCP／IP 等耗时；</p>\n                            <p>● 统计页面资源加载，展示资源加载瀑布图。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor eight gray-back flush-floor\">\n                <div class=\"container\">\n                    <div class=\"floor-inner img-right\">\n                        <div class=\"floor-desc\">\n                            <h2>脚本错误采集</h2>\n                            <h1>脚本错误采集</h1>\n                            <p>● 采集用户端脚本报错；</p>\n                            <p>● 查看错误堆栈统计错误详情；</p>\n                            <p>● 分析错误原因及受影响业务。</p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor nine flush-floor\">\n                <div class=\"container\">\n                    <h2>一个都不能少</h2>\n                    <h1>支持所有主流浏览器</h1>\n                    <div class=\"logo-wall\">\n                        <img src=\"/statics/extres/newmember/images/yunyingyong/img-logowall2.png\" alt=\"\" />\n                    </div>\n                </div>\n            </div>', '', '  \n            <div class=\"floor features-table\" id=\"versions\">\n                <h1>产品版本</h1>\n                <div class=\"product-details\">\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <!--  -->\n                            <div class=\"col-md-3\">\n                                <table>\n                                    <thead>\n                                        <tr>\n                                            <th>\n                                                <h4>索引</h4>\n                                            </th>\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        <tr>\n                                            <td>数据存储</td>\n                                        </tr>\n                                        <tr>\n                                            <td>Host 数量</td>\n                                        </tr>\n                                        <tr>\n                                            <td>技术支持</td>\n                                        </tr>\n                                        <tr>\n                                            <td>使用方式</td>\n                                        </tr>\n                                        <tr>\n                                            <td>多账户协作</td>\n                                        </tr>\n                                        <tr>\n                                            <td>应用健康总览</td>\n                                        </tr>\n                                        <tr>\n                                            <td>应用拓扑</td>\n                                        </tr>\n                                        <tr>\n                                            <td>数据库性能总览</td>\n                                        </tr>\n                                        <tr>\n                                            <td>HTTP 错误</td>\n                                        </tr>\n                                        <tr>\n                                            <td>第三方服务监控</td>\n                                        </tr>\n                                        <tr>\n                                            <td>故障报警</td>\n                                        </tr>\n                                        <tr>\n                                            <td>JVM 性能分析 (Java)</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢事务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢 SQL 追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢外部服务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢后台任务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>HTTP 错误详情</td>\n                                        </tr>\n                                        <tr>\n                                            <td>性能报表</td>\n                                        </tr>\n                                        <tr>\n                                            <td>自定义事务</td>\n                                        </tr>\n                                        <tr>\n                                            <td>自定义参数收集</td>\n                                        </tr>\n                                        <tr>\n                                            <td>业务拓扑</td>\n                                        </tr>\n                                        <tr>\n                                            <td>深度自定义业务</td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </div>\n                            <!--  -->\n                            <div class=\"col-md-9 details-table\">\n                                <table>\n                                    <thead>\n                                        <tr>\n                                            <th>免费版</th>\n                                            <th>专业版</th>\n                                            <th>企业版</th>\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        <tr>\n                                            <td>24小时</td>\n                                            <td>15 天</td>\n                                            <td>365 天</td>\n                                        </tr>\n                                        <tr>\n                                            <td>5</td>\n                                            <td>视购买数量而定</td>\n                                            <td>视购买数量而定</td>\n                                        </tr>\n                                        <tr>\n                                            <td>电话 & 邮件 & 远程</td>\n                                            <td>电话 & 邮件 & 远程</td>\n                                            <td>电话 & 邮件 & 远程 & 现场</td>\n                                        </tr>\n                                        <tr>\n                                            <td>仅支持 SaaS</td>\n                                            <td>仅支持 SaaS</td>\n                                            <td>SaaS & 本地化部署</td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>', '1468561253', '2', '0', '0');
INSERT INTO `yun_company` VALUES ('13', 'OneApm-mi', 'OneAPM 专注于提供新一代应用性能管理软件和服务，帮助用户降低 IT 成本，提高业务生产力。产品适用于复杂的现代应用程序生产环境，提供端到端应用性能管理、移动端和浏览器真实用户体验分析、业务交易实时分析', ' <div class=\"oneApm-showcase\">\n        <div class=\"oneApm-mi\">\n            <div class=\"floor one\">\n                <div class=\"container\">\n                    <h1>公司简介</h1>\n                </div>\n            </div>\n            <div class=\"floor intro splash\">\n                <div class=\"row\">\n                    <div class=\"col-md-7\">\n                        <div class=\"text-wrapper\">\n                            <p> 北京蓝海讯通科技股份有限公司，即 OneAPM，是中国基础软件领域的新兴领军企业。专注于提供新一代应用性能管理软件和服务，帮助用户降低 IT 成本，提高业务生产力。产品适用于复杂的现代应用程序生产环境，提供端到端应用性能管理、移动端和浏览器真实用户体验分析、业务交易实时分析。\n                            </p>\n                            <p> 经过 7 年的技术与产品积累与沉淀，OneAPM 能够提供本地化部署模式和 SaaS 模式，支持所有主流编程语言和框架，帮助企业用户和开发者轻松实现：缓慢的程序代码和 SQL 语句的实时抓取。</p>\n                            <p> OneAPM 也是全球首家可以同时从系统服务层、应用层、用户体验层、业务交易层提供性能管理产品的公司。</p>\n                            <p> 截至 2015 年年初，OneAPM 拥有约 400 名员工；核心研发团队，由美国硅谷归国的资深研发人员组成；总部位于中国北京，在上海、广州、成都、西安等全国多个城市设有分公司，业务已拓展至台湾、日本、韩国、东南亚等亚太国家和地区。\n                                当前有数十万企业和开发者选择 OneAPM，全面覆盖运营商、金融、政府、军工、传统企业、电商、O2O、移动互联网、教育、游戏等领域。</p>\n                        </div>\n                    </div>\n                    <div class=\"col-md-5\">\n                        <img src=\"/statics/extres/newmember/images/yunyingyong/back-oneApmPc.png\" alt=\"\">\n                    </div>\n                </div>\n            </div>', '/d/file/content/2016/07/578877c63bc9c.png', '', '        <div class=\"floor two products\" id=\"products\">\n                <div class=\"container\">\n                    <h1>产品介绍</h1>\n                </div>\n            </div>\n            <div class=\"floor product-menu\">\n                <div class=\"no-wrap\">\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <div class=\"menu-item one \">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=11\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>应用性能管理</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item three\">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=12\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>系统监控和中间件监控</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item four active\">\n                                <div>\n                                    <a href=\"/index.php?g=Yun&m=Company&a=details&id=13\">\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2>移动应用性能管理平台</h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item five\">\n                                <div>\n                                    <a>\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2></h2>\n                                    </a>\n                                </div>\n                            </div>\n                            <div class=\"menu-item six\">\n                                <div>\n                                    <a>\n                                        <div class=\'img\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-oneapm-menu1.png\" alt=\"\" />\n                                        </div>\n                                        <h2></h2>\n                                    </a>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor three\">\n                <div class=\"container\">\n                    <div class=\"row\">\n                        <div class=\"col-md-4 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-bug.png\" alt=\"\" />\n                            </div>\n                            <div>\n                                <h2>App Crash 分析 </h2>\n                                <p>崩溃功能提供崩溃类型、代码信息、代码位置、首次发生时间、最后发生时间、应用版本号、发生次数、影响设备数以及崩溃状态展示崩溃的详细信息。</p>\n                            </div>\n                        </div>\n                        <div class=\"col-md-4 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-globe2.png\" alt=\"\" />\n                            </div>\n                            <div>\n                                <h2>监控网络请求和网络错误</h2>\n                                <p>通过 URL 名称和 HTTP 状态码识别为一个错误，并展示错误首次发生时间、最后发生时间、应用版本号以及发生次数。</p>\n                            </div>\n                        </div>\n                        <div class=\"col-md-4 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-sadface.png\" alt=\"\" />\n                            </div>\n                            <div>\n                                <h2>卡顿／ANR 分析</h2>\n                                <p>分析由应用进程自身引起的主线程阻塞、挂起、死循环等情况或是由其他进程间接引起的 ANR 问题，帮助开发者定位造成 ANR 的原因。</p>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"row\">\n                        <div class=\"col-md-4 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-cellphone.png\" alt=\"\" />\n                            </div>\n                            <div>\n                                <h2>Webview 监控</h2>\n                                <p>这里展示 WebView 平均执行时间、执行次数的实时动态图，基于 HTML5 页面加载解析过程，您可以清晰地了解页面渲染时各个流程的耗时情况，从而有针对地优化代码。</p>\n                            </div>\n                        </div>\n                        <div class=\"col-md-4 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-splash.png\" alt=\"\" />\n                            </div>\n                            <div>\n                                <h2>慢交互追踪</h2>\n                                <p>分析每个 Activity，查看该 Activity UI 主线程和 Worker 线程耗时状况，然后结合业务逻辑优化代码，避免阻塞主线程进而影响用户体验。</p>\n                            </div>\n                        </div>\n                        <div class=\"col-md-4 row-item\">\n                            <div class=\'img-wrapper\'> <img src=\"/statics/extres/newmember/images/yunyingyong/icon-chart.png\" alt=\"\" />\n                            </div>\n                            <div>\n                                <h2>App 多维度组合分析</h2>\n                                <p>组合分析包括 HTTP 错误数，HTTP 错误率，网络错误数，网络错误率，响应时间，流量，吞吐量等多个维度。</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor four\">\n                <div class=\"container\">\n                    <div class=\"lefty\">\n                        <h2>App 上线之后</h2>\n                        <h1>总有意外发生</h1>\n                        <p>根据调查研究显示 48% 用户会因为 App 程序不稳定,崩溃和闪退去卸载 App，OneAPM 分析每一次异常性能的详情，方便您针对性优化，提升用户留存率。</p>\n                    </div>\n                    <div class=\"righty\">\n                        <img src=\"/statics/extres/newmember/images/yunyingyong/back-whiteIcons.png\" alt=\"\" />\n                    </div>\n                </div>\n            </div>\n            <div class=\"floor five splash\">\n                <div class=\"container\">\n                    <div class=\"lefty\">\n                        <h1>Crash 分析</h1>\n                        <p>识别崩溃是否发生，采集崩溃相关信息，是 Crash 分析的基本功能。而对 Crash 进行统计分析，才是我们的特色。</p>\n                        <p>OneAPM 根据操作系统类型、设备型号、崩溃状态、崩溃路径、崩溃根源进行统计；让您更直观地管理所有 Crash。</p>\n                        <div class=\"no-wrap\">\n                            <div class=\"bar\">\n                                <div><img src=\"/statics/extres/newmember/images/yunyingyong/icon-backed-chart.png\" alt=\"\" />\n                                    <p>统计分析</p>\n                                </div>\n                                <div><img src=\"/statics/extres/newmember/images/yunyingyong/icon-backed-consolo.png\" alt=\"\" />\n                                    <p>精确至代码</p>\n                                </div>\n                                <div><img src=\"/statics/extres/newmember/images/yunyingyong/icon-backed-target.png\" alt=\"\" />\n                                    <p>影响范围</p>\n                                </div>\n                                <div><img src=\"/statics/extres/newmember/images/yunyingyong/icon-backed-target2.png\" alt=\"\" />\n                                    <p>追踪修复</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"righty\">\n                        <div class=\"img-wrapper\"><img src=\"/statics/extres/newmember/images/yunyingyong/back-cellphone7.png\" alt=\"\" /></div>\n                    </div>\n                </div>\n            </div>', '', '  \n            <div class=\"floor features-table\" id=\"versions\">\n                <h1>产品版本</h1>\n                <div class=\"product-details\">\n                    <div class=\"container\">\n                        <div class=\"row\">\n                            <!--  -->\n                            <div class=\"col-md-3\">\n                                <table>\n                                    <thead>\n                                        <tr>\n                                            <th>\n                                                <h4>索引</h4>\n                                            </th>\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        <tr>\n                                            <td>数据存储</td>\n                                        </tr>\n                                        <tr>\n                                            <td>Host 数量</td>\n                                        </tr>\n                                        <tr>\n                                            <td>技术支持</td>\n                                        </tr>\n                                        <tr>\n                                            <td>使用方式</td>\n                                        </tr>\n                                        <tr>\n                                            <td>多账户协作</td>\n                                        </tr>\n                                        <tr>\n                                            <td>应用健康总览</td>\n                                        </tr>\n                                        <tr>\n                                            <td>应用拓扑</td>\n                                        </tr>\n                                        <tr>\n                                            <td>数据库性能总览</td>\n                                        </tr>\n                                        <tr>\n                                            <td>HTTP 错误</td>\n                                        </tr>\n                                        <tr>\n                                            <td>第三方服务监控</td>\n                                        </tr>\n                                        <tr>\n                                            <td>故障报警</td>\n                                        </tr>\n                                        <tr>\n                                            <td>JVM 性能分析 (Java)</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢事务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢 SQL 追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢外部服务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>慢后台任务追踪</td>\n                                        </tr>\n                                        <tr>\n                                            <td>HTTP 错误详情</td>\n                                        </tr>\n                                        <tr>\n                                            <td>性能报表</td>\n                                        </tr>\n                                        <tr>\n                                            <td>自定义事务</td>\n                                        </tr>\n                                        <tr>\n                                            <td>自定义参数收集</td>\n                                        </tr>\n                                        <tr>\n                                            <td>业务拓扑</td>\n                                        </tr>\n                                        <tr>\n                                            <td>深度自定义业务</td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </div>\n                            <!--  -->\n                            <div class=\"col-md-9 details-table\">\n                                <table>\n                                    <thead>\n                                        <tr>\n                                            <th>免费版</th>\n                                            <th>专业版</th>\n                                            <th>企业版</th>\n                                        </tr>\n                                    </thead>\n                                    <tbody>\n                                        <tr>\n                                            <td>24小时</td>\n                                            <td>15 天</td>\n                                            <td>365 天</td>\n                                        </tr>\n                                        <tr>\n                                            <td>5</td>\n                                            <td>视购买数量而定</td>\n                                            <td>视购买数量而定</td>\n                                        </tr>\n                                        <tr>\n                                            <td>电话 & 邮件 & 远程</td>\n                                            <td>电话 & 邮件 & 远程</td>\n                                            <td>电话 & 邮件 & 远程 & 现场</td>\n                                        </tr>\n                                        <tr>\n                                            <td>仅支持 SaaS</td>\n                                            <td>仅支持 SaaS</td>\n                                            <td>SaaS & 本地化部署</td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                        <tr>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon cross\'></i></td>\n                                            <td><i class=\'icon check\'></i></td>\n                                        </tr>\n                                    </tbody>\n                                </table>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>', '1468561463', '1', '0', '0');

-- ----------------------------
-- Table structure for `yun_config`
-- ----------------------------
DROP TABLE IF EXISTS `yun_config`;
CREATE TABLE `yun_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of yun_config
-- ----------------------------
INSERT INTO `yun_config` VALUES ('1', 'sitename', '网站名称', '1', 'yun88');
INSERT INTO `yun_config` VALUES ('2', 'siteurl', '网站网址', '1', '/');
INSERT INTO `yun_config` VALUES ('3', 'sitefileurl', '附件地址', '1', '/d/file/');
INSERT INTO `yun_config` VALUES ('4', 'siteemail', '站点邮箱', '1', 'admin@qq.com');
INSERT INTO `yun_config` VALUES ('6', 'siteinfo', '网站介绍', '1', 'yun88');
INSERT INTO `yun_config` VALUES ('7', 'sitekeywords', '网站关键字', '1', 'yun88');
INSERT INTO `yun_config` VALUES ('8', 'uploadmaxsize', '允许上传附件大小', '1', '2024000');
INSERT INTO `yun_config` VALUES ('9', 'uploadallowext', '允许上传附件类型', '1', 'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf|mp4|chm');
INSERT INTO `yun_config` VALUES ('10', 'qtuploadmaxsize', '前台允许上传附件大小', '1', '200');
INSERT INTO `yun_config` VALUES ('11', 'qtuploadallowext', '前台允许上传附件类型', '1', 'jpg|jpeg|gif');
INSERT INTO `yun_config` VALUES ('12', 'watermarkenable', '是否开启图片水印', '1', '1');
INSERT INTO `yun_config` VALUES ('13', 'watermarkminwidth', '水印-宽', '1', '');
INSERT INTO `yun_config` VALUES ('14', 'watermarkminheight', '水印-高', '1', '');
INSERT INTO `yun_config` VALUES ('15', 'watermarkimg', '水印图片', '1', '');
INSERT INTO `yun_config` VALUES ('16', 'watermarkpct', '水印透明度', '1', '80');
INSERT INTO `yun_config` VALUES ('17', 'watermarkquality', 'JPEG 水印质量', '1', '85');
INSERT INTO `yun_config` VALUES ('18', 'watermarkpos', '水印位置', '1', '7');
INSERT INTO `yun_config` VALUES ('19', 'theme', '主题风格', '1', 'Default');
INSERT INTO `yun_config` VALUES ('20', 'ftpstatus', 'FTP上传', '1', '0');
INSERT INTO `yun_config` VALUES ('21', 'ftpuser', 'FTP用户名', '1', '');
INSERT INTO `yun_config` VALUES ('22', 'ftppassword', 'FTP密码', '1', '');
INSERT INTO `yun_config` VALUES ('23', 'ftphost', 'FTP服务器地址', '1', '');
INSERT INTO `yun_config` VALUES ('24', 'ftpport', 'FTP服务器端口', '1', '21');
INSERT INTO `yun_config` VALUES ('25', 'ftppasv', 'FTP是否开启被动模式', '1', '1');
INSERT INTO `yun_config` VALUES ('26', 'ftpssl', 'FTP是否使用SSL连接', '1', '0');
INSERT INTO `yun_config` VALUES ('27', 'ftptimeout', 'FTP超时时间', '1', '10');
INSERT INTO `yun_config` VALUES ('28', 'ftpuppat', 'FTP上传目录', '1', '/');
INSERT INTO `yun_config` VALUES ('29', 'mail_type', '邮件发送模式', '1', '1');
INSERT INTO `yun_config` VALUES ('30', 'mail_server', '邮件服务器', '1', 'smtp.qq.com');
INSERT INTO `yun_config` VALUES ('31', 'mail_port', '邮件发送端口', '1', '25');
INSERT INTO `yun_config` VALUES ('32', 'mail_from', '发件人地址', '1', 'admin@abc3210.com');
INSERT INTO `yun_config` VALUES ('33', 'mail_auth', '密码验证', '1', '1');
INSERT INTO `yun_config` VALUES ('34', 'mail_user', '邮箱用户名', '1', '');
INSERT INTO `yun_config` VALUES ('35', 'mail_password', '邮箱密码', '1', '');
INSERT INTO `yun_config` VALUES ('36', 'mail_fname', '发件人名称', '1', 'ShuipFCMS管理员');
INSERT INTO `yun_config` VALUES ('37', 'domainaccess', '指定域名访问', '1', '0');
INSERT INTO `yun_config` VALUES ('38', 'generate', '是否生成首页', '1', '1');
INSERT INTO `yun_config` VALUES ('39', 'index_urlruleid', '首页URL规则', '1', '11');
INSERT INTO `yun_config` VALUES ('40', 'indextp', '首页模板', '1', 'index.php');
INSERT INTO `yun_config` VALUES ('41', 'tagurl', 'TagURL规则', '1', '8');
INSERT INTO `yun_config` VALUES ('42', 'checkcode_type', '验证码类型', '1', '0');
INSERT INTO `yun_config` VALUES ('43', 'attachment_driver', '附件驱动', '1', 'Local');

-- ----------------------------
-- Table structure for `yun_config_field`
-- ----------------------------
DROP TABLE IF EXISTS `yun_config_field`;
CREATE TABLE `yun_config_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置，扩展字段列表';

-- ----------------------------
-- Records of yun_config_field
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_connect`
-- ----------------------------
DROP TABLE IF EXISTS `yun_connect`;
CREATE TABLE `yun_connect` (
  `connectid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `openid` varchar(32) NOT NULL COMMENT '授权标识',
  `uid` mediumint(8) NOT NULL COMMENT '用户ID',
  `app` varchar(10) NOT NULL COMMENT '应用名称',
  `accesstoken` char(50) NOT NULL COMMENT 'access_token',
  `expires` int(10) NOT NULL COMMENT 'token过期时间',
  PRIMARY KEY (`connectid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='登陆授权';

-- ----------------------------
-- Records of yun_connect
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_cooperation_form`
-- ----------------------------
DROP TABLE IF EXISTS `yun_cooperation_form`;
CREATE TABLE `yun_cooperation_form` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL COMMENT '姓名',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `mobile` varchar(11) NOT NULL COMMENT '手机',
  `company` varchar(20) NOT NULL COMMENT '公司名称',
  `post` varchar(10) DEFAULT NULL COMMENT '职务',
  `email` varchar(50) DEFAULT NULL COMMENT 'email',
  `address` varchar(100) DEFAULT NULL COMMENT '公司地址',
  `advise` text COMMENT '建议',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='企业合作表单';

-- ----------------------------
-- Records of yun_cooperation_form
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_customlist`
-- ----------------------------
DROP TABLE IF EXISTS `yun_customlist`;
CREATE TABLE `yun_customlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义列表ID',
  `url` char(100) NOT NULL DEFAULT '' COMMENT '访问地址',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '列表标题',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '网页标题',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '网页关键字',
  `description` text COMMENT '页面简介',
  `totalsql` text COMMENT '数据统计SQL',
  `listsql` text COMMENT '数据查询SQL',
  `lencord` int(11) NOT NULL DEFAULT '0' COMMENT '每页显示',
  `urlruleid` int(11) NOT NULL DEFAULT '0' COMMENT 'URL规则ID',
  `urlrule` varchar(120) NOT NULL DEFAULT '' COMMENT 'URL规则',
  `template` mediumtext COMMENT '模板',
  `listpath` varchar(60) NOT NULL DEFAULT '' COMMENT '列表模板文件',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义列表';

-- ----------------------------
-- Records of yun_customlist
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_customtemp`
-- ----------------------------
DROP TABLE IF EXISTS `yun_customtemp`;
CREATE TABLE `yun_customtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `tempname` varchar(30) NOT NULL DEFAULT '' COMMENT '模板完整文件名',
  `temppath` varchar(200) NOT NULL DEFAULT '' COMMENT '模板生成路径',
  `temptext` mediumtext COMMENT '模板内容',
  PRIMARY KEY (`tempid`),
  KEY `tempname` (`tempname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义模板表';

-- ----------------------------
-- Records of yun_customtemp
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_goods`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods`;
CREATE TABLE `yun_goods` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '商品名称',
  `img_logo` varchar(20) NOT NULL COMMENT '产品logo',
  `cart_id` tinyint(4) NOT NULL COMMENT '产品类型',
  `price` decimal(10,2) NOT NULL COMMENT '价格单位月',
  `instro` text NOT NULL COMMENT '产品简介',
  `functions` text NOT NULL COMMENT '功能介绍',
  `guide` text NOT NULL COMMENT '使用指南',
  `is_sale` tinyint(4) NOT NULL COMMENT '是否销售0不销售1销售',
  `is_new` tinyint(4) NOT NULL COMMENT '是否推荐0不推荐1推荐',
  `is_hot` tinyint(4) NOT NULL COMMENT '是否推荐0不推荐1推荐',
  `install` varchar(60) NOT NULL,
  `manual` varchar(60) NOT NULL,
  `resource` varchar(60) NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='云市场商品表';

-- ----------------------------
-- Records of yun_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_attr`;
CREATE TABLE `yun_goods_attr` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` smallint(5) unsigned NOT NULL,
  `attr_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='云市场商品属性表';

-- ----------------------------
-- Records of yun_goods_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_goods_carts`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_carts`;
CREATE TABLE `yun_goods_carts` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `gp_id` int(11) NOT NULL COMMENT '商品套餐id',
  `num` int(6) NOT NULL COMMENT '商品数量',
  `purchase` int(6) NOT NULL COMMENT '购买时长',
  `price` float(8,2) NOT NULL COMMENT '商品单价',
  `type_id` int(8) NOT NULL DEFAULT '0' COMMENT '商品类型id',
  `spec01_id` int(8) DEFAULT NULL COMMENT '公有云规格id',
  `spec02_id` int(8) DEFAULT NULL COMMENT '云应用规格id',
  `member_id` int(10) NOT NULL COMMENT '会员id',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='商品购物车';

-- ----------------------------
-- Records of yun_goods_carts
-- ----------------------------
INSERT INTO `yun_goods_carts` VALUES ('4', '1', '5', '4', '68.00', '0', '1', '0', '3', '1468921172');
INSERT INTO `yun_goods_carts` VALUES ('6', '1', '1', '1', '78.00', '0', '2', '0', '5', '1469526374');
INSERT INTO `yun_goods_carts` VALUES ('7', '4', '1', '1', '980.00', '17', '0', '6', '1', '1470736008');
INSERT INTO `yun_goods_carts` VALUES ('10', '4', '1', '1', '980.00', '16', '0', '3', '8', '1484617521');
INSERT INTO `yun_goods_carts` VALUES ('11', '1', '1', '1', '108.00', '14', '2', '0', '8', '1484617537');

-- ----------------------------
-- Table structure for `yun_goods_genre`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_genre`;
CREATE TABLE `yun_goods_genre` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '类型名称',
  `goods_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='云市场类型表';

-- ----------------------------
-- Records of yun_goods_genre
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_goods_intro`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_intro`;
CREATE TABLE `yun_goods_intro` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` smallint(5) unsigned NOT NULL,
  `intru` text NOT NULL COMMENT '产品介绍',
  `func` text NOT NULL COMMENT '功能介绍',
  `use` varchar(150) NOT NULL COMMENT '产品baner',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='产品介绍';

-- ----------------------------
-- Records of yun_goods_intro
-- ----------------------------
INSERT INTO `yun_goods_intro` VALUES ('25', '35', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04c1a7fd9e.jpg&quot; style=&quot;&quot; title=&quot;index_details-产品详情_03.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04c1aa4563.jpg&quot; style=&quot;&quot; title=&quot;index_details-产品详情_06.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04c267007f.jpg&quot; style=&quot;&quot; title=&quot;index_details-产品详情_08.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04c2689dc1.jpg&quot; style=&quot;&quot; title=&quot;index_details-产品详情_09.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58ad02d89463b.png');
INSERT INTO `yun_goods_intro` VALUES ('26', '36', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04cdcea1a1.jpg&quot; title=&quot;index_details-产品详情-Sales-cloud_03.jpg&quot; alt=&quot;index_details-产品详情-Sales-cloud_03.jpg&quot;/&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04ce451837.jpg&quot; title=&quot;index_details-产品详情-Sales-cloud_06.jpg&quot; alt=&quot;index_details-产品详情-Sales-cloud_06.jpg&quot;/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58ae849ab425c.jpg');
INSERT INTO `yun_goods_intro` VALUES ('27', '37', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58ae923ac4a24.jpg&quot; title=&quot;index_details-产品详情-Sales-cloud_06.jpg&quot; alt=&quot;index_details-产品详情-Sales-cloud_06.jpg&quot;/&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58ae92487ab21.jpg&quot; title=&quot;gn1_03.jpg&quot; alt=&quot;gn1_03.jpg&quot;/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58af91b6a5e2d.jpg');
INSERT INTO `yun_goods_intro` VALUES ('28', '38', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04b91f23e6.jpg&quot; title=&quot;Eventbank_07.jpg&quot; alt=&quot;Eventbank_07.jpg&quot;/&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04ba1cb415.jpg&quot; style=&quot;&quot; title=&quot;Eventbank_10.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04ba206341.jpg&quot; style=&quot;&quot; title=&quot;Eventbank_12.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58b0443dae880.jpg');
INSERT INTO `yun_goods_intro` VALUES ('29', '39', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b0492c9e7aa.jpg&quot; title=&quot;x1_03.jpg&quot; alt=&quot;x1_03.jpg&quot;/&gt;&lt;/p&gt;', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b0493b840d6.jpg&quot; title=&quot;x2_03.jpg&quot; alt=&quot;x2_03.jpg&quot;/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58b04a39f1aba.jpg');

-- ----------------------------
-- Table structure for `yun_goods_member`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_member`;
CREATE TABLE `yun_goods_member` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` smallint(5) unsigned NOT NULL,
  `member_id` smallint(5) unsigned NOT NULL,
  `instro` text NOT NULL COMMENT '用户体验',
  `img_logo` varchar(100) NOT NULL COMMENT '产品logo',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='云市场用户体验';

-- ----------------------------
-- Records of yun_goods_member
-- ----------------------------
INSERT INTO `yun_goods_member` VALUES ('11', '35', '0', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;东风雷诺汽车有限公司&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.5em;&quot;&gt;“Office 365的快速部署能力为我们IT基础设施建设减轻了很大负担。Office 365的订阅模式让我们对成本的投入清清楚楚，很容易扩展，为以后公司发展奠定了良好的基础。”&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;br/&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58afd555cf536.png', '1487918441');
INSERT INTO `yun_goods_member` VALUES ('12', '35', '0', '&lt;p style=&quot;line-height: 1.5em;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;招商信诺人寿保险有限公司&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.5em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.5em;&quot;&gt;“招商信诺的快速发展，需要我们提供更先进的IT支持。云计算是我们着眼的未来方向。Office 365实现跨Exchange、SharePoint和Lync的数据存档，这样，招商信诺可以同时确保内部合规和监管机构合规，有能力发现并永久保留整个组织范围内的数据，让我们获得安全放心的云服务的同时，提升了IT服务质量，还有效的降低了整体IT成本。” &lt;br/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58afd59df4232.png', '1487918507');
INSERT INTO `yun_goods_member` VALUES ('13', '35', '0', '&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;上海市政府&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.5em;&quot;&gt;“政府部门要具备创新的思维和眼光，转变服务模式，满足各级政务部门的多样化业务应用需求。Office 365 将云端的应用落地到中国，并在上海市全面推广，有助于我们在创新社会管理体制、全面促进资源节约等方面进行积极的尝试和探索。”&lt;/p&gt;&lt;br/&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58afd5cd5a7c1.png', '1487918546');
INSERT INTO `yun_goods_member` VALUES ('14', '35', '0', '&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;文思海辉技术有限公司&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1.5em;&quot;&gt;“云平台理念将成未来趋势，利用Office 365，我们快速的将公司部分业务转移到云平台，在成本可控的前提下，Office 365还很好地解决了公司在邮件系统、沟通方式以及文档管理等方面存在的问题，优化企业内部管理。”&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '/d/file/content/2017/02/58afd5ee41216.png', '1487918578');
INSERT INTO `yun_goods_member` VALUES ('15', '37', '0', '&lt;p&gt;我们过去依靠一套CRM管理线索，体量大，不够灵活，难以和市场上主流营销渠道进行整合。后来通过DM Hub高效地整合数据，同时调用多种渠道进行线索培育。大大提升了转化率，节约了营销成本。&lt;/p&gt;', '/d/file/content/2017/02/58afe67b9a4e4.png', '1487922832');
INSERT INTO `yun_goods_member` VALUES ('16', '37', '0', '&lt;p&gt;通过DM Hub，我可以将编辑好的一个素材，发布到不同渠道，并且能够追踪到哪些客户和我们产生了互动，哪些没有，谁喜欢什么活动，真正做到了“千人千面”，用户不再对我们说NO。&lt;/p&gt;', '/d/file/content/2017/02/58afe6bb03933.png', '1487922897');
INSERT INTO `yun_goods_member` VALUES ('17', '36', '0', '&lt;p&gt;Salesforce 帮助飞利浦在竞争中始终遥遥领先&lt;/p&gt;&lt;p&gt;“要在 21 世纪成为成功的全球品牌，不仅需要灵活应变，还必须适应当地情况。” 120 多年来，飞利浦的创新照明解决方案、医疗保健解决方案和消费者生活方式解决方案让全世界人们的生活更加美好。 借助 Salesforce，飞利浦能够更深入地了解个别市场中的客户，从而提供比以往更贴近客户需求的产品。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '/d/file/content/2017/03/58b6680966e8d.png', '1488349206');
INSERT INTO `yun_goods_member` VALUES ('18', '36', '0', '&lt;p&gt;丰田汽车 将人和车联系起来&lt;/p&gt;&lt;p&gt;“我们希望创造一款前所未有的车型，它就像是车轮上的 iPhone。” 丰田的高级管理人员友山茂树 (Shigeki Tomoyama) 的创新计划吸引了全世界人们的关注。 想象一下，汽车进入人类世界的社交网络领域，并在 Twitter 上更新自己的状态信息。 或者预料您的后续操作，以提供您需要的服务信息。 这就是人类和自己汽车的未来，并且即将成为现实。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '/d/file/content/2017/03/58b66886ecad9.png', '1488349329');

-- ----------------------------
-- Table structure for `yun_goods_package`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_package`;
CREATE TABLE `yun_goods_package` (
  `gp_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '产品名称',
  `img_logo` varchar(100) NOT NULL COMMENT '产品logo',
  `cate_id` tinyint(4) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '套餐类型1公有云2云应用3云市场',
  `price` float(8,2) NOT NULL COMMENT '价格单位月',
  `instro` text NOT NULL COMMENT '套餐简介',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `price_logo` text NOT NULL COMMENT '产品价格',
  `is_sale` tinyint(1) NOT NULL COMMENT '是否销售0不销售1销售',
  `is_new` varchar(100) NOT NULL DEFAULT '推荐视频',
  `is_hot` varchar(100) NOT NULL DEFAULT '推荐图片',
  `www` varchar(255) NOT NULL DEFAULT '跳转官网网址',
  `company` text NOT NULL COMMENT '公司简介',
  `description` text NOT NULL COMMENT '商品概要',
  PRIMARY KEY (`gp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='企业商品套餐表';

-- ----------------------------
-- Records of yun_goods_package
-- ----------------------------
INSERT INTO `yun_goods_package` VALUES ('1', '阿里云主机', '/d/file/content/2016/07/5785b6ca30e37.png', '0', '1', '68.00', '&lt;div class=&quot;title&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 2em; padding: 0px; color: rgb(102, 102, 102); font-family: &amp;#39;Microsoft YaHei&amp;#39;; font-size: 12px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/statics/extres/newmember/images/mall/img-01.png&quot; alt=&quot;&quot; style=&quot;box-sizing: border-box; border: none; vertical-align: top; display: inline-block; margin-right: 2em;&quot;/&gt;&amp;nbsp;&lt;h1 style=&quot;box-sizing: border-box; font-size: 2.5em; margin: 0px; padding: 0px; font-weight: 500; line-height: 1.5em; overflow: hidden; display: inline-block;&quot;&gt;云服务器 ECS&lt;/h1&gt;&lt;/div&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 1.167em; line-height: 1.5em; overflow: hidden; width: 662px; color: rgb(102, 102, 102); font-family: &amp;#39;Microsoft YaHei&amp;#39;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;云服务器（Elastic Compute Service，简称 ECS）是一种简单高效、处理能力可弹性伸缩的计算服务，帮助您快速构建更稳定、安全的应用，提升运维效率，降低 IT 成本，使您更专注于核心业务创新&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467942503', '', '1', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('2', 'UCLOUD', '/d/file/content/2016/07/577f0d3d42db1.png', '0', '1', '0.00', '&lt;p&gt;UCLOUDUCLOUDUCLOUD&lt;/p&gt;', '1467943393', '', '0', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('4', 'Salsforce', '/d/file/content/2016/08/57a43433a2135.png', '0', '2', '160.00', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;#39;Microsoft YaHei&amp;#39;; font-size: 14.004px; letter-spacing: 0.6px; line-height: 21.006px; word-spacing: 0.9px; background-color: rgb(255, 255, 255);&quot;&gt;Salsforce&lt;/span&gt;&lt;/p&gt;', '1467944321', '', '1', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('5', 'Microsoft Azure', '/d/file/content/2016/08/57a3fb9326e15.png', '0', '1', '0.00', '&lt;p&gt;111111&lt;/p&gt;', '1470364697', '', '0', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('6', 'Amazon', '/d/file/content/2016/08/57a3fdae8e945.png', '0', '1', '0.00', '&lt;p&gt;123&lt;/p&gt;', '1470365114', '', '0', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('10', 'ONEAPM AI', '/d/file/content/2016/08/57a43879abedb.png', '0', '2', '0.00', '&lt;p&gt;ONEAPM AI&lt;/p&gt;', '1470380390', '', '0', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('11', 'Office 365', '/d/file/content/2016/08/57a43c0841a70.png', '0', '2', '25.00', '&lt;p&gt;Office 365&lt;/p&gt;', '1470381085', '', '1', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('12', 'Oracle', '/d/file/content/2016/08/57a43e2c799a5.png', '0', '2', '0.00', '&lt;p&gt;Oracle&lt;/p&gt;', '1470381628', '', '0', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('13', 'IMO', '/d/file/content/2016/08/57a43e55ba168.png', '0', '2', '0.00', '&lt;p&gt;IMO&lt;/p&gt;', '1470381671', '', '0', '0', '0', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('14', '国信灵通', '/d/file/content/2016/08/57a43e8c73555.png', '0', '2', '0.00', '&lt;p&gt;国信灵通&lt;/p&gt;', '1470381717', '', '0', '0', '1', '跳转官网网址', '', '');
INSERT INTO `yun_goods_package` VALUES ('35', 'office365', '/d/file/content/2017/02/58acf673d2a7a.png', '9', '3', '0.00', '&lt;div class=&quot;text-holder&quot;&gt;&lt;p class=&quot;product-title&quot;&gt;Office 365 是微软为企业打造的完整的办公云服务&lt;/p&gt;&lt;p class=&quot;product-exp&quot;&gt;Office 365 是微软为企业打造的完整的办公云服务，它不仅包含最新版的Office 软件，同时满足企业对于企业级邮件处理（Exchange Online）、文件分享（SharePoint Online）、即时消息和可视网络会议（Lync Online）的需求，Office 365 将帮助您的企业实现办公的运维、管理和使用体验的革新，为您的企业带来更灵活、高效、更安全可靠的云办公方式。&lt;/p&gt;&lt;/div&gt;', '1487730717', '&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;l-col-3&quot;&gt;&lt;div class=&quot;price-block&quot;&gt;&lt;p class=&quot;price-title1&quot;&gt;Exchange Online 计划 1&lt;/p&gt;&lt;p class=&quot;company-exp&quot;&gt;企业邮箱&lt;/p&gt;&lt;p class=&quot;price&quot;&gt;￥ 25.00用户/月&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 企业级电子邮件:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;50GB收件箱，垃圾邮件防护&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 联系人与日历:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;共享日历，任务，提醒&lt;/p&gt;&lt;p class=&quot;no-word&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;no-word&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;no-word&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;no-word&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 最大用户数:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;不限&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;l-col-3&quot;&gt;&lt;div class=&quot;price-block&quot;&gt;&lt;p class=&quot;price-title2&quot;&gt;Office 365 商业协作版&lt;/p&gt;&lt;p class=&quot;company-exp&quot;&gt;包含企业邮箱、网盘、视频会议等云服务&lt;/p&gt;&lt;p class=&quot;price&quot;&gt;￥ 30.00用户/月&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 企业级电子邮件:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;50GB收件箱，垃圾邮件防护&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 联系人与日历:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;共享日历，任务，提醒&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 文件存储与共享:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;每用户1TB存储空间&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 支持250人的高清联机会议、&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;即时消息，桌面及PowerPoint&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;文档共享&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 轻松建站，企业网盘，&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;支持协同工作&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• Webapp Office联机版本：&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;在浏览器中使用Word，&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;Excel和PowerPoint&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 最大用户数:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;不限&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;l-col-3&quot;&gt;&lt;div class=&quot;price-block&quot;&gt;&lt;p class=&quot;price-title3&quot;&gt;Office 365 商业版&lt;/p&gt;&lt;p class=&quot;company-exp&quot;&gt;完整的Office应用和1TB网盘&lt;/p&gt;&lt;p class=&quot;price&quot;&gt;￥ 50.00用户/月&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 文件存储与共享:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;每用户1TB存储空间&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• Webapp Office联机版本：&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;在浏览器中使用Word，&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;Excel和PowerPoint&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 完整安装版Office应用程序：&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;最多可以在5台PC或Mac上安装&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 用于平板电脑的Office:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;最多可以安装到5台&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;Windows平板或iPad平板&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 用于智能手机的Office:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;最多可以在5部手机上&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;查看和编辑Office文档&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 最大用户数:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;不限&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;l-col-3&quot;&gt;&lt;div class=&quot;price-block&quot;&gt;&lt;p class=&quot;price-title4&quot;&gt;Office 365 高级版&lt;/p&gt;&lt;p class=&quot;company-exp&quot;&gt;完整的Office应用和企业邮箱、 网盘、视频会议等全套服务&lt;/p&gt;&lt;p class=&quot;price&quot;&gt;￥ 80.00用户/月&lt;/p&gt;&lt;p class=&quot;no-word&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;no-word&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 完整安装版Office应用程序：&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;最多可以在5台PC或Mac上安装&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 用于平板电脑的Office:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;最多可以安装到5台&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;Windows平板或iPad平板&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 用于智能手机的Office:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;最多可以在5部手机上&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;查看和编辑Office文档&lt;/p&gt;&lt;p class=&quot;dot&quot;&gt;• 最大用户数:&lt;/p&gt;&lt;p class=&quot;dot-next&quot;&gt;不限&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '1', '/d/file/content/2017/02/58acf73ec2dbd.mp4', '/d/file/content/2017/02/58acf793ca791.png', '', '&lt;p&gt;比以往更轻松地创建专业内容，安全地与客户和合作伙伴联系，充分利用功能强大的工具以便更高效地管理、控制和遵循企业级安全性、预防数据丢失以及进行权限管理。&lt;/p&gt;', '比以往更轻松地创建专业内容，安全地与客户和合作伙伴联系，充分利用功能强大的工具以便更高效地管理、控制和遵循企业级安全性、预防数据丢失以及进行权限管理');
INSERT INTO `yun_goods_package` VALUES ('36', 'Salesforce-Sales Cloud', '/d/file/content/2017/03/58b63afdaf5c6.png', '19', '3', '10.80', '&lt;div class=&quot;text-holder&quot;&gt;&lt;p class=&quot;product-title&quot;&gt;由Lightning驱动的全新Sales Cloud&lt;/p&gt;&lt;p class=&quot;product-exp&quot;&gt;Salesforce 包含预构建的客户关系管理 (CRM) 应用程序，涵盖销售管理自动化、合作伙伴关系管理、市场营销以及客户服务等众多方面。&lt;/p&gt;&lt;/div&gt;', '1487832231', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04d23c2b3e.jpg&quot; style=&quot;&quot; title=&quot;index_details-产品价格_03.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04d23de23c.jpg&quot; title=&quot;index_details-产品价格_05.jpg&quot; style=&quot;font-size: 16px;&quot;/&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; color: rgb(84, 141, 212);&quot;&gt;产品培训服务（使用者/管理员）&lt;span class=&quot;Apple-tab-span&quot; style=&quot;font-size: 14px; white-space: pre;&quot;&gt;&lt;/span&gt;4000元/天·人&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(84, 141, 212); font-size: 14px;&quot;&gt;产品实施服务（系统配置、数据导入）&lt;/span&gt;&lt;span class=&quot;Apple-tab-span&quot; style=&quot;color: rgb(84, 141, 212); font-size: 14px; white-space: pre;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(84, 141, 212); font-size: 14px;&quot;&gt;4000元/天·人&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(84, 141, 212); font-size: 14px;&quot;&gt;产品实施服务（对接、开发）&lt;/span&gt;&lt;span class=&quot;Apple-tab-span&quot; style=&quot;color: rgb(84, 141, 212); font-size: 14px; white-space: pre;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(84, 141, 212); font-size: 14px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;Apple-tab-span&quot; style=&quot;color: rgb(84, 141, 212); font-size: 14px; white-space: pre;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(84, 141, 212); font-size: 14px;&quot;&gt;5000元/天·人&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; color: rgb(89, 89, 89);&quot;&gt;1、所有按用户数量计费的产品都需签订包年合同。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(89, 89, 89); font-size: 14px;&quot;&gt;2、仅在 Salesforce Classic 中提供。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(89, 89, 89); font-size: 14px;&quot;&gt;3、可用附加项&amp;quot;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/d/file/content/2017/02/58ae806404b2b.mp4', '/d/file/content/2017/02/58ae7ff90cb6c.jpg', 'http://WWW.Salesforce.COM', '&lt;p&gt;&lt;span style=&quot;color: rgb(108, 108, 108); font-family: Helvetica, Tahoma, Arial, &amp;quot;Microsoft YaHei&amp;quot;, 华文细黑, SimSun, Heiti, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 32px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(245, 245, 245); display: inline !important; float: none;&quot;&gt;欢迎使用基于 App Cloud, Sales Cloud。 一个新世界，一种更优秀的销售方式。 只通过移动设备展开现场销售业务。 并且内部销售所获得的支持与最佳销售线索相同。 销售经理了解将在何时 达成哪些交易。 在这里，销售线索和联系人信息将始终保持最新和完整状态。 所有人都发挥一流绩效。&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;', '欢迎使用基于 App Cloud, Sales Cloud。 一个新世界，一种更优秀的销售方式');
INSERT INTO `yun_goods_package` VALUES ('37', 'Convertlab', '/d/file/content/2017/03/58b63c6c73afc.jpg', '20', '3', '80.20', '&lt;p&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;Convertlab助力中国企业快速实现营销数字化转型&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Convertlab助力中国企业快速实现&lt;/span&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;营销数字化转型，适用于营销人员，数据营销人员，CRM经理的一站式解决方案。沉淀全渠道行为数据和标签，精细化潜客户&amp;amp;老客户运营&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1487835722', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b052c85144e.jpg&quot; title=&quot;c1_03.jpg&quot; alt=&quot;c1_03.jpg&quot;/&gt;&lt;/p&gt;', '1', '/d/file/content/2017/02/58ae91a9c8fb3.mp4', '/d/file/content/2017/02/58ae91b691f9d.jpg', 'http://www.convertlab.com', '&lt;p&gt;一站式营销平台 连接所有客户 为企业建立自己的客户大数据中心 。在一个平台上发掘、培育、转化客户实时分析和执行。&lt;/p&gt;', 'Convertlab助力中国企业快速实现营销数字化转型');
INSERT INTO `yun_goods_package` VALUES ('38', 'EventBank捷会易', '/d/file/content/2017/02/58b03f59d5598.png', '2', '3', '0.00', '&lt;div class=&quot;text-holder&quot;&gt;&lt;p class=&quot;product-title&quot;&gt;EventBank捷会易丨全球领先的企业营销活动/协会商会一体化管理云&lt;/p&gt;&lt;p class=&quot;product-exp&quot;&gt;eventBank是面向全球的市场营销自动化、互联网化、数据化、一体化平台型创新SaaS公司。成功打造出两款管理云平台：企业市场营销活动一体化管理云和社群组织（商会协会等）一体化管理云，帮助企业市场部和商会协会等社群组织实现活动管理、会员管理、多币种支付、CRM、EDM/Newsletter订阅及发送，以及更多功能。&lt;/p&gt;&lt;/div&gt;', '1487945861', '&lt;p&gt;666&lt;/p&gt;', '1', '', '/d/file/content/2017/02/58b0473670464.jpg', '', '&lt;p&gt;EventBank捷会易帮助企业市场部及社群组织(协会、商会)实现活动管理、会员管理、CRM客户关系管理、EDM邮件营销、多币种支付等。&lt;/p&gt;', 'eventBank是面向全球的市场营销自动化、互联网化、数据化、一体化平台型创新SaaS公司');
INSERT INTO `yun_goods_package` VALUES ('39', 'Service Cloud', '/d/file/content/2017/03/58b63c473568a.png', '8', '3', '888.00', '&lt;div class=&quot;text-holder&quot;&gt;&lt;p class=&quot;product-title&quot;&gt;Service Cloud &amp;nbsp;- 呼叫中心管理系统&lt;/p&gt;&lt;p class=&quot;product-exp&quot;&gt;由Lightning驱动的全新Sales Cloud。Sales Cloud销售管理系统有着强大的数据处理能力，能帮助您更好地管理客户档案、销售团队以及销售流程，让您能承接更多的业务。&lt;/p&gt;&lt;/div&gt;', '1487948334', '&lt;p&gt;&lt;img src=&quot;/d/file//2017/02/58b04a030595f.jpg&quot; title=&quot;x3_03.jpg&quot; alt=&quot;x3_03.jpg&quot;/&gt;&lt;/p&gt;', '0', '', '/d/file/content/2017/02/58b04914ac8c3.jpg', '', '&lt;div class=&quot;text-holder&quot;&gt;&lt;p class=&quot;product-exp&quot;&gt;Salesforce是全球首屈一指的CRM解决方案提供者，借助我们不同类型的云计算应用产品，您的销售团队自动化将达到新的高度。各种云端工具让您的团队有更多制胜法宝、获得更高的生产效率，并对渠道信息了如指掌。这一切都无需安装任何软件或硬件，并且对企业机器运行速度没有限制。&lt;/p&gt;&lt;/div&gt;', '由Lightning驱动的全新Sales Cloud');

-- ----------------------------
-- Table structure for `yun_goods_problem`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_problem`;
CREATE TABLE `yun_goods_problem` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` smallint(5) unsigned NOT NULL,
  `pro` varchar(255) NOT NULL,
  `intru` text NOT NULL COMMENT '问题中心',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='常见问题';

-- ----------------------------
-- Records of yun_goods_problem
-- ----------------------------
INSERT INTO `yun_goods_problem` VALUES ('16', '35', '什么是 Office 365？它与 Microsoft Office 有何不同？', '&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Office 365。“Office 365”指的是一系列订阅计划，包括 Office 应用程序的使用权限以及通过 Internet 实现的其他生产力服务（云服务）。Office 365 包括家用和商用计划。了解家用 Office 365。Office 365 商用计划包括 Skype for Business Web 会议和 Exchange Online 托管企业电子邮件等服务，以及额外的 OneDrive for Business 网盘。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('19', '35', 'Office 365 商业版支持多少用户？ ', '&lt;p&gt;Office 365 商业版最多支持 300 名用户。如果你的用户超过 300 名，或者认为用户即将超出此数量，可以考虑选用其他计划选项。&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('20', '35', '如果我已经有一个域名该怎么办？', '&lt;p&gt;你可以将你所拥有的域名添加到 Office 365，以创建基于域的电子邮件地址。查找你的域注册机构或 DNS 托管提供者。比较 Office 365订阅中的域管理。&amp;nbsp;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('21', '35', '我是否可以切换到其他Office 365计划？', '&lt;p&gt;可以。如果你需要升级，可以将你的帐户切换到不同的计划。例如，你可以从 Office 365 商业版计划升级到 Office 365 企业版计划。&lt;/p&gt;&lt;p&gt;在大多数情况下，你可以使用管理中心中的切换计划向导来升级你的计划。如果你的订阅有超过 300 名的用户，或者如果你使用了预付&lt;/p&gt;&lt;p&gt;卡购买计划，则无法使用切换计划向导。无资格使用切换计划向导的计划可手动升级。&lt;/p&gt;&lt;p&gt;注意：无论你向 Office 365 帐户提供了自己的域名或是使用了 Office 365 设置域名，在你升级你的帐户时，都会将你的域名传入新帐户。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('22', '35', 'Office 365 需要访问 Internet 吗？', '&lt;p&gt;所有 Office 365 计划的安装和激活以及订阅帐户的管理都需要 Internet 访问权限。访问 Office 365 云生产力服务（包括电子邮件、会议、IT 管理和其他服务）也要求具备 Internet 连接。&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('23', '35', '注册 Office 365 时，需要安装什么程序？', '&lt;p&gt;无需安装任何程序即可使用 Office 365。&lt;/p&gt;&lt;p&gt;为帮助你将最新版本的 Office、Office 2013、Office 2010 或 Office 2007 的桌面版本轻松连接到 Office 365，Microsoft 免费为 Office 365 客户提供了一个可安装的软件，称为“Office Desktop Setup”。&lt;/p&gt;&lt;p&gt;Office Desktop Setup 提供了诸多优势，包括：&lt;/p&gt;&lt;p&gt;自动检测必要的更新。&lt;/p&gt;&lt;p&gt;以实现请求许可或者静默的方式，通过命令行安装更新和组件。&lt;/p&gt;&lt;p&gt;自动配置 Outlook 和 Microsoft Skype for Business，以便与 Microsoft Office 365 一起使用。&lt;/p&gt;&lt;p&gt;运行完成后，自行从客户端计算机中卸载。&lt;/p&gt;&lt;p&gt;可以在你的 Office 365 管理中心内找到并安装 Office Desktop Setup。&lt;/p&gt;&lt;p&gt;如果你的计划中包含 Office 订阅，你还可以直接从 Office 365 管理中心内进行安装。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('25', '37', ' 产品和服务（我们是干什么的）', '&lt;p&gt;&amp;quot;Convertlab的DM Hub是解决当前企业营销痛点的解决方案：&lt;/p&gt;&lt;p&gt;- 帮助企业采集来自于各种营销渠道的客户数据和行为，并通过标签等方式形成客户画像&lt;/p&gt;&lt;p&gt;- 用自动化的方式，提供千人千面，覆盖多种营销渠道的客户体验&lt;/p&gt;&lt;p&gt;- 建立企业围绕营销的各种协同&lt;/p&gt;&lt;p&gt;- 对营销的产出做出衡量和优化&amp;nbsp;&lt;/p&gt;&lt;p&gt;Convertlab的DM Hub具备成熟领先的灵活性，开放性和扩展性，可以帮助企业迅速建立符合自身需求的营销场景和运营体系。&amp;nbsp;&lt;/p&gt;&lt;p&gt;Convertlab以云计算的方式为企业提供按需服务，降低企业的总体拥有成本&amp;quot;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('26', '37', '核心价值 （我们能帮到企业什么）', '&lt;p&gt;&amp;quot;Convertlab的DM Hub为企业提供三方面的核心价值：&lt;/p&gt;&lt;p&gt;- 销售开源：打通营销触点和渠道，通过线上线下、移动社群等各种方式获取用户&lt;/p&gt;&lt;p&gt;- 转化率提升：通过自动化的程序营销手段提升各阶段的转化率，提供千人千面的用户体验，同时还能大幅降低运营成本&lt;/p&gt;&lt;p&gt;- 精准营销：管理企业内部外部的各种用户数据资产，以此为基础提供各种精准营销手段，并对产出进行各种衡量和持续优化&amp;quot;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('28', '37', '微信图文、微页面、H5页面之间的不同之处', '&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;微信图文、微页面都是H5页面，根据其所运行的服务器不同，分为微信图文合微页面。微信图文是运行在微信的服务器上的，微页面是运行在非微信的服务器上的。微信图文能够追踪到的客户行为很有限，目前只有打开合转发；而微页面能够追踪到更多的客户行为，比如打开、转发、页面停留时间、页面内链接和按钮的点击&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('30', '37', '产品最核心的竞争力在哪儿', '&lt;p&gt;&amp;quot;三方面的核心价值：&lt;/p&gt;&lt;p&gt;-销售开源：打通营销触点和渠道，通过线上线下、移动社群等各种方式获取用户&lt;/p&gt;&lt;p&gt;-转化率提升：通过自动化的程序营销手段提升各阶段的转化率，提供千人千面的用户体验，同时还能大幅降低运营成本&lt;/p&gt;&lt;p&gt;-精准营销：管理企业内部外部的各种用户数据资产，以此为基础提供各种精准营销手段，并对产出进行各种衡量和持续优化&amp;quot;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('32', '37', '企业客户数据安全性如何', '&lt;p&gt;非常安全，我们的所有数据都是存储在阿里云上面的，因此不用担心数据安全问题&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('33', '37', '用户画像如何做到精确', '&lt;p&gt;DM Hub中的用户画像包括多个维度（标签，分组，兴趣度打分等）。这些维度共同组成了用户画像。和一般的DMP不一样，DMP关注的全网的标签，有很多无关信息，但是DM Hub关注的是您的产品的标签。比如，一个人在网络上可能对游戏感兴趣，但是这个信息对卖理财产品的卖家是没有关系的。卖理财产品的卖家只关心客户喜欢高风险高收益的产品，还是低风险低收益的产品。但这些标签，是可以通过DM Hub收集的&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('34', '37', '可否提供客户测试帐号测试，存在产品隐私保护与否', '&lt;p&gt;根据现在的销售流程是可以提供测试帐号的，提供测试帐号不存在产品隐私的问题&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('35', '37', '企业使用我司产品的其它成本（除基本产品使用费外）', '&lt;p&gt;如果有比较重的内容营销，需要配置内容编辑等职位。如果需要接入CRM，那么需要一定的开发&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('36', '37', '产品易用程度如何（演示过程客户提出设置流程比较复杂）', '&lt;p&gt;不是很难，而且我们也正在推出快捷版本，以帮助客户快速部署系统&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('37', '37', '产品大数据的捕捉触点是否存在局限性（信息来源渠道的不可控性）', '&lt;p&gt;&amp;quot;首先我们必须清楚地认识到并不存在一个能捕捉全触点的工具，应为可以采集用户信息的地方太多了，数不胜数。而且由于很多系统并不开放，也就不可能获得数据。所以正确并且可行的做法是，将有限的精力集中在信息价值最高的地方，比如微信、邮件、网站页面等这些获取数据更为直接，交互更为频繁，价格更高的地方。&lt;/p&gt;&lt;p&gt;只要能放二维码的地方，能埋点的地方，我们就能帮助客户采集到有效的数据。&amp;quot;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('38', '37', '精准营销工具里的卡券来源（生成地点，核销地点是哪儿）', '&lt;p&gt;目前我们使用的是微信卡券，生成地点是在Convertlab，核销地点是在在线商城或者线下门店&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('39', '37', '百度搜索引擎，天猫平台，微博的客户数据追踪抓取方式', '&lt;p&gt;系统功能支持通过tracking url将不同关键字带来的客户区分开，以及用户通过百度访问企业自己的网页的行为。其它较为封闭的平台需要逐一和对方谈商务合作。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('40', '37', '线下活动除二维码布点，客户数据如何实现自动化抓取', '&lt;p&gt;线下除了二维码以外，还可以通过WIFI探针和iBeacon来抓取客户信息，目前正在和WIFI探针以及iBeacon的供应商谈合作&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('45', '37', '能否捕捉到其他社交平台的用户信息（基础信息），如：新浪微博、百度贴吧、百度百科等', '&lt;p&gt;新浪微博的客户信息捕获在产品未来版本中会实现，但是百度贴吧和百度统计的客户信息是无法捕捉的，这是因为百度不开放这些数据给第三方&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('47', '37', '可否从粉丝用户库中先做部分粉丝用户运营。如：粉丝数10万，先做2万粉丝运营', '&lt;p&gt;这不是一个标准功能，需要通过定制的方式来实现（需要额外收费）&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('48', '37', '站在市场营销部门和运营部门角度，从哪些方面消除他们“使用Convertlab DM Hub系统会增加工作量”', '&lt;p&gt;其实不会增加工作量的，在定义好工作流后，所有的流程都是自动执行的。‘一次定义，一辈子省力‘&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('50', '37', 'Convertlab DM Hub系统是否可以把整合营销解决方案捆绑做精准营销', '&lt;p&gt;DM Hub可以作为整合营销的执行工具，比如微页面的制作和推送，短信和邮件的推送，以及后面的追踪和分析等等。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('52', '37', '你们能抓取客户吗', '&lt;p&gt;我们能捕获客户，比如在微信端可以捕获客户的微信帐号信息，通过注册或者提交表单捕获客户的手机以及其它信息&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('53', '37', '我们有用友盟（或者百度统计等竞品）了，你们这个有点重复', '&lt;p&gt;友盟和百度统计能给出的追踪信息都是匿名的点击人数和次数（UV和PV），而我们给出的追踪信息都是到有名有姓的人，这是非常大的区别。建议客户可以同时使用我们的产品和百度统计，因为这样就能互补。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('54', '37', '今日头条他们也有用户画像，你们和他们有什么区别？', '&lt;p&gt;今日头条的用户画像是关于客户新闻阅读喜好的画像，只是一个渠道的画像，而我们提供的是多个渠道的综合画像，比如微信端的社交行为以及微商城端的交易行为的综合画像&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `yun_goods_problem` VALUES ('55', '37', '你们这个工具会不会太复杂了，感觉很难用起来，如果用不起来怎么办', '&lt;p&gt;&amp;quot;我们的产品并不复杂，我们做了大量的优化工作，提升使用的效率。&lt;/p&gt;&lt;p&gt;当然，任何一个工具使用前期都会有个适应期。为了帮助您迅速熟悉我们的产品。我们为我们的客户提供开通服务，培训指导等，而且我们有400电话开放。保障您能顺利地用用起来。而且据我观察，您公司的员工素质都挺高的，相信一定能把产品用得很好。&amp;quot;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');

-- ----------------------------
-- Table structure for `yun_goods_source`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_source`;
CREATE TABLE `yun_goods_source` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` smallint(5) unsigned NOT NULL,
  `source_name` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL DEFAULT '' COMMENT '视频',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='资源中心';

-- ----------------------------
-- Records of yun_goods_source
-- ----------------------------
INSERT INTO `yun_goods_source` VALUES ('8', '35', 'Office_365一看就会', '/d/file/content/2017/02/58afd2cfcf1f6.rar', '1487917784');
INSERT INTO `yun_goods_source` VALUES ('10', '35', 'Office 365 视频简介', '/d/file/content/2017/02/58b0508fc2943.mp4', '1487950003');
INSERT INTO `yun_goods_source` VALUES ('12', '36', 'Salesforce 解决方案演示 – 高新科技行业_超清', '/d/file/content/2017/03/58b6844463eda.mp4', '1488356474');
INSERT INTO `yun_goods_source` VALUES ('13', '36', 'Salesforce 解决方案演示 – 金融服务行业', '/d/file/content/2017/03/58b691d873820.mp4', '1488359939');
INSERT INTO `yun_goods_source` VALUES ('14', '36', 'Salesforce 解决方案演示 – 零售行业', '/d/file/content/2017/03/58b776b427471.mp4', '1488418538');
INSERT INTO `yun_goods_source` VALUES ('15', '14', 'Salesforce 平台概述与演示', '/d/file/content/2017/03/58b77719c3b4e.mp4', '1488418990');

-- ----------------------------
-- Table structure for `yun_goods_spec01`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_spec01`;
CREATE TABLE `yun_goods_spec01` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `cpu` smallint(4) DEFAULT NULL COMMENT 'Cpu核心数',
  `memory` smallint(4) DEFAULT NULL COMMENT '内存容量单位GB',
  `broadband` smallint(4) DEFAULT NULL COMMENT '宽带值单位M',
  `type` varchar(10) DEFAULT NULL COMMENT '规格类型',
  `price` float(8,2) DEFAULT NULL COMMENT '价格',
  `type_id` int(10) NOT NULL COMMENT '产品类型id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公有云产品规格表';

-- ----------------------------
-- Records of yun_goods_spec01
-- ----------------------------
INSERT INTO `yun_goods_spec01` VALUES ('1', '1', '1', '1', '入门型', '68.00', '14');
INSERT INTO `yun_goods_spec01` VALUES ('2', '1', '2', '1', '进阶型', '108.00', '14');
INSERT INTO `yun_goods_spec01` VALUES ('4', '2', '4', '1', '通用型', '221.00', '14');
INSERT INTO `yun_goods_spec01` VALUES ('5', '4', '8', '1', '理想型', '419.00', '14');

-- ----------------------------
-- Table structure for `yun_goods_spec02`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_spec02`;
CREATE TABLE `yun_goods_spec02` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `version` varchar(100) DEFAULT NULL COMMENT '版本名称',
  `price` float(8,2) DEFAULT NULL COMMENT '价格',
  `type_id` int(10) NOT NULL COMMENT '产品类型id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='云应用产品规格表';

-- ----------------------------
-- Records of yun_goods_spec02
-- ----------------------------
INSERT INTO `yun_goods_spec02` VALUES ('1', '联系人管理软件版', '160.00', '16');
INSERT INTO `yun_goods_spec02` VALUES ('2', '专业版', '490.00', '16');
INSERT INTO `yun_goods_spec02` VALUES ('3', '企业版', '980.00', '16');
INSERT INTO `yun_goods_spec02` VALUES ('4', '无限版', '1970.00', '16');
INSERT INTO `yun_goods_spec02` VALUES ('5', '专业版', '490.00', '17');
INSERT INTO `yun_goods_spec02` VALUES ('6', '企业版', '980.00', '17');
INSERT INTO `yun_goods_spec02` VALUES ('7', '无限版', '1970.00', '17');
INSERT INTO `yun_goods_spec02` VALUES ('8', 'Exchange Online 计划 1', '25.00', '11');
INSERT INTO `yun_goods_spec02` VALUES ('11', '商业协作版', '30.00', '11');
INSERT INTO `yun_goods_spec02` VALUES ('12', '商业版', '50.00', '11');
INSERT INTO `yun_goods_spec02` VALUES ('13', '高级版', '80.00', '11');
INSERT INTO `yun_goods_spec02` VALUES ('14', '员工应用程序包', '160.00', '18');
INSERT INTO `yun_goods_spec02` VALUES ('15', '应用程序捆绑包', '490.00', '18');
INSERT INTO `yun_goods_spec02` VALUES ('16', '企业应用程序包', '26320.00', '18');

-- ----------------------------
-- Table structure for `yun_goods_tag`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_tag`;
CREATE TABLE `yun_goods_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `tag_id` int(11) NOT NULL COMMENT '标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yun_goods_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `yun_goods_type`;
CREATE TABLE `yun_goods_type` (
  `type_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '类型名称',
  `gp_id` int(10) NOT NULL COMMENT '产品id',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='商品类型表';

-- ----------------------------
-- Records of yun_goods_type
-- ----------------------------
INSERT INTO `yun_goods_type` VALUES ('7', 'ucloud', '2');
INSERT INTO `yun_goods_type` VALUES ('8', 'Microsoft Azure', '5');
INSERT INTO `yun_goods_type` VALUES ('9', 'Amazon', '6');
INSERT INTO `yun_goods_type` VALUES ('10', 'oneapm', '10');
INSERT INTO `yun_goods_type` VALUES ('11', 'office365', '11');
INSERT INTO `yun_goods_type` VALUES ('12', 'oracle', '12');
INSERT INTO `yun_goods_type` VALUES ('13', 'imo', '13');
INSERT INTO `yun_goods_type` VALUES ('14', '云服务器 ECS', '1');
INSERT INTO `yun_goods_type` VALUES ('15', '国信灵通', '14');
INSERT INTO `yun_goods_type` VALUES ('16', 'Sales Cloud', '4');
INSERT INTO `yun_goods_type` VALUES ('17', 'Service Cloud', '4');
INSERT INTO `yun_goods_type` VALUES ('18', 'App Cloud', '4');

-- ----------------------------
-- Table structure for `yun_locking`
-- ----------------------------
DROP TABLE IF EXISTS `yun_locking`;
CREATE TABLE `yun_locking` (
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `locktime` int(10) NOT NULL DEFAULT '0' COMMENT '锁定时间',
  KEY `userid` (`userid`),
  KEY `onlinetime` (`locktime`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='信息锁定';

-- ----------------------------
-- Records of yun_locking
-- ----------------------------
INSERT INTO `yun_locking` VALUES ('1', 'admin', '9', '3', '1487919258');

-- ----------------------------
-- Table structure for `yun_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `yun_loginlog`;
CREATE TABLE `yun_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `logintime` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

-- ----------------------------
-- Records of yun_loginlog
-- ----------------------------
INSERT INTO `yun_loginlog` VALUES ('1', 'admin', '1466997624', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('2', 'admin', '1467006123', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('3', 'admin', '1467006977', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('4', 'admin', '1467007970', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('5', 'admin', '1467007993', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('6', 'admin', '1467008282', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('7', 'admin', '1467076804', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('8', 'admin', '1467162541', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('9', 'admin', '1467272417', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('10', 'admin', '1467361459', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('11', 'admin', '1467789751', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('12', 'admin', '1467854047', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('13', 'admin', '1467940573', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('14', 'admin', '1467940817', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('15', 'admin', '1467940932', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('16', 'admin', '1468199514', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('17', 'admin', '1468286992', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('18', 'admin', '1468375588', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('19', 'admin', '1468460484', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('20', 'admin', '1468544926', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('21', 'admin', '1468804392', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('22', 'admin', '1468830160', '192.168.30.121', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('23', 'hupeng', '1468890951', '192.168.30.121', '0', '123456789', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('24', 'admin', '1468890964', '192.168.30.121', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('25', 'yun88', '1468896759', '192.168.30.121', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('26', 'admin', '1468896847', '192.168.30.121', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('27', 'yun88', '1468897006', '192.168.30.121', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('28', 'admin', '1468897872', '192.168.30.121', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('29', 'admin', '1468978155', '192.168.30.121', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('30', 'admin', '1469438337', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('31', 'admin', '1469439237', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('32', 'admin', '1469499971', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('33', 'admin', '1469502714', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('34', 'admin', '1469525587', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('35', 'yun88', '1469525639', '120.194.3.98', '0', 'yun88', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('36', 'admin', '1469525649', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('37', 'yun88', '1469525690', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('38', 'yun88', '1469526449', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('39', 'admin', '1469527357', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('40', 'yun88', '1469527709', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('41', 'admin', '1469527746', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('42', 'yun88', '1469527797', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('43', 'yun88', '1470105917', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('44', 'admin', '1470108821', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('45', 'admin', '1470124251', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('46', 'admin', '1470210288', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('47', 'admin', '1470280080', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('48', 'yun88', '1470294816', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('49', 'admin', '1470297274', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('50', 'yun88', '1470298325', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('51', 'admin', '1470301450', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('52', 'bella0726', '1470362909', '120.194.3.98', '0', '123456', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('53', 'bella0726', '1470362921', '120.194.3.98', '0', '123456', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('54', 'yun88', '1470363066', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('55', 'admin', '1470378977', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('56', 'admin', '1470382906', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('57', 'admin', '1470649578', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('58', 'admin', '1470726286', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('59', 'admin', '1470793161', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('60', 'yun88', '1470897341', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('61', 'admin', '1470909496', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('62', 'admin', '1471241597', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('63', 'admin', '1471422234', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('64', 'yun88', '1471570389', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('65', 'admin', '1484126966', '127.0.0.1', '0', 'yun88123456', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('66', 'admin', '1484126995', '127.0.0.1', '0', 'yun88123456', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('67', 'admin', '1484127389', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('68', 'admin', '1484270729', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('69', 'admin', '1484292435', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('70', 'admin', '1484535441', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('71', 'admin', '1484545992', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('72', 'admin', '1484616819', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('73', 'admin', '1484718351', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('74', 'admin', '1484788056', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('75', 'admin', '1485065336', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('76', 'admin', '1485069701', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('77', 'admin', '1485133515', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('78', 'admin', '1485221407', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('79', 'admin', '1485221726', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('80', 'admin', '1485308063', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('81', 'admin', '1486361984', '127.0.0.1', '0', 'yun88123', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('82', 'admin', '1486362292', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('83', 'admin', '1486363794', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('84', 'admin', '1486447400', '127.0.0.1', '0', 'yun123', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('85', 'admin', '1486447430', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('86', 'admin', '1486515859', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('87', 'admin', '1486547383', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('88', 'admin', '1486602606', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('89', 'admin', '1486605796', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('90', 'admin', '1486688192', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('91', 'admin', '1486947110', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('92', 'admin', '1487058790', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('93', 'admin', '1487061414', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('94', 'admin', '1487124055', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('95', 'admin', '1487557180', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('96', 'admin', '1487569923', '127.0.0.1', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('97', 'admin', '1487575349', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('98', 'admin', '1487649263', '192.168.40.19', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('99', 'admin', '1487657574', '192.168.40.106', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('100', 'admin', '1487668334', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('101', 'admin', '1487674465', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('102', 'admin', '1487726366', '192.168.40.106', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('103', 'admin', '1487726429', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('104', 'admin', '1487726760', '192.168.40.106', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('105', 'admin', '1487726802', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('106', 'admin', '1487812608', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('107', 'admin', '1487817126', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('108', 'admin', '1487898934', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('109', 'admin', '1487899108', '192.168.40.19', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('110', 'admin', '1487901772', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('111', 'admin', '1487906510', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('112', 'admin', '1487916910', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('113', 'admin', '1487918254', '192.168.40.25', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('114', 'admin', '1487933800', '192.168.40.106', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('115', 'admin', '1487937233', '192.168.40.106', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('116', 'admin', '1487941011', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('117', 'admin', '1487943742', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('118', 'admin', '1487944038', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('119', 'admin', '1487944091', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('120', 'admin', '1487946680', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('121', 'admin', '1487949738', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('122', 'admin', '1487950212', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('123', 'admin', '1488158272', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('124', 'admin', '1488283109', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('125', 'admin', '1488337533', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('126', 'admin', '1488337992', '101.231.137.80', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('127', 'admin', '1488348927', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('128', 'admin', '1488355303', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('129', 'admin', '1488355433', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('130', 'admin', '1488355691', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('131', 'admin', '1488418421', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('132', 'admin', '1488449341', '120.194.3.98', '1', '密码保密', '用户名登录');
INSERT INTO `yun_loginlog` VALUES ('133', 'admin', '1488449730', '120.194.3.98', '1', '密码保密', '用户名登录');

-- ----------------------------
-- Table structure for `yun_member`
-- ----------------------------
DROP TABLE IF EXISTS `yun_member`;
CREATE TABLE `yun_member` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` char(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` char(6) NOT NULL COMMENT '随机码',
  `checked` tinyint(1) NOT NULL COMMENT '是否审核',
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '性别,1男,2女,0未知',
  `about` varchar(255) NOT NULL COMMENT '个人介绍',
  `heat` int(11) NOT NULL DEFAULT '0' COMMENT '空间热度',
  `theme` char(11) NOT NULL DEFAULT '' COMMENT '空间主题名称',
  `praise` int(11) NOT NULL DEFAULT '0' COMMENT '被赞数',
  `attention` int(11) NOT NULL DEFAULT '0' COMMENT '关注数',
  `fans` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `share` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `nickname` char(20) NOT NULL COMMENT '昵称',
  `userpic` varchar(200) NOT NULL COMMENT '会员头像',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `regip` char(15) NOT NULL DEFAULT '' COMMENT '注册ip',
  `lastip` char(15) NOT NULL DEFAULT '' COMMENT '上次登录ip',
  `loginnum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `email` char(32) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `areaid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '地区id',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '钱金总额',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有短消息',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `vip` tinyint(1) NOT NULL COMMENT 'vip等级',
  `overduedate` int(10) NOT NULL COMMENT 'vip过期时间',
  `mobile` varchar(11) NOT NULL COMMENT '手机号',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20))
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of yun_member
-- ----------------------------
INSERT INTO `yun_member` VALUES ('1', 'hupeng', '37b6f1e45c3a78f07066578d3dcd22f7', 'PxaRuh', '1', '0', '', '0', '', '0', '0', '0', '0', '', '/d/avatar/5787350241a01.png', '1467273436', '1471245476', '127.0.0.1', '120.194.3.98', '51', 'admin22@qq.com', '2', '0', '0.00', '0', '1', '0', '0', '0', '0', '15136175249', '444444444');
INSERT INTO `yun_member` VALUES ('2', 'hupeng02', '8527a0a76fe49a8762d99404105f4e49', 'qnzGMN', '1', '0', '', '0', '', '0', '0', '0', '0', '', '/d/avatar/578ca6dbbd3d2.png', '1468835502', '1468835502', '192.168.30.121', '192.168.30.121', '1', 'hupeng@qq.com', '2', '0', '0.00', '0', '1', '0', '0', '0', '0', '15136175246', '');
INSERT INTO `yun_member` VALUES ('3', 'bella0726', '9bda6b0242703f62286a869a8e8328d3', 'SMo7B4', '1', '0', '', '0', '', '0', '0', '0', '0', '', '', '1468921091', '1471513861', '192.168.40.44', '120.194.3.98', '4', '1328519981@qq.com', '2', '0', '0.00', '0', '1', '0', '0', '0', '0', '13223077765', '河南 郑州');
INSERT INTO `yun_member` VALUES ('4', 'hupeng03', 'e1928f3d836b012612581c17c12036cf', 'dKtA26', '1', '0', '', '0', '', '0', '0', '0', '0', '', '/d/avatar/5796d359df7c5.jpg', '1469502230', '1469502356', '120.194.3.98', '127.0.0.1', '2', 'hupeng03@qq.com', '2', '0', '0.00', '0', '1', '0', '0', '0', '0', '15136175246', '');
INSERT INTO `yun_member` VALUES ('5', 'zhangpei0726', '5ce1a76a238c7720c1c7e6cb102dcb53', 'vZGbsJ', '1', '0', '', '0', '', '0', '0', '0', '0', '', '', '1469526151', '1469526151', '120.194.3.98', '120.194.3.98', '1', '123456@qq.com', '2', '0', '0.00', '0', '1', '0', '0', '0', '0', '13223077765', '');
INSERT INTO `yun_member` VALUES ('6', 'hupeng035', '3191dc1cc845fab06b4ba1ce9c01e108', 'RO2X2E', '1', '0', '', '0', '', '0', '0', '0', '0', '', '', '1470381587', '1470381587', '120.194.3.98', '120.194.3.98', '1', 'hupeng2222@qq.com', '2', '0', '0.00', '0', '1', '0', '0', '0', '0', '15136175246', '');
INSERT INTO `yun_member` VALUES ('7', '雨滴', 'efd527718cc809b9cd476d461b117fef', 'VfUlBa', '1', '0', '', '0', '', '0', '0', '0', '0', '', '', '1471575641', '1471575641', '106.121.4.162', '106.121.4.162', '1', '329168817@QQ.COM', '2', '0', '0.00', '0', '1', '0', '0', '0', '0', '13301133203', '');
INSERT INTO `yun_member` VALUES ('8', 'corki', 'a0449b8c5e7aa1f180c1459585319518', 't9ZGvp', '1', '0', '', '0', '', '0', '0', '0', '0', '对对对', '', '1484278969', '1487237612', '127.0.0.1', '127.0.0.1', '14', 'admin@163.com', '5', '0', '0.00', '21', '1', '0', '0', '0', '0', '18614923811', '对对对');
INSERT INTO `yun_member` VALUES ('9', 'corki2', '84b22723ac3b1c3ed1c195051846cc8b', 'JoAIrW', '0', '0', '', '0', '', '0', '0', '0', '0', '', '', '0', '0', '', '', '0', '7851879104@qq.com', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '', '');

-- ----------------------------
-- Table structure for `yun_member_content`
-- ----------------------------
DROP TABLE IF EXISTS `yun_member_content`;
CREATE TABLE `yun_member_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) NOT NULL COMMENT '栏目ID',
  `content_id` int(10) NOT NULL COMMENT '信息ID',
  `userid` mediumint(8) NOT NULL COMMENT '会员ID',
  `integral` tinyint(1) NOT NULL COMMENT '是否赠送过点数',
  `status` tinyint(1) NOT NULL COMMENT '审核状态',
  `time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `userid` (`catid`,`content_id`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员投稿信息记录表';

-- ----------------------------
-- Records of yun_member_content
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_member_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `yun_member_favorite`;
CREATE TABLE `yun_member_favorite` (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏ID',
  `userid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '用户UID',
  `modelid` smallint(6) NOT NULL DEFAULT '0' COMMENT '模型ID',
  `catid` smallint(6) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `title` varchar(255) NOT NULL COMMENT '收藏标题',
  `url` char(255) DEFAULT NULL COMMENT '信息地址',
  `datetime` int(11) NOT NULL COMMENT '添加时间戳',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员收藏表';

-- ----------------------------
-- Records of yun_member_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `yun_member_group`;
CREATE TABLE `yun_member_group` (
  `groupid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员组id',
  `name` char(15) NOT NULL COMMENT '用户组名称',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否是系统组',
  `starnum` tinyint(2) unsigned NOT NULL COMMENT '会员组星星数',
  `point` smallint(6) unsigned NOT NULL COMMENT '积分范围',
  `allowmessage` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '许允发短消息数量',
  `allowvisit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许访问',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发稿',
  `allowpostverify` tinyint(1) unsigned NOT NULL COMMENT '是否投稿不需审核',
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许搜索',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许自主升级',
  `allowsendmessage` tinyint(1) unsigned NOT NULL COMMENT '允许发送短消息',
  `allowpostnum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '每天允许发文章数',
  `allowattachment` tinyint(1) NOT NULL COMMENT '是否允许上传附件',
  `icon` char(255) NOT NULL COMMENT '用户组图标',
  `usernamecolor` char(7) NOT NULL COMMENT '用户名颜色',
  `description` char(100) NOT NULL COMMENT '描述',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '序排',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `expand` mediumtext NOT NULL COMMENT '扩展',
  PRIMARY KEY (`groupid`),
  KEY `disabled` (`disabled`),
  KEY `listorder` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员组';

-- ----------------------------
-- Records of yun_member_group
-- ----------------------------
INSERT INTO `yun_member_group` VALUES ('8', '游客', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '', '', '', '0', '0', '');
INSERT INTO `yun_member_group` VALUES ('2', '新手上路', '1', '1', '50', '100', '1', '1', '0', '1', '0', '1', '0', '0', '', '', '', '2', '0', '');
INSERT INTO `yun_member_group` VALUES ('6', '注册会员', '1', '2', '100', '150', '0', '1', '0', '1', '1', '1', '0', '1', '', '', '', '6', '0', '');
INSERT INTO `yun_member_group` VALUES ('4', '中级会员', '1', '3', '150', '500', '1', '1', '0', '1', '1', '1', '0', '1', '', '', '', '4', '0', '');
INSERT INTO `yun_member_group` VALUES ('5', '高级会员', '1', '5', '300', '999', '1', '1', '1', '1', '1', '1', '0', '1', '', '', '', '5', '0', '');
INSERT INTO `yun_member_group` VALUES ('1', '禁止访问', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '');
INSERT INTO `yun_member_group` VALUES ('7', '邮件认证', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', 'images/group/vip.jpg', '#000000', '', '7', '0', '');

-- ----------------------------
-- Table structure for `yun_member_list`
-- ----------------------------
DROP TABLE IF EXISTS `yun_member_list`;
CREATE TABLE `yun_member_list` (
  `userid` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yun_member_list
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_member_online`
-- ----------------------------
DROP TABLE IF EXISTS `yun_member_online`;
CREATE TABLE `yun_member_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` char(30) NOT NULL COMMENT '用户名',
  `lasttime` int(10) DEFAULT NULL COMMENT '最后操作时间戳',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`) USING HASH,
  KEY `lasttime` (`userid`,`lasttime`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='在线用户表';

-- ----------------------------
-- Records of yun_member_online
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_menu`
-- ----------------------------
DROP TABLE IF EXISTS `yun_menu`;
CREATE TABLE `yun_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制键',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of yun_menu
-- ----------------------------
INSERT INTO `yun_menu` VALUES ('1', '缓存更新', '0', 'Admin', 'Index', 'cache', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('2', '我的面板', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('3', '设置', '0', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('4', '个人信息', '2', 'Admin', 'Adminmanage', 'myinfo', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('5', '修改个人信息', '4', 'Admin', 'Adminmanage', 'myinfo', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('6', '修改密码', '4', 'Admin', 'Adminmanage', 'chanpass', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('7', '系统设置', '3', 'Admin', 'Config', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('8', '站点配置', '7', 'Admin', 'Config', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('9', '邮箱配置', '8', 'Admin', 'Config', 'mail', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('10', '附件配置', '8', 'Admin', 'Config', 'attach', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('11', '高级配置', '8', 'Admin', 'Config', 'addition', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('12', '扩展配置', '8', 'Admin', 'Config', 'extend', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('13', '行为管理', '7', 'Admin', 'Behavior', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('14', '行为日志', '13', 'Admin', 'Behavior', 'logs', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('15', '编辑行为', '13', 'Admin', 'Behavior', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('16', '删除行为', '13', 'Admin', 'Behavior', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('17', '后台菜单管理', '7', 'Admin', 'Menu', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('18', '添加菜单', '17', 'Admin', 'Menu', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('19', '修改', '17', 'Admin', 'Menu', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('20', '删除', '17', 'Admin', 'Menu', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('21', '管理员设置', '3', 'Admin', 'Management', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('22', '管理员管理', '21', 'Admin', 'Management', 'manager', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('23', '添加管理员', '22', 'Admin', 'Management', 'adminadd', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('24', '编辑管理信息', '22', 'Admin', 'Management', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('25', '删除管理员', '22', 'Admin', 'Management', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('26', '角色管理', '21', 'Admin', 'Rbac', 'rolemanage', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('27', '添加角色', '26', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('28', '删除角色', '26', 'Admin', 'Rbac', 'roledelete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('29', '角色编辑', '26', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('30', '角色授权', '26', 'Admin', 'Rbac', 'authorize', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('31', '日志管理', '3', 'Admin', 'Logs', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('32', '后台登陆日志', '31', 'Admin', 'Logs', 'loginlog', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('33', '后台操作日志', '31', 'Admin', 'Logs', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('34', '删除一个月前的登陆日志', '32', 'Admin', 'Logs', 'deleteloginlog', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('35', '删除一个月前的操作日志', '33', 'Admin', 'Logs', 'deletelog', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('36', '添加行为', '13', 'Admin', 'Behavior', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('37', '模块', '0', 'Admin', 'Module', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('38', '在线云平台', '37', 'Admin', 'Cloud', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('39', '模块商店', '38', 'Admin', 'Moduleshop', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('40', '插件商店', '38', 'Admin', 'Addonshop', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('41', '在线升级', '38', 'Admin', 'Upgrade', 'index', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('42', '本地模块管理', '37', 'Admin', 'Module', 'local', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('43', '模块管理', '42', 'Admin', 'Module', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('44', '内容', '0', 'Content', 'Index', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('45', '内容管理', '44', 'Content', 'Content', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('46', '内容相关设置', '44', 'Content', 'Category', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('47', '栏目列表', '46', 'Content', 'Category', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('48', '添加栏目', '47', 'Content', 'Category', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('49', '添加单页', '47', 'Content', 'Category', 'singlepage', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('50', '添加外部链接栏目', '47', 'Content', 'Category', 'wadd', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('51', '编辑栏目', '47', 'Content', 'Category', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('52', '删除栏目', '47', 'Content', 'Category', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('53', '栏目属性转换', '47', 'Content', 'Category', 'categoryshux', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('54', '模型管理', '46', 'Content', 'Models', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('55', '创建新模型', '54', 'Content', 'Models', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('56', '删除模型', '54', 'Content', 'Models', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('57', '编辑模型', '54', 'Content', 'Models', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('58', '模型禁用', '54', 'Content', 'Models', 'disabled', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('59', '模型导入', '54', 'Content', 'Models', 'import', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('60', '字段管理', '54', 'Content', 'Field', 'index', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('61', '字段修改', '60', 'Content', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('62', '字段删除', '60', 'Content', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('63', '字段状态', '60', 'Content', 'Field', 'disabled', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('64', '模型预览', '60', 'Content', 'Field', 'priview', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('65', '管理内容', '45', 'Content', 'Content', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('66', '附件管理', '45', 'Attachment', 'Atadmin', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('67', '删除', '66', 'Attachment', 'Atadmin', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('68', '发布管理', '44', 'Content', 'Createhtml', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('69', '批量更新栏目页', '68', 'Content', 'Createhtml', 'category', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('70', '生成首页', '68', 'Content', 'Createhtml', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('71', '批量更新URL', '68', 'Content', 'Createhtml', 'update_urls', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('72', '批量更新内容页', '68', 'Content', 'Createhtml', 'update_show', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('73', '刷新自定义页面', '68', 'Template', 'Custompage', 'createhtml', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('74', 'URL规则管理', '46', 'Content', 'Urlrule', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('75', '添加规则', '74', 'Content', 'Urlrule', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('76', '编辑', '74', 'Content', 'Urlrule', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('77', '删除', '74', 'Content', 'Urlrule', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('78', '推荐位管理', '46', 'Content', 'Position', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('79', '信息管理', '78', 'Content', 'Position', 'item', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('80', '添加推荐位', '78', 'Content', 'Position', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('81', '修改推荐位', '78', 'Content', 'Position', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('82', '删除推荐位', '78', 'Content', 'Position', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('83', '信息编辑', '79', 'Content', 'Position', 'item_manage', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('84', '信息排序', '79', 'Content', 'Position', 'item_listorder', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('85', '数据重建', '78', 'Content', 'Position', 'rebuilding', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('86', 'Tags管理', '45', 'Content', 'Tags', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('87', '修改', '86', 'Content', 'Tags', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('88', '删除', '86', 'Content', 'Tags', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('89', 'Tags数据重建', '86', 'Content', 'Tags', 'create', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('90', '界面', '0', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('91', '模板管理', '90', 'Template', 'Style', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('92', '模板风格', '91', 'Template', 'Style', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('93', '添加模板页', '92', 'Template', 'Style', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('94', '删除模板', '92', 'Template', 'Style', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('95', '修改模板', '92', 'Template', 'Style', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('96', '主题管理', '91', 'Template', 'Theme', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('97', '主题更换', '96', 'Template', 'Theme', 'chose', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('98', '自定义页面', '90', 'Template', 'Custompage', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('99', '自定义页面', '98', 'Template', 'Custompage', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('100', '添加自定义页面', '99', 'Template', 'Custompage', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('101', '删除自定义页面', '99', 'Template', 'Custompage', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('102', '编辑自定义页面', '99', 'Template', 'Custompage', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('103', '自定义列表', '98', 'Template', 'Customlist', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('104', '添加列表', '103', 'Template', 'Customlist', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('105', '删除列表', '103', 'Template', 'Customlist', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('106', '编辑列表', '103', 'Template', 'Customlist', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('107', '生成列表', '103', 'Template', 'Customlist', 'generate', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('108', '安装模块', '39', 'Admin', 'Moduleshop', 'install', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('109', '升级模块', '39', 'Admin', 'Moduleshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('110', '安装插件', '40', 'Admin', 'Addonshop', 'install', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('111', '升级插件', '40', 'Admin', 'Addonshop', 'upgrade', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('112', '栏目授权', '26', 'Admin', 'Rbac', 'setting_cat_priv', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('113', '用户', '0', 'Member', 'Member', 'index', '', '0', '1', '网站用户管理！', '0');
INSERT INTO `yun_menu` VALUES ('114', '会员管理', '113', 'Member', 'Member', 'create', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('115', '会员设置', '114', 'Member', 'Setting', 'setting', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('116', 'Ucenter 测试数据库链接', '115', 'Member', 'Setting', 'myqsl_test', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('117', '会员管理', '114', 'Member', 'Member', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('118', '添加会员', '117', 'Member', 'Member', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('119', '修改会员', '117', 'Member', 'Member', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('120', '删除会员', '117', 'Member', 'Member', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('121', '锁定', '117', 'Member', 'Member', 'lock', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('122', '解除锁定', '117', 'Member', 'Member', 'unlock', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('123', '资料查看', '117', 'Member', 'Member', 'memberinfo', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('124', '审核会员', '114', 'Member', 'Member', 'userverify', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('125', '登陆授权管理', '114', 'Member', 'Member', 'connect', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('126', '会员组管理', '114', 'Member', 'Group', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('127', '添加会员组', '126', 'Member', 'Group', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('128', '编辑会员组', '126', 'Member', 'Group', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('129', '删除会员组', '126', 'Member', 'Group', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('130', '会员组排序', '126', 'Member', 'Group', 'sort', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('131', '模型管理', '113', 'Member', 'Model', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('132', '模型管理', '131', 'Member', 'Model', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('133', '添加模型', '132', 'Member', 'Model', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('134', '编辑模型', '132', 'Member', 'Model', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('135', '删除模型', '132', 'Member', 'Model', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('136', '移动模型', '132', 'Member', 'Model', 'move', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('137', '字段管理', '132', 'Member', 'Modelfield', 'index', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('138', '添加字段', '137', 'Member', 'Field', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('139', '字段编辑', '137', 'Member', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('140', '删除字段', '137', 'Member', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('141', '字段排序', '137', 'Member', 'Field', 'listorder', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('142', '字段启用与禁用', '137', 'Member', 'Field', 'disabled', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('143', '评论管理', '37', 'Comments', 'Comments', 'index', '', '0', '1', '评论管理！', '0');
INSERT INTO `yun_menu` VALUES ('144', '评论设置', '143', 'Comments', 'Comments', 'config', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('145', '分表管理', '144', 'Comments', 'Comments', 'fenbiao', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('146', '创建新的分表', '145', 'Comments', 'Comments', 'addfenbiao', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('147', '字段管理', '144', 'Comments', 'Field', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('148', '添加字段', '147', 'Comments', 'Field', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('149', '删除字段', '147', 'Comments', 'Field', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('150', '编辑字段', '147', 'Comments', 'Field', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('151', '表情管理', '144', 'Comments', 'Emotion', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('152', '评论管理', '143', 'Comments', 'Comments', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('153', '编辑', '152', 'Comments', 'Comments', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('154', '删除', '152', 'Comments', 'Comments', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('155', '审核评论', '152', 'Comments', 'Comments', 'check', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('156', '垃圾评论', '152', 'Comments', 'Comments', 'spamcomment', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('157', '回复评论', '152', 'Comments', 'Comments', 'replycomment', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('158', '扩展', '0', 'Addons', 'Addons', 'index', '', '0', '1', '扩展管理！', '0');
INSERT INTO `yun_menu` VALUES ('159', '插件管理', '158', 'Addons', 'Addons', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('160', '插件管理', '159', 'Addons', 'Addons', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('161', '创建新插件', '160', 'Addons', 'Addons', 'create', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('162', '本地安装', '160', 'Addons', 'Addons', 'local', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('163', '插件打包', '160', 'Addons', 'Addons', 'unpack', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('164', '插件后台列表', '158', 'Addons', 'Addons', 'addonadmin', '', '0', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('165', '采集管理', '45', 'Collection', 'Node', 'index', '', '1', '1', '采集模块是可以批量采集目标网站内容入库！', '0');
INSERT INTO `yun_menu` VALUES ('166', '添加采集点', '165', 'Collection', 'Node', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('167', '导入采集点', '165', 'Collection', 'Node', 'node_import', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('168', '编辑采集点', '165', 'Collection', 'Node', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('169', '删除采集点', '165', 'Collection', 'Node', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('170', '复制采集点', '165', 'Collection', 'Node', 'copy', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('171', '导出采集点', '165', 'Collection', 'Node', 'export', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('172', '采集网址入库', '165', 'Collection', 'Node', 'col_url_list', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('173', '采集内容入库', '165', 'Collection', 'Node', 'col_content', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('174', '内容发布', '165', 'Collection', 'Node', 'publist', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('175', '删除已采集文章', '174', 'Collection', 'Node', 'content_del', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('176', '导入文章', '174', 'Collection', 'Node', 'import', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('177', '导入文章到模型入库', '174', 'Collection', 'Node', 'import_content', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('178', '添加导入方案', '174', 'Collection', 'Node', 'import_program_add', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('179', '删除导入方案', '174', 'Collection', 'Node', 'import_program_del', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('180', '编辑导入方案', '174', 'Collection', 'Node', 'import_program_edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('181', '商城', '0', 'Mail', 'Company', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('182', '产品模块', '181', 'Mail', 'Company', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('183', '企业管理', '182', 'Mail', 'Company', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('184', '商品套餐', '182', 'Mail', 'Goods', 'index', '', '1', '1', '', '1');
INSERT INTO `yun_menu` VALUES ('185', '公有云需求', '182', 'Mail', 'Demand', 'cloudlist', '', '1', '1', '', '5');
INSERT INTO `yun_menu` VALUES ('186', '订单管理', '182', 'Mail', 'Order', 'index', '', '1', '1', '', '4');
INSERT INTO `yun_menu` VALUES ('187', '购物车管理', '182', 'Mail', 'Cart', 'index', '', '1', '0', '', '3');
INSERT INTO `yun_menu` VALUES ('188', '企业合作管理', '182', 'Mail', 'Cooperation', 'index', '', '1', '1', '', '6');
INSERT INTO `yun_menu` VALUES ('189', '添加', '183', 'Mail', 'Company', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('190', '添加', '184', 'Mail', 'Goods', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('191', '公有云规格', '182', 'Mail', 'Spec', 'cloudlist', '', '1', '1', '', '3');
INSERT INTO `yun_menu` VALUES ('192', '添加', '191', 'Mail', 'Spec', 'cloudadd', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('193', '云应用规格', '182', 'Mail', 'Spec', 'applist', '', '1', '1', '', '3');
INSERT INTO `yun_menu` VALUES ('194', '添加', '193', 'Mail', 'Spec', 'appadd', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('195', '云应用需求', '182', 'Mail', 'Demand', 'applist', '', '1', '1', '', '5');
INSERT INTO `yun_menu` VALUES ('196', '修改', '183', 'Mail', 'Company', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('197', '删除', '183', 'Mail', 'Company', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('198', '修改', '184', 'Mail', 'Goods', 'edit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('199', '删除', '184', 'Mail', 'Goods', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('200', '删除', '191', 'Mail', 'Spec', 'clouddel', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('201', '修改', '191', 'Mail', 'Spec', 'cloudedit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('202', '修改', '193', 'Mail', 'Spec', 'appedit', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('203', '删除', '193', 'Mail', 'Spec', 'appdel', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('204', '删除', '185', 'Mail', 'Demand', 'clouddel', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('205', '删除', '195', 'Mail', 'Demand', 'appdel', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('206', '取消', '186', 'Mail', 'Order', 'cancel', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('207', '删除', '186', 'Mail', 'Order', 'del', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('208', '删除', '188', 'Mail', 'Cooperation', 'delete', '', '1', '0', '', '0');
INSERT INTO `yun_menu` VALUES ('209', '商品类型', '182', 'Mail', 'GoodsType', 'index', '', '1', '1', '', '2');
INSERT INTO `yun_menu` VALUES ('210', '添加', '209', 'Mail', 'GoodsType', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('229', '资源管理', '181', 'Mail', 'Source', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('230', '资源列表', '229', 'Mail', 'Source', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('231', '添加资源', '229', 'Mail', 'Source', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('232', '云市场', '181', 'Mail', 'GoodsCate', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('233', '商品套餐', '232', 'Mail', 'GoodsCate', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('218', '专家咨询', '181', 'Mail', 'Refer', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('219', '咨询列表', '218', 'Mail', 'Refer', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('223', '常见问题', '181', 'Mail', 'Pro', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('224', '问题列表', '223', 'Mail', 'Pro', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('225', '添加问题', '223', 'Mail', 'Pro', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('226', '用户案例', '181', 'Mail', 'Mem', 'index', '', '0', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('227', '案例列表', '226', 'Mail', 'Mem', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('228', '添加案例', '226', 'Mail', 'Mem', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('234', '添加', '233', 'Mail', 'GoodsCate', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('235', '部门需求', '232', 'Mail', 'Category', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('236', '添加', '235', 'Mail', 'Category', 'add', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('237', '商品Tags管理', '232', 'Mail', 'Tags', 'index', '', '1', '1', '', '0');
INSERT INTO `yun_menu` VALUES ('238', '添加', '237', 'Mail', 'Tags', 'add', '', '1', '1', '', '0');

-- ----------------------------
-- Table structure for `yun_model`
-- ----------------------------
DROP TABLE IF EXISTS `yun_model`;
CREATE TABLE `yun_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `description` char(100) NOT NULL DEFAULT '' COMMENT '描述',
  `tablename` char(20) NOT NULL DEFAULT '' COMMENT '表名',
  `setting` text COMMENT '配置信息',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启全站搜索',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1禁用',
  `default_style` char(30) NOT NULL DEFAULT '' COMMENT '风格',
  `category_template` char(30) NOT NULL DEFAULT '' COMMENT '栏目模板',
  `list_template` char(30) NOT NULL DEFAULT '' COMMENT '列表模板',
  `show_template` char(30) NOT NULL DEFAULT '' COMMENT '内容模板',
  `js_template` varchar(30) NOT NULL DEFAULT '' COMMENT 'JS模板',
  `sort` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '模块标识',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='内容模型列表';

-- ----------------------------
-- Records of yun_model
-- ----------------------------
INSERT INTO `yun_model` VALUES ('1', '会员模型', '会员表', 'member_list', '', '1467008429', '0', '0', '0', '', '', '', '', '', '0', '2');
INSERT INTO `yun_model` VALUES ('2', '文章模型', '文章模型', 'article', '', '1467096963', '0', '0', '0', '', '', '', '', '', '0', '0');
INSERT INTO `yun_model` VALUES ('3', '客户案例', '', 'client', '', '1467798717', '0', '0', '0', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `yun_model_field`
-- ----------------------------
DROP TABLE IF EXISTS `yun_model_field`;
CREATE TABLE `yun_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `field` varchar(20) NOT NULL DEFAULT '' COMMENT '字段名',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '别名',
  `tips` text COMMENT '字段提示',
  `css` varchar(30) NOT NULL DEFAULT '' COMMENT '表单样式',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小值',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大值',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验正则',
  `errortips` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验未通过的提示信息',
  `formtype` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `setting` mediumtext,
  `formattribute` varchar(255) NOT NULL DEFAULT '',
  `unsetgroupids` varchar(255) NOT NULL DEFAULT '',
  `unsetroleids` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内部字段 1是',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统字段 1 是',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '值唯一',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为基本信息',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为搜索条件',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '在前台投稿中显示',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为全站搜索信息',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否入库到推荐位',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='模型字段列表';

-- ----------------------------
-- Records of yun_model_field
-- ----------------------------
INSERT INTO `yun_model_field` VALUES ('1', '2', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `yun_model_field` VALUES ('2', '2', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `yun_model_field` VALUES ('3', '2', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `yun_model_field` VALUES ('4', '2', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `yun_model_field` VALUES ('5', '2', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `yun_model_field` VALUES ('6', '2', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `yun_model_field` VALUES ('7', '2', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yun_model_field` VALUES ('8', '2', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yun_model_field` VALUES ('9', '2', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `yun_model_field` VALUES ('10', '2', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `yun_model_field` VALUES ('11', '2', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `yun_model_field` VALUES ('12', '2', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `yun_model_field` VALUES ('13', '2', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `yun_model_field` VALUES ('14', '2', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `yun_model_field` VALUES ('15', '2', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `yun_model_field` VALUES ('16', '2', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `yun_model_field` VALUES ('17', '2', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `yun_model_field` VALUES ('18', '2', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `yun_model_field` VALUES ('19', '2', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `yun_model_field` VALUES ('20', '2', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `yun_model_field` VALUES ('21', '3', 'status', '状态', '', '', '0', '2', '', '', 'box', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '15', '0', '0');
INSERT INTO `yun_model_field` VALUES ('22', '3', 'username', '用户名', '', '', '0', '20', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `yun_model_field` VALUES ('23', '3', 'islink', '转向链接', '', '', '0', '0', '', '', 'islink', '', '', '', '', '0', '1', '0', '0', '0', '1', '0', '0', '17', '0', '0');
INSERT INTO `yun_model_field` VALUES ('24', '3', 'template', '内容页模板', '', '', '0', '30', '', '', 'template', 'a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '0', '0', '0', '0', '0', '0', '0', '13', '0', '0');
INSERT INTO `yun_model_field` VALUES ('25', '3', 'allow_comment', '允许评论', '', '', '0', '0', '', '', 'box', 'a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '14', '0', '0');
INSERT INTO `yun_model_field` VALUES ('26', '3', 'pages', '分页方式', '', '', '0', '0', '', '', 'pages', '', '', '-99', '-99', '0', '0', '0', '1', '0', '0', '0', '0', '9', '0', '0');
INSERT INTO `yun_model_field` VALUES ('27', '3', 'inputtime', '真实发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '1', '1', '0', '0', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yun_model_field` VALUES ('28', '3', 'posid', '推荐位', '', '', '0', '0', '', '', 'posid', 'a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '1', '11', '0', '0');
INSERT INTO `yun_model_field` VALUES ('29', '3', 'url', 'URL', '', '', '0', '100', '', '', 'text', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '1', '12', '0', '0');
INSERT INTO `yun_model_field` VALUES ('30', '3', 'listorder', '排序', '', '', '0', '6', '', '', 'number', '', '', '', '', '1', '1', '0', '1', '0', '0', '0', '0', '18', '0', '0');
INSERT INTO `yun_model_field` VALUES ('31', '3', 'relation', '相关文章', '', '', '0', '255', '', '', 'omnipotent', 'a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', '8', '0', '0');
INSERT INTO `yun_model_field` VALUES ('32', '3', 'thumb', '缩略图', '', '', '0', '100', '', '', 'image', 'a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}', '', '', '', '0', '1', '0', '0', '0', '1', '0', '1', '7', '0', '0');
INSERT INTO `yun_model_field` VALUES ('33', '3', 'catid', '栏目', '', '', '1', '6', '/^[0-9]{1,6}$/', '请选择栏目', 'catid', 'a:1:{s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `yun_model_field` VALUES ('34', '3', 'typeid', '类别', '', '', '0', '0', '', '', 'typeid', 'a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}', '', '', '', '1', '1', '0', '1', '1', '1', '0', '0', '2', '0', '0');
INSERT INTO `yun_model_field` VALUES ('35', '3', 'title', '标题', '', 'inputtitle', '1', '80', '', '请输入标题', 'title', '', '', '', '', '0', '1', '0', '1', '1', '1', '1', '1', '3', '0', '0');
INSERT INTO `yun_model_field` VALUES ('36', '3', 'keywords', '关键词', '多关键词之间用空格隔开', '', '0', '40', '', '', 'keyword', 'a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}', '', '-99', '-99', '0', '1', '0', '1', '1', '1', '1', '0', '4', '0', '0');
INSERT INTO `yun_model_field` VALUES ('37', '3', 'tags', 'TAGS', '多关之间用空格或者“,”隔开', '', '0', '0', '', '', 'tags', 'a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '1', '0', '1', '0', '0', '0', '0', '4', '0', '0');
INSERT INTO `yun_model_field` VALUES ('38', '3', 'description', '摘要', '', '', '0', '255', '', '', 'textarea', 'a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}', '', '', '', '0', '1', '0', '1', '0', '1', '1', '1', '5', '0', '0');
INSERT INTO `yun_model_field` VALUES ('39', '3', 'updatetime', '发布时间', '', '', '0', '0', '', '', 'datetime', 'a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}', '', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '10', '0', '0');
INSERT INTO `yun_model_field` VALUES ('40', '3', 'content', '内容', '<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>', '', '1', '999999', '', '内容不能为空', 'editor', 'a:6:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:13:\"enablekeylink\";s:1:\"1\";s:10:\"replacenum\";s:1:\"2\";s:9:\"link_mode\";s:1:\"0\";s:15:\"enablesaveimage\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '6', '0', '0');
INSERT INTO `yun_model_field` VALUES ('41', '3', 'company_intro', '公司简介', '', '', '1', '6666', '', '公司简介不能为空', 'editor', 'a:10:{s:7:\"toolbar\";s:5:\"basic\";s:9:\"mbtoolbar\";s:5:\"basic\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"1\";s:6:\"height\";s:3:\"200\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}', '', '', '', '0', '0', '0', '1', '0', '1', '1', '0', '5', '0', '0');

-- ----------------------------
-- Table structure for `yun_module`
-- ----------------------------
DROP TABLE IF EXISTS `yun_module`;
CREATE TABLE `yun_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `modulename` varchar(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `sign` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `setting` mediumtext COMMENT '设置信息',
  `installtime` int(10) NOT NULL DEFAULT '0' COMMENT '安装时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`module`),
  KEY `sign` (`sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';

-- ----------------------------
-- Records of yun_module
-- ----------------------------
INSERT INTO `yun_module` VALUES ('Member', '会员中心', '05f78872791fe1847815f5a192aa6dce', '0', '1', '1.0.2', 'a:29:{s:9:\"interface\";s:5:\"Local\";s:13:\"allowregister\";s:1:\"1\";s:14:\"defaultmodelid\";s:1:\"1\";s:15:\"enablemailcheck\";s:1:\"0\";s:14:\"registerverify\";s:1:\"0\";s:12:\"showapppoint\";s:1:\"0\";s:14:\"rmb_point_rate\";s:1:\"1\";s:12:\"defualtpoint\";s:1:\"0\";s:13:\"defualtamount\";s:1:\"0\";s:15:\"showregprotocol\";s:1:\"1\";s:16:\"openverification\";s:1:\"1\";s:11:\"regprotocol\";s:1733:\"欢迎您注册成为yun88用户,请仔细阅读下面的协议，只有接受协议才能继续进行注册。\n      1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \n　　2)使用网站服务不作非法用途。 \n　　3)不干扰或混乱网络服务。 \n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\n　　7)不得利用本站制作、复制和传播下列信息： \n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\n　　　3、煽动分裂国家、破坏国家统一的；\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\n　　　8、损害国家机关信誉的；\n　　　9、其他违反宪法和法律行政法规的；\n　　　10、进行商业广告行为的。\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，ShuipFCMS将取消用户服务帐号。 \";s:21:\"registerverifymessage\";s:307:\"Hi，{$username}:\n\n欢迎您注册成为ShuipFCMS用户，您的账号需要邮箱认证，点击下面链接进行认证：\n\n<a href=\"{$url}\" target=\"_blank\">{$url}</a>\n\n如果链接无法点击，请完整拷贝到浏览器地址栏里直接访问。\n\n邮件服务器自动发送邮件请勿回信 {$date}\";s:14:\"forgetpassword\";s:315:\"Hi，{$username}:\n\n你申请了重设密码，请在24小时内点击下面的链接，然后根据页面提示完成密码重设：\n\n<a href=\"{$url}\" target=\"_blank\">{$url}</a>\n\n如果链接无法点击，请完整拷贝到浏览器地址栏里直接访问。\n\n邮件服务器自动发送邮件请勿回信 {$date}\";s:10:\"uc_connect\";s:0:\"\";s:6:\"uc_api\";s:0:\"\";s:5:\"uc_ip\";s:0:\"\";s:9:\"uc_dbhost\";s:0:\"\";s:9:\"uc_dbuser\";s:5:\"admin\";s:7:\"uc_dbpw\";s:0:\"\";s:9:\"uc_dbname\";s:0:\"\";s:13:\"uc_dbtablepre\";s:0:\"\";s:12:\"uc_dbcharset\";s:0:\"\";s:8:\"uc_appid\";s:0:\"\";s:6:\"uc_key\";s:0:\"\";s:11:\"sinawb_akey\";s:0:\"\";s:11:\"sinawb_skey\";s:0:\"\";s:7:\"qq_akey\";s:0:\"\";s:7:\"qq_skey\";s:0:\"\";}', '1467008083', '1467008083', '0');
INSERT INTO `yun_module` VALUES ('Comments', '评论模块', '54d4717144d5ed6e415af8249190cc8b', '0', '1', '1.0.1', '', '1467008156', '1467008156', '0');
INSERT INTO `yun_module` VALUES ('Addons', '插件管理', '912b7e22bd9d86dddb1d460ca90581eb', '0', '1', '1.1.3', '', '1467008176', '1467008176', '0');
INSERT INTO `yun_module` VALUES ('Collection', '采集', 'b4986c69efbd24886ca3bcb6c3b3dab8', '0', '1', '1.0.0', '', '1467008212', '1467008212', '0');

-- ----------------------------
-- Table structure for `yun_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `yun_operationlog`;
CREATE TABLE `yun_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` smallint(6) NOT NULL DEFAULT '0' COMMENT '操作帐号ID',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0错误提示，1为正确提示',
  `info` text COMMENT '其他说明',
  `get` varchar(255) NOT NULL DEFAULT '' COMMENT 'get数据',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1290 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of yun_operationlog
-- ----------------------------
INSERT INTO `yun_operationlog` VALUES ('1', '1', '1467006016', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('2', '0', '1467006113', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('3', '1', '1467006773', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('4', '1', '1467006773', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('5', '1', '1467006774', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('6', '1', '1467006776', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('7', '1', '1467006777', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('8', '1', '1467006777', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('9', '1', '1467006777', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('10', '1', '1467006778', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('11', '1', '1467006778', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('12', '1', '1467006778', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('13', '1', '1467006778', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('14', '1', '1467006779', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('15', '1', '1467006779', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('16', '1', '1467006909', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('17', '1', '1467007145', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('18', '1', '1467007145', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('19', '1', '1467007145', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('20', '1', '1467007149', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('21', '1', '1467007149', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('22', '1', '1467007149', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('23', '1', '1467007150', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('24', '1', '1467007150', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('25', '1', '1467007150', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('26', '1', '1467007151', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('27', '1', '1467007151', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('28', '1', '1467007151', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('29', '1', '1467007152', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://www.88.com/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('30', '1', '1467007644', '127.0.0.1', '0', '提示语：主题未改变！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://www.88.com/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `yun_operationlog` VALUES ('31', '1', '1467007749', '127.0.0.1', '0', '提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('32', '1', '1467007820', '127.0.0.1', '0', '提示语：云平台帐号不能为空！请进入网站设置->高级配置中进行配置。提示：配置完记得 更新缓存 ！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=05f78872791fe1847815f5a192aa6dce');
INSERT INTO `yun_operationlog` VALUES ('33', '1', '1467007924', '127.0.0.1', '1', '提示语：修改成功，请及时更新缓存！<br/>模块：Admin,控制器：Config,方法：addition<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Config&a=addition&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('34', '1', '1467007959', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('35', '1', '1467007976', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('36', '1', '1467008000', '127.0.0.1', '0', '提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('37', '1', '1467008007', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('38', '1', '1467008038', '127.0.0.1', '1', '提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=05f78872791fe1847815f5a192aa6dce');
INSERT INTO `yun_operationlog` VALUES ('39', '1', '1467008039', '127.0.0.1', '1', '提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=05f78872791fe1847815f5a192aa6dce');
INSERT INTO `yun_operationlog` VALUES ('40', '1', '1467008040', '127.0.0.1', '0', '提示语：该模块要求系统最低版本为：2.0.0！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=05f78872791fe1847815f5a192aa6dce');
INSERT INTO `yun_operationlog` VALUES ('41', '1', '1467008082', '127.0.0.1', '1', '提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=05f78872791fe1847815f5a192aa6dce');
INSERT INTO `yun_operationlog` VALUES ('42', '1', '1467008083', '127.0.0.1', '1', '提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=05f78872791fe1847815f5a192aa6dce');
INSERT INTO `yun_operationlog` VALUES ('43', '1', '1467008084', '127.0.0.1', '1', '提示语：模块安装成功！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=05f78872791fe1847815f5a192aa6dce');
INSERT INTO `yun_operationlog` VALUES ('44', '1', '1467008156', '127.0.0.1', '1', '提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=54d4717144d5ed6e415af8249190cc8b');
INSERT INTO `yun_operationlog` VALUES ('45', '1', '1467008156', '127.0.0.1', '1', '提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=54d4717144d5ed6e415af8249190cc8b');
INSERT INTO `yun_operationlog` VALUES ('46', '1', '1467008156', '127.0.0.1', '1', '提示语：模块安装成功！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=54d4717144d5ed6e415af8249190cc8b');
INSERT INTO `yun_operationlog` VALUES ('47', '1', '1467008176', '127.0.0.1', '1', '提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=912b7e22bd9d86dddb1d460ca90581eb');
INSERT INTO `yun_operationlog` VALUES ('48', '1', '1467008176', '127.0.0.1', '1', '提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=912b7e22bd9d86dddb1d460ca90581eb');
INSERT INTO `yun_operationlog` VALUES ('49', '1', '1467008176', '127.0.0.1', '1', '提示语：模块安装成功！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=912b7e22bd9d86dddb1d460ca90581eb');
INSERT INTO `yun_operationlog` VALUES ('50', '1', '1467008212', '127.0.0.1', '1', '提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=b4986c69efbd24886ca3bcb6c3b3dab8');
INSERT INTO `yun_operationlog` VALUES ('51', '1', '1467008212', '127.0.0.1', '1', '提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=b4986c69efbd24886ca3bcb6c3b3dab8');
INSERT INTO `yun_operationlog` VALUES ('52', '1', '1467008213', '127.0.0.1', '1', '提示语：模块安装成功！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Moduleshop&a=install&sign=b4986c69efbd24886ca3bcb6c3b3dab8');
INSERT INTO `yun_operationlog` VALUES ('53', '1', '1467008269', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('54', '1', '1467008429', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Member,控制器：Model,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Model&a=add&menuid=132');
INSERT INTO `yun_operationlog` VALUES ('55', '1', '1467008688', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Member,控制器：Setting,方法：setting<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Setting&a=setting&menuid=115');
INSERT INTO `yun_operationlog` VALUES ('56', '1', '1467080025', '127.0.0.1', '0', '提示语：用户名不能为空！<br/>模块：Member,控制器：Member,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Member&a=add&menuid=117');
INSERT INTO `yun_operationlog` VALUES ('57', '1', '1467080159', '127.0.0.1', '0', '提示语：密码不能为空！<br/>模块：Member,控制器：Member,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Member&a=add&menuid=117');
INSERT INTO `yun_operationlog` VALUES ('58', '1', '1467080165', '127.0.0.1', '0', '提示语：邮箱地址有误！<br/>模块：Member,控制器：Member,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Member&a=add&menuid=117');
INSERT INTO `yun_operationlog` VALUES ('59', '1', '1467084417', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('60', '1', '1467084651', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=181');
INSERT INTO `yun_operationlog` VALUES ('61', '1', '1467084714', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('62', '1', '1467084733', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=edit&id=182');
INSERT INTO `yun_operationlog` VALUES ('63', '1', '1467084801', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('64', '1', '1467084883', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('65', '1', '1467085103', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('66', '1', '1467085157', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('67', '1', '1467085420', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('68', '1', '1467095828', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Company,方法：index<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('69', '1', '1467096119', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Company,方法：index<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('70', '1', '1467096410', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('71', '1', '1467096963', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Models&a=add&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('72', '1', '1467097046', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('73', '1', '1467097052', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">1</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category');
INSERT INTO `yun_operationlog` VALUES ('74', '1', '1467097052', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('75', '1', '1467097350', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('76', '1', '1467097354', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">2</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category');
INSERT INTO `yun_operationlog` VALUES ('77', '1', '1467097354', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('78', '1', '1467097379', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('79', '1', '1467097379', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">1</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('80', '1', '1467097379', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('81', '1', '1467097565', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=183');
INSERT INTO `yun_operationlog` VALUES ('82', '1', '1467100867', '127.0.0.1', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('83', '1', '1467100875', '127.0.0.1', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('84', '1', '1467100889', '127.0.0.1', '0', '提示语：用户名不能为空！<br/>模块：Member,控制器：Member,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Member&a=add&menuid=117');
INSERT INTO `yun_operationlog` VALUES ('85', '1', '1467101013', '127.0.0.1', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：POST', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('86', '1', '1467101060', '127.0.0.1', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('87', '1', '1467101076', '127.0.0.1', '0', '提示语：用户名不能为空！<br/>模块：Member,控制器：Member,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Member&a=add&menuid=117');
INSERT INTO `yun_operationlog` VALUES ('88', '1', '1467101365', '127.0.0.1', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('89', '1', '1467101371', '127.0.0.1', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('90', '1', '1467101374', '127.0.0.1', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('91', '1', '1467101385', '127.0.0.1', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('92', '1', '1467101441', '127.0.0.1', '0', '提示语：logo图片必须长传<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('93', '1', '1467101729', '127.0.0.1', '0', '提示语：公司详情必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('94', '1', '1467101747', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('95', '1', '1467104358', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('96', '1', '1467104643', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('97', '1', '1467105630', '127.0.0.1', '0', '提示语：操作失败<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=1');
INSERT INTO `yun_operationlog` VALUES ('98', '1', '1467105646', '127.0.0.1', '0', '提示语：操作失败<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=1');
INSERT INTO `yun_operationlog` VALUES ('99', '1', '1467106146', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=1');
INSERT INTO `yun_operationlog` VALUES ('100', '1', '1467106255', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=1');
INSERT INTO `yun_operationlog` VALUES ('101', '1', '1467106309', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('102', '1', '1467106529', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('103', '1', '1467169492', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：delete<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('104', '1', '1467169618', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=184');
INSERT INTO `yun_operationlog` VALUES ('105', '1', '1467172049', '127.0.0.1', '0', '提示语：参数错误<br/>模块：Mail,控制器：Cooperation,方法：delete<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Cooperation&menuid=188');
INSERT INTO `yun_operationlog` VALUES ('106', '1', '1467172070', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Cooperation,方法：delete<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Cooperation&menuid=188');
INSERT INTO `yun_operationlog` VALUES ('107', '1', '1467272460', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Member,控制器：Setting,方法：setting<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Setting&a=setting&menuid=115');
INSERT INTO `yun_operationlog` VALUES ('108', '1', '1467273098', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Member,控制器：Setting,方法：setting<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Member&m=Setting&a=setting&menuid=115');
INSERT INTO `yun_operationlog` VALUES ('109', '1', '1467278251', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=edit&catid=2');
INSERT INTO `yun_operationlog` VALUES ('110', '1', '1467278257', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">1</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category');
INSERT INTO `yun_operationlog` VALUES ('111', '1', '1467278257', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('112', '1', '1467279935', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=2');
INSERT INTO `yun_operationlog` VALUES ('113', '1', '1467280269', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=2');
INSERT INTO `yun_operationlog` VALUES ('114', '1', '1467281045', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=edit&catid=2');
INSERT INTO `yun_operationlog` VALUES ('115', '0', '1467361450', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('116', '1', '1467361519', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('117', '1', '1467361543', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('118', '1', '1467361550', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">3</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('119', '1', '1467361550', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('120', '1', '1467361691', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=edit&catid=4');
INSERT INTO `yun_operationlog` VALUES ('121', '1', '1467361697', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">3</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('122', '1', '1467361697', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('123', '1', '1467361989', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('124', '1', '1467361989', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">2</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('125', '1', '1467361990', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('126', '1', '1467361996', '127.0.0.1', '1', '提示语：栏目删除成功！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category');
INSERT INTO `yun_operationlog` VALUES ('127', '1', '1467361996', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">1</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category');
INSERT INTO `yun_operationlog` VALUES ('128', '1', '1467361996', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('129', '1', '1467362027', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('130', '1', '1467362030', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">2</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('131', '1', '1467362031', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('132', '1', '1467362061', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=5');
INSERT INTO `yun_operationlog` VALUES ('133', '0', '1467789742', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('134', '1', '1467789774', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=5');
INSERT INTO `yun_operationlog` VALUES ('135', '1', '1467791135', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=5');
INSERT INTO `yun_operationlog` VALUES ('136', '1', '1467794706', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('137', '1', '1467794710', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">3</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('138', '1', '1467794711', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('139', '1', '1467794872', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=6');
INSERT INTO `yun_operationlog` VALUES ('140', '1', '1467794958', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=6');
INSERT INTO `yun_operationlog` VALUES ('141', '1', '1467795057', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=6');
INSERT INTO `yun_operationlog` VALUES ('142', '1', '1467795292', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('143', '1', '1467795295', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">4</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('144', '1', '1467795295', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('145', '1', '1467795507', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=7');
INSERT INTO `yun_operationlog` VALUES ('146', '1', '1467795562', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=7');
INSERT INTO `yun_operationlog` VALUES ('147', '1', '1467795604', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=7');
INSERT INTO `yun_operationlog` VALUES ('148', '1', '1467795665', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=7');
INSERT INTO `yun_operationlog` VALUES ('149', '1', '1467795693', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=7');
INSERT INTO `yun_operationlog` VALUES ('150', '1', '1467795817', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('151', '1', '1467795821', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">5</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('152', '1', '1467795821', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('153', '1', '1467795967', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=8');
INSERT INTO `yun_operationlog` VALUES ('154', '1', '1467796161', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=add&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('155', '1', '1467796164', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">6</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category');
INSERT INTO `yun_operationlog` VALUES ('156', '1', '1467796165', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('157', '1', '1467796421', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=9');
INSERT INTO `yun_operationlog` VALUES ('158', '1', '1467796809', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=edit&catid=9');
INSERT INTO `yun_operationlog` VALUES ('159', '1', '1467796814', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">6</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category');
INSERT INTO `yun_operationlog` VALUES ('160', '1', '1467796814', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('161', '1', '1467797162', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('162', '1', '1467797218', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('163', '1', '1467797253', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('164', '1', '1467797280', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('165', '1', '1467797288', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('166', '1', '1467798717', '127.0.0.1', '1', '提示语：添加模型成功！<br/>模块：Content,控制器：Models,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Models&a=add&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('167', '1', '1467798897', '127.0.0.1', '0', '提示语：字段别名必须填写！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Field&a=add&modelid=3');
INSERT INTO `yun_operationlog` VALUES ('168', '1', '1467798917', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Field,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Field&a=add&modelid=3');
INSERT INTO `yun_operationlog` VALUES ('169', '1', '1467798931', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=edit&catid=9');
INSERT INTO `yun_operationlog` VALUES ('170', '1', '1467798935', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">6</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category');
INSERT INTO `yun_operationlog` VALUES ('171', '1', '1467798935', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('172', '1', '1467798986', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Field,方法：listorder<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Field&modelid=3');
INSERT INTO `yun_operationlog` VALUES ('173', '1', '1467799117', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=9');
INSERT INTO `yun_operationlog` VALUES ('174', '1', '1467799255', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=9');
INSERT INTO `yun_operationlog` VALUES ('175', '1', '1467854303', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('176', '1', '1467854308', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">7</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('177', '1', '1467854308', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('178', '1', '1467854573', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=10');
INSERT INTO `yun_operationlog` VALUES ('179', '1', '1467856204', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=singlepage&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('180', '1', '1467856207', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">8</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('181', '1', '1467856207', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('182', '1', '1467877096', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('183', '1', '1467877149', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('184', '1', '1467877198', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('185', '1', '1467877285', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('186', '1', '1467878007', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('187', '1', '1467878045', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('188', '1', '1467878082', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('189', '1', '1467878127', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('190', '1', '1467942348', '127.0.0.1', '0', '提示语：商品名称必填<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('191', '1', '1467942362', '127.0.0.1', '0', '提示语：价格格式不对<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('192', '1', '1467942366', '127.0.0.1', '0', '提示语：公司详情必填<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('193', '1', '1467942376', '127.0.0.1', '0', '提示语：价格格式不对<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('194', '1', '1467942503', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('195', '1', '1467943393', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('196', '1', '1467944127', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('197', '1', '1467944175', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('198', '1', '1467944256', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('199', '1', '1467944321', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('200', '1', '1467944338', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('201', '1', '1467944421', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods');
INSERT INTO `yun_operationlog` VALUES ('202', '1', '1467944568', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('203', '1', '1467944618', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=191');
INSERT INTO `yun_operationlog` VALUES ('204', '1', '1467944673', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Admin,控制器：Menu,方法：index<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu');
INSERT INTO `yun_operationlog` VALUES ('205', '1', '1467944729', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('206', '1', '1467944761', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=193');
INSERT INTO `yun_operationlog` VALUES ('207', '1', '1467945114', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudlist&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('208', '1', '1467946290', '127.0.0.1', '0', '提示语：规格类型必填<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('209', '1', '1467946320', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('210', '1', '1467946322', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Spec,方法：index<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('211', '1', '1467947100', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('212', '1', '1467947586', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('213', '1', '1467947771', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Spec,方法：applist<br/>请求方式：GET', 'http://www.88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('214', '1', '1467947806', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('215', '1', '1467947823', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=4');
INSERT INTO `yun_operationlog` VALUES ('216', '1', '1467947825', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Spec,方法：index<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=4');
INSERT INTO `yun_operationlog` VALUES ('217', '1', '1467947867', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=4');
INSERT INTO `yun_operationlog` VALUES ('218', '1', '1467947924', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：clouddel<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudlist');
INSERT INTO `yun_operationlog` VALUES ('219', '1', '1467947924', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Spec,方法：index<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Spec&a=cloudlist');
INSERT INTO `yun_operationlog` VALUES ('220', '1', '1467949088', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('221', '1', '1467949111', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('222', '1', '1467949509', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=appedit&id=2');
INSERT INTO `yun_operationlog` VALUES ('223', '1', '1467949558', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appdel<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Spec&a=applist');
INSERT INTO `yun_operationlog` VALUES ('224', '1', '1467960097', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Cooperation,方法：delete<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Cooperation&menuid=188');
INSERT INTO `yun_operationlog` VALUES ('225', '1', '1467960296', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Category&a=edit&catid=11');
INSERT INTO `yun_operationlog` VALUES ('226', '1', '1467960299', '127.0.0.1', '1', '提示语：栏目总数:<font color=\"#FF0000\">8</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&');
INSERT INTO `yun_operationlog` VALUES ('227', '1', '1467960300', '127.0.0.1', '1', '提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET', 'http://www.88.com/index.php?m=Category&a=public_cache');
INSERT INTO `yun_operationlog` VALUES ('228', '1', '1467960600', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=11');
INSERT INTO `yun_operationlog` VALUES ('229', '1', '1467961057', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('230', '1', '1467962067', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('231', '1', '1467963476', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('232', '1', '1467963526', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('233', '1', '1467963543', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('234', '1', '1467963559', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('235', '1', '1467967793', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=edit&id=185');
INSERT INTO `yun_operationlog` VALUES ('236', '1', '1467967831', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('237', '1', '1468222562', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Demand,方法：appdel<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Demand&a=applist&menuid=195');
INSERT INTO `yun_operationlog` VALUES ('238', '1', '1468222562', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Demand,方法：index<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Demand&a=applist&menuid=195');
INSERT INTO `yun_operationlog` VALUES ('239', '1', '1468222616', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Demand,方法：appdel<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Demand&a=applist&menuid=195');
INSERT INTO `yun_operationlog` VALUES ('240', '1', '1468222620', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Demand,方法：appdel<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Demand&a=applist');
INSERT INTO `yun_operationlog` VALUES ('241', '1', '1468223192', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('242', '1', '1468223265', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('243', '1', '1468223322', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('244', '1', '1468223694', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('245', '1', '1468223771', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('246', '1', '1468224400', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('247', '1', '1468224645', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('248', '1', '1468224687', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('249', '1', '1468224701', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('250', '1', '1468224750', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('251', '1', '1468224806', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('252', '1', '1468224937', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('253', '1', '1468225284', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('254', '1', '1468225489', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('255', '1', '1468225512', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('256', '1', '1468225570', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('257', '1', '1468225676', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('258', '1', '1468225834', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('259', '1', '1468226087', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('260', '1', '1468226201', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('261', '1', '1468226533', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('262', '1', '1468226985', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('263', '1', '1468227084', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('264', '1', '1468227103', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('265', '1', '1468227128', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('266', '1', '1468227139', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('267', '1', '1468227251', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('268', '1', '1468227375', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('269', '1', '1468227396', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('270', '1', '1468227494', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('271', '1', '1468227515', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('272', '1', '1468227762', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('273', '1', '1468227863', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('274', '1', '1468228036', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('275', '1', '1468228105', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('276', '1', '1468228142', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('277', '1', '1468228793', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('278', '1', '1468229903', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('279', '1', '1468229948', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=9');
INSERT INTO `yun_operationlog` VALUES ('280', '1', '1468287689', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('281', '1', '1468287920', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('282', '1', '1468288138', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('283', '1', '1468288383', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('284', '1', '1468288435', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('285', '1', '1468288545', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('286', '1', '1468288826', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('287', '1', '1468295695', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=5');
INSERT INTO `yun_operationlog` VALUES ('288', '1', '1468295717', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=5');
INSERT INTO `yun_operationlog` VALUES ('289', '1', '1468307525', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=5');
INSERT INTO `yun_operationlog` VALUES ('290', '1', '1468310059', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('291', '1', '1468310086', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('292', '1', '1468310108', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('293', '1', '1468310120', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('294', '1', '1468310276', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=9');
INSERT INTO `yun_operationlog` VALUES ('295', '1', '1468310547', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('296', '1', '1468310563', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('297', '1', '1468310576', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('298', '1', '1468311674', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('299', '1', '1468380897', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=1');
INSERT INTO `yun_operationlog` VALUES ('300', '1', '1468380938', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('301', '1', '1468394994', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=1');
INSERT INTO `yun_operationlog` VALUES ('302', '1', '1468395495', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=1');
INSERT INTO `yun_operationlog` VALUES ('303', '1', '1468395516', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Goods&a=edit&id=1');
INSERT INTO `yun_operationlog` VALUES ('304', '0', '1468460464', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('305', '0', '1468460476', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('306', '0', '1468544917', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('307', '1', '1468548263', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=edit&id=187');
INSERT INTO `yun_operationlog` VALUES ('308', '1', '1468553511', '127.0.0.1', '0', '提示语：该会员不存在！<br/>模块：Member,控制器：Member,方法：memberinfo<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order&menuid=186');
INSERT INTO `yun_operationlog` VALUES ('309', '1', '1468553572', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Order,方法：orderDetail<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order&menuid=186');
INSERT INTO `yun_operationlog` VALUES ('310', '1', '1468560874', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('311', '1', '1468561253', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('312', '1', '1468561464', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('313', '1', '1468561565', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=11');
INSERT INTO `yun_operationlog` VALUES ('314', '1', '1468561601', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=12');
INSERT INTO `yun_operationlog` VALUES ('315', '1', '1468561673', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=12');
INSERT INTO `yun_operationlog` VALUES ('316', '1', '1468561731', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=12');
INSERT INTO `yun_operationlog` VALUES ('317', '1', '1468561794', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=13');
INSERT INTO `yun_operationlog` VALUES ('318', '1', '1468569811', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order&menuid=186');
INSERT INTO `yun_operationlog` VALUES ('319', '1', '1468569823', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order');
INSERT INTO `yun_operationlog` VALUES ('320', '1', '1468569850', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Demand,方法：appdel<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Demand&a=applist&menuid=195');
INSERT INTO `yun_operationlog` VALUES ('321', '1', '1468570256', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order&menuid=186');
INSERT INTO `yun_operationlog` VALUES ('322', '1', '1468570270', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order');
INSERT INTO `yun_operationlog` VALUES ('323', '1', '1468570297', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order');
INSERT INTO `yun_operationlog` VALUES ('324', '1', '1468570308', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order&menuid=186');
INSERT INTO `yun_operationlog` VALUES ('325', '1', '1468570397', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：del<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Order');
INSERT INTO `yun_operationlog` VALUES ('326', '1', '1468570401', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：GET', 'http://www.88.com/index.php?g=Mail&m=Order');
INSERT INTO `yun_operationlog` VALUES ('327', '1', '1468570430', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Order');
INSERT INTO `yun_operationlog` VALUES ('328', '1', '1468570433', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Order');
INSERT INTO `yun_operationlog` VALUES ('329', '0', '1468830130', '192.168.30.121', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.50.221:6067/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('330', '0', '1468830150', '192.168.30.121', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.50.221:6067/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('331', '0', '1468890951', '192.168.30.121', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.50.221:6067/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('332', '1', '1468896510', '192.168.30.121', '1', '提示语：添加管理员成功！<br/>模块：Admin,控制器：Management,方法：adminadd<br/>请求方式：Ajax', 'http://192.168.50.221:6067/admin.php?m=Management&a=adminadd&menuid=22');
INSERT INTO `yun_operationlog` VALUES ('333', '1', '1468896728', '192.168.30.121', '1', '提示语：授权成功！<br/>模块：Admin,控制器：Rbac,方法：authorize<br/>请求方式：Ajax', 'http://192.168.50.221:6067/admin.php?m=Rbac&a=authorize&id=2');
INSERT INTO `yun_operationlog` VALUES ('334', '1', '1468896736', '192.168.30.121', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php');
INSERT INTO `yun_operationlog` VALUES ('335', '2', '1468896771', '192.168.30.121', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：mail<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php?m=Config&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('336', '2', '1468896773', '192.168.30.121', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：mail<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('337', '2', '1468896774', '192.168.30.121', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：addition<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('338', '2', '1468896777', '192.168.30.121', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：addition<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('339', '2', '1468896778', '192.168.30.121', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('340', '2', '1468896781', '192.168.30.121', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：addition<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('341', '2', '1468896783', '192.168.30.121', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('342', '2', '1468896787', '192.168.30.121', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：mail<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php?m=Config&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('343', '2', '1468896827', '192.168.30.121', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php');
INSERT INTO `yun_operationlog` VALUES ('344', '0', '1468896838', '192.168.30.121', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.50.221:6067/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('345', '1', '1468896966', '192.168.30.121', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php');
INSERT INTO `yun_operationlog` VALUES ('346', '0', '1468896991', '192.168.30.121', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.50.221:6067/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('347', '2', '1468897861', '192.168.30.121', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://192.168.50.221:6067/admin.php');
INSERT INTO `yun_operationlog` VALUES ('348', '1', '1468919356', '192.168.30.121', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.221:6067/index.php?g=Mail&m=Company&a=edit&id=13');
INSERT INTO `yun_operationlog` VALUES ('349', '0', '1468978146', '192.168.30.121', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.50.221:6067/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('350', '1', '1469517574', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('351', '1', '1469517995', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('352', '1', '1469525610', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://new.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('353', '0', '1469525639', '120.194.3.98', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://new.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('354', '1', '1469525666', '120.194.3.98', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：Ajax', 'http://new.yun88.com/admin.php?m=Management&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('355', '1', '1469525674', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://new.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('356', '2', '1469525704', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：mail<br/>请求方式：GET', 'http://new.yun88.com/admin.php?m=Config&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('357', '2', '1469525707', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：addition<br/>请求方式：GET', 'http://new.yun88.com/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('358', '2', '1469525708', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Admin,控制器：Config,方法：extend<br/>请求方式：GET', 'http://new.yun88.com/admin.php?m=Config&a=attach&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('359', '2', '1469527334', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：GET', 'http://new.yun88.com/index.php?g=Mail&m=Company&menuid=183&page=2');
INSERT INTO `yun_operationlog` VALUES ('360', '2', '1469527343', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：GET', 'http://new.yun88.com/index.php?g=Mail&m=Company&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('361', '2', '1469527348', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://new.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('362', '1', '1469527656', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://new.yun88.com/admin.php?m=Menu&a=add&parentid=183');
INSERT INTO `yun_operationlog` VALUES ('363', '1', '1469527691', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://new.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('364', '2', '1469527714', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：GET', 'http://new.yun88.com/index.php?g=Mail&m=Company&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('365', '2', '1469527727', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://new.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('366', '0', '1469527737', '120.194.3.98', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://new.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('367', '1', '1469527768', '120.194.3.98', '1', '提示语：授权成功！<br/>模块：Admin,控制器：Rbac,方法：authorize<br/>请求方式：Ajax', 'http://new.yun88.com/admin.php?m=Rbac&a=authorize&id=2');
INSERT INTO `yun_operationlog` VALUES ('368', '1', '1469527773', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://new.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('369', '2', '1469527818', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://new.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('370', '0', '1469527833', '120.194.3.98', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://new.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('371', '2', '1470106199', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('372', '2', '1470106232', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('373', '2', '1470106259', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('374', '1', '1470108927', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('375', '1', '1470108950', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('376', '1', '1470108965', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('377', '1', '1470124419', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('378', '1', '1470124663', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('379', '1', '1470124951', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('380', '1', '1470125130', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('381', '1', '1470125220', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('382', '1', '1470125242', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('383', '1', '1470125356', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('384', '1', '1470125420', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('385', '1', '1470125448', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('386', '1', '1470125482', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('387', '1', '1470125529', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=11');
INSERT INTO `yun_operationlog` VALUES ('388', '1', '1470125553', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('389', '1', '1470125574', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('390', '1', '1470128706', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('391', '1', '1470210326', '120.194.3.98', '1', '提示语：更新成功！<br/>模块：Member,控制器：Member,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Member&m=Member&a=edit&userid=1');
INSERT INTO `yun_operationlog` VALUES ('392', '1', '1470280222', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('393', '1', '1470281135', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=13');
INSERT INTO `yun_operationlog` VALUES ('394', '1', '1470281181', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=12');
INSERT INTO `yun_operationlog` VALUES ('395', '0', '1470294668', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://www.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('396', '2', '1470295028', '120.194.3.98', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Config&menuid=8');
INSERT INTO `yun_operationlog` VALUES ('397', '2', '1470297155', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Order,方法：orderDetail<br/>请求方式：GET', 'http://www.yun88.com/index.php?g=Mail&m=Order&menuid=186');
INSERT INTO `yun_operationlog` VALUES ('398', '2', '1470297175', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Order&menuid=186');
INSERT INTO `yun_operationlog` VALUES ('399', '2', '1470297292', '120.194.3.98', '0', '提示语：企业名称必填<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('400', '2', '1470297307', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=13');
INSERT INTO `yun_operationlog` VALUES ('401', '2', '1470297328', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=add&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('402', '2', '1470297335', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Company,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company');
INSERT INTO `yun_operationlog` VALUES ('403', '1', '1470297461', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=183');
INSERT INTO `yun_operationlog` VALUES ('404', '2', '1470297493', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Company,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('405', '2', '1470297512', '120.194.3.98', '0', '提示语：商品名称必填<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('406', '1', '1470297576', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=184');
INSERT INTO `yun_operationlog` VALUES ('407', '1', '1470297607', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=184');
INSERT INTO `yun_operationlog` VALUES ('408', '2', '1470297628', '120.194.3.98', '0', '提示语：规格类型必填<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('409', '2', '1470297636', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Spec,方法：clouddel<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudlist&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('410', '1', '1470297745', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=191');
INSERT INTO `yun_operationlog` VALUES ('411', '1', '1470297790', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=191');
INSERT INTO `yun_operationlog` VALUES ('412', '1', '1470297850', '120.194.3.98', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=edit&id=200');
INSERT INTO `yun_operationlog` VALUES ('413', '1', '1470297899', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=193');
INSERT INTO `yun_operationlog` VALUES ('414', '1', '1470297936', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=193');
INSERT INTO `yun_operationlog` VALUES ('415', '2', '1470297951', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Mail,控制器：Cooperation,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Demand&a=cloudlist&menuid=185');
INSERT INTO `yun_operationlog` VALUES ('416', '1', '1470298017', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=185');
INSERT INTO `yun_operationlog` VALUES ('417', '1', '1470298060', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=195');
INSERT INTO `yun_operationlog` VALUES ('418', '1', '1470298119', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=186');
INSERT INTO `yun_operationlog` VALUES ('419', '1', '1470298156', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=186');
INSERT INTO `yun_operationlog` VALUES ('420', '1', '1470298228', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=188');
INSERT INTO `yun_operationlog` VALUES ('421', '1', '1470298299', '120.194.3.98', '1', '提示语：授权成功！<br/>模块：Admin,控制器：Rbac,方法：authorize<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Rbac&a=authorize&id=2');
INSERT INTO `yun_operationlog` VALUES ('422', '2', '1470298306', '120.194.3.98', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://www.yun88.com/admin.php');
INSERT INTO `yun_operationlog` VALUES ('423', '2', '1470298336', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&menuid=183');
INSERT INTO `yun_operationlog` VALUES ('424', '2', '1470298344', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：cancel<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Order&menuid=186');
INSERT INTO `yun_operationlog` VALUES ('425', '2', '1470298350', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Order,方法：del<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Order');
INSERT INTO `yun_operationlog` VALUES ('426', '2', '1470300816', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('427', '2', '1470300858', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('428', '1', '1470301661', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=11');
INSERT INTO `yun_operationlog` VALUES ('429', '1', '1470301984', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.88.com/index.php?m=Content&a=add&catid=11');
INSERT INTO `yun_operationlog` VALUES ('430', '0', '1470362909', '120.194.3.98', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('431', '0', '1470362921', '120.194.3.98', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('432', '0', '1470363039', '120.194.3.98', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('433', '2', '1470364680', '120.194.3.98', '0', '提示语：商品简介必填<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('434', '2', '1470364697', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('435', '2', '1470365114', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('436', '2', '1470377788', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=1');
INSERT INTO `yun_operationlog` VALUES ('437', '2', '1470377820', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=2');
INSERT INTO `yun_operationlog` VALUES ('438', '2', '1470377929', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('439', '2', '1470378017', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=1');
INSERT INTO `yun_operationlog` VALUES ('440', '2', '1470378049', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=2');
INSERT INTO `yun_operationlog` VALUES ('441', '2', '1470378067', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=4');
INSERT INTO `yun_operationlog` VALUES ('442', '2', '1470378099', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudadd&menuid=191');
INSERT INTO `yun_operationlog` VALUES ('443', '2', '1470378255', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('444', '2', '1470378990', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=9');
INSERT INTO `yun_operationlog` VALUES ('445', '2', '1470379121', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('446', '2', '1470379198', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appedit&id=1');
INSERT INTO `yun_operationlog` VALUES ('447', '2', '1470379263', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('448', '2', '1470379406', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('449', '2', '1470379422', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('450', '2', '1470379585', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('451', '2', '1470379610', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('452', '2', '1470379717', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('453', '2', '1470379816', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('454', '2', '1470379868', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('455', '2', '1470379890', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('456', '2', '1470379941', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('457', '2', '1470380069', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('458', '2', '1470380377', '120.194.3.98', '0', '提示语：商品简介必填<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('459', '2', '1470380390', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('460', '2', '1470381085', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('461', '2', '1470381157', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('462', '2', '1470381190', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('463', '2', '1470381223', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('464', '2', '1470381345', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appdel<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=applist&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('465', '2', '1470381349', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appdel<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=applist');
INSERT INTO `yun_operationlog` VALUES ('466', '2', '1470381374', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('467', '2', '1470381406', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('468', '2', '1470381437', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('469', '2', '1470381553', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('470', '2', '1470381557', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods');
INSERT INTO `yun_operationlog` VALUES ('471', '2', '1470381562', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods');
INSERT INTO `yun_operationlog` VALUES ('472', '2', '1470381628', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('473', '2', '1470381671', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('474', '2', '1470381717', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('475', '1', '1470383017', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('476', '1', '1470383064', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('477', '1', '1470385292', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('478', '1', '1470650573', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.88.com/admin.php?m=Menu&a=add&parentid=182');
INSERT INTO `yun_operationlog` VALUES ('479', '1', '1470734180', '120.194.3.98', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=edit&id=209');
INSERT INTO `yun_operationlog` VALUES ('480', '1', '1470734215', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu&a=add&parentid=209');
INSERT INTO `yun_operationlog` VALUES ('481', '1', '1470734308', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Admin,控制器：Menu,方法：index<br/>请求方式：Ajax', 'http://www.yun88.com/admin.php?m=Menu');
INSERT INTO `yun_operationlog` VALUES ('482', '1', '1470734640', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Goods&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('483', '1', '1470734666', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('484', '1', '1470734695', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('485', '1', '1470734710', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('486', '1', '1470734735', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('487', '1', '1470734750', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('488', '1', '1470734761', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('489', '1', '1470734771', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('490', '1', '1470734788', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('491', '1', '1470734801', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('492', '1', '1470734814', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('493', '1', '1470734832', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('494', '1', '1470734846', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('495', '1', '1470734866', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('496', '1', '1470734896', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&a=add&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('497', '1', '1470734959', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=1');
INSERT INTO `yun_operationlog` VALUES ('498', '1', '1470735015', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=1');
INSERT INTO `yun_operationlog` VALUES ('499', '1', '1470735091', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=1');
INSERT INTO `yun_operationlog` VALUES ('500', '1', '1470735098', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=2');
INSERT INTO `yun_operationlog` VALUES ('501', '1', '1470735104', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：clouddel<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudlist');
INSERT INTO `yun_operationlog` VALUES ('502', '1', '1470735109', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=4');
INSERT INTO `yun_operationlog` VALUES ('503', '1', '1470735116', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：cloudedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=cloudedit&id=5');
INSERT INTO `yun_operationlog` VALUES ('504', '1', '1470735149', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appedit&id=1');
INSERT INTO `yun_operationlog` VALUES ('505', '1', '1470735162', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appedit&id=2');
INSERT INTO `yun_operationlog` VALUES ('506', '1', '1470735174', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appedit&id=3');
INSERT INTO `yun_operationlog` VALUES ('507', '1', '1470735187', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appedit&id=4');
INSERT INTO `yun_operationlog` VALUES ('508', '1', '1470735416', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appedit&id=5');
INSERT INTO `yun_operationlog` VALUES ('509', '1', '1470735428', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appedit&id=6');
INSERT INTO `yun_operationlog` VALUES ('510', '1', '1470735446', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appedit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appedit&id=7');
INSERT INTO `yun_operationlog` VALUES ('511', '1', '1470793221', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('512', '1', '1470793241', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('513', '1', '1470793265', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Spec,方法：appadd<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Spec&a=appadd&menuid=193');
INSERT INTO `yun_operationlog` VALUES ('514', '1', '1470793318', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType&menuid=209');
INSERT INTO `yun_operationlog` VALUES ('515', '1', '1470793325', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsType,方法：delete<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=GoodsType');
INSERT INTO `yun_operationlog` VALUES ('516', '2', '1470898401', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=add&catid=9');
INSERT INTO `yun_operationlog` VALUES ('517', '2', '1470898544', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Content,控制器：Createhtml,方法：batch_show<br/>请求方式：GET', 'http://www.yun88.com/index.php?m=Content&a=classlist&catid=9');
INSERT INTO `yun_operationlog` VALUES ('518', '2', '1470898545', '120.194.3.98', '0', '提示语：您没有操作此项的权限！<br/>模块：Content,控制器：Createhtml,方法：batch_show<br/>请求方式：GET', 'http://www.yun88.com/index.php?m=Content&a=classlist&catid=9');
INSERT INTO `yun_operationlog` VALUES ('519', '2', '1470899009', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=1');
INSERT INTO `yun_operationlog` VALUES ('520', '2', '1470899193', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=1');
INSERT INTO `yun_operationlog` VALUES ('521', '2', '1470899374', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=1');
INSERT INTO `yun_operationlog` VALUES ('522', '2', '1470899414', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=1');
INSERT INTO `yun_operationlog` VALUES ('523', '2', '1470901572', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=2');
INSERT INTO `yun_operationlog` VALUES ('524', '2', '1470902369', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('525', '2', '1470902507', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('526', '2', '1470902521', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('527', '2', '1470902583', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=2');
INSERT INTO `yun_operationlog` VALUES ('528', '2', '1470902611', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=1');
INSERT INTO `yun_operationlog` VALUES ('529', '1', '1471241627', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('530', '1', '1471241717', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('531', '1', '1471241879', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('532', '1', '1471241921', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('533', '1', '1471242088', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=9');
INSERT INTO `yun_operationlog` VALUES ('534', '1', '1471242104', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('535', '1', '1471422283', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=13');
INSERT INTO `yun_operationlog` VALUES ('536', '1', '1471422316', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=12');
INSERT INTO `yun_operationlog` VALUES ('537', '1', '1471422337', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=11');
INSERT INTO `yun_operationlog` VALUES ('538', '1', '1471422463', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('539', '1', '1471422490', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('540', '1', '1471422497', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('541', '1', '1471422513', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('542', '1', '1471422604', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('543', '1', '1471422624', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=13');
INSERT INTO `yun_operationlog` VALUES ('544', '1', '1471422633', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=12');
INSERT INTO `yun_operationlog` VALUES ('545', '1', '1471422642', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=11');
INSERT INTO `yun_operationlog` VALUES ('546', '1', '1471422660', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=9');
INSERT INTO `yun_operationlog` VALUES ('547', '1', '1471422681', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('548', '1', '1471422706', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=6');
INSERT INTO `yun_operationlog` VALUES ('549', '1', '1471422723', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('550', '1', '1471422823', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('551', '0', '1471570362', '120.194.3.98', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://www.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('552', '2', '1471570416', '120.194.3.98', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('553', '2', '1471571245', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('554', '2', '1471571262', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://www.yun88.com/index.php?g=Mail&m=Company&a=edit&id=7');
INSERT INTO `yun_operationlog` VALUES ('555', '0', '1484126966', '127.0.0.1', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://yun88.cn/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('556', '0', '1484126995', '127.0.0.1', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://yun88.cn/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('557', '0', '1484127017', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://yun88.cn/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('558', '0', '1484127361', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://yun88.cn/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('559', '1', '1484270772', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Admin,控制器：Management,方法：index<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('560', '1', '1484281532', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('561', '1', '1484300365', '127.0.0.1', '0', '提示语：帐号名称已经存在！<br/>模块：Member,控制器：Member,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=member&m=member&a=add');
INSERT INTO `yun_operationlog` VALUES ('562', '1', '1484300375', '127.0.0.1', '0', '提示语：两次输入的密码不一样！<br/>模块：Member,控制器：Member,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=member&m=member&a=add');
INSERT INTO `yun_operationlog` VALUES ('563', '0', '1484616805', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://yun88.cn/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('564', '1', '1484720807', '127.0.0.1', '1', '提示语：排序更新成功！<br/>模块：Content,控制器：Category,方法：index<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Category&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('565', '1', '1484721509', '127.0.0.1', '0', '提示语：该栏目下已经存在数据，无法转换！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://yun88.cn/index.php?m=Category&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('566', '1', '1484721515', '127.0.0.1', '0', '提示语：该栏目下已经存在数据，无法转换！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET', 'http://yun88.cn/index.php?m=Category&menuid=47');
INSERT INTO `yun_operationlog` VALUES ('567', '1', '1484726615', '127.0.0.1', '0', '提示语：模块签名不能为空！<br/>模块：Admin,控制器：Module,方法：install<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Module&a=install&module=Bazaar');
INSERT INTO `yun_operationlog` VALUES ('568', '1', '1484727474', '127.0.0.1', '0', '提示语：请选择上传文件！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('569', '1', '1484727476', '127.0.0.1', '0', '提示语：请选择上传文件！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('570', '1', '1484727476', '127.0.0.1', '0', '提示语：请选择上传文件！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('571', '1', '1484727477', '127.0.0.1', '0', '提示语：请选择上传文件！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('572', '1', '1484727478', '127.0.0.1', '0', '提示语：请选择上传文件！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('573', '1', '1484727479', '127.0.0.1', '0', '提示语：请选择上传文件！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('574', '1', '1484727479', '127.0.0.1', '0', '提示语：请选择上传文件！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('575', '1', '1484727480', '127.0.0.1', '0', '提示语：请选择上传文件！<br/>模块：Content,控制器：Models,方法：import<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Models&a=import&menuid=54');
INSERT INTO `yun_operationlog` VALUES ('576', '1', '1484730324', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Public,方法：changyong<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Public&a=changyong');
INSERT INTO `yun_operationlog` VALUES ('577', '1', '1484730358', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Public,方法：changyong<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Public&a=changyong');
INSERT INTO `yun_operationlog` VALUES ('578', '1', '1484731003', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Public,方法：changyong<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Public&a=changyong');
INSERT INTO `yun_operationlog` VALUES ('579', '1', '1484731719', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Public,方法：changyong<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Public&a=changyong');
INSERT INTO `yun_operationlog` VALUES ('580', '1', '1484731875', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('581', '1', '1484788342', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('582', '1', '1484788965', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=edit&id=212');
INSERT INTO `yun_operationlog` VALUES ('583', '1', '1484790836', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=212');
INSERT INTO `yun_operationlog` VALUES ('584', '1', '1484790879', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=213');
INSERT INTO `yun_operationlog` VALUES ('585', '1', '1484790894', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=edit&id=214');
INSERT INTO `yun_operationlog` VALUES ('586', '1', '1484790955', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=212');
INSERT INTO `yun_operationlog` VALUES ('587', '1', '1484790966', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=edit&id=215');
INSERT INTO `yun_operationlog` VALUES ('588', '1', '1484791050', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=215');
INSERT INTO `yun_operationlog` VALUES ('589', '1', '1484791186', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=213');
INSERT INTO `yun_operationlog` VALUES ('590', '1', '1485069762', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=181');
INSERT INTO `yun_operationlog` VALUES ('591', '1', '1485069822', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=218');
INSERT INTO `yun_operationlog` VALUES ('592', '1', '1485070884', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Refer,方法：del<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Refer&menuid=219');
INSERT INTO `yun_operationlog` VALUES ('593', '1', '1485073011', '127.0.0.1', '0', '提示语：操作失败<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('594', '1', '1485074597', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('595', '1', '1485075075', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('596', '1', '1485075258', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('597', '1', '1485075334', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('598', '1', '1485075545', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('599', '1', '1485075584', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('600', '1', '1485075996', '127.0.0.1', '0', '提示语：商品简介必填<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('601', '1', '1485076011', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('602', '1', '1485076238', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('603', '1', '1485076279', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('604', '1', '1485076854', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('605', '1', '1485076964', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('606', '1', '1485078100', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('607', '1', '1485078217', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('608', '1', '1485078506', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('609', '1', '1485078522', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('610', '1', '1485078898', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('611', '1', '1485138146', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('612', '1', '1485138520', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('613', '1', '1485138614', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('614', '1', '1485139189', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('615', '1', '1485139264', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('616', '1', '1485139379', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('617', '1', '1485139968', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('618', '1', '1485140506', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('619', '1', '1485140581', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('620', '1', '1485140784', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('621', '1', '1485140842', '127.0.0.1', '0', '提示语：价格格式不对<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('622', '1', '1485140853', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('623', '1', '1485141000', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('624', '1', '1485141101', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('625', '1', '1485142919', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('626', '1', '1485149190', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('627', '1', '1485149191', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('628', '1', '1485149191', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('629', '1', '1485149193', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('630', '1', '1485149193', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('631', '1', '1485149194', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('632', '1', '1485149194', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('633', '1', '1485149194', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('634', '1', '1485149194', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('635', '1', '1485149195', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('636', '1', '1485149195', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('637', '1', '1485149196', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('638', '1', '1485149196', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('639', '1', '1485149197', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('640', '1', '1485149197', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('641', '1', '1485149197', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('642', '1', '1485149198', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('643', '1', '1485149198', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('644', '1', '1485149199', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('645', '1', '1485149199', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('646', '1', '1485149583', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('647', '1', '1485149655', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods');
INSERT INTO `yun_operationlog` VALUES ('648', '1', '1485149815', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('649', '1', '1485149967', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('650', '1', '1485149977', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('651', '1', '1485149978', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('652', '1', '1485149978', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('653', '1', '1485149981', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('654', '1', '1485149982', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('655', '1', '1485149982', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('656', '1', '1485149983', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('657', '1', '1485149983', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('658', '1', '1485149984', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('659', '1', '1485149984', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('660', '1', '1485149984', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('661', '1', '1485149985', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('662', '1', '1485149985', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('663', '1', '1485149986', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('664', '1', '1485149986', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('665', '1', '1485149987', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('666', '1', '1485149987', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('667', '1', '1485149987', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('668', '1', '1485149988', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('669', '1', '1485150001', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('670', '1', '1485150002', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('671', '1', '1485150002', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('672', '1', '1485150006', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('673', '1', '1485150006', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('674', '1', '1485150007', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('675', '1', '1485150007', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('676', '1', '1485150007', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('677', '1', '1485150008', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('678', '1', '1485150008', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('679', '1', '1485150008', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('680', '1', '1485150009', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('681', '1', '1485150009', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('682', '1', '1485150010', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('683', '1', '1485150010', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('684', '1', '1485150010', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('685', '1', '1485150011', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('686', '1', '1485150011', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('687', '1', '1485150012', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('688', '1', '1485150051', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('689', '1', '1485150202', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('690', '1', '1485151158', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('691', '1', '1485151256', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('692', '1', '1485151293', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods');
INSERT INTO `yun_operationlog` VALUES ('693', '1', '1485151754', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('694', '1', '1485152393', '127.0.0.1', '0', '提示语：商品使用必须长传<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=26');
INSERT INTO `yun_operationlog` VALUES ('695', '1', '1485152448', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=26');
INSERT INTO `yun_operationlog` VALUES ('696', '1', '1485152979', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=26');
INSERT INTO `yun_operationlog` VALUES ('697', '1', '1485153018', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods');
INSERT INTO `yun_operationlog` VALUES ('698', '1', '1485153112', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=add&menuid=184');
INSERT INTO `yun_operationlog` VALUES ('699', '1', '1485153178', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=27');
INSERT INTO `yun_operationlog` VALUES ('700', '1', '1485155945', '127.0.0.1', '1', '提示语：删除附件成功！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `yun_operationlog` VALUES ('701', '1', '1485155959', '127.0.0.1', '1', '提示语：删除附件成功！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `yun_operationlog` VALUES ('702', '1', '1485155965', '127.0.0.1', '1', '提示语：删除附件成功！<br/>模块：Attachment,控制器：Atadmin,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Attachment&m=Atadmin&menuid=66');
INSERT INTO `yun_operationlog` VALUES ('703', '1', '1485164000', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('704', '1', '1485164020', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=edit&id=220');
INSERT INTO `yun_operationlog` VALUES ('705', '1', '1485164084', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=220');
INSERT INTO `yun_operationlog` VALUES ('706', '1', '1485164146', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=220');
INSERT INTO `yun_operationlog` VALUES ('707', '1', '1485164155', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('708', '1', '1485164155', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('709', '1', '1485164156', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('710', '1', '1485164159', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('711', '1', '1485164160', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('712', '1', '1485164160', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('713', '1', '1485164161', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('714', '1', '1485164161', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('715', '1', '1485164162', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('716', '1', '1485164162', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('717', '1', '1485164163', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('718', '1', '1485164163', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('719', '1', '1485164164', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('720', '1', '1485164164', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('721', '1', '1485164165', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('722', '1', '1485164165', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('723', '1', '1485164166', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('724', '1', '1485164166', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('725', '1', '1485164167', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('726', '1', '1485164218', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('727', '1', '1485164224', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('728', '1', '1485164231', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('729', '1', '1485164288', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=181');
INSERT INTO `yun_operationlog` VALUES ('730', '1', '1485164344', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=223');
INSERT INTO `yun_operationlog` VALUES ('731', '1', '1485164407', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=223');
INSERT INTO `yun_operationlog` VALUES ('732', '1', '1485224388', '127.0.0.1', '0', '提示语：参数错误<br/>模块：Mail,控制器：Goods,方法：problem<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('733', '1', '1485225532', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('734', '1', '1485225578', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('735', '1', '1485226166', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('736', '1', '1485226250', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('737', '1', '1485226277', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('738', '1', '1485226330', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('739', '1', '1485226467', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('740', '1', '1485226533', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('741', '1', '1485226663', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('742', '1', '1485226678', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('743', '1', '1485226679', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('744', '1', '1485226680', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('745', '1', '1485226681', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('746', '1', '1485226733', '127.0.0.1', '0', '提示语：请提出问题<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('747', '1', '1485226770', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('748', '1', '1485226811', '127.0.0.1', '0', '提示语：请提出问题<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('749', '1', '1485226816', '127.0.0.1', '0', '提示语：问题说明<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('750', '1', '1485227968', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('751', '1', '1485228454', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&menuid=224');
INSERT INTO `yun_operationlog` VALUES ('752', '1', '1485228457', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('753', '1', '1485228461', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('754', '1', '1485228464', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('755', '1', '1485228466', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('756', '1', '1485229344', '127.0.0.1', '0', '提示语：必须选择对应的商品<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('757', '1', '1485229477', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('758', '1', '1485229485', '127.0.0.1', '0', '提示语：操作失败<br/>模块：Mail,控制器：Pro,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('759', '1', '1485229495', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('760', '1', '1485229659', '127.0.0.1', '0', '提示语：参数错误<br/>模块：Mail,控制器：Goods,方法：problem<br/>请求方式：GET', 'http://yun88.cn/index.php?g=Mail&m=Pro&menuid=224');
INSERT INTO `yun_operationlog` VALUES ('761', '1', '1485229818', '127.0.0.1', '0', '提示语：参数错误<br/>模块：Mail,控制器：Goods,方法：problem<br/>请求方式：GET', 'http://yun88.cn/index.php?g=Mail&m=Pro&menuid=224');
INSERT INTO `yun_operationlog` VALUES ('762', '1', '1485238884', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=27');
INSERT INTO `yun_operationlog` VALUES ('763', '1', '1485240234', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=181');
INSERT INTO `yun_operationlog` VALUES ('764', '1', '1485240321', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=edit&id=226');
INSERT INTO `yun_operationlog` VALUES ('765', '1', '1485240385', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=226');
INSERT INTO `yun_operationlog` VALUES ('766', '1', '1485240441', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=226');
INSERT INTO `yun_operationlog` VALUES ('767', '1', '1485243595', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('768', '1', '1485243604', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('769', '1', '1485243648', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('770', '1', '1485243652', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('771', '1', '1485243923', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('772', '1', '1485244361', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('773', '1', '1485244363', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('774', '1', '1485244363', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('775', '1', '1485244367', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('776', '1', '1485244368', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('777', '1', '1485244368', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('778', '1', '1485244369', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('779', '1', '1485244369', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('780', '1', '1485244370', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('781', '1', '1485244370', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('782', '1', '1485244371', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('783', '1', '1485244371', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('784', '1', '1485244371', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('785', '1', '1485244372', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('786', '1', '1485244372', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('787', '1', '1485244398', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('788', '1', '1485244399', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('789', '1', '1485244414', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('790', '1', '1485244415', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('791', '1', '1485244415', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('792', '1', '1485244416', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('793', '1', '1485244416', '127.0.0.1', '0', '提示语：<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('794', '1', '1485244422', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('795', '1', '1485244483', '127.0.0.1', '0', '提示语：商品案例图片<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('796', '1', '1485245513', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&menuid=227');
INSERT INTO `yun_operationlog` VALUES ('797', '1', '1485245874', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&menuid=227');
INSERT INTO `yun_operationlog` VALUES ('798', '1', '1485246203', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('799', '1', '1485246229', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('800', '1', '1485246813', '127.0.0.1', '0', '提示语：请提出问题<br/>模块：Mail,控制器：Pro,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('801', '1', '1485246854', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('802', '1', '1486352431', '127.0.0.1', '0', '提示语：非法操作<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('803', '1', '1486352434', '127.0.0.1', '0', '提示语：非法操作<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('804', '1', '1486352524', '127.0.0.1', '0', '提示语：非法操作<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('805', '1', '1486352802', '127.0.0.1', '0', '提示语：非法操作<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('806', '1', '1486352806', '127.0.0.1', '0', '提示语：非法操作<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('807', '1', '1486352830', '127.0.0.1', '0', '提示语：非法操作<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('808', '1', '1486353160', '127.0.0.1', '0', '提示语：非法操作<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('809', '0', '1486361984', '127.0.0.1', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://yun88.cn/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('810', '0', '1486362277', '127.0.0.1', '0', '提示语：用户名或者密码不能为空，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：GET', '');
INSERT INTO `yun_operationlog` VALUES ('811', '1', '1486363573', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('812', '1', '1486363574', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('813', '1', '1486363575', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('814', '1', '1486363578', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('815', '1', '1486363578', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('816', '1', '1486363579', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('817', '1', '1486363579', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('818', '1', '1486363580', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('819', '1', '1486363580', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('820', '1', '1486363580', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('821', '1', '1486363581', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('822', '1', '1486363581', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('823', '1', '1486363582', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('824', '1', '1486363582', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('825', '1', '1486363582', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('826', '1', '1486363583', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('827', '1', '1486363583', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('828', '1', '1486363584', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('829', '1', '1486363584', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('830', '1', '1486365184', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Refer,方法：edit<br/>请求方式：GET', 'http://yun88.cn/index.php?g=Mail&m=Refer&menuid=219');
INSERT INTO `yun_operationlog` VALUES ('831', '1', '1486367310', '127.0.0.1', '0', '提示语：该菜单下还有子菜单，无法删除！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('832', '1', '1486367315', '127.0.0.1', '0', '提示语：该菜单下还有子菜单，无法删除！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('833', '1', '1486367320', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('834', '1', '1486367333', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('835', '1', '1486367339', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('836', '1', '1486367346', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('837', '1', '1486367354', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('838', '1', '1486367360', '127.0.0.1', '1', '提示语：删除菜单成功！<br/>模块：Admin,控制器：Menu,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&menuid=17');
INSERT INTO `yun_operationlog` VALUES ('839', '1', '1486367691', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('840', '1', '1486367691', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('841', '1', '1486367692', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('842', '1', '1486367695', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('843', '1', '1486367695', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('844', '1', '1486367696', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('845', '1', '1486367696', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('846', '1', '1486367697', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('847', '1', '1486367697', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('848', '1', '1486367697', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('849', '1', '1486367698', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('850', '1', '1486367698', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('851', '1', '1486367699', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('852', '1', '1486367699', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('853', '1', '1486367700', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('854', '1', '1486367700', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('855', '1', '1486367700', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('856', '1', '1486367701', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('857', '1', '1486367701', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('858', '1', '1486367724', '127.0.0.1', '1', '提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('859', '1', '1486367737', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('860', '1', '1486367738', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('861', '1', '1486367738', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('862', '1', '1486367742', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('863', '1', '1486367742', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('864', '1', '1486367742', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('865', '1', '1486367743', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('866', '1', '1486367743', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('867', '1', '1486367744', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('868', '1', '1486367744', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('869', '1', '1486367744', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('870', '1', '1486367745', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('871', '1', '1486367745', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('872', '1', '1486367746', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('873', '1', '1486367746', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('874', '1', '1486367746', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('875', '1', '1486367747', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('876', '1', '1486367747', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('877', '1', '1486367748', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('878', '1', '1486367906', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=181');
INSERT INTO `yun_operationlog` VALUES ('879', '1', '1486367993', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=229');
INSERT INTO `yun_operationlog` VALUES ('880', '1', '1486368030', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=229');
INSERT INTO `yun_operationlog` VALUES ('881', '1', '1486371778', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=27');
INSERT INTO `yun_operationlog` VALUES ('882', '1', '1486372384', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('883', '1', '1486372384', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('884', '1', '1486372385', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('885', '1', '1486372388', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('886', '1', '1486372389', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('887', '1', '1486372389', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('888', '1', '1486372390', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('889', '1', '1486372390', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('890', '1', '1486372390', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('891', '1', '1486372391', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('892', '1', '1486372391', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('893', '1', '1486372392', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('894', '1', '1486372392', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('895', '1', '1486372392', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('896', '1', '1486372393', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('897', '1', '1486372393', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('898', '1', '1486372393', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('899', '1', '1486372394', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('900', '1', '1486372394', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('901', '1', '1486373533', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=27');
INSERT INTO `yun_operationlog` VALUES ('902', '1', '1486373665', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('903', '1', '1486373726', '127.0.0.1', '0', '提示语：必须选择对应的商品<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('904', '1', '1486373775', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('905', '1', '1486373885', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('906', '1', '1486373954', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('907', '1', '1486374865', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&menuid=230');
INSERT INTO `yun_operationlog` VALUES ('908', '1', '1486431097', '127.0.0.1', '0', '提示语：商品安装必须长传<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=27');
INSERT INTO `yun_operationlog` VALUES ('909', '1', '1486431148', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Goods,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Goods&a=edit&id=27');
INSERT INTO `yun_operationlog` VALUES ('910', '1', '1486438576', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('911', '0', '1486447400', '127.0.0.1', '0', '提示语：用户名或者密码错误，登陆失败！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://yun88.cn/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('912', '0', '1486447416', '127.0.0.1', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://yun88.cn/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('913', '1', '1486522206', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=181');
INSERT INTO `yun_operationlog` VALUES ('914', '1', '1486522367', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('915', '1', '1486522369', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('916', '1', '1486522371', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('917', '1', '1486522375', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('918', '1', '1486522375', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('919', '1', '1486522376', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('920', '1', '1486522376', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('921', '1', '1486522377', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('922', '1', '1486522378', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('923', '1', '1486522378', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('924', '1', '1486522379', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('925', '1', '1486522379', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('926', '1', '1486522380', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('927', '1', '1486522380', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('928', '1', '1486522380', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('929', '1', '1486522381', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('930', '1', '1486522381', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('931', '1', '1486522382', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('932', '1', '1486522382', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('933', '1', '1486522782', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=232');
INSERT INTO `yun_operationlog` VALUES ('934', '1', '1486522907', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=233');
INSERT INTO `yun_operationlog` VALUES ('935', '1', '1486524614', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=232');
INSERT INTO `yun_operationlog` VALUES ('936', '1', '1486524711', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=add&parentid=235');
INSERT INTO `yun_operationlog` VALUES ('937', '1', '1486525986', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=edit&id=235');
INSERT INTO `yun_operationlog` VALUES ('938', '1', '1486527961', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Admin,控制器：Menu,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/admin.php?m=Menu&a=edit&id=236');
INSERT INTO `yun_operationlog` VALUES ('939', '1', '1486528584', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('940', '1', '1486528612', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('941', '1', '1486528631', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('942', '1', '1486528662', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('943', '1', '1486532964', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('944', '1', '1486532978', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('945', '1', '1486532998', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('946', '1', '1486533015', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('947', '1', '1486533019', '127.0.0.1', '0', '提示语：请先删除其子分类<br/>模块：Mail,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category');
INSERT INTO `yun_operationlog` VALUES ('948', '1', '1486533025', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category');
INSERT INTO `yun_operationlog` VALUES ('949', '1', '1486535016', '127.0.0.1', '0', '提示语：商品安装必须长传<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('950', '1', '1486535116', '127.0.0.1', '0', '提示语：商品安装必须长传<br/>模块：Mail,控制器：Goods,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('951', '1', '1486535239', '127.0.0.1', '0', '提示语：价格格式不对<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('952', '1', '1486535246', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('953', '1', '1486536025', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('954', '1', '1486536454', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('955', '1', '1486536504', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('956', '1', '1486541720', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('957', '1', '1486541744', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('958', '1', '1486541883', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=30');
INSERT INTO `yun_operationlog` VALUES ('959', '1', '1486543033', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：Refer,方法：edit<br/>请求方式：GET', 'http://yun88.cn/index.php?g=Mail&m=Refer&menuid=219');
INSERT INTO `yun_operationlog` VALUES ('960', '1', '1486545390', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('961', '1', '1486546259', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('962', '1', '1486548946', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('963', '1', '1486548963', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('964', '1', '1486605403', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('965', '1', '1486607412', '127.0.0.1', '0', '提示语：资源名称填写<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('966', '1', '1486607419', '127.0.0.1', '0', '提示语：资源名称填写<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('967', '1', '1486607561', '127.0.0.1', '0', '提示语：资源名称填写<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('968', '1', '1486607639', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('969', '1', '1486618849', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('970', '1', '1486618872', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('971', '1', '1486618887', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('972', '1', '1486618904', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('973', '1', '1486618917', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('974', '1', '1486618930', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('975', '1', '1486618948', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('976', '1', '1486618962', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('977', '1', '1486618984', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('978', '1', '1486618998', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('979', '1', '1486619023', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category');
INSERT INTO `yun_operationlog` VALUES ('980', '1', '1486619040', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('981', '1', '1486619054', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('982', '1', '1486619065', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('983', '1', '1486623020', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('984', '1', '1486623123', '127.0.0.1', '0', '提示语：价格格式不对<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('985', '1', '1486623156', '127.0.0.1', '0', '提示语：价格格式必填<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('986', '1', '1486623222', '127.0.0.1', '0', '提示语：价格格式必填<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('987', '1', '1486623292', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('988', '1', '1486623501', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('989', '1', '1486626661', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('990', '1', '1486626665', '127.0.0.1', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('991', '1', '1486626698', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=30');
INSERT INTO `yun_operationlog` VALUES ('992', '1', '1486627667', '127.0.0.1', '0', '提示语：价格格式不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=32');
INSERT INTO `yun_operationlog` VALUES ('993', '1', '1486627765', '127.0.0.1', '0', '提示语：价格格式不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=32');
INSERT INTO `yun_operationlog` VALUES ('994', '1', '1486627802', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=32');
INSERT INTO `yun_operationlog` VALUES ('995', '1', '1486627964', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('996', '1', '1486628102', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('997', '1', '1486633966', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=edit&id=8');
INSERT INTO `yun_operationlog` VALUES ('998', '1', '1486634010', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('999', '1', '1486634034', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('1000', '1', '1486634042', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Category&a=edit&id=22');
INSERT INTO `yun_operationlog` VALUES ('1001', '1', '1486688555', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1002', '1', '1486694095', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Member,控制器：Member,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Member&m=Member&a=edit&userid=8');
INSERT INTO `yun_operationlog` VALUES ('1003', '1', '1486694111', '127.0.0.1', '1', '提示语：更新成功！<br/>模块：Member,控制器：Member,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Member&m=Member&a=edit&userid=8');
INSERT INTO `yun_operationlog` VALUES ('1004', '1', '1486694856', '127.0.0.1', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache');
INSERT INTO `yun_operationlog` VALUES ('1005', '1', '1486694857', '127.0.0.1', '1', '提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site');
INSERT INTO `yun_operationlog` VALUES ('1006', '1', '1486694857', '127.0.0.1', '1', '提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData');
INSERT INTO `yun_operationlog` VALUES ('1007', '1', '1486694861', '127.0.0.1', '1', '提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&dir=%2CData%2CTemp');
INSERT INTO `yun_operationlog` VALUES ('1008', '1', '1486694861', '127.0.0.1', '1', '提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=1');
INSERT INTO `yun_operationlog` VALUES ('1009', '1', '1486694861', '127.0.0.1', '1', '提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=2');
INSERT INTO `yun_operationlog` VALUES ('1010', '1', '1486694862', '127.0.0.1', '1', '提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=3');
INSERT INTO `yun_operationlog` VALUES ('1011', '1', '1486694862', '127.0.0.1', '1', '提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=4');
INSERT INTO `yun_operationlog` VALUES ('1012', '1', '1486694863', '127.0.0.1', '1', '提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=5');
INSERT INTO `yun_operationlog` VALUES ('1013', '1', '1486694863', '127.0.0.1', '1', '提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=6');
INSERT INTO `yun_operationlog` VALUES ('1014', '1', '1486694864', '127.0.0.1', '1', '提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=7');
INSERT INTO `yun_operationlog` VALUES ('1015', '1', '1486694864', '127.0.0.1', '1', '提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=8');
INSERT INTO `yun_operationlog` VALUES ('1016', '1', '1486694865', '127.0.0.1', '1', '提示语：更新缓存：会员配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=9');
INSERT INTO `yun_operationlog` VALUES ('1017', '1', '1486694865', '127.0.0.1', '1', '提示语：更新缓存：会员组<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=10');
INSERT INTO `yun_operationlog` VALUES ('1018', '1', '1486694866', '127.0.0.1', '1', '提示语：更新缓存：会员模型<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=11');
INSERT INTO `yun_operationlog` VALUES ('1019', '1', '1486694866', '127.0.0.1', '1', '提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=12');
INSERT INTO `yun_operationlog` VALUES ('1020', '1', '1486694867', '127.0.0.1', '1', '提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=13');
INSERT INTO `yun_operationlog` VALUES ('1021', '1', '1486694867', '127.0.0.1', '1', '提示语：更新缓存：插件列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=14');
INSERT INTO `yun_operationlog` VALUES ('1022', '1', '1486694867', '127.0.0.1', '1', '提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://yun88.cn/admin.php?a=cache&type=site&stop=15');
INSERT INTO `yun_operationlog` VALUES ('1023', '1', '1486695205', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1024', '1', '1486709051', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('1025', '1', '1486710131', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Content&a=add&catid=8');
INSERT INTO `yun_operationlog` VALUES ('1026', '1', '1486710397', '127.0.0.1', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Content&a=add&catid=8');
INSERT INTO `yun_operationlog` VALUES ('1027', '1', '1486711522', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('1028', '1', '1486712367', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('1029', '1', '1486948432', '127.0.0.1', '0', '提示语：修改当前登录用户信息请进入[我的面板]中进行修改！<br/>模块：Admin,控制器：Management,方法：edit<br/>请求方式：GET', 'http://yun88.cn/admin.php?m=Management&a=manager&role_id=1');
INSERT INTO `yun_operationlog` VALUES ('1030', '1', '1486951211', '127.0.0.1', '1', '提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('1031', '1', '1486951228', '127.0.0.1', '0', '提示语：主题未改变！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET', 'http://yun88.cn/index.php?g=Template&m=Theme&menuid=96');
INSERT INTO `yun_operationlog` VALUES ('1032', '1', '1486960029', '127.0.0.1', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=30');
INSERT INTO `yun_operationlog` VALUES ('1033', '1', '1486960042', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=30');
INSERT INTO `yun_operationlog` VALUES ('1034', '1', '1486973387', '127.0.0.1', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=31');
INSERT INTO `yun_operationlog` VALUES ('1035', '1', '1486973395', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=31');
INSERT INTO `yun_operationlog` VALUES ('1036', '1', '1486973417', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1037', '1', '1486973466', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1038', '1', '1486974288', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=34');
INSERT INTO `yun_operationlog` VALUES ('1039', '1', '1486974863', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=34');
INSERT INTO `yun_operationlog` VALUES ('1040', '1', '1486975002', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=34');
INSERT INTO `yun_operationlog` VALUES ('1041', '1', '1487058773', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('1042', '1', '1487060196', '127.0.0.1', '1', '提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET', 'http://yun88.cn/admin.php');
INSERT INTO `yun_operationlog` VALUES ('1043', '1', '1487061628', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=34');
INSERT INTO `yun_operationlog` VALUES ('1044', '1', '1487063849', '127.0.0.1', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('1045', '1', '1487064735', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Content&a=add&catid=9');
INSERT INTO `yun_operationlog` VALUES ('1046', '1', '1487064744', '127.0.0.1', '1', '提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Content&a=add&catid=9');
INSERT INTO `yun_operationlog` VALUES ('1047', '1', '1487064956', '127.0.0.1', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?m=Content&a=classlist&catid=9');
INSERT INTO `yun_operationlog` VALUES ('1048', '1', '1487561808', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1049', '1', '1487570322', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1050', '1', '1487570845', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1051', '1', '1487570849', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate');
INSERT INTO `yun_operationlog` VALUES ('1052', '1', '1487570851', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate');
INSERT INTO `yun_operationlog` VALUES ('1053', '1', '1487570854', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate');
INSERT INTO `yun_operationlog` VALUES ('1054', '1', '1487570860', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1055', '1', '1487570863', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate');
INSERT INTO `yun_operationlog` VALUES ('1056', '1', '1487570866', '127.0.0.1', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://yun88.cn/index.php?g=Mail&m=GoodsCate');
INSERT INTO `yun_operationlog` VALUES ('1057', '1', '1487583990', '192.168.40.25', '1', '提示语：删除成功！<br/>模块：Content,控制器：Content,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?m=Content&a=classlist&catid=9');
INSERT INTO `yun_operationlog` VALUES ('1058', '1', '1487583998', '192.168.40.25', '1', '提示语：修改成功！<br/>模块：Content,控制器：Content,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?m=Content&a=edit&catid=9&id=3');
INSERT INTO `yun_operationlog` VALUES ('1059', '0', '1487657554', '192.168.40.106', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://192.168.50.32:81/index.php?g=Admin&m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('1060', '1', '1487657711', '192.168.40.106', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1061', '1', '1487663975', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1062', '1', '1487663980', '192.168.40.106', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate');
INSERT INTO `yun_operationlog` VALUES ('1063', '1', '1487668625', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=34');
INSERT INTO `yun_operationlog` VALUES ('1064', '1', '1487675242', '192.168.40.25', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1065', '1', '1487726376', '192.168.40.106', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1066', '1', '1487726378', '192.168.40.106', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1067', '1', '1487726713', '192.168.40.106', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1068', '1', '1487727503', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=34');
INSERT INTO `yun_operationlog` VALUES ('1069', '1', '1487729470', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=34');
INSERT INTO `yun_operationlog` VALUES ('1070', '1', '1487729949', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1071', '1', '1487730717', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1072', '1', '1487732631', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1073', '1', '1487733467', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1074', '1', '1487747214', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1075', '1', '1487747255', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1076', '1', '1487747437', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1077', '1', '1487749221', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1078', '1', '1487749257', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1079', '1', '1487751558', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1080', '1', '1487760121', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source');
INSERT INTO `yun_operationlog` VALUES ('1081', '1', '1487760123', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source');
INSERT INTO `yun_operationlog` VALUES ('1082', '1', '1487760125', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source');
INSERT INTO `yun_operationlog` VALUES ('1083', '1', '1487832231', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1084', '1', '1487835722', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1085', '1', '1487835965', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('1086', '1', '1487836012', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Category,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Category&a=add&menuid=235');
INSERT INTO `yun_operationlog` VALUES ('1087', '1', '1487841801', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1088', '1', '1487841898', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1089', '1', '1487843577', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1090', '1', '1487843580', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1091', '1', '1487843582', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1092', '1', '1487843586', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1093', '1', '1487843588', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1094', '1', '1487843590', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1095', '1', '1487843592', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1096', '1', '1487843594', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1097', '1', '1487843596', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1098', '1', '1487843792', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&menuid=227');
INSERT INTO `yun_operationlog` VALUES ('1099', '1', '1487843797', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem');
INSERT INTO `yun_operationlog` VALUES ('1100', '1', '1487843800', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem');
INSERT INTO `yun_operationlog` VALUES ('1101', '1', '1487843803', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem');
INSERT INTO `yun_operationlog` VALUES ('1102', '1', '1487843805', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem');
INSERT INTO `yun_operationlog` VALUES ('1103', '1', '1487843807', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem');
INSERT INTO `yun_operationlog` VALUES ('1104', '1', '1487899522', '192.168.40.19', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?m=Content&a=add&catid=10');
INSERT INTO `yun_operationlog` VALUES ('1105', '1', '1487901293', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1106', '1', '1487901325', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1107', '1', '1487901361', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1108', '1', '1487901448', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1109', '1', '1487901567', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1110', '1', '1487901788', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1111', '1', '1487901858', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1112', '1', '1487901865', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate');
INSERT INTO `yun_operationlog` VALUES ('1113', '1', '1487901869', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate');
INSERT INTO `yun_operationlog` VALUES ('1114', '1', '1487902336', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1115', '1', '1487907002', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&menuid=224');
INSERT INTO `yun_operationlog` VALUES ('1116', '1', '1487907041', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source&menuid=230');
INSERT INTO `yun_operationlog` VALUES ('1117', '1', '1487917009', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=edit&id=16');
INSERT INTO `yun_operationlog` VALUES ('1118', '1', '1487917099', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=edit&id=16');
INSERT INTO `yun_operationlog` VALUES ('1119', '1', '1487917200', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1120', '1', '1487917239', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1121', '1', '1487917278', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1122', '1', '1487917298', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1123', '1', '1487917343', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Pro&a=add&menuid=225');
INSERT INTO `yun_operationlog` VALUES ('1124', '1', '1487917406', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source&menuid=230');
INSERT INTO `yun_operationlog` VALUES ('1125', '1', '1487917409', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source');
INSERT INTO `yun_operationlog` VALUES ('1126', '1', '1487917428', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source');
INSERT INTO `yun_operationlog` VALUES ('1127', '1', '1487917784', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1128', '1', '1487918107', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=edit&id=10');
INSERT INTO `yun_operationlog` VALUES ('1129', '1', '1487918269', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&menuid=227');
INSERT INTO `yun_operationlog` VALUES ('1130', '1', '1487918441', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1131', '1', '1487918479', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：delete<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&menuid=227');
INSERT INTO `yun_operationlog` VALUES ('1132', '1', '1487918507', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1133', '1', '1487918546', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1134', '1', '1487918578', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1135', '1', '1487919067', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1136', '1', '1487919137', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1137', '1', '1487919182', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1138', '1', '1487922832', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1139', '1', '1487922897', '192.168.40.25', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1140', '1', '1487933927', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1141', '1', '1487933997', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1142', '1', '1487934024', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1143', '1', '1487934174', '192.168.40.106', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://192.168.50.32:81/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1144', '1', '1487943833', '120.194.3.98', '1', '提示语：操作成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?m=Content&a=add&catid=8');
INSERT INTO `yun_operationlog` VALUES ('1145', '1', '1487944118', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Company&a=edit&id=5');
INSERT INTO `yun_operationlog` VALUES ('1146', '1', '1487944148', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Company&a=edit&id=4');
INSERT INTO `yun_operationlog` VALUES ('1147', '1', '1487944162', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Company&a=edit&id=3');
INSERT INTO `yun_operationlog` VALUES ('1148', '1', '1487944466', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Company,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Company&a=edit&id=2');
INSERT INTO `yun_operationlog` VALUES ('1149', '1', '1487945116', '120.194.3.98', '0', '提示语：价格格式必填<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1150', '1', '1487945861', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1151', '1', '1487946138', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1152', '1', '1487946214', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1153', '1', '1487946215', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1154', '1', '1487946215', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1155', '1', '1487946215', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1156', '1', '1487946683', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1157', '1', '1487946684', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1158', '1', '1487946684', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1159', '1', '1487946685', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1160', '1', '1487946708', '120.194.3.98', '0', '提示语：该页面不存在！<br/>模块：Mail,控制器：GoodsCate,方法：problem<br/>请求方式：GET', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1161', '1', '1487946726', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1162', '1', '1487946726', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1163', '1', '1487946726', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1164', '1', '1487946765', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1165', '1', '1487946815', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1166', '1', '1487946815', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1167', '1', '1487946815', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1168', '1', '1487946815', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1169', '1', '1487946820', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1170', '1', '1487947203', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1171', '1', '1487947396', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1172', '1', '1487947413', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1173', '1', '1487947481', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1174', '1', '1487947482', '120.194.3.98', '0', '提示语：价格不对<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1175', '1', '1487947488', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1176', '1', '1487947578', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1177', '1', '1487947686', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1178', '1', '1487948334', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=add&menuid=233');
INSERT INTO `yun_operationlog` VALUES ('1179', '1', '1487948348', '120.194.3.98', '0', '提示语：商品简介必填<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=39');
INSERT INTO `yun_operationlog` VALUES ('1180', '1', '1487948389', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=39');
INSERT INTO `yun_operationlog` VALUES ('1181', '1', '1487948636', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1182', '1', '1487948708', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=38');
INSERT INTO `yun_operationlog` VALUES ('1183', '1', '1487948841', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=35');
INSERT INTO `yun_operationlog` VALUES ('1184', '1', '1487949030', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1185', '1', '1487949100', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1186', '1', '1487949796', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro&a=edit&id=18');
INSERT INTO `yun_operationlog` VALUES ('1187', '1', '1487949899', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1188', '1', '1487949918', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&menuid=230');
INSERT INTO `yun_operationlog` VALUES ('1189', '1', '1487950003', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1190', '1', '1487950168', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1191', '1', '1487950195', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1192', '1', '1487950212', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1193', '1', '1487950232', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro&a=edit&id=18');
INSERT INTO `yun_operationlog` VALUES ('1194', '1', '1487950391', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1195', '1', '1487950544', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1196', '0', '1488283096', '120.194.3.98', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://demo.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('1197', '1', '1488337664', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1198', '1', '1488337993', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=39');
INSERT INTO `yun_operationlog` VALUES ('1199', '1', '1488338030', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1200', '1', '1488338176', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Mem&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('1201', '1', '1488338222', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Mem&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('1202', '1', '1488338518', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Mem&a=edit&id=14');
INSERT INTO `yun_operationlog` VALUES ('1203', '1', '1488338550', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Mem&a=edit&id=13');
INSERT INTO `yun_operationlog` VALUES ('1204', '1', '1488338622', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Mem&a=edit&id=12');
INSERT INTO `yun_operationlog` VALUES ('1205', '1', '1488338642', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Mem&a=edit&id=11');
INSERT INTO `yun_operationlog` VALUES ('1206', '1', '1488338953', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro&menuid=224&page=2');
INSERT INTO `yun_operationlog` VALUES ('1207', '1', '1488339135', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro&page=1');
INSERT INTO `yun_operationlog` VALUES ('1208', '1', '1488339174', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1209', '1', '1488339182', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1210', '1', '1488339264', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro&page=2');
INSERT INTO `yun_operationlog` VALUES ('1211', '1', '1488339287', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro&page=2');
INSERT INTO `yun_operationlog` VALUES ('1212', '1', '1488339402', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro&page=1');
INSERT INTO `yun_operationlog` VALUES ('1213', '1', '1488339431', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1214', '1', '1488339444', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1215', '1', '1488339474', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro&page=1');
INSERT INTO `yun_operationlog` VALUES ('1216', '1', '1488339481', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1217', '1', '1488339497', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1218', '1', '1488339506', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：Pro,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Pro');
INSERT INTO `yun_operationlog` VALUES ('1219', '1', '1488339903', '101.231.137.80', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=37');
INSERT INTO `yun_operationlog` VALUES ('1220', '1', '1488340486', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1221', '0', '1488348915', '120.194.3.98', '0', '提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST', 'http://demo.yun88.com/admin.php?m=Public&a=login');
INSERT INTO `yun_operationlog` VALUES ('1222', '1', '1488348958', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：GoodsCate,方法：edit<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=GoodsCate&a=edit&id=36');
INSERT INTO `yun_operationlog` VALUES ('1223', '1', '1488349206', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1224', '1', '1488349329', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Mem,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Mem&a=add&menuid=228');
INSERT INTO `yun_operationlog` VALUES ('1225', '1', '1488354393', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1226', '1', '1488354395', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1227', '1', '1488354395', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1228', '1', '1488354636', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1229', '1', '1488354636', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1230', '1', '1488354636', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1231', '1', '1488354660', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1232', '1', '1488354660', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1233', '1', '1488354661', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1234', '1', '1488354661', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1235', '1', '1488354661', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1236', '1', '1488354661', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1237', '1', '1488354661', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1238', '1', '1488354662', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1239', '1', '1488354666', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1240', '1', '1488354666', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1241', '1', '1488354666', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1242', '1', '1488354666', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1243', '1', '1488354718', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1244', '1', '1488354718', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1245', '1', '1488354718', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1246', '1', '1488354719', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1247', '1', '1488354719', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1248', '1', '1488354719', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1249', '1', '1488354720', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1250', '1', '1488354721', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1251', '1', '1488354721', '120.194.3.98', '0', '提示语：操作失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1252', '1', '1488355265', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1253', '1', '1488355266', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1254', '1', '1488355266', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1255', '1', '1488355267', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1256', '1', '1488355267', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1257', '1', '1488355267', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1258', '1', '1488355268', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1259', '1', '1488355268', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1260', '1', '1488355269', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1261', '1', '1488355269', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1262', '1', '1488355269', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1263', '1', '1488355370', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1264', '1', '1488355387', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1265', '1', '1488355503', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1266', '1', '1488355505', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1267', '1', '1488355505', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1268', '1', '1488355505', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1269', '1', '1488355505', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1270', '1', '1488355509', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1271', '1', '1488355514', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1272', '1', '1488355518', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1273', '1', '1488355582', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1274', '1', '1488355834', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1275', '1', '1488356011', '120.194.3.98', '0', '提示语：添加资源失败<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1276', '1', '1488356474', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1277', '1', '1488356482', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：delete<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source');
INSERT INTO `yun_operationlog` VALUES ('1278', '1', '1488359939', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1279', '1', '1488418538', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1280', '1', '1488418990', '120.194.3.98', '1', '提示语：操作成功<br/>模块：Mail,控制器：Source,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Source&a=add&menuid=231');
INSERT INTO `yun_operationlog` VALUES ('1281', '1', '1488449891', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/admin.php?m=Menu&a=add&parentid=232');
INSERT INTO `yun_operationlog` VALUES ('1282', '1', '1488449925', '120.194.3.98', '1', '提示语：添加成功！<br/>模块：Admin,控制器：Menu,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/admin.php?m=Menu&a=add&parentid=237');
INSERT INTO `yun_operationlog` VALUES ('1283', '1', '1488449944', '120.194.3.98', '0', '提示语：<br/>模块：Mail,控制器：Tags,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Tags&a=add&menuid=237');
INSERT INTO `yun_operationlog` VALUES ('1284', '1', '1488449946', '120.194.3.98', '0', '提示语：<br/>模块：Mail,控制器：Tags,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Tags&a=add&menuid=237');
INSERT INTO `yun_operationlog` VALUES ('1285', '1', '1488449947', '120.194.3.98', '0', '提示语：<br/>模块：Mail,控制器：Tags,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Tags&a=add&menuid=237');
INSERT INTO `yun_operationlog` VALUES ('1286', '1', '1488449950', '120.194.3.98', '0', '提示语：<br/>模块：Mail,控制器：Tags,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Tags&a=add&menuid=237');
INSERT INTO `yun_operationlog` VALUES ('1287', '1', '1488449951', '120.194.3.98', '0', '提示语：<br/>模块：Mail,控制器：Tags,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Tags&a=add&menuid=237');
INSERT INTO `yun_operationlog` VALUES ('1288', '1', '1488450060', '120.194.3.98', '0', '提示语：<br/>模块：Mail,控制器：Tags,方法：add<br/>请求方式：Ajax', 'http://demo.yun88.com/index.php?g=Mail&m=Tags&a=add&menuid=237');
INSERT INTO `yun_operationlog` VALUES ('1289', '1', '1488450063', '120.194.3.98', '1', '提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET', 'http://demo.yun88.com/admin.php?a=cache');

-- ----------------------------
-- Table structure for `yun_order`
-- ----------------------------
DROP TABLE IF EXISTS `yun_order`;
CREATE TABLE `yun_order` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(20) NOT NULL COMMENT '订单号',
  `total_fee` float(8,2) NOT NULL COMMENT '订单总金额',
  `add_time` int(11) NOT NULL COMMENT '下单日期',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付日期',
  `status` tinyint(1) NOT NULL COMMENT '0未知付 1已支付 2交易成功 -1 取消订单',
  `member_id` int(11) NOT NULL COMMENT '用户id',
  `pay_name` varchar(10) DEFAULT NULL COMMENT '支付方式名称 例如支付宝支付',
  `buyer_email` varchar(50) DEFAULT NULL COMMENT '买家支付宝账号',
  `return_total_fee` float(8,2) DEFAULT NULL COMMENT '支付宝返回金额',
  `gmt_payment` varchar(30) DEFAULT NULL COMMENT '交易付款时间',
  `gmt_create` varchar(30) DEFAULT NULL COMMENT '交易创建时间',
  `trade_no` varchar(40) DEFAULT NULL COMMENT '支付宝交易号',
  `trade_status` varchar(30) DEFAULT NULL COMMENT '支付宝交易状态',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of yun_order
-- ----------------------------
INSERT INTO `yun_order` VALUES ('13', '14689211868850', '68.00', '1468921186', '0', '0', '3', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('14', '14694302897887', '68.00', '1469430289', '0', '0', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('15', '14694304867768', '68.00', '1469430486', '0', '0', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('16', '14694319669368', '68.00', '1469431966', '0', '0', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('17', '14694323001458', '68.00', '1469432300', '0', '0', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('18', '14694331042587', '68.00', '1469433104', '0', '0', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('19', '14694333764676', '68.00', '1469433376', '0', '0', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('21', '14694336465640', '68.00', '1469433646', '0', '0', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('22', '14694337643559', '68.00', '1469433764', '0', '-1', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('23', '14694338435021', '68.00', '1469433843', '0', '0', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('24', '14694347957503', '68.00', '1469434795', '1469434810', '1', '1', '支付宝支付', '', null, null, null, null, null);
INSERT INTO `yun_order` VALUES ('25', '14694361522851', '68.00', '1469436152', '1469436173', '1', '1', '支付宝支付', '610796224@qq.com', '0.01', '2016-07-25 16:42:52', '2016-07-25 16:42:45', '2016072521001004820215721121', 'TRADE_SUCCESS');
INSERT INTO `yun_order` VALUES ('26', '14694364806943', '68.00', '1469436480', '1469436554', '1', '1', '支付宝支付', 'zhangpei628@163.com', '0.01', '2016-07-25 16:49:13', '2016-07-25 16:48:57', '2016072521001004310291781835', 'TRADE_SUCCESS');
INSERT INTO `yun_order` VALUES ('27', '14694366123296', '68.00', '1469436612', '0', '0', '1', '支付宝支付', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('28', '14694367875648', '68.00', '1469436787', '0', '0', '1', '支付宝支付', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('29', '14694988132545', '68.00', '1469498813', '0', '0', '1', '支付宝支付', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('30', '14695263613632', '68.00', '1469526361', '0', '0', '5', '', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('31', '14702106996012', '68.00', '1470210699', '0', '0', '1', '支付宝支付', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('32', '14702108326317', '68.00', '1470210832', '0', '0', '1', '支付宝支付', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('33', '14702110738031', '68.00', '1470211073', '1470211091', '1', '1', '支付宝支付', '610796224@qq.com', '0.01', '2016-08-03 15:58:11', '2016-08-03 15:58:04', '2016080321001004820263833998', 'TRADE_SUCCESS');
INSERT INTO `yun_order` VALUES ('34', '14702111922966', '68.00', '1470211192', '0', '0', '1', '支付宝支付', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('35', '201608091746371191', '160.00', '1470735997', '0', '0', '1', '', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('36', '201608091748413102', '1960.00', '1470736121', '0', '0', '1', '', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('37', '201608191104294963', '68.00', '1471575869', '0', '0', '7', '', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('38', '201608191104464873', '419.00', '1471575886', '0', '0', '7', '支付宝支付', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('39', '201608191107037838', '19700.00', '1471576023', '0', '0', '7', '', '', '0.00', '', '', '', '');
INSERT INTO `yun_order` VALUES ('42', '201701131449129179', '25.00', '1484290152', '0', '0', '8', '支付宝支付', '', '0.00', '', '', '', '');

-- ----------------------------
-- Table structure for `yun_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `yun_order_goods`;
CREATE TABLE `yun_order_goods` (
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `gp_id` int(11) NOT NULL COMMENT '商品套餐id',
  `purchase` int(8) NOT NULL COMMENT '购买时长 单位月',
  `num` int(8) NOT NULL COMMENT '商品数量 公有云单位台 云应用用户数量个',
  `price` float(8,2) NOT NULL COMMENT '商品套餐单价',
  `type_id` int(8) NOT NULL DEFAULT '0' COMMENT '商品类型id',
  `spec01_id` int(8) DEFAULT NULL COMMENT '公有云规格id',
  `spec02_id` int(8) DEFAULT NULL COMMENT '云应用规格id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单商品表';

-- ----------------------------
-- Records of yun_order_goods
-- ----------------------------
INSERT INTO `yun_order_goods` VALUES ('1', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('2', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('3', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('4', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('5', '1', '2', '3', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('6', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('7', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('8', '4', '2', '1', '100.00', '0', '0', '1');
INSERT INTO `yun_order_goods` VALUES ('9', '4', '3', '3', '100.00', '0', '0', '1');
INSERT INTO `yun_order_goods` VALUES ('9', '1', '2', '2', '78.00', '0', '2', '0');
INSERT INTO `yun_order_goods` VALUES ('9', '1', '3', '2', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('10', '4', '3', '3', '100.00', '0', '0', '1');
INSERT INTO `yun_order_goods` VALUES ('10', '1', '2', '2', '78.00', '0', '2', '0');
INSERT INTO `yun_order_goods` VALUES ('10', '1', '3', '2', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('11', '4', '3', '3', '100.00', '0', '0', '1');
INSERT INTO `yun_order_goods` VALUES ('13', '1', '4', '5', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('14', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('15', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('16', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('17', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('18', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('19', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('20', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('21', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('22', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('23', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('24', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('25', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('26', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('27', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('28', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('29', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('30', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('31', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('32', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('33', '1', '1', '1', '68.00', '0', '1', '0');
INSERT INTO `yun_order_goods` VALUES ('34', '1', '1', '1', '78.00', '0', '2', '0');
INSERT INTO `yun_order_goods` VALUES ('35', '4', '1', '1', '1970.00', '17', '0', '7');
INSERT INTO `yun_order_goods` VALUES ('36', '4', '2', '1', '980.00', '17', '0', '6');
INSERT INTO `yun_order_goods` VALUES ('37', '1', '1', '1', '419.00', '14', '5', '0');
INSERT INTO `yun_order_goods` VALUES ('38', '1', '1', '1', '419.00', '0', '5', '0');
INSERT INTO `yun_order_goods` VALUES ('39', '4', '1', '1', '490.00', '16', '0', '2');
INSERT INTO `yun_order_goods` VALUES ('42', '11', '1', '1', '30.00', '11', '0', '11');

-- ----------------------------
-- Table structure for `yun_page`
-- ----------------------------
DROP TABLE IF EXISTS `yun_page`;
CREATE TABLE `yun_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(160) NOT NULL DEFAULT '' COMMENT '标题',
  `style` varchar(24) NOT NULL DEFAULT '' COMMENT '样式',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '关键字',
  `content` text COMMENT '内容',
  `template` varchar(30) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页内容表';

-- ----------------------------
-- Records of yun_page
-- ----------------------------
INSERT INTO `yun_page` VALUES ('5', '加入我们', '', '', '<div class=\"heads-up\"><p>学习与发展</p></div><div class=\"pt-3\"><p>我们聘请优秀的人才加入YUN88，我们极力营造一个勤奋的工作、愉悦的工作环境、以及可持续的创造力，并给予更大的空间鼓励员工实现自己的梦想。 培训机会</p><p>YUN88坚持营造一个具有学习与成长能力的组织，在为努力中的员工制定符合自身的发展策略。除了鼓励员工发展自身能力外，还提供多样化的内部培训，其中包括新人培训、与其他优秀团队的交流等。</p><p class=\"blue\">晋升机制</p><p>认同企业价值观，具有较强的工作能力和良好的工作态度，并愿意承担更多责任，你将会得到很快的晋升。</p></div><!--  --><div class=\"heads-up mt-5\"><p>薪酬与福利</p></div><div class=\"pt-3\"><p>五险一金、交通补助、通讯补助、生日津贴、节日津贴、带薪年假、各种员工活动、年度旅游等更多惊喜</p></div><!--  --><div class=\"heads-up mt-5\"><p>应聘须知</p></div><div class=\"pt-3\"><p class=\"blue\">招聘新员工流程？</p><p>应聘者发送简历到人事部邮箱→简历通过人力资源的筛选→通过电话预约初次面试→达成共识的应聘者将赢得复试机会→通过第二轮面试→最终，赢得通知录用的通知，YUN88做好准备欢迎您的到来。</p><p>· 注：具体将视实际情况确定是否需要的步骤</p><p class=\"blue\">简历投递过程中，有问题联系谁？</p><p>您可以将问题发送至我们的信箱：yuanding@yuandingit.com，或拨打我们的电话010-52550628转人力资源部，我们会及时回复并与您联系。</p><p class=\"blue\">公司是否会对我的个人信息严格保密？</p><p>我们将对您的信息严格保密，因此您可以放心的填写真实的信息。另外，为了能及时通知您进一步的安排，请您务必留下您的电话联系方式和电子邮箱地址。</p></div><!--  --><div class=\"heads-up mt-5\"><p>加入YUN88</p></div><h2 class=\"subtitle\">产品经理</h2><div class=\"pt-3 mb-10\"><p class=\"blue\">岗位职责：</p><p>1. 负责公司网站产品策划、设计，提供产品设计、需求分析、功能描述等文档；</p><p>2. 负责产品开发过程中的进度管理与跟踪，组织产品测试，后期产品培训等；</p><p>3. 负责产品上线以后的功能完善与优化：BUG跟踪、收集改进意见、提供改进方案，引导用户熟悉使用产品；4. 负责统计产品的数据及用户行为分析；5. 定期对行业相关产品进行跟踪与分析；</p><p class=\"blue\">任职资格：</p><p>1. 本科以上学历，3年以上互联网产品策划、设计经验；</p><p>2. 做事有责任感，具备良好的沟通能力、团队合作能力、执行力及心理承压力；</p><p>3. 具备一定的项目管理经验，习惯于用严谨科学的统筹方法来保证工作按计划进行；</p><p>4. 善于学习与思考，对国内外互联网产品与技术发展有敏锐的观察力和求知欲；</p><p>5. 熟练操作windows office、visio、MinManager、axure等基本产品工具。</p></div>', '', '1467362061');
INSERT INTO `yun_page` VALUES ('6', '关于我们', '', '', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 1.167em; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; line-height: 24px; white-space: normal;\">Yun88是元鼎科技整合、优选国内外领先云产品及应用，倾力打造的首个企业级B2B云业务平台。平台覆盖多种优选后的主流云产品及应用，同时，由专人全程提供咨询规划、技术服务（数据迁移、集成、托管等）、商务等一站式服务。让您可以更专注于业务创新。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 1.167em; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; line-height: 24px; white-space: normal;\">Yun88是AWS、AZURE、UCLOUD、阿里云、Salesforce、Oracle云、OneApm、IMO、office 365、国信灵通等数十家国内外优秀云厂商的重要合作伙伴，拥有业内一流的技术和服务团队。公司通过了ISO9001国际质量体系认证，是国家认定的高新技术企业、计算机软件企业并拥有系统集成叁级资质。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 1.167em; text-indent: 2em; color: rgb(102, 102, 102); font-family: &#39;Microsoft YaHei&#39;; line-height: 24px; white-space: normal;\">注：北京元鼎时代科技股份有限公司（前身为北京元鼎时代科技有限公司）成立于2003年，是一家以IT综合服务、专业化解决方案、电子商务和互联网为核心业务的综合型高科技企业。总部位于北京，在河南设立分公司和技术中心，在上海、广州、深圳和大连设有办事处。公司2013年整体改制，设立了股份有限公司，2014年8月21日成功在全国中小企业股份转让系统挂牌，证券简称“元鼎科技”，证券代码“831126”。</p><p><br/></p>', '', '1467794872');
INSERT INTO `yun_page` VALUES ('7', '合作伙伴', '', '', '<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-azure.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-amazon.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-aliyun.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-ucloud.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-saleforce.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-oracle.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-imo.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-office.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-oneapm.png\" alt=\"azure\"/>\r\n</div>\r\n<div>\r\n    <img src=\"/statics/extres/newmember/images/coop-logos/coop-guoling.png\" alt=\"azure\"/>\r\n</div>', '', '1467795507');
INSERT INTO `yun_page` VALUES ('8', '为什么不选择我们', '', '', '<div class=\"sink one\"><h1>甄选产品</h1><p>帮你严选</p><p>可靠、安全、领先的云产品、应用；</p></div><div class=\"arrow-divider\"><div></div></div><div class=\"sink two\"><h1>服务专业</h1><p>根据客户的业务需求</p><p>提供专业、个性化的线上+线下咨询和服务，</p><p>让客户更了解云，使用云</p></div><div class=\"arrow-divider\"><div></div></div><div class=\"sink three\"><h1>可靠技术</h1><p>依托元鼎专业技术实力</p><p>加速传统IT架构</p><p>IT业务系统和云的融合，迁移；</p></div><div class=\"arrow-divider\"><div></div></div><div class=\"sink four\"><h1>效率便捷</h1><p>一站式采购</p><p>综合型管理平台</p><p>便捷、高效、降低成本</p></div>', '', '1467795967');
INSERT INTO `yun_page` VALUES ('10', '云服务', '', '', '<div class=\"sink one\">\r\n    <div class=\"container\">\r\n        <h1>\r\n            我们要提供什么样的服务?\r\n        </h1>\r\n        <p>\r\n            YUN88专家团队根据对您业务目标和需求的深入分析，帮助您制定并实施量身定做的总体云战略，迁移现有的系统和应用程序，或部署全新的系统和应用程序。\r\n        </p>\r\n        <div class=\"row pt-5\">\r\n            <div class=\"col-md-3 nails\">\r\n                <div class=\"nailhead icon05\"></div>\r\n                <div>\r\n                    <h2>\r\n                        方案\r\n                    </h2>\r\n                    <p>\r\n                        提供成熟稳定的架构设计方案，为企业云提供完整的解决方案。\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-md-3 nails\">\r\n                <div class=\"nailhead icon06\"></div>\r\n                <div>\r\n                    <h2>\r\n                        迁移\r\n                    </h2>\r\n                    <p>\r\n                        提供一系列软件改造方案，大型系统的架构设计，系统迁移，数据迁移方案。\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-md-3 nails\">\r\n                <div class=\"nailhead icon07\"></div>\r\n                <div>\r\n                    <h2>\r\n                        优化\r\n                    </h2>\r\n                    <p>\r\n                        借助架构云平台提供弹性可苦战的方案，有效降低企业成本。\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-md-3 nails\">\r\n                <div class=\"nailhead icon06\"></div>\r\n                <div>\r\n                    <h2>\r\n                        维护\r\n                    </h2>\r\n                    <p>\r\n                        借助架构云的系统监控和自动化管理工具，快速定位解决问题。\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div class=\"sink two\">\r\n    <div class=\"container\">\r\n        <h1>\r\n            成熟稳定的架构设计\r\n        </h1>\r\n        <p>\r\n            云计算是IT时代的一个进化，使用云计算能让一个普通的公司也拥有像阿里巴巴、腾讯一样的技术支撑能力，但在这之前，您必须很好的理解和选择云计算产品，以及如何使云计算产品与您公司现有的IT进行无缝的对接。记住：万事开头难，好的开始是成功的一半。\r\n        </p>\r\n    </div>\r\n    <div class=\"roundies\">\r\n        <!-- three of a group -->\r\n        <div class=\"rd-group\">\r\n            <div>\r\n                <img src=\"/statics/extres/newmember/images/icon-rd01.png\" alt=\"\"/>\r\n                <p>\r\n                    海量数据上云\r\n                </p>\r\n            </div>\r\n            <div>\r\n                <img src=\"/statics/extres/newmember/images/icon-rd02.png\" alt=\"\"/>\r\n                <p>\r\n                    海量数据上云\r\n                </p>\r\n            </div>\r\n            <div>\r\n                <img src=\"/statics/extres/newmember/images/icon-rd03.png\" alt=\"\"/>\r\n                <p>\r\n                    海量数据上云\r\n                </p>\r\n            </div>\r\n        </div>\r\n        <div class=\"rd-group\">\r\n            <div>\r\n                <img src=\"/statics/extres/newmember/images/icon-rd04.png\" alt=\"\"/>\r\n                <p>\r\n                    海量数据上云\r\n                </p>\r\n            </div>\r\n            <div>\r\n                <img src=\"/statics/extres/newmember/images/icon-rd05.png\" alt=\"\"/>\r\n                <p>\r\n                    海量数据上云\r\n                </p>\r\n            </div>\r\n            <div>\r\n                <img src=\"/statics/extres/newmember/images/icon-rd06.png\" alt=\"\"/>\r\n                <p>\r\n                    海量数据上云\r\n                </p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div class=\"sink three\">\r\n    <div class=\"container\">\r\n        <h1>\r\n            可靠的上云迁移\r\n        </h1>\r\n        <p>\r\n            如果您已经在我们的帮助下，或者已经自己决定了使用云计算，并规划好了使用云计算的架构的时候，YUN88就可以为您上门服务了。作为拥有多年IT行业经验的我们，会帮助您有效的制定整个迁移所需要的工作以及工作量，经过您的团队评估以后，剩下“搬砖的活”我们来干，在不影响业务的情况下就完成云计算的切换，最后您只需要浏览一下我们的报告就可以了。\r\n        </p>\r\n    </div>\r\n</div>\r\n<div class=\"sink four\">\r\n    <div class=\"container\">\r\n        <h1>\r\n            代替您进行数据维护\r\n        </h1>\r\n        <p>\r\n            一个IT系统使用了云计算，已经能节省了您大量的运维开支，但这不是一切，实际上您可能要面对和传统物理服务器及机房一样的挑战，即云服务器中的应用程序仍然需要维护，而且云计算的云盾也许能帮助您抵挡DDOS攻击，但黑客仍能利用您的系统本身存在安全漏洞。这个时候您需要一个专业运维队伍，才能保障您的业务7X24小时高可用的，与其自己去寻找成立这样一支队伍，不如选择我们YUN88团队来帮您搞定一切。\r\n        </p>\r\n        <div class=\"roundies\">\r\n            <div class=\"rd-item\">\r\n                <img src=\"/statics/extres/newmember/images/icon-rd07.png\" alt=\"\"/>\r\n                <p>\r\n                    7*24小时服务保证\r\n                </p>\r\n            </div>\r\n            <hr/>\r\n            <div class=\"rd-item\">\r\n                <img src=\"/statics/extres/newmember/images/icon-rd08.png\" alt=\"\"/>\r\n                <p>\r\n                    专业技术团队支持\r\n                </p>\r\n            </div>\r\n            <hr/>\r\n            <div class=\"rd-item\">\r\n                <img src=\"/statics/extres/newmember/images/icon-rd09.png\" alt=\"\"/>\r\n                <p>\r\n                    自动化运行维护工具\r\n                </p>\r\n            </div>\r\n        </div>\r\n        \r\n    </div>\r\n    <div class=\"blockies\">\r\n            <div class=\"bk-group\">\r\n                <div>\r\n                    <h3>\r\n                        优化\r\n                    </h3>\r\n                    <p>\r\n                        通过架构改良，提高客户系统故障的解决效率，减少故障恢复时间。\r\n                    </p>\r\n                </div>\r\n                <div>\r\n                    <h3>\r\n                        监控\r\n                    </h3>\r\n                    <p>\r\n                        结合实时监控工具，提高客户预防故障发生的能力，增强发现系统故障的实时性。\r\n                    </p>\r\n                </div>\r\n                <div>\r\n                    <h3>\r\n                        灾备\r\n                    </h3>\r\n                    <p>\r\n                        数据及服务的容灾备份规划和管理。\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"bk-group\">\r\n                <div>\r\n                    <h3>\r\n                        部署\r\n                    </h3>\r\n                    <p>\r\n                        系统上云，数据迁移，系统升级等相关服务。\r\n                    </p>\r\n                </div>\r\n                <div>\r\n                    <h3>\r\n                        应用\r\n                    </h3>\r\n                    <p>\r\n                        对应用软件的全方位监控，专注解决客户应用的系统故障和安全问题。\r\n                    </p>\r\n                </div>\r\n                <div>\r\n                    <h3>\r\n                        优化\r\n                    </h3>\r\n                    <p>\r\n                        通过架构改良，提高客户系统故障的解决效率，减少故障恢复时间。\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n</div>', '', '1467854573');
INSERT INTO `yun_page` VALUES ('11', '联系我们', '', '', '<div class=\"infos\">\r\n    <div class=\"lefty\">\r\n        <div class=\"first-line\">\r\n            <h1>\r\n                任何问题，拨打\r\n            </h1>\r\n            <h1 class=\"phone-num\">\r\n                400-008-9419\r\n            </h1>\r\n        </div>\r\n        <h1>\r\n            我们全年7*24无休，随时待命，为您提供技术支持。\r\n        </h1>\r\n    </div>\r\n    <div class=\"righty\">\r\n        <img src=\"/statics/extres/newmember/images/wm.jpg\" alt=\"\"/>\r\n        <h2>\r\n            关注YUN88\r\n        </h2>\r\n    </div>\r\n</div><!-- the map locations -->\r\n<div class=\"map\">\r\n    <div class=\"lefty\">\r\n        <h1>\r\n            北京总部\r\n        </h1>\r\n        <div>\r\n            <p>\r\n                电话：400-008-9419\r\n            </p>\r\n            <p>\r\n                总机：010-52550628\r\n            </p>\r\n            <p>\r\n                传真：010-88878521\r\n            </p>\r\n            <p>\r\n                邮编：100086\r\n            </p>\r\n            <p>\r\n                邮箱：service@yun88.com\r\n            </p>\r\n            <p>\r\n                地址：北京市海淀区北三环西路99号院西海国际3号楼7层\r\n            </p>\r\n        </div>\r\n    </div>\r\n    <div class=\"righty\">\r\n        <img src=\"/statics/extres/newmember/images/mapLocation.png\" alt=\"\"/>\r\n    </div>\r\n</div>', '', '1467960600');

-- ----------------------------
-- Table structure for `yun_position`
-- ----------------------------
DROP TABLE IF EXISTS `yun_position`;
CREATE TABLE `yun_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `modelid` char(30) NOT NULL DEFAULT '' COMMENT '模型id',
  `catid` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '推荐位名称',
  `maxnum` smallint(5) NOT NULL DEFAULT '20' COMMENT '最大存储数据量',
  `extention` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位';

-- ----------------------------
-- Records of yun_position
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_position_data`
-- ----------------------------
DROP TABLE IF EXISTS `yun_position_data`;
CREATE TABLE `yun_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位ID',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模型',
  `modelid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `thumb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有缩略图',
  `data` mediumtext COMMENT '数据信息',
  `listorder` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `expiration` int(10) NOT NULL,
  `extention` char(30) NOT NULL DEFAULT '',
  `synedit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步编辑',
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位数据表';

-- ----------------------------
-- Records of yun_position_data
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_refer`
-- ----------------------------
DROP TABLE IF EXISTS `yun_refer`;
CREATE TABLE `yun_refer` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户姓名',
  `iphone` varchar(20) NOT NULL DEFAULT '' COMMENT '联系方式',
  `member_id` int(11) NOT NULL COMMENT '用户id',
  `require_info` text NOT NULL COMMENT '用户需求',
  `cate_id` int(4) NOT NULL COMMENT '套餐类型1公有云2云应用',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='云市场用户体验';

-- ----------------------------
-- Records of yun_refer
-- ----------------------------
INSERT INTO `yun_refer` VALUES ('1', 'corki', '45545', '8', 'haha', '9', '0');
INSERT INTO `yun_refer` VALUES ('2', '呀', '2223', '8', '风动旛动', '20', '0');
INSERT INTO `yun_refer` VALUES ('3', 'corki', '123', '0', 'require', '1', '1487237757');

-- ----------------------------
-- Table structure for `yun_role`
-- ----------------------------
DROP TABLE IF EXISTS `yun_role`;
CREATE TABLE `yun_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名称',
  `parentid` smallint(6) NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';

-- ----------------------------
-- Records of yun_role
-- ----------------------------
INSERT INTO `yun_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');
INSERT INTO `yun_role` VALUES ('2', '站点管理员', '1', '1', '站点管理员', '1329633722', '1399780945', '0');
INSERT INTO `yun_role` VALUES ('3', '发布人员', '2', '1', '发布人员', '1329633733', '1399798954', '0');

-- ----------------------------
-- Table structure for `yun_tag`
-- ----------------------------
DROP TABLE IF EXISTS `yun_tag`;
CREATE TABLE `yun_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yun_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_tags`
-- ----------------------------
DROP TABLE IF EXISTS `yun_tags`;
CREATE TABLE `yun_tags` (
  `tagid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tagID',
  `tag` char(20) NOT NULL DEFAULT '' COMMENT 'tag名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keyword` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo简介',
  `style` char(5) NOT NULL DEFAULT '' COMMENT '附加状态码',
  `usetimes` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息总数',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后使用时间',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `lasthittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近访问时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tag` (`tag`),
  KEY `usetimes` (`usetimes`,`listorder`),
  KEY `hits` (`hits`,`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags主表';

-- ----------------------------
-- Records of yun_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_tags_content`
-- ----------------------------
DROP TABLE IF EXISTS `yun_tags_content`;
CREATE TABLE `yun_tags_content` (
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '信息地址',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `contentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  KEY `modelid` (`modelid`,`contentid`),
  KEY `tag` (`tag`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags数据表';

-- ----------------------------
-- Records of yun_tags_content
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_terms`
-- ----------------------------
DROP TABLE IF EXISTS `yun_terms`;
CREATE TABLE `yun_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(200) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext COMMENT '相关配置信息',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of yun_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `yun_urlrule`
-- ----------------------------
DROP TABLE IF EXISTS `yun_urlrule`;
CREATE TABLE `yun_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `file` varchar(20) NOT NULL DEFAULT '' COMMENT '所属文件',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '生成静态规则 1 静态',
  `urlrule` varchar(255) NOT NULL DEFAULT '' COMMENT 'url规则',
  `example` varchar(255) NOT NULL DEFAULT '' COMMENT '示例',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='内容模型URL规则';

-- ----------------------------
-- Records of yun_urlrule
-- ----------------------------
INSERT INTO `yun_urlrule` VALUES ('1', 'content', 'category', '0', 'index.php?a=lists&catid={$catid}|index.php?a=lists&catid={$catid}&page={$page}', '动态：index.php?a=lists&catid=1&page=1');
INSERT INTO `yun_urlrule` VALUES ('2', 'content', 'category', '1', '{$categorydir}{$catdir}/index.shtml|{$categorydir}{$catdir}/index_{$page}.shtml', '静态：news/china/1000.shtml');
INSERT INTO `yun_urlrule` VALUES ('3', 'content', 'show', '1', '{$year}/{$catdir}_{$month}/{$id}.shtml|{$year}/{$catdir}_{$month}/{$id}_{$page}.shtml', '静态：2010/catdir_07/1_2.shtml');
INSERT INTO `yun_urlrule` VALUES ('4', 'content', 'show', '0', 'index.php?a=shows&catid={$catid}&id={$id}|index.php?a=shows&catid={$catid}&id={$id}&page={$page}', '动态：index.php?m=Index&a=shows&catid=1&id=1');
INSERT INTO `yun_urlrule` VALUES ('5', 'content', 'category', '1', 'news/{$catid}.shtml|news/{$catid}-{$page}.shtml', '静态：news/1.shtml');
INSERT INTO `yun_urlrule` VALUES ('6', 'content', 'category', '0', 'list-{$catid}.html|list-{$catid}-{$page}.html', '伪静态：list-1-1.html');
INSERT INTO `yun_urlrule` VALUES ('7', 'content', 'tags', '0', 'index.php?a=tags&amp;tagid={$tagid}|index.php?a=tags&amp;tagid={$tagid}&amp;page={$page}', '动态：index.php?a=tags&amp;tagid=1');
INSERT INTO `yun_urlrule` VALUES ('8', 'content', 'tags', '0', 'index.php?a=tags&amp;tag={$tag}|/index.php?a=tags&amp;tag={$tag}&amp;page={$page}', '动态：index.php?a=tags&amp;tag=标签');
INSERT INTO `yun_urlrule` VALUES ('9', 'content', 'tags', '0', 'tag-{$tag}.html|tag-{$tag}-{$page}.html', '伪静态：tag-标签.html');
INSERT INTO `yun_urlrule` VALUES ('10', 'content', 'tags', '0', 'tag-{$tagid}.html|tag-{$tagid}-{$page}.html', '伪静态：tag-1.html');
INSERT INTO `yun_urlrule` VALUES ('11', 'content', 'index', '1', 'index.html|index_{$page}.html', '静态：index_2.html');
INSERT INTO `yun_urlrule` VALUES ('12', 'content', 'index', '0', 'index.html|index_{$page}.html', '伪静态：index_2.html');
INSERT INTO `yun_urlrule` VALUES ('13', 'content', 'index', '0', 'index.php|index.php?page={$page}', '动态：index.php?page=2');
INSERT INTO `yun_urlrule` VALUES ('14', 'content', 'category', '1', 'download.shtml|download_{$page}.shtml', '静态：download.shtml');
INSERT INTO `yun_urlrule` VALUES ('15', 'content', 'show', '1', '{$categorydir}{$id}.shtml|{$categorydir}{$id}_{$page}.shtml', '静态：/父栏目/1.shtml');
INSERT INTO `yun_urlrule` VALUES ('16', 'content', 'show', '1', '{$catdir}/{$id}.shtml|{$catdir}/{$id}_{$page}.shtml', '示例：/栏目/1.html');

-- ----------------------------
-- Table structure for `yun_user`
-- ----------------------------
DROP TABLE IF EXISTS `yun_user`;
CREATE TABLE `yun_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称/姓名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `bind_account` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL DEFAULT '' COMMENT '证验码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text COMMENT '信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of yun_user
-- ----------------------------
INSERT INTO `yun_user` VALUES ('1', 'admin', '未知', '212f4dc0d32c0b8523686f72e29c29bf', '', '1488449730', '120.194.3.98', '9LivTc', 'admin@abc3210.com', '备注信息', '1466996663', '1466996663', '1', '1', '');
INSERT INTO `yun_user` VALUES ('2', 'yun88', 'yun88', '21ccf54f1d592d74a07430055cde35cb', '', '1471570389', '120.194.3.98', '9Z749k', 'yun88@qq.com', '站点普通管理者', '1468896510', '1469525666', '1', '2', '');
