/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50730
Source Host           : 192.168.50.158:3306
Source Database       : changdao

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-06-19 11:55:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for changdao_article
-- ----------------------------
DROP TABLE IF EXISTS `changdao_article`;
CREATE TABLE `changdao_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '发表用户',
  `article_content` longtext COMMENT '文章内容html格式',
  `article_content_md` longtext COMMENT '文章内容Markdown格式',
  `article_newstime` datetime DEFAULT NULL COMMENT '发布时间',
  `article_status` int(11) DEFAULT NULL COMMENT '文章状态 0已发布1草稿2回收站',
  `article_summary` varchar(255) DEFAULT NULL COMMENT '文章摘要',
  `article_thumbnail` varchar(255) DEFAULT NULL COMMENT '略缩图',
  `article_title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `article_type` int(255) DEFAULT NULL COMMENT '文章类型0原创1转载',
  `article_post` varchar(255) DEFAULT NULL COMMENT 'post文章 page页面',
  `article_comment` int(11) DEFAULT NULL COMMENT '是否开启评论 0开启1不开启',
  `article_updatetime` datetime DEFAULT NULL COMMENT '文章最后修改时间',
  `article_url` varchar(255) DEFAULT NULL COMMENT '文章路径',
  `article_views` bigint(20) DEFAULT '0' COMMENT '访问量统计',
  PRIMARY KEY (`id`),
  UNIQUE KEY `MAYDAY_ARTICLE_URL` (`article_url`) USING BTREE,
  KEY `MAYDAY_ARTICLE_USERID` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_article
