/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : task

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-08-17 17:09:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ds_article`
-- ----------------------------
DROP TABLE IF EXISTS `ds_article`;
CREATE TABLE `ds_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` varchar(30) DEFAULT NULL COMMENT '文章来源',
  `content` varchar(1000) DEFAULT NULL COMMENT '文章内容',
  `author` varchar(30) DEFAULT NULL,
  `create_tm` datetime DEFAULT NULL,
  `source_type` int(11) DEFAULT NULL COMMENT '来源',
  `href` varchar(100) DEFAULT NULL COMMENT '文章链接',
  `chat_head` varchar(100) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  KEY `WEIBO_ARTICLE_ARTICLE_ID_AND_AUTHOR_INDEX` (`article_id`,`author`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_article
-- ----------------------------
INSERT INTO `ds_article` VALUES ('412', '4006668151253623', '冥# 如果对投资有诚意的热爱，可以结合市场的变化想一想0808当天引用的“万事开头难”这五个字的深意，可以悟三五天、三五月或更久，我相信会有聪明的投资者可以悟出我希望他悟出的深意，万事开头难。佛经上说“净心守志，可会至道”，如果净心守志，还是没有悟到，本人可以视情况决定是否帮助点破“万...', 'HECMCN', '2016-08-09 20:59:00', '1', 'http://weibo.com/2658636730/E2Nt55g7J?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('413', '4006666913215648', '冥# 乔布斯在年轻时去印度了解禅宗，又跟随日本佛教禅师乙川弘文学习冥想几十年，最后得出了三个词“Follow your heart”，他曾经说过“我跟着我的直觉和好奇心走，遇到的很多东西，此后被证明是无价之宝。” “Your mind just slows down, and you see a tremendous expanse in the moment. You see s...', 'HECMCN', '2016-08-09 20:54:00', '1', 'http://weibo.com/2658636730/E2Nr5duxi?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('414', '4006666355875077', '冥# 在过去几十年的人生里，有很多时候就感觉很多事情像是注定发生的，因为在发生之前有很多或明或暗的预兆，然后在发生之后它们更加清晰，比如上学、考大学、中了一次体彩（我至今还记得那七位数）、工作、换喜欢的工作、婚姻等等，总有一种自有安排的感觉。就像今天划破脚，出去前就想先看书冷静一下...', 'HECMCN', '2016-08-09 20:52:00', '1', 'http://weibo.com/2658636730/E2NqboEnj?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('415', '4006655081406416', '忆往昔# 今年一开始，本人给A股定的年度主题是“控制”（REIN），本意是“马缰绳”，2015年市场如脱缰的野马，无数人策马奔腾最后仓皇坠落马下、集体踩踏，根据中国特色政策的“矫枉必过正”，2016年一定是缰绳拉紧、调控过度，而“遛死鱼”行情已经验证这一点。本人多次评论“正确认识宏观市场所处的...', 'HECMCN', '2016-08-09 20:07:00', '1', 'http://weibo.com/2658636730/E2N805TS8?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('416', '4006649423053523', '补评#1.期权方面，承接0805补评“0805可能是相关期权和市场转折性的一天”，今天0809可以确认0805是期权市场转折性的一天，期权市场的转折比本人在七月展望确认A股市场指数的反转晚了一个月多几天，这是正常的延后性确认。今天期权继续显示资金看多后市，而且更重要的是极度（extremely）不愿意做空后...', 'HECMCN', '2016-08-09 19:45:00', '1', 'http://weibo.com/2658636730/E2MYScOmn?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('417', '4006644897331032', '收评#1.承接0808收评“当前市场短期信号已经非常强”，今天0809市场继续强势单边上涨，盘中的冲高回落也有评论“冲高回落很正常”，现在，短期信号继续非常强，更接近收复0727的洗盘阴线，收复之后，这一波洗盘周期将完美完成，希望在0726减仓预警之后有减仓的投资者“减得有意义”并根据0805评论及时...', 'HECMCN', '2016-08-09 19:27:00', '1', 'http://weibo.com/2658636730/E2MRzuL8s?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('418', '4006624189863939', '唉，刚刚在海边把一个脚趾割破了，出血还挺多，算是对这两天有点得意忘形的惩罚性提醒。', 'HECMCN', '2016-08-09 18:05:00', '1', 'http://weibo.com/2658636730/E2MkaFo3N?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('419', '4006569546627280', '盘中# 冲高回落很正常，这个区间值得时间的磨练。', 'HECMCN', '2016-08-09 14:28:00', '1', 'http://weibo.com/2658636730/E2KU2rO3C?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('420', '4006569098417452', '盘中# 自从七月展望的步子迈得太大之后，很多粉丝跑去做长线了，微博人气少了很多，当然，人气少了说明大多数投资者投资顺利了，这也是好事，做这个橱窗也是卖定心丸，不要再像0727当天一大跌又都跑回来。', 'HECMCN', '2016-08-09 14:26:00', '1', 'http://weibo.com/2658636730/E2KTjzjLm?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('421', '4006563788399489', '盘中# 我打算根据六月份发布的星空图，做一个橱窗商品，帮助投资者确认目标股票或持股是否已经属于反转趋势中、是否值得买入或持有，一路到远山。', 'HECMCN', '2016-08-09 14:05:00', '1', 'http://weibo.com/2658636730/E2KKKzf5D?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('422', '4006555667781237', '盘中# 0808收评“当前市场短期信号已经非常强”，还行吧？', 'HECMCN', '2016-08-09 13:32:00', '1', 'http://weibo.com/2658636730/E2KxEwEfP?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('423', '4006276834546223', '补评# 关于期权，承接0805补评“0805认购全线大涨，认沽全线大跌。0805很有可能是相关期权和市场转折性的一天”，今天0808的走势已经说明了一切，这个市场有太多阳谋、阴谋。下面是今天的期权，有人认为上证50至少能涨5%，我的神呐，而认沽继续跌成shit了。 （期权是双向交易。 ）', 'HECMCN', '2016-08-08 19:04:00', '1', 'http://weibo.com/2658636730/E2DhVj4Gb?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('424', '4006270975599295', '下面的嘉凯、廊坊双双涨停。', 'HECMCN', '2016-08-08 18:41:00', '1', 'http://weibo.com/2658636730/E2D8tnuDd?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('425', '4006265913010432', '读书# 《股票大作手操盘术、巴鲁克自传》随便看看。', 'HECMCN', '2016-08-08 18:21:00', '1', 'http://weibo.com/2658636730/E2D0jcD9m?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('426', '4006264449411244', '读书# 这些截图之前发过，因为有些是在护眼模式下，有点暗看不清，只能删了，但是我也改不成白底图片，随便看看。', 'HECMCN', '2016-08-08 18:15:00', '1', 'http://weibo.com/2658636730/E2CXWDuig?from=page_1005052658636730_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.146.0.1200.1200.50/9e7793bajw8f0tbr26jx8j218g0xc13t.jpg');
INSERT INTO `ds_article` VALUES ('427', '4006921592152438', '回复 :这块属于银行的行业机密部分，就不跟大家科普了。我科普的意思是告诉大家银行不是喝稀饭坐那儿收钱的就可以了！下次科普对公业务，我是公私联动的践行者。', '___ER___', '2016-08-10 13:46:00', '1', 'http://weibo.com/1767797335/E2U3R91WK?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('428', '4006920149024830', '回复 :那是她们的基本功，就跟银行的老行员一眼能看穿你的身价一样，也是基本功。 // :那他们好厉害！应该给他们更好的待遇吧', '___ER___', '2016-08-10 13:41:00', '1', 'http://weibo.com/1767797335/E2U1wBRLM?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('429', '4006918614254119', '怎么说呢？券商银行信托三块，我是真真不陌生了，熬吐了，差不多！', '___ER___', '2016-08-10 13:35:00', '1', 'http://weibo.com/1767797335/E2TZ3hQGP?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('430', '4006917640096728', '回复 :半夜还在营业数半夜钱的也有过呀。// :我们以前网点被水淹过，被雷劈过，客户被骗两千块睡在网点两天不走的，在大堂脱裤子从内裤里掏钱的，12年12月31日，我被一个客户指着鼻子骂了一个多小时，就因为他没预约取现，我的库里实在没钱了。。。真是人间百态', '___ER___', '2016-08-10 13:31:00', '1', 'http://weibo.com/1767797335/E2TXu0pa8?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('431', '4006916449099754', '回复 :可怕的多了去了！柜面管理部员工一眼可以看出来你是否被劫持取款，是否被下药后来办业务，是否是银监局巡查，是否是老阿姨被骗来转账，是否是故意犯罪来划款，是否是故意白撞来骗钱，是否是众筹按揭来炒房，是否是传销。柜面管理部主管站在柜台里一方面负责授权，一方面也要盯这种客户。科普给大家，，', '___ER___', '2016-08-10 13:26:00', '1', 'http://weibo.com/1767797335/E2TVyCbge?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('432', '4006914394492167', '我见过老公过来银行张嘴要看老婆名下资产状况的，如果不是我一把按住拒绝透露，一场大闹就会马上发生。咱真不知道客户夫妻间发生了什么，但我请这位男客户过去我房间真的劝了好久。最后我连女客户是否在我行开户这件事都说圆了，虽然明知道自己在扯淡。银行奇怪事儿多的去了！突然大额购买财险的，拿着...', '___ER___', '2016-08-10 13:18:00', '1', 'http://weibo.com/1767797335/E2TSfiQCj?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('433', '4006911261597405', '回复 :对呀，从女行长开始一路骂！一定要站在大堂里高声叫骂，拉都拉不走。// :回复 :正室来骂小三，把整个行的一块骂，你们这群狐狸精。', '___ER___', '2016-08-10 13:05:00', '1', 'http://weibo.com/1767797335/E2TNc6HyB?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('434', '4006910900540159', '银行啥样客户经理没有？我见过二十几领行助位置不穿行服不打卡的，每天来转一圈儿就走，一副穿金戴银相。银行工资奖金一分不少，行长见了还要客客气气的。跟今日不同，很多零售网点二十几的行长也屡见不鲜了，六年前混到主力支行行助的要四十左右了。其中奥妙如何解释？其实不难理解。', '___ER___', '2016-08-10 13:04:00', '1', 'http://weibo.com/1767797335/E2TMC2gwf?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('435', '4006909411608545', '回复 :还真不一定！我见过正室领着律师过来找银行的。家访员工家长，老师家庭，规矩着呢。// :对！这样的傻女人我以前在银行的时候见过不少，而且根据我的观察，都是出身家庭不怎么样的。', '___ER___', '2016-08-10 12:58:00', '1', 'http://weibo.com/1767797335/E2TKd6Ksh?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('436', '4006908971637559', '回复 :这话不辨证了吧？没钱怎么装蛋？没钱跟银行有什么瓜葛？首先就是钱是基础。钱是工具，不同的人运用的方式和达到的目的不同，这才是道理。// :和有钱没钱关系不是很大吧，各自人性，有出手大方的有斤斤计较的', '___ER___', '2016-08-10 12:56:00', '1', 'http://weibo.com/1767797335/E2TJv6S0f?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('437', '4006906840853112', '回复 :银行的人真的练出来了！ // :以前在银行基层干过，确实如此。都不知道怎么形容这种人了，有时候真想甩个锅过去。', '___ER___', '2016-08-10 12:48:00', '1', 'http://weibo.com/1767797335/E2TG43zVS?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('438', '4006905372937695', '回复 :嗯，要自强！ // : 不想承认，不过这种见得还真不少，虽然我才工作三四年 第一次见的时候吓到了，后面就司空见惯，只能说只要自己不这样就好，各有各的活法', '___ER___', '2016-08-10 12:42:00', '1', 'http://weibo.com/1767797335/E2TDHckeb?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('439', '4006904944860323', '我圳有一家金融机构在香港进了一批名牌笔记本，还在香港做了丝印，非常漂亮。我记得一他们领导跟我说有四个款式，给你几十本自己用外加送礼。我吓一跳啊，我说你开门做生意不容易，千万别照顾我，你把最主力的本子给我拿三本就好了我自己用。那领导感动的不得了，说奶奶的，陪分管去客户家里坐坐，人家...', '___ER___', '2016-08-10 12:40:00', '1', 'http://weibo.com/1767797335/E2TD0kooj?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('440', '4006903506134409', '回复 :车行物业中介券商开户银行客户经理这几类高发人群，银行小妹被正室冲上来怒骂厮打的场面谁没见过？不是被辞退就是被二奶，扶正的我还没见过。// :还有更恶心的，存一点钱，就叫嚷着推倒银行MM，蹭个小礼物什么的。太猥琐了。', '___ER___', '2016-08-10 12:35:00', '1', 'http://weibo.com/1767797335/E2TAGpJQ5?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');
INSERT INTO `ds_article` VALUES ('441', '4006902495456034', '回复 :每年五月份了台历挂历的还有人要，这是个奇异景观。还得客户经理吭哧吭哧给他搬车上去！我没少见这类货。 // :哥说的对，直正有钱的大佬，都很安静，很文明。一般吆五喝六的，都不是啥好饼。', '___ER___', '2016-08-10 12:31:00', '1', 'http://weibo.com/1767797335/E2Tz3mTmy?from=page_1005051767797335_profile&wvr=6&mod=weibotime', 'http://tva2.sinaimg.cn/crop.0.0.640.640.50/695e7257jw8et17sd8i82j20hs0hs750.jpg');

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('scheduler', 'hecmcn,kylinclub', 'weibo', '56 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
INSERT INTO `qrtz_fired_triggers` VALUES ('scheduler', 'zhoufeng-PC14714244784821471424478465', 'hecmcn,kylinclub', 'weibo', 'zhoufeng-PC1471424478482', '1471424478802', '1471424456000', '5', 'ACQUIRED', null, null, '0', '0');

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('scheduler', 'hecmcn,kylinclub', 'weibo', null, 'com.xiaomaoguai.gecco.task.TaskWeibo', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000B7363686564756C654A6F6273720028636F6D2E7869616F6D616F677561692E676563636F2E656E746974792E5363686564756C654A6F6200000000000000010200064C0009636C6173734E616D657400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000B6465736372697074696F6E71007E00094C000567726F757071007E00094C00046E616D6571007E00094C000673746174757371007E0009787074002C636F6D2E7869616F6D616F677561692E676563636F2E736572766963652E696D706C2E5461736B576569626F74000C3536202A202A202A202A203F70740005776569626F7400106865636D636E2C6B796C696E636C7562740001317800);

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('scheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('scheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for `qrtz_log`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_log`;
CREATE TABLE `qrtz_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exeDate` datetime DEFAULT NULL COMMENT '执行时间',
  `exejobName` varchar(300) DEFAULT NULL,
  `jobtype` varchar(255) DEFAULT NULL,
  `msg` varchar(2000) DEFAULT NULL,
  `exejg` int(255) DEFAULT NULL COMMENT '执行结果 1 成功  0 失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_log
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('scheduler', 'zhoufeng-PC1471424478482', '1471424478760', '15000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('scheduler', 'hecmcn,kylinclub', 'weibo', 'hecmcn,kylinclub', 'weibo', null, '1471424456000', '1471424409382', '5', 'ACQUIRED', 'CRON', '1468311695000', '0', null, '0', '');

-- ----------------------------
-- Table structure for `t_mz_pic`
-- ----------------------------
DROP TABLE IF EXISTS `t_mz_pic`;
CREATE TABLE `t_mz_pic` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `PicInfoId` int(11) DEFAULT NULL COMMENT '图片信息',
  `URL` varchar(100) NOT NULL DEFAULT '0' COMMENT '图片地址',
  `Path` varchar(100) NOT NULL DEFAULT '0' COMMENT '下载下来后的本地地址(保存相对路径)',
  `CreateDate` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `UpdateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片地址(原始地址，以及本地地址)';

-- ----------------------------
-- Records of t_mz_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `t_mz_picinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_mz_picinfo`;
CREATE TABLE `t_mz_picinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tag` int(11) NOT NULL DEFAULT '0' COMMENT '所属标签',
  `Alt` varchar(255) NOT NULL DEFAULT '0' COMMENT '图片描述',
  `Thumbnail` varchar(255) NOT NULL DEFAULT '0' COMMENT '缩略图',
  `Href` varchar(255) NOT NULL DEFAULT '0' COMMENT '超链接',
  `CreateDate` datetime DEFAULT '0000-00-00 00:00:00',
  `UpdateDate` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片信息';

-- ----------------------------
-- Records of t_mz_picinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `t_mz_tag`
-- ----------------------------
DROP TABLE IF EXISTS `t_mz_tag`;
CREATE TABLE `t_mz_tag` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tag` varchar(50) NOT NULL DEFAULT '0' COMMENT '分类',
  `url` varchar(100) DEFAULT NULL COMMENT '链接',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='妹子图-分类';

-- ----------------------------
-- Records of t_mz_tag
-- ----------------------------