-- ----------------------------
INSERT INTO `changdao_article` VALUES ('148', '9', '<p>科研部工作职责和岗位分工<br>一、管理职能类（院级层面）<br>　　1、围绕中心中长期发展目标和规划，负责协助分管领导定期制定中心科研发展阶段工作目标、重点内容和关键任务。<br>　　2、围绕国家、上海市级等各级政府部门对科技项目管理过程中制定的各项政策、指南、方针制定符合中心发展特色的中心内部科技管理制度及规范，并定期更新。包括各级各类科研项目的申报指南、经费管理、项目过程管理、人员绩效管理、验收管理、成果管理等具体中心管理规范及制度。<br>　　3、围绕中心学科建设的中长期目标和规划，协助分管领导做好学科建设工作的整体策划和布局。<br>　　4、围绕中心基地建设的中长期目标和规划，协助分管领导做好基地建设工作。<br>　　5、根据中心科技人才引进的计划，协助分管领导开展科技人才引进工作。包括人才引进决策参与、标准制定、启动经费发放管理、年度科技指标考核等<br>　　6、围绕国际、上海市级等各级政府部门对科研共享平台、对外技术服务的管理政策、指南和方针，制定符合中心发展目标的中心内部管理制定和流程规范，并定期更新。<br>　　7、负责完成院部其他各项重点工作的计划、组织、落实等任务的支撑保障工作。<br>二、管理职能类（科研条线层面）<br>　　1、负责科研条线需提交院部审议的科技事务与科技决策，包括“三重一大”等重要议题的收集、汇总、整理、上报、决策下达以及有关沟通协调工作。<br>　　2、负责科研条线与相关职能科室间的沟通、联络、协调工作。<br>　　3、负责科研部（含编辑部、图书馆、伦理办、捐赠办）和挂靠部门（新发与再现传染病研究所办公室）的日常工作的督导、院部重要工作传达以及科研部（含编辑部、图书馆、伦理办、捐赠办）工作人员考勤管理、奖金分配等事宜。<br>　　4、在突发公共卫生应急事件时，有效组织协调科研条线内部各部门，及科研条线与中心其他条线各部门的相互配合工作，组织沟通和应急事宜协调处理，做好应急</p>', '科研部工作职责和岗位分工\r\n一、管理职能类（院级层面）\r\n　　1、围绕中心中长期发展目标和规划，负责协助分管领导定期制定中心科研发展阶段工作目标、重点内容和关键任务。\r\n　　2、围绕国家、上海市级等各级政府部门对科技项目管理过程中制定的各项政策、指南、方针制定符合中心发展特色的中心内部科技管理制度及规范，并定期更新。包括各级各类科研项目的申报指南、经费管理、项目过程管理、人员绩效管理、验收管理、成果管理等具体中心管理规范及制度。\r\n　　3、围绕中心学科建设的中长期目标和规划，协助分管领导做好学科建设工作的整体策划和布局。\r\n　　4、围绕中心基地建设的中长期目标和规划，协助分管领导做好基地建设工作。\r\n　　5、根据中心科技人才引进的计划，协助分管领导开展科技人才引进工作。包括人才引进决策参与、标准制定、启动经费发放管理、年度科技指标考核等\r\n　　6、围绕国际、上海市级等各级政府部门对科研共享平台、对外技术服务的管理政策、指南和方针，制定符合中心发展目标的中心内部管理制定和流程规范，并定期更新。\r\n　　7、负责完成院部其他各项重点工作的计划、组织、落实等任务的支撑保障工作。\r\n二、管理职能类（科研条线层面）\r\n　　1、负责科研条线需提交院部审议的科技事务与科技决策，包括“三重一大”等重要议题的收集、汇总、整理、上报、决策下达以及有关沟通协调工作。\r\n　　2、负责科研条线与相关职能科室间的沟通、联络、协调工作。\r\n　　3、负责科研部（含编辑部、图书馆、伦理办、捐赠办）和挂靠部门（新发与再现传染病研究所办公室）的日常工作的督导、院部重要工作传达以及科研部（含编辑部、图书馆、伦理办、捐赠办）工作人员考勤管理、奖金分配等事宜。\r\n　　4、在突发公共卫生应急事件时，有效组织协调科研条线内部各部门，及科研条线与中心其他条线各部门的相互配合工作，组织沟通和应急事宜协调处理，做好应急', '2020-06-01 20:46:24', '0', '科研部工作', '/upload/2020/6/2020060215182320200603122201254.png', '科研部工作', '0', 'post', '0', '2020-06-03 01:31:12', 'research', null);
INSERT INTO `changdao_article` VALUES ('153', '9', '<p>11111</p>', '11111', '2020-06-02 01:32:16', '0', null, '/upload/2020/6/gxshNvH6Syu5xpc27bOHFQ20200601180345510.jpg', '广告1', null, 'page', '0', '2020-06-02 01:32:16', '1', null);
INSERT INTO `changdao_article` VALUES ('154', '9', '<p>2222</p>', '2222', '2020-06-02 01:46:43', '0', null, '/upload/2020/6/qwmOH3OHS0GTcn2o8lm0iA20200601180345767.jpg', '广告2', null, 'page', '0', '2020-06-02 01:46:43', '2', null);
INSERT INTO `changdao_article` VALUES ('155', '9', '<p>3333</p>', '3333', '2020-06-02 01:47:08', '0', null, '/upload/2020/6/vljVkG0CQR-Nb_W8j3z6og20200601180345307.jpg', '广告3', null, 'page', '0', '2020-06-02 01:47:08', '3', null);
INSERT INTO `changdao_article` VALUES ('156', '9', '<p>\r\n	00000上海市公卫中心上海市公卫中心\r\n</p>\r\n<p>\r\n	<img src=\"http://192.168.50.158:9999/upload/2020/5/u32020052909483883.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '<p>\r\n	00000上海市公卫中心上海市公卫中心\r\n</p>\r\n<p>\r\n	<img src=\"http://192.168.50.158:9999/upload/2020/5/u32020052909483883.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '2020-06-02 01:47:21', '0', null, '/upload/2020/6/ILomPn79SyS3la35Mc-_Ow20200601180401831.jpg', '广告0', null, 'page', '0', '2020-06-09 02:29:42', '0', null);
INSERT INTO `changdao_article` VALUES ('157', '9', '<p>上海市公共卫生临床中心是一所具百年历史的三级甲等医院，又名复旦大学附属公共卫生临床中心、复旦大学附属中山医院南院，始建于1914年，2004年作为市府“一号工程”迁址发展，医院本部位于上海市金山区，占地503亩，建筑面积115304.51平方米；分部位于上海市虹口区，占地45亩，建筑面积26,026平方米。医院环境优美，占地面积与绿化覆盖率位居全市之首。 医院目前核定床位660张，临床科室设有普外科、肝胆外科、胸外科、骨科、疼痛康复科、泌尿外科、神经外科、介入科、ICU、消化内科、综合内科、呼吸内科、中医科、妇产科、肾内科、心内科、儿科、麻醉科、口腔科、耳鼻喉科、眼科、肝病科、肝胆内科、重症肝病科、感染与免疫科、感染科、结核科、内镜中心、血液净化中心、体检中心等；医疗辅助科室设有影像科、超声医学科、检验科、病理科、药剂科、功能检查科、营养室等。 医院医疗特色明显。内设肝病临床中心，集肝病内科、肝胆外科、重症医学、介入、内镜、血液净化等专家团队为一体的多学科协作医疗，重症肝病、腹水回输、人工肝等肝病治疗为医疗特色科室；普外科在腹膜后软组织肿瘤手术和科研居国内前列；妇产科为上海市危重孕产妇会诊抢救中心、上海市产科肝病监护中心；感染科为上海市艾滋病诊疗中心；中医科为国家中医药管理局中医药防治传染病重点研究室（临床基地）。结核病诊断和治疗为优势学科，结核外科和儿童结核诊治具有特色，设有临床和基础研究团队组成的结核病中心。医院拥有先进的医疗设备，如全数字血管造影机（DSA）、3.0T磁共振（MRI）、集成智能靶向定位机器人系统（ROBIO EX），数字化手术室、ECMO人工肺、MARS人工肝、320排X线电子计算机断层扫描装置（CT）、直接数字平板X线成像系统（DR）、手术影像导航系统、数字化乳腺X射线摄影系统、脑室摄像系统（脑室镜）、钬激光治疗仪（激光碎石系统）等。 　　医学教育涵盖本科、硕士、博士学历学位教育，是WHO新发与再现传染病临床研究与培训中心、全国传染病医师进修教育培训基地、中国疾病预防控制中心艾滋病临床进修教育基地、上海市感染科专科医师规范化培训基地、妇产科学和传染病学加入复旦大学成为国家教育部重点学科、国家临床重点专科建设项目单位、上海市传染病重点学科建设单位之一，是上海市疾病控制中心临床基地。 医院拥有高水平的研究队伍和完备的科研平台。拥有国家级百千万人才、突出贡献中青年专家、上海市领军人才、上海市优秀学科带头人、上海市浦江人才计划、上海市科技启明星计划、上海市中医领军人才等高水平临床和科研队伍。2016年科技影响力在传染病领域位居全国第三。拥有国内运行效率最高的生物安全三级实验室、国内医院系统中领先的动物实验平台，配有高速基因分析系统Illumina Nova-seq-6000、高通量基因测序仪Illumina Miniseq、全景组织细胞定量分析仪TissueFAXS200、高内涵细胞成像系统LEICA DMI8等一大批先进科研设备。研究平台为国内170多家临床、科研和制药企业等提供服务，多次获得上海市科技平台共享服务先进称号。医院内设上海市新发与再现传染病研究所、国家药物临床试验机构等研究机构，中国疾病预防控制中心徐建国院士工作站；与世界上主要的公共卫生科研机构保持广泛合作。</p>', '上海市公共卫生临床中心是一所具百年历史的三级甲等医院，又名复旦大学附属公共卫生临床中心、复旦大学附属中山医院南院，始建于1914年，2004年作为市府“一号工程”迁址发展，医院本部位于上海市金山区，占地503亩，建筑面积115304.51平方米；分部位于上海市虹口区，占地45亩，建筑面积26,026平方米。医院环境优美，占地面积与绿化覆盖率位居全市之首。 医院目前核定床位660张，临床科室设有普外科、肝胆外科、胸外科、骨科、疼痛康复科、泌尿外科、神经外科、介入科、ICU、消化内科、综合内科、呼吸内科、中医科、妇产科、肾内科、心内科、儿科、麻醉科、口腔科、耳鼻喉科、眼科、肝病科、肝胆内科、重症肝病科、感染与免疫科、感染科、结核科、内镜中心、血液净化中心、体检中心等；医疗辅助科室设有影像科、超声医学科、检验科、病理科、药剂科、功能检查科、营养室等。 医院医疗特色明显。内设肝病临床中心，集肝病内科、肝胆外科、重症医学、介入、内镜、血液净化等专家团队为一体的多学科协作医疗，重症肝病、腹水回输、人工肝等肝病治疗为医疗特色科室；普外科在腹膜后软组织肿瘤手术和科研居国内前列；妇产科为上海市危重孕产妇会诊抢救中心、上海市产科肝病监护中心；感染科为上海市艾滋病诊疗中心；中医科为国家中医药管理局中医药防治传染病重点研究室（临床基地）。结核病诊断和治疗为优势学科，结核外科和儿童结核诊治具有特色，设有临床和基础研究团队组成的结核病中心。医院拥有先进的医疗设备，如全数字血管造影机（DSA）、3.0T磁共振（MRI）、集成智能靶向定位机器人系统（ROBIO EX），数字化手术室、ECMO人工肺、MARS人工肝、320排X线电子计算机断层扫描装置（CT）、直接数字平板X线成像系统（DR）、手术影像导航系统、数字化乳腺X射线摄影系统、脑室摄像系统（脑室镜）、钬激光治疗仪（激光碎石系统）等。 　　医学教育涵盖本科、硕士、博士学历学位教育，是WHO新发与再现传染病临床研究与培训中心、全国传染病医师进修教育培训基地、中国疾病预防控制中心艾滋病临床进修教育基地、上海市感染科专科医师规范化培训基地、妇产科学和传染病学加入复旦大学成为国家教育部重点学科、国家临床重点专科建设项目单位、上海市传染病重点学科建设单位之一，是上海市疾病控制中心临床基地。 医院拥有高水平的研究队伍和完备的科研平台。拥有国家级百千万人才、突出贡献中青年专家、上海市领军人才、上海市优秀学科带头人、上海市浦江人才计划、上海市科技启明星计划、上海市中医领军人才等高水平临床和科研队伍。2016年科技影响力在传染病领域位居全国第三。拥有国内运行效率最高的生物安全三级实验室、国内医院系统中领先的动物实验平台，配有高速基因分析系统Illumina Nova-seq-6000、高通量基因测序仪Illumina Miniseq、全景组织细胞定量分析仪TissueFAXS200、高内涵细胞成像系统LEICA DMI8等一大批先进科研设备。研究平台为国内170多家临床、科研和制药企业等提供服务，多次获得上海市科技平台共享服务先进称号。医院内设上海市新发与再现传染病研究所、国家药物临床试验机构等研究机构，中国疾病预防控制中心徐建国院士工作站；与世界上主要的公共卫生科研机构保持广泛合作。', '2020-06-03 01:32:16', '0', '上海市公共卫生临床中心是一所具百年历史的三级甲等医院，又名复旦大学附属公共卫生临床中心、复旦大学附属', '/upload/2020/6/2020060215182320200603122201254.png', '医院概况', '0', 'post', '0', '2020-06-03 01:32:16', 'hospitalProfile', null);

-- ----------------------------
-- Table structure for changdao_article_category
-- ----------------------------
DROP TABLE IF EXISTS `changdao_article_category`;
CREATE TABLE `changdao_article_category` (
  `article_id` int(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `MAYDAY_ARTILE_ID` (`article_id`) USING BTREE,
  KEY `MAYDAY_ARTILE_CATEGORY_ID` (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_article_category
-- ----------------------------
INSERT INTO `changdao_article_category` VALUES ('148', '20');
INSERT INTO `changdao_article_category` VALUES ('157', '20');

-- ----------------------------
-- Table structure for changdao_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `changdao_article_tag`;
CREATE TABLE `changdao_article_tag` (
  `article_id` int(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  KEY `MAYDAY_ARTILE_ID` (`article_id`) USING BTREE,
  KEY `MAYDAY_ARTILE_TAG_ID` (`tag_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for changdao_attachment
-- ----------------------------
DROP TABLE IF EXISTS `changdao_attachment`;
CREATE TABLE `changdao_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_name` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `picture_path` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `picture_small_path` varchar(255) DEFAULT NULL COMMENT '略缩图',
  `picture_type` varchar(255) DEFAULT NULL COMMENT '图片类型',
  `picture_create_date` varchar(255) DEFAULT NULL COMMENT '上传时间',
  `picture_size` varchar(255) DEFAULT NULL COMMENT '文件大小',
  `picture_suffix` varchar(255) DEFAULT NULL COMMENT '后缀',
  `picture_wh` varchar(255) DEFAULT NULL COMMENT '尺寸',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_attachment
-- ----------------------------
INSERT INTO `changdao_attachment` VALUES ('245', 'u43320200528170220146.png', '/upload/2020/5/u43320200528170220146.png', '/upload/2020/5/u43320200528170220146_small.png', 'image/png', '2020-05-28 04:02:20.864', '226KB', '.png', '375x758');
INSERT INTO `changdao_attachment` VALUES ('248', 'u203320200529094402372.png', '/upload/2020/5/u203320200529094402372.png', '/upload/2020/5/u203320200529094402372_small.png', 'image/png', '2020-05-28 20:44:02.033', '1KB', '.png', '53x58');
INSERT INTO `changdao_attachment` VALUES ('249', 'u32020052909483883.png', '/upload/2020/5/u32020052909483883.png', '/upload/2020/5/u32020052909483883_small.png', 'image/png', '2020-05-28 20:48:38.954', '13KB', '.png', '209x76');
INSERT INTO `changdao_attachment` VALUES ('256', 'vljVkG0CQR-Nb_W8j3z6og20200601180345307.jpg', '/upload/2020/6/vljVkG0CQR-Nb_W8j3z6og20200601180345307.jpg', '/upload/2020/6/vljVkG0CQR-Nb_W8j3z6og20200601180345307_small.jpg', 'image/jpeg', '2020-06-01 05:03:45.937', '205KB', '.jpg', '1920x678');
INSERT INTO `changdao_attachment` VALUES ('257', 'gxshNvH6Syu5xpc27bOHFQ20200601180345510.jpg', '/upload/2020/6/gxshNvH6Syu5xpc27bOHFQ20200601180345510.jpg', '/upload/2020/6/gxshNvH6Syu5xpc27bOHFQ20200601180345510_small.jpg', 'image/jpeg', '2020-06-01 05:03:45.937', '339KB', '.jpg', '1920x678');
INSERT INTO `changdao_attachment` VALUES ('258', 'BEilVYITQviUy_xVw1AsWA20200601180345310.jpg', '/upload/2020/6/BEilVYITQviUy_xVw1AsWA20200601180345310.jpg', '/upload/2020/6/BEilVYITQviUy_xVw1AsWA20200601180345310_small.jpg', 'image/jpeg', '2020-06-01 05:03:45.943', '597KB', '.jpg', '1920x678');
INSERT INTO `changdao_attachment` VALUES ('259', 'qwmOH3OHS0GTcn2o8lm0iA20200601180345767.jpg', '/upload/2020/6/qwmOH3OHS0GTcn2o8lm0iA20200601180345767.jpg', '/upload/2020/6/qwmOH3OHS0GTcn2o8lm0iA20200601180345767_small.jpg', 'image/jpeg', '2020-06-01 05:03:45.937', '358KB', '.jpg', '1920x678');
INSERT INTO `changdao_attachment` VALUES ('260', 'ILomPn79SyS3la35Mc-_Ow20200601180401831.jpg', '/upload/2020/6/ILomPn79SyS3la35Mc-_Ow20200601180401831.jpg', '/upload/2020/6/ILomPn79SyS3la35Mc-_Ow20200601180401831_small.jpg', 'image/jpeg', '2020-06-01 05:04:01.38', '198KB', '.jpg', '1920x678');
INSERT INTO `changdao_attachment` VALUES ('261', '1dCf23v_Twylyw2RPWrQsw20200608070553201.jpg', '/upload/2020/6/1dCf23v_Twylyw2RPWrQsw20200608070553201.jpg', '/upload/2020/6/1dCf23v_Twylyw2RPWrQsw20200608070553201_small.jpg', 'image/jpeg', '2020-06-08 07:05:53.193', '297KB', '.jpg', '1920x263');

-- ----------------------------
-- Table structure for changdao_category
-- ----------------------------
DROP TABLE IF EXISTS `changdao_category`;
CREATE TABLE `changdao_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `category_url` varchar(255) DEFAULT NULL COMMENT '分类路径',
  `category_describe` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_category
-- ----------------------------
INSERT INTO `changdao_category` VALUES ('20', '动态页面', 'news', '');
INSERT INTO `changdao_category` VALUES ('21', '广告栏', 'ad', '');

-- ----------------------------
-- Table structure for changdao_link
-- ----------------------------
DROP TABLE IF EXISTS `changdao_link`;
CREATE TABLE `changdao_link` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `link_url` varchar(255) DEFAULT NULL COMMENT '路径',
  `link_logo` varchar(255) DEFAULT NULL COMMENT '链接logo',
  `link_describe` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_link
-- ----------------------------
INSERT INTO `changdao_link` VALUES ('48', '中山医院', 'http://www.zs-hospital.sh.cn', '', '');

-- ----------------------------
-- Table structure for changdao_logs
-- ----------------------------
DROP TABLE IF EXISTS `changdao_logs`;
CREATE TABLE `changdao_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `log_content` varchar(255) DEFAULT NULL COMMENT '内容',
  `log_ip` varchar(255) DEFAULT NULL COMMENT 'ip',
  `log_date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1207 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_logs
-- ----------------------------
INSERT INTO `changdao_logs` VALUES ('892', '安装MAYDAY', '操作成功', '127.0.0.1', '2020-05-28 15:01:54');
INSERT INTO `changdao_logs` VALUES ('893', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 15:02:23');
INSERT INTO `changdao_logs` VALUES ('894', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 02:03:54');
INSERT INTO `changdao_logs` VALUES ('895', '更新文章', '操作成功', '127.0.0.1', '2020-05-28 02:09:27');
INSERT INTO `changdao_logs` VALUES ('896', '更新文章', '操作成功', '127.0.0.1', '2020-05-28 02:09:40');
INSERT INTO `changdao_logs` VALUES ('897', '更新文章', '操作成功', '127.0.0.1', '2020-05-28 02:16:46');
INSERT INTO `changdao_logs` VALUES ('898', '更新文章', '操作成功', '127.0.0.1', '2020-05-28 02:17:01');
INSERT INTO `changdao_logs` VALUES ('899', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 02:18:27');
INSERT INTO `changdao_logs` VALUES ('900', '更新文章', '操作成功', '127.0.0.1', '2020-05-28 02:18:41');
INSERT INTO `changdao_logs` VALUES ('901', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 02:55:59');
INSERT INTO `changdao_logs` VALUES ('902', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 02:59:54');
INSERT INTO `changdao_logs` VALUES ('903', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:11:39');
INSERT INTO `changdao_logs` VALUES ('904', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:23:20');
INSERT INTO `changdao_logs` VALUES ('905', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:24:50');
INSERT INTO `changdao_logs` VALUES ('906', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:26:41');
INSERT INTO `changdao_logs` VALUES ('907', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:27:10');
INSERT INTO `changdao_logs` VALUES ('908', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:30:14');
INSERT INTO `changdao_logs` VALUES ('909', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:31:08');
INSERT INTO `changdao_logs` VALUES ('910', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:31:54');
INSERT INTO `changdao_logs` VALUES ('911', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:34:04');
INSERT INTO `changdao_logs` VALUES ('912', '发布页面', '操作成功', '127.0.0.1', '2020-05-28 03:34:41');
INSERT INTO `changdao_logs` VALUES ('913', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:38:57');
INSERT INTO `changdao_logs` VALUES ('914', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:40:07');
INSERT INTO `changdao_logs` VALUES ('915', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:40:52');
INSERT INTO `changdao_logs` VALUES ('916', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:41:51');
INSERT INTO `changdao_logs` VALUES ('917', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:44:00');
INSERT INTO `changdao_logs` VALUES ('918', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:47:34');
INSERT INTO `changdao_logs` VALUES ('919', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:47:58');
INSERT INTO `changdao_logs` VALUES ('920', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:48:51');
INSERT INTO `changdao_logs` VALUES ('921', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:49:22');
INSERT INTO `changdao_logs` VALUES ('922', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 03:58:28');
INSERT INTO `changdao_logs` VALUES ('923', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 04:00:18');
INSERT INTO `changdao_logs` VALUES ('924', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 04:01:39');
INSERT INTO `changdao_logs` VALUES ('925', '上传附件', '上传成功', '127.0.0.1', '2020-05-28 04:02:21');
INSERT INTO `changdao_logs` VALUES ('926', '上传附件', '上传成功', '127.0.0.1', '2020-05-28 04:02:48');
INSERT INTO `changdao_logs` VALUES ('927', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 04:07:16');
INSERT INTO `changdao_logs` VALUES ('928', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 04:11:08');
INSERT INTO `changdao_logs` VALUES ('929', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 04:14:34');
INSERT INTO `changdao_logs` VALUES ('930', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 04:32:44');
INSERT INTO `changdao_logs` VALUES ('931', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 04:33:31');
INSERT INTO `changdao_logs` VALUES ('932', '更新文章', '操作成功', '192.168.50.158', '2020-05-28 04:35:08');
INSERT INTO `changdao_logs` VALUES ('933', '更新文章', '操作成功', '192.168.50.158', '2020-05-28 04:35:41');
INSERT INTO `changdao_logs` VALUES ('934', '更新文章', '操作成功', '192.168.50.158', '2020-05-28 04:36:01');
INSERT INTO `changdao_logs` VALUES ('935', '更新文章', '操作成功', '192.168.50.158', '2020-05-28 04:36:19');
INSERT INTO `changdao_logs` VALUES ('936', '更新文章', '操作成功', '192.168.50.158', '2020-05-28 04:38:12');
INSERT INTO `changdao_logs` VALUES ('937', '更新文章', '操作成功', '192.168.50.158', '2020-05-28 04:39:39');
INSERT INTO `changdao_logs` VALUES ('938', '更新文章', '操作成功', '192.168.50.158', '2020-05-28 04:40:55');
INSERT INTO `changdao_logs` VALUES ('939', '更新页面', '操作成功', '192.168.50.158', '2020-05-28 04:47:25');
INSERT INTO `changdao_logs` VALUES ('940', '更新页面', '操作成功', '192.168.50.158', '2020-05-28 04:48:07');
INSERT INTO `changdao_logs` VALUES ('941', '登录后台', '登录失败', '127.0.0.1', '2020-05-28 05:04:48');
INSERT INTO `changdao_logs` VALUES ('942', '登录后台', '登录失败', '127.0.0.1', '2020-05-28 05:04:52');
INSERT INTO `changdao_logs` VALUES ('943', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 05:05:25');
INSERT INTO `changdao_logs` VALUES ('944', '上传附件', '上传成功', '127.0.0.1', '2020-05-28 05:10:00');
INSERT INTO `changdao_logs` VALUES ('945', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 05:22:21');
INSERT INTO `changdao_logs` VALUES ('946', '删除附件', '删除成功', '127.0.0.1', '2020-05-28 05:25:08');
INSERT INTO `changdao_logs` VALUES ('947', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:26:00');
INSERT INTO `changdao_logs` VALUES ('948', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:29:26');
INSERT INTO `changdao_logs` VALUES ('949', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 05:34:40');
INSERT INTO `changdao_logs` VALUES ('950', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:37:51');
INSERT INTO `changdao_logs` VALUES ('951', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:39:05');
INSERT INTO `changdao_logs` VALUES ('952', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:41:14');
INSERT INTO `changdao_logs` VALUES ('953', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 05:43:35');
INSERT INTO `changdao_logs` VALUES ('954', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:43:43');
INSERT INTO `changdao_logs` VALUES ('955', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:44:48');
INSERT INTO `changdao_logs` VALUES ('956', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:50:20');
INSERT INTO `changdao_logs` VALUES ('957', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:51:09');
INSERT INTO `changdao_logs` VALUES ('958', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:56:03');
INSERT INTO `changdao_logs` VALUES ('959', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 05:58:48');
INSERT INTO `changdao_logs` VALUES ('960', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:02:35');
INSERT INTO `changdao_logs` VALUES ('961', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:04:00');
INSERT INTO `changdao_logs` VALUES ('962', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:05:23');
INSERT INTO `changdao_logs` VALUES ('963', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:06:29');
INSERT INTO `changdao_logs` VALUES ('964', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:09:12');
INSERT INTO `changdao_logs` VALUES ('965', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:12:05');
INSERT INTO `changdao_logs` VALUES ('966', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:13:46');
INSERT INTO `changdao_logs` VALUES ('967', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:15:27');
INSERT INTO `changdao_logs` VALUES ('968', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:32:16');
INSERT INTO `changdao_logs` VALUES ('969', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:33:41');
INSERT INTO `changdao_logs` VALUES ('970', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:35:34');
INSERT INTO `changdao_logs` VALUES ('971', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:36:45');
INSERT INTO `changdao_logs` VALUES ('972', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:37:07');
INSERT INTO `changdao_logs` VALUES ('973', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:38:55');
INSERT INTO `changdao_logs` VALUES ('974', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:40:01');
INSERT INTO `changdao_logs` VALUES ('975', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:41:02');
INSERT INTO `changdao_logs` VALUES ('976', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 06:44:37');
INSERT INTO `changdao_logs` VALUES ('977', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:45:20');
INSERT INTO `changdao_logs` VALUES ('978', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:48:57');
INSERT INTO `changdao_logs` VALUES ('979', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:49:37');
INSERT INTO `changdao_logs` VALUES ('980', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:50:12');
INSERT INTO `changdao_logs` VALUES ('981', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:50:54');
INSERT INTO `changdao_logs` VALUES ('982', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:51:28');
INSERT INTO `changdao_logs` VALUES ('983', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:54:34');
INSERT INTO `changdao_logs` VALUES ('984', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:56:45');
INSERT INTO `changdao_logs` VALUES ('985', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 06:57:59');
INSERT INTO `changdao_logs` VALUES ('986', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 07:00:18');
INSERT INTO `changdao_logs` VALUES ('987', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 07:02:32');
INSERT INTO `changdao_logs` VALUES ('988', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 07:03:33');
INSERT INTO `changdao_logs` VALUES ('989', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 07:04:56');
INSERT INTO `changdao_logs` VALUES ('990', '登录后台', '登录成功', '192.168.50.158', '2020-05-28 07:05:36');
INSERT INTO `changdao_logs` VALUES ('991', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 07:11:24');
INSERT INTO `changdao_logs` VALUES ('992', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 20:27:51');
INSERT INTO `changdao_logs` VALUES ('993', '更新文章', '操作成功', '127.0.0.1', '2020-05-28 20:36:49');
INSERT INTO `changdao_logs` VALUES ('994', '更新文章', '操作成功', '127.0.0.1', '2020-05-28 20:37:00');
INSERT INTO `changdao_logs` VALUES ('995', '更新文章', '操作成功', '127.0.0.1', '2020-05-28 20:38:48');
INSERT INTO `changdao_logs` VALUES ('996', '上传附件', '上传成功', '127.0.0.1', '2020-05-28 20:44:02');
INSERT INTO `changdao_logs` VALUES ('997', '上传附件', '上传成功', '127.0.0.1', '2020-05-28 20:48:39');
INSERT INTO `changdao_logs` VALUES ('998', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 21:31:06');
INSERT INTO `changdao_logs` VALUES ('999', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 21:38:26');
INSERT INTO `changdao_logs` VALUES ('1000', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 22:07:14');
INSERT INTO `changdao_logs` VALUES ('1001', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 22:52:55');
INSERT INTO `changdao_logs` VALUES ('1002', '登录后台', '登录成功', '127.0.0.1', '2020-05-28 22:54:59');
INSERT INTO `changdao_logs` VALUES ('1003', '登录后台', '登录成功', '127.0.0.1', '2020-05-29 00:46:45');
INSERT INTO `changdao_logs` VALUES ('1004', '登录后台', '登录成功', '127.0.0.1', '2020-05-29 01:13:00');
INSERT INTO `changdao_logs` VALUES ('1005', '更新文章', '操作成功', '127.0.0.1', '2020-05-29 01:26:40');
INSERT INTO `changdao_logs` VALUES ('1006', '更新文章', '操作成功', '127.0.0.1', '2020-05-29 01:27:15');
INSERT INTO `changdao_logs` VALUES ('1007', '更新文章', '操作成功', '127.0.0.1', '2020-05-29 01:29:46');
INSERT INTO `changdao_logs` VALUES ('1008', '更新文章', '操作成功', '127.0.0.1', '2020-05-29 01:30:54');
INSERT INTO `changdao_logs` VALUES ('1009', '更新页面', '操作成功', '127.0.0.1', '2020-05-29 01:45:16');
INSERT INTO `changdao_logs` VALUES ('1010', '登录后台', '登录成功', '127.0.0.1', '2020-05-29 01:53:20');
INSERT INTO `changdao_logs` VALUES ('1011', '登录后台', '登录成功', '127.0.0.1', '2020-05-29 01:59:45');
INSERT INTO `changdao_logs` VALUES ('1012', '删除页面', '操作成功', '127.0.0.1', '2020-05-29 02:00:18');
INSERT INTO `changdao_logs` VALUES ('1013', '登录后台', '登录成功', '127.0.0.1', '2020-05-29 02:19:43');
INSERT INTO `changdao_logs` VALUES ('1014', '登录后台', '登录成功', '127.0.0.1', '2020-05-29 03:26:19');
INSERT INTO `changdao_logs` VALUES ('1015', '登录后台', '登录成功', '127.0.0.1', '2020-05-31 20:54:32');
INSERT INTO `changdao_logs` VALUES ('1016', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:05:49');
INSERT INTO `changdao_logs` VALUES ('1017', '更新文章', '操作成功', '192.168.50.158', '2020-05-31 22:06:07');
INSERT INTO `changdao_logs` VALUES ('1018', '更新文章', '操作成功', '192.168.50.158', '2020-05-31 22:06:35');
INSERT INTO `changdao_logs` VALUES ('1019', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:07:01');
INSERT INTO `changdao_logs` VALUES ('1020', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:09:33');
INSERT INTO `changdao_logs` VALUES ('1021', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:09:42');
INSERT INTO `changdao_logs` VALUES ('1022', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:09:48');
INSERT INTO `changdao_logs` VALUES ('1023', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:24:59');
INSERT INTO `changdao_logs` VALUES ('1024', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:36:33');
INSERT INTO `changdao_logs` VALUES ('1025', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:41:41');
INSERT INTO `changdao_logs` VALUES ('1026', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:42:00');
INSERT INTO `changdao_logs` VALUES ('1027', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:44:56');
INSERT INTO `changdao_logs` VALUES ('1028', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:54:33');
INSERT INTO `changdao_logs` VALUES ('1029', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:56:32');
INSERT INTO `changdao_logs` VALUES ('1030', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:56:50');
INSERT INTO `changdao_logs` VALUES ('1031', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 22:59:11');
INSERT INTO `changdao_logs` VALUES ('1032', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 23:00:35');
INSERT INTO `changdao_logs` VALUES ('1033', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 23:00:49');
INSERT INTO `changdao_logs` VALUES ('1034', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 23:01:02');
INSERT INTO `changdao_logs` VALUES ('1035', '登录后台', '登录成功', '192.168.50.158', '2020-05-31 23:06:22');
INSERT INTO `changdao_logs` VALUES ('1036', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 00:29:22');
INSERT INTO `changdao_logs` VALUES ('1037', '添加主题', '操作成功', '192.168.50.158', '2020-06-01 00:51:57');
INSERT INTO `changdao_logs` VALUES ('1038', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 00:53:28');
INSERT INTO `changdao_logs` VALUES ('1039', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 01:13:13');
INSERT INTO `changdao_logs` VALUES ('1040', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 01:21:32');
INSERT INTO `changdao_logs` VALUES ('1041', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 01:24:43');
INSERT INTO `changdao_logs` VALUES ('1042', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 01:27:03');
INSERT INTO `changdao_logs` VALUES ('1043', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 01:27:56');
INSERT INTO `changdao_logs` VALUES ('1044', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 01:29:56');
INSERT INTO `changdao_logs` VALUES ('1045', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 01:33:14');
INSERT INTO `changdao_logs` VALUES ('1046', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 02:27:03');
INSERT INTO `changdao_logs` VALUES ('1047', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 02:38:43');
INSERT INTO `changdao_logs` VALUES ('1048', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 04:08:10');
INSERT INTO `changdao_logs` VALUES ('1049', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 04:10:51');
INSERT INTO `changdao_logs` VALUES ('1050', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 04:12:20');
INSERT INTO `changdao_logs` VALUES ('1051', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 04:13:28');
INSERT INTO `changdao_logs` VALUES ('1052', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 05:01:30');
INSERT INTO `changdao_logs` VALUES ('1053', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:01:39');
INSERT INTO `changdao_logs` VALUES ('1054', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:01:39');
INSERT INTO `changdao_logs` VALUES ('1055', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:01:39');
INSERT INTO `changdao_logs` VALUES ('1056', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:01:39');
INSERT INTO `changdao_logs` VALUES ('1057', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:01:39');
INSERT INTO `changdao_logs` VALUES ('1058', '删除附件', '删除成功', '192.168.50.158', '2020-06-01 05:02:55');
INSERT INTO `changdao_logs` VALUES ('1059', '删除附件', '删除成功', '192.168.50.158', '2020-06-01 05:03:08');
INSERT INTO `changdao_logs` VALUES ('1060', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:03:46');
INSERT INTO `changdao_logs` VALUES ('1061', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:03:46');
INSERT INTO `changdao_logs` VALUES ('1062', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:03:46');
INSERT INTO `changdao_logs` VALUES ('1063', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:03:46');
INSERT INTO `changdao_logs` VALUES ('1064', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:03:46');
INSERT INTO `changdao_logs` VALUES ('1065', '删除附件', '删除成功', '192.168.50.158', '2020-06-01 05:03:53');
INSERT INTO `changdao_logs` VALUES ('1066', '上传附件', '上传成功', '192.168.50.158', '2020-06-01 05:04:01');
INSERT INTO `changdao_logs` VALUES ('1067', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 05:06:13');
INSERT INTO `changdao_logs` VALUES ('1068', '登录后台', '登录成功', '192.168.50.158', '2020-06-01 05:07:48');
INSERT INTO `changdao_logs` VALUES ('1069', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 05:16:55');
INSERT INTO `changdao_logs` VALUES ('1070', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 05:20:45');
INSERT INTO `changdao_logs` VALUES ('1071', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 05:30:01');
INSERT INTO `changdao_logs` VALUES ('1072', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 05:31:26');
INSERT INTO `changdao_logs` VALUES ('1073', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 05:32:39');
INSERT INTO `changdao_logs` VALUES ('1074', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 05:37:05');
INSERT INTO `changdao_logs` VALUES ('1075', '删除主题', '操作成功', '127.0.0.1', '2020-06-01 05:37:38');
INSERT INTO `changdao_logs` VALUES ('1076', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 05:41:26');
INSERT INTO `changdao_logs` VALUES ('1077', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 20:25:28');
INSERT INTO `changdao_logs` VALUES ('1078', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 20:30:50');
INSERT INTO `changdao_logs` VALUES ('1079', '修改密码', '登录成功', '127.0.0.1', '2020-06-01 20:31:07');
INSERT INTO `changdao_logs` VALUES ('1080', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 20:31:36');
INSERT INTO `changdao_logs` VALUES ('1081', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 20:32:08');
INSERT INTO `changdao_logs` VALUES ('1082', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 20:32:58');
INSERT INTO `changdao_logs` VALUES ('1083', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 20:33:19');
INSERT INTO `changdao_logs` VALUES ('1084', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 20:36:08');
INSERT INTO `changdao_logs` VALUES ('1085', '发布页面', '操作成功', '127.0.0.1', '2020-06-01 20:38:17');
INSERT INTO `changdao_logs` VALUES ('1086', '发表文章', '操作成功', '127.0.0.1', '2020-06-01 20:46:24');
INSERT INTO `changdao_logs` VALUES ('1087', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:47:55');
INSERT INTO `changdao_logs` VALUES ('1088', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:48:04');
INSERT INTO `changdao_logs` VALUES ('1089', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:48:21');
INSERT INTO `changdao_logs` VALUES ('1090', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:48:30');
INSERT INTO `changdao_logs` VALUES ('1091', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:50:04');
INSERT INTO `changdao_logs` VALUES ('1092', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:50:13');
INSERT INTO `changdao_logs` VALUES ('1093', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:50:43');
INSERT INTO `changdao_logs` VALUES ('1094', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:50:51');
INSERT INTO `changdao_logs` VALUES ('1095', '更新页面', '操作成功', '127.0.0.1', '2020-06-01 20:54:08');
INSERT INTO `changdao_logs` VALUES ('1096', '发布页面', '操作成功', '127.0.0.1', '2020-06-01 20:54:40');
INSERT INTO `changdao_logs` VALUES ('1097', '发布页面', '操作成功', '127.0.0.1', '2020-06-01 20:55:02');
INSERT INTO `changdao_logs` VALUES ('1098', '发布页面', '操作成功', '127.0.0.1', '2020-06-01 20:55:18');
INSERT INTO `changdao_logs` VALUES ('1099', '发布页面', '操作成功', '127.0.0.1', '2020-06-01 20:55:31');
INSERT INTO `changdao_logs` VALUES ('1100', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:57:48');
INSERT INTO `changdao_logs` VALUES ('1101', '更新文章', '操作成功', '127.0.0.1', '2020-06-01 20:57:55');
INSERT INTO `changdao_logs` VALUES ('1102', '登录后台', '登录成功', '127.0.0.1', '2020-06-01 22:07:40');
INSERT INTO `changdao_logs` VALUES ('1103', '登录后台', '登录成功', '127.0.0.1', '2020-06-02 00:20:45');
INSERT INTO `changdao_logs` VALUES ('1104', '登录后台', '登录失败', '192.168.50.158', '2020-06-02 01:27:48');
INSERT INTO `changdao_logs` VALUES ('1105', '登录后台', '登录成功', '192.168.50.158', '2020-06-02 01:27:55');
INSERT INTO `changdao_logs` VALUES ('1106', '删除页面', '操作成功', '192.168.50.158', '2020-06-02 01:28:10');
INSERT INTO `changdao_logs` VALUES ('1107', '删除页面', '操作成功', '192.168.50.158', '2020-06-02 01:28:25');
INSERT INTO `changdao_logs` VALUES ('1108', '更新页面', '操作成功', '192.168.50.158', '2020-06-02 01:28:40');
INSERT INTO `changdao_logs` VALUES ('1109', '更新页面', '操作成功', '192.168.50.158', '2020-06-02 01:29:21');
INSERT INTO `changdao_logs` VALUES ('1110', '更新页面', '操作成功', '192.168.50.158', '2020-06-02 01:29:33');
INSERT INTO `changdao_logs` VALUES ('1111', '删除页面', '操作成功', '192.168.50.158', '2020-06-02 01:29:59');
INSERT INTO `changdao_logs` VALUES ('1112', '删除页面', '操作成功', '192.168.50.158', '2020-06-02 01:30:01');
INSERT INTO `changdao_logs` VALUES ('1113', '删除页面', '操作成功', '192.168.50.158', '2020-06-02 01:30:02');
INSERT INTO `changdao_logs` VALUES ('1114', '发布页面', '操作成功', '192.168.50.158', '2020-06-02 01:32:16');
INSERT INTO `changdao_logs` VALUES ('1115', '登录后台', '登录成功', '127.0.0.1', '2020-06-02 01:45:47');
INSERT INTO `changdao_logs` VALUES ('1116', '发布页面', '操作成功', '127.0.0.1', '2020-06-02 01:46:43');
INSERT INTO `changdao_logs` VALUES ('1117', '发布页面', '操作成功', '127.0.0.1', '2020-06-02 01:47:08');
INSERT INTO `changdao_logs` VALUES ('1118', '发布页面', '操作成功', '127.0.0.1', '2020-06-02 01:47:21');
INSERT INTO `changdao_logs` VALUES ('1119', '更新页面', '操作成功', '127.0.0.1', '2020-06-02 01:47:37');
INSERT INTO `changdao_logs` VALUES ('1120', '登录后台', '登录成功', '127.0.0.1', '2020-06-02 02:45:58');
INSERT INTO `changdao_logs` VALUES ('1121', '登录后台', '登录成功', '192.168.50.158', '2020-06-02 04:22:40');
INSERT INTO `changdao_logs` VALUES ('1122', '登录后台', '登录成功', '192.168.50.158', '2020-06-02 21:03:14');
INSERT INTO `changdao_logs` VALUES ('1123', '登录后台', '登录成功', '192.168.50.158', '2020-06-02 21:04:13');
INSERT INTO `changdao_logs` VALUES ('1124', '登录后台', '登录成功', '192.168.50.158', '2020-06-02 22:44:59');
INSERT INTO `changdao_logs` VALUES ('1125', '登录后台', '登录成功', '127.0.0.1', '2020-06-02 23:21:48');
INSERT INTO `changdao_logs` VALUES ('1126', '上传附件', '上传成功', '127.0.0.1', '2020-06-02 23:22:01');
INSERT INTO `changdao_logs` VALUES ('1127', '更新文章', '操作成功', '127.0.0.1', '2020-06-02 23:24:44');
INSERT INTO `changdao_logs` VALUES ('1128', '更新文章', '操作成功', '127.0.0.1', '2020-06-02 23:25:42');
INSERT INTO `changdao_logs` VALUES ('1129', '更新文章', '操作成功', '127.0.0.1', '2020-06-02 23:26:47');
INSERT INTO `changdao_logs` VALUES ('1130', '登录后台', '登录失败', '127.0.0.1', '2020-06-02 23:27:58');
INSERT INTO `changdao_logs` VALUES ('1131', '登录后台', '登录成功', '127.0.0.1', '2020-06-02 23:28:04');
INSERT INTO `changdao_logs` VALUES ('1132', '登录后台', '登录成功', '127.0.0.1', '2020-06-03 00:33:15');
INSERT INTO `changdao_logs` VALUES ('1133', '登录后台', '登录失败', '192.168.50.158', '2020-06-03 01:16:35');
INSERT INTO `changdao_logs` VALUES ('1134', '登录后台', '登录成功', '192.168.50.158', '2020-06-03 01:16:43');
INSERT INTO `changdao_logs` VALUES ('1135', '更新文章', '操作成功', '192.168.50.158', '2020-06-03 01:16:53');
INSERT INTO `changdao_logs` VALUES ('1136', '登录后台', '登录成功', '192.168.50.158', '2020-06-03 01:29:58');
INSERT INTO `changdao_logs` VALUES ('1137', '更新文章', '操作成功', '192.168.50.158', '2020-06-03 01:31:12');
INSERT INTO `changdao_logs` VALUES ('1138', '发表文章', '操作成功', '192.168.50.158', '2020-06-03 01:32:16');
INSERT INTO `changdao_logs` VALUES ('1139', '删除文章', '操作成功', '192.168.50.158', '2020-06-03 01:33:16');
INSERT INTO `changdao_logs` VALUES ('1140', '登录后台', '登录成功', '127.0.0.1', '2020-06-03 01:34:37');
INSERT INTO `changdao_logs` VALUES ('1141', '登录后台', '登录成功', '192.168.50.158', '2020-06-03 02:04:59');
INSERT INTO `changdao_logs` VALUES ('1142', '登录后台', '登录成功', '127.0.0.1', '2020-06-03 02:37:29');
INSERT INTO `changdao_logs` VALUES ('1143', '登录后台', '登录成功', '127.0.0.1', '2020-06-03 03:00:03');
INSERT INTO `changdao_logs` VALUES ('1144', '登录后台', '登录成功', '127.0.0.1', '2020-06-03 03:02:42');
INSERT INTO `changdao_logs` VALUES ('1145', '登录后台', '登录成功', '127.0.0.1', '2020-06-03 03:04:08');
INSERT INTO `changdao_logs` VALUES ('1146', '登录后台', '登录成功', '127.0.0.1', '2020-06-03 03:09:39');
INSERT INTO `changdao_logs` VALUES ('1147', '登录后台', '登录成功', '192.168.50.158', '2020-06-03 03:44:54');
INSERT INTO `changdao_logs` VALUES ('1148', '登录后台', '登录成功', '192.168.50.158', '2020-06-03 03:50:34');
INSERT INTO `changdao_logs` VALUES ('1149', '登录后台', '登录成功', '192.168.50.158', '2020-06-03 03:51:29');
INSERT INTO `changdao_logs` VALUES ('1150', '登录后台', '登录成功', '172.17.0.1', '2020-06-03 21:45:00');
INSERT INTO `changdao_logs` VALUES ('1151', '上传附件', '上传成功', '172.17.0.1', '2020-06-03 21:46:34');
INSERT INTO `changdao_logs` VALUES ('1152', '登录后台', '登录成功', '172.17.0.1', '2020-06-04 09:37:28');
INSERT INTO `changdao_logs` VALUES ('1153', '上传附件', '上传成功', '172.17.0.1', '2020-06-04 09:39:54');
INSERT INTO `changdao_logs` VALUES ('1154', '登录后台', '登录成功', '172.17.0.1', '2020-06-04 09:49:08');
INSERT INTO `changdao_logs` VALUES ('1155', '登录后台', '登录失败', '172.17.0.1', '2020-06-04 10:35:41');
INSERT INTO `changdao_logs` VALUES ('1156', '登录后台', '登录成功', '172.17.0.1', '2020-06-04 10:35:45');
INSERT INTO `changdao_logs` VALUES ('1157', '登录后台', '登录成功', '172.17.0.1', '2020-06-08 02:20:07');
INSERT INTO `changdao_logs` VALUES ('1158', '登录后台', '登录失败', '172.17.0.1', '2020-06-08 05:20:20');
INSERT INTO `changdao_logs` VALUES ('1159', '登录后台', '登录成功', '172.17.0.1', '2020-06-08 05:20:23');
INSERT INTO `changdao_logs` VALUES ('1160', '登录后台', '登录成功', '172.17.0.1', '2020-06-08 07:05:35');
INSERT INTO `changdao_logs` VALUES ('1161', '上传附件', '上传成功', '172.17.0.1', '2020-06-08 07:05:53');
INSERT INTO `changdao_logs` VALUES ('1162', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:41:46');
INSERT INTO `changdao_logs` VALUES ('1163', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:42:39');
INSERT INTO `changdao_logs` VALUES ('1164', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:44:29');
INSERT INTO `changdao_logs` VALUES ('1165', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:46:01');
INSERT INTO `changdao_logs` VALUES ('1166', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:47:18');
INSERT INTO `changdao_logs` VALUES ('1167', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:49:10');
INSERT INTO `changdao_logs` VALUES ('1168', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:50:02');
INSERT INTO `changdao_logs` VALUES ('1169', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:54:31');
INSERT INTO `changdao_logs` VALUES ('1170', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:56:12');
INSERT INTO `changdao_logs` VALUES ('1171', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:57:18');
INSERT INTO `changdao_logs` VALUES ('1172', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 07:58:42');
INSERT INTO `changdao_logs` VALUES ('1173', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 08:00:06');
INSERT INTO `changdao_logs` VALUES ('1174', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 08:02:21');
INSERT INTO `changdao_logs` VALUES ('1175', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 08:05:23');
INSERT INTO `changdao_logs` VALUES ('1176', '登录后台', '登录成功', '192.168.50.158', '2020-06-08 08:06:25');
INSERT INTO `changdao_logs` VALUES ('1177', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 01:47:01');
INSERT INTO `changdao_logs` VALUES ('1178', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 01:52:29');
INSERT INTO `changdao_logs` VALUES ('1179', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 02:05:17');
INSERT INTO `changdao_logs` VALUES ('1180', '发布页面', '操作成功', '192.168.50.158', '2020-06-09 02:05:49');
INSERT INTO `changdao_logs` VALUES ('1181', '删除页面', '操作成功', '192.168.50.158', '2020-06-09 02:07:49');
INSERT INTO `changdao_logs` VALUES ('1182', '发布页面', '操作成功', '192.168.50.158', '2020-06-09 02:08:01');
INSERT INTO `changdao_logs` VALUES ('1183', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 02:08:20');
INSERT INTO `changdao_logs` VALUES ('1184', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 02:10:00');
INSERT INTO `changdao_logs` VALUES ('1185', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 02:17:31');
INSERT INTO `changdao_logs` VALUES ('1186', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 02:18:49');
INSERT INTO `changdao_logs` VALUES ('1187', '更新页面', '操作成功', '192.168.50.158', '2020-06-09 02:19:00');
INSERT INTO `changdao_logs` VALUES ('1188', '更新页面', '操作成功', '192.168.50.158', '2020-06-09 02:19:05');
INSERT INTO `changdao_logs` VALUES ('1189', '更新页面', '操作成功', '192.168.50.158', '2020-06-09 02:19:10');
INSERT INTO `changdao_logs` VALUES ('1190', '更新页面', '操作成功', '192.168.50.158', '2020-06-09 02:19:25');
INSERT INTO `changdao_logs` VALUES ('1191', '更新页面', '操作成功', '192.168.50.158', '2020-06-09 02:20:01');
INSERT INTO `changdao_logs` VALUES ('1192', '更新页面', '操作成功', '192.168.50.158', '2020-06-09 02:21:00');
INSERT INTO `changdao_logs` VALUES ('1193', '删除页面', '操作成功', '192.168.50.158', '2020-06-09 02:21:11');
INSERT INTO `changdao_logs` VALUES ('1194', '发布页面', '操作成功', '192.168.50.158', '2020-06-09 02:21:32');
INSERT INTO `changdao_logs` VALUES ('1195', '删除页面', '操作成功', '192.168.50.158', '2020-06-09 02:21:39');
INSERT INTO `changdao_logs` VALUES ('1196', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 02:26:13');
INSERT INTO `changdao_logs` VALUES ('1197', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 02:26:57');
INSERT INTO `changdao_logs` VALUES ('1198', '登录后台', '登录成功', '192.168.50.158', '2020-06-09 02:28:53');
INSERT INTO `changdao_logs` VALUES ('1199', '更新页面', '操作成功', '192.168.50.158', '2020-06-09 02:29:37');
INSERT INTO `changdao_logs` VALUES ('1200', '更新页面', '操作成功', '192.168.50.158', '2020-06-09 02:29:42');
INSERT INTO `changdao_logs` VALUES ('1201', '登录后台', '登录成功', '172.17.0.1', '2020-06-09 03:18:07');
INSERT INTO `changdao_logs` VALUES ('1202', '登录后台', '登录成功', '172.17.0.1', '2020-06-09 05:27:49');
INSERT INTO `changdao_logs` VALUES ('1203', '登录后台', '登录成功', '172.17.0.1', '2020-06-09 06:29:47');
INSERT INTO `changdao_logs` VALUES ('1204', '登录后台', '登录失败', '172.17.0.1', '2020-06-09 06:30:38');
INSERT INTO `changdao_logs` VALUES ('1205', '登录后台', '登录成功', '172.17.0.1', '2020-06-09 06:30:45');
INSERT INTO `changdao_logs` VALUES ('1206', '登录后台', '登录成功', '172.17.0.1', '2020-06-09 06:43:32');

-- ----------------------------
-- Table structure for changdao_menu
-- ----------------------------
DROP TABLE IF EXISTS `changdao_menu`;
CREATE TABLE `changdao_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `menu_sort` int(11) DEFAULT NULL COMMENT '排序',
  `menu_target` varchar(255) DEFAULT NULL COMMENT '打开方式',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_menu
-- ----------------------------
INSERT INTO `changdao_menu` VALUES ('34', null, '首页', '1', '_self', '/');
INSERT INTO `changdao_menu` VALUES ('35', null, '归档', '2', '_self', '/archives');
INSERT INTO `changdao_menu` VALUES ('36', null, '友链', '3', '_self', '/links');

-- ----------------------------
-- Table structure for changdao_options
-- ----------------------------
DROP TABLE IF EXISTS `changdao_options`;
CREATE TABLE `changdao_options` (
  `option_name` varchar(255) NOT NULL COMMENT '设置名',
  `option_value` longtext COMMENT '设置内容',
  PRIMARY KEY (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_options
-- ----------------------------
INSERT INTO `changdao_options` VALUES ('attachment_location', 'server');
INSERT INTO `changdao_options` VALUES ('blog_footer', '');
INSERT INTO `changdao_options` VALUES ('blog_logo', '/upload/2020/5/u32020052909483883.png');
INSERT INTO `changdao_options` VALUES ('blog_name', '上海市（复旦大学附属）公共卫生临床中心');
INSERT INTO `changdao_options` VALUES ('blog_start', '2020-05-28');
INSERT INTO `changdao_options` VALUES ('blog_url', 'http://192.168.50.158/');
INSERT INTO `changdao_options` VALUES ('email_username', '28586585@qq.com');
INSERT INTO `changdao_options` VALUES ('ico_logo', '/upload/2020/5/u32020052909483883.png');
INSERT INTO `changdao_options` VALUES ('is_install', 'true');
INSERT INTO `changdao_options` VALUES ('pinghsu_email', '');
INSERT INTO `changdao_options` VALUES ('pinghsu_github', '');
INSERT INTO `changdao_options` VALUES ('pinghsu_qq', '');
INSERT INTO `changdao_options` VALUES ('pinghsu_twitter', '');
INSERT INTO `changdao_options` VALUES ('pinghsu_weibo', '');
INSERT INTO `changdao_options` VALUES ('pinghsu_zhihu', '');

-- ----------------------------
-- Table structure for changdao_tag
-- ----------------------------
DROP TABLE IF EXISTS `changdao_tag`;
CREATE TABLE `changdao_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `tag_url` varchar(255) DEFAULT NULL COMMENT '标签路径',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_tag
-- ----------------------------

-- ----------------------------
-- Table structure for changdao_theme
-- ----------------------------
DROP TABLE IF EXISTS `changdao_theme`;
CREATE TABLE `changdao_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(255) DEFAULT NULL COMMENT '主题名(url)',
  `theme_describe` varchar(255) DEFAULT NULL COMMENT '主题描述',
  `theme_img` varchar(255) DEFAULT NULL COMMENT '主题预览图',
  `theme_status` int(11) DEFAULT '0' COMMENT '0未启用1已启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_theme
-- ----------------------------
INSERT INTO `changdao_theme` VALUES ('27', 'yiyuan', '医院', '/static/img/yiyuan.jpg', '1', '2020-06-01 00:51:57');

-- ----------------------------
-- Table structure for changdao_user
-- ----------------------------
DROP TABLE IF EXISTS `changdao_user`;
CREATE TABLE `changdao_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_enable` varchar(255) DEFAULT '0' COMMENT '是否禁用登录',
  `login_error` int(11) DEFAULT NULL COMMENT '登录失败次数',
  `login_last_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `user_portrait` varchar(255) DEFAULT NULL COMMENT '头像',
  `user_explain` varchar(255) DEFAULT NULL COMMENT '说明',
  `user_display_name` varchar(255) DEFAULT NULL COMMENT '显示名称',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `user_pwd` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changdao_user
-- ----------------------------
INSERT INTO `changdao_user` VALUES ('9', 'false', '0', '2020-06-09 06:43:32', '/upload/2020/5/u32020052909483883.png', '', '上海市公卫中心', '28586585@qq.com', '管理员', 'c33367701511b4f6020ec61ded352059');
INSERT INTO `changdao_user` VALUES ('10', 'false', '0', '2020-05-31 22:56:50', null, null, 'amy', '554517210@qq.com', '554517210', '479bd1a3c3c24ce6a40021cefe9d2a31');
