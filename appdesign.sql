/*
 Navicat Premium Data Transfer

 Source Server         : Mysql_YE_Lenovo
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : appdesign

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 17/06/2022 10:40:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `bname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `wname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bid` int NULL DEFAULT NULL,
  `idp` int NULL DEFAULT NULL,
  `idd` int NULL DEFAULT NULL,
  `idt` int NULL DEFAULT NULL,
  `ide` int NULL DEFAULT NULL,
  `info_record` int NULL DEFAULT NULL,
  `clike` int NULL DEFAULT NULL,
  `cunlike` int NULL DEFAULT NULL,
  `dltimes` int NULL DEFAULT NULL,
  PRIMARY KEY (`bname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('Natrual', '期刊', 34, 34, 34, 34, -1, 34, 84, 79, 58);
INSERT INTO `books` VALUES ('三体', '刘慈欣', 44, 44, 44, 44, -1, 44, 72, 61, 5);
INSERT INTO `books` VALUES ('三国演义', '罗贯中', 45, 45, 45, 45, -1, 45, 16, 4, 70);
INSERT INTO `books` VALUES ('中国哲学简史', '冯友兰', 74, 74, 74, 74, -1, 74, 62, 43, 1);
INSERT INTO `books` VALUES ('丰乳肥臀', '莫言', 86, 86, 86, 86, -1, 86, 26, 43, 12);
INSERT INTO `books` VALUES ('为美好的世界献上祝福', '晓枣', 48, 48, 48, 48, -1, 48, 80, 100, 27);
INSERT INTO `books` VALUES ('书剑恩仇录', '金庸', 38, 38, 38, 38, -1, 38, 68, 60, 29);
INSERT INTO `books` VALUES ('互助论', '克鲁泡特金', 79, 79, 79, 79, -1, 79, 31, 65, 58);
INSERT INTO `books` VALUES ('人类群星闪耀时', '茨威格', 26, 26, 26, 26, -1, 26, 30, 24, 64);
INSERT INTO `books` VALUES ('人间失格', '太宰治', 5, 5, 5, 5, -1, 5, 79, 55, 86);
INSERT INTO `books` VALUES ('从你的全世界路过', '张嘉佳', 4, 4, 4, 4, -1, 4, 13, 55, 72);
INSERT INTO `books` VALUES ('伯里曼人体结构绘画教学', '乔治·伯里曼', 85, 85, 85, 85, -1, 85, 88, 79, 49);
INSERT INTO `books` VALUES ('作为意志表象存在的世界', '叔本华', 57, 57, 57, 57, -1, 57, 85, 54, 44);
INSERT INTO `books` VALUES ('侠客行', '金庸', 39, 39, 39, 39, -1, 39, 73, 92, 65);
INSERT INTO `books` VALUES ('倚天屠龙记', '金庸', 42, 42, 42, 42, -1, 42, 66, 57, 11);
INSERT INTO `books` VALUES ('假如给我三天光明', '海伦·凯勒', 51, 51, 51, 51, -1, 51, 82, 50, 74);
INSERT INTO `books` VALUES ('刀剑神域', '川原砾', 88, 88, 88, 88, -1, 88, 65, 36, 27);
INSERT INTO `books` VALUES ('化物语', '西尾维新', 63, 63, 63, 63, -1, 63, 10, 61, 6);
INSERT INTO `books` VALUES ('双城记', '查尔斯·狄更斯', 12, 12, 12, 12, -1, 12, 50, 5, 82);
INSERT INTO `books` VALUES ('古拉格群岛', '亚历山大·伊萨耶维奇·索尔仁尼琴', 89, 89, 89, 89, -1, 89, 51, 34, 44);
INSERT INTO `books` VALUES ('史记', '司马迁', 69, 69, 69, 69, -1, 69, 41, 14, 10);
INSERT INTO `books` VALUES ('名人传', '罗曼·罗兰', 72, 72, 72, 72, -1, 72, 73, 14, 31);
INSERT INTO `books` VALUES ('围城', '钱钟书', 36, 36, 36, 36, -1, 36, 71, 17, 70);
INSERT INTO `books` VALUES ('在人间', '高尔基', 60, 60, 60, 60, -1, 60, 85, 69, 12);
INSERT INTO `books` VALUES ('基督山伯爵', '大仲马', 80, 80, 80, 80, -1, 80, 80, 31, 2);
INSERT INTO `books` VALUES ('天龙八部', '金庸', 31, 31, 31, 31, -1, 31, 3, 55, 21);
INSERT INTO `books` VALUES ('存在与时间', '海德格尔', 78, 78, 78, 78, -1, 78, 79, 47, 14);
INSERT INTO `books` VALUES ('存在与虚无', '让-保罗·萨特', 83, 83, 83, 83, -1, 83, 62, 32, 68);
INSERT INTO `books` VALUES ('射雕英雄传', '金庸', 13, 13, 13, 13, -1, 13, 43, 41, 61);
INSERT INTO `books` VALUES ('小说绘', '期刊', 30, 30, 30, 30, -1, 30, 86, 21, 30);
INSERT INTO `books` VALUES ('局外人', '阿尔贝·加缪', 50, 50, 50, 50, -1, 50, 47, 54, 32);
INSERT INTO `books` VALUES ('巴陀督探长', '阿加莎·克里斯蒂', 17, 17, 17, 17, -1, 17, 39, 61, 72);
INSERT INTO `books` VALUES ('形式语言与自动机理论', '蒋宗礼', 8, 8, 8, 8, -1, 8, 16, 59, 39);
INSERT INTO `books` VALUES ('悲剧的诞生', '尼采', 52, 52, 52, 52, -1, 52, 50, 22, 71);
INSERT INTO `books` VALUES ('意林', '期刊', 27, 27, 27, 27, -1, 27, 91, 18, 23);
INSERT INTO `books` VALUES ('我的大学', '高尔基', 61, 61, 61, 61, -1, 61, 24, 36, 18);
INSERT INTO `books` VALUES ('我的奋斗', '希特勒', 73, 73, 73, 73, -1, 73, 89, 73, 95);
INSERT INTO `books` VALUES ('我的青春恋爱物语果然有问题', '渡航', 87, 87, 87, 87, -1, 87, 47, 5, 25);
INSERT INTO `books` VALUES ('挪威的森林', '村上春树', 75, 75, 75, 75, -1, 75, 42, 73, 17);
INSERT INTO `books` VALUES ('故事会', '期刊', 29, 29, 29, 29, -1, 29, 6, 62, 37);
INSERT INTO `books` VALUES ('数据结构', '严蔚敏', 23, 23, 23, 23, -1, 23, 98, 19, 35);
INSERT INTO `books` VALUES ('文化苦旅', '余秋雨', 11, 11, 11, 11, -1, 11, 84, 4, 17);
INSERT INTO `books` VALUES ('斗破苍穹', '天蚕土豆', 1, 1, 1, 1, -1, 1, 15, 26, 89);
INSERT INTO `books` VALUES ('无人生还', '阿加莎·克里斯蒂', 20, 20, 20, 20, -1, 20, 34, 63, 95);
INSERT INTO `books` VALUES ('明朝那些事', '当年明月', 68, 68, 68, 68, -1, 68, 79, 45, 17);
INSERT INTO `books` VALUES ('查拉图斯特拉如是说', '尼采', 53, 53, 53, 53, -1, 53, 34, 78, 29);
INSERT INTO `books` VALUES ('水浒传', '施耐庵', 76, 76, 76, 76, -1, 76, 25, 19, 8);
INSERT INTO `books` VALUES ('永乐大典', '朱棣', 71, 71, 71, 71, -1, 71, 93, 72, 78);
INSERT INTO `books` VALUES ('汤美杜本丝夫妇', '阿加莎·克里斯蒂', 21, 21, 21, 21, -1, 21, 70, 78, 94);
INSERT INTO `books` VALUES ('沉默的大多数', '王小波', 14, 14, 14, 14, -1, 14, 14, 26, 72);
INSERT INTO `books` VALUES ('波洛', '阿加莎·克里斯蒂', 18, 18, 18, 18, -1, 18, 22, 43, 74);
INSERT INTO `books` VALUES ('活着', '余华', 15, 15, 15, 15, -1, 15, 37, 45, 50);
INSERT INTO `books` VALUES ('海底两万里', '儒勒·凡尔纳', 46, 46, 46, 46, -1, 46, 51, 71, 42);
INSERT INTO `books` VALUES ('深入理解计算机系统', 'Bryant,R.E.', 28, 28, 28, 28, -1, 28, 26, 27, 46);
INSERT INTO `books` VALUES ('狂人日记', '鲁迅', 54, 54, 54, 54, -1, 54, 15, 42, 7);
INSERT INTO `books` VALUES ('玛普尔小姐', '阿加莎·克里斯蒂', 19, 19, 19, 19, -1, 19, 81, 2, 100);
INSERT INTO `books` VALUES ('理想国', '柏拉图', 56, 56, 56, 56, -1, 56, 91, 51, 86);
INSERT INTO `books` VALUES ('白夜行', '东野圭吾', 43, 43, 43, 43, -1, 43, 26, 13, 33);
INSERT INTO `books` VALUES ('白银时代', '王小波', 65, 65, 65, 65, -1, 65, 4, 5, 80);
INSERT INTO `books` VALUES ('白马啸西风', '金庸', 32, 32, 32, 32, -1, 32, 37, 53, 72);
INSERT INTO `books` VALUES ('白鹿原', '陈忠实', 64, 64, 64, 64, -1, 64, 87, 15, 88);
INSERT INTO `books` VALUES ('百年孤独', '加西亚·马尔克斯', 33, 33, 33, 33, -1, 33, 80, 9, 60);
INSERT INTO `books` VALUES ('碧血剑', '金庸', 40, 40, 40, 40, -1, 40, 83, 49, 55);
INSERT INTO `books` VALUES ('神曲', '但丁', 55, 55, 55, 55, -1, 55, 3, 90, 72);
INSERT INTO `books` VALUES ('神雕侠侣', '金庸', 16, 16, 16, 16, -1, 16, 63, 98, 62);
INSERT INTO `books` VALUES ('福尔摩斯探案集', '柯南·道尔', 10, 10, 10, 10, -1, 10, 59, 24, 93);
INSERT INTO `books` VALUES ('离散数学', '屈婉玲', 7, 7, 7, 7, -1, 7, 29, 47, 60);
INSERT INTO `books` VALUES ('童年', '高尔基', 59, 59, 59, 59, -1, 59, 59, 58, 56);
INSERT INTO `books` VALUES ('笑傲江湖', '金庸', 37, 37, 37, 37, -1, 37, 27, 7, 5);
INSERT INTO `books` VALUES ('红楼梦', '曹雪芹', 81, 81, 81, 81, -1, 81, 82, 58, 99);
INSERT INTO `books` VALUES ('纯粹理性批判', '康德', 58, 58, 58, 58, -1, 58, 95, 10, 55);
INSERT INTO `books` VALUES ('线性代数', '郑宝东', 2, 2, 2, 2, -1, 2, 36, 21, 83);
INSERT INTO `books` VALUES ('西游记', '吴承恩', 77, 77, 77, 77, -1, 77, 10, 100, 5);
INSERT INTO `books` VALUES ('计算技术与程序设计', '孙振绮', 9, 9, 9, 9, -1, 9, 56, 21, 25);
INSERT INTO `books` VALUES ('计算机组成原理', '唐朔飞', 6, 6, 6, 6, -1, 6, 5, 32, 34);
INSERT INTO `books` VALUES ('资治通鉴', '司马光', 70, 70, 70, 70, -1, 70, 0, 97, 24);
INSERT INTO `books` VALUES ('越女剑', '金庸', 49, 49, 49, 49, -1, 49, 86, 10, 33);
INSERT INTO `books` VALUES ('边城', '沈从文', 47, 47, 47, 47, -1, 47, 22, 39, 59);
INSERT INTO `books` VALUES ('连城诀', '金庸', 25, 25, 25, 25, -1, 25, 46, 67, 40);
INSERT INTO `books` VALUES ('钢铁是怎样炼成的', '奥斯特洛夫斯基', 62, 62, 62, 62, -1, 62, 97, 64, 9);
INSERT INTO `books` VALUES ('雪山飞狐', '金庸', 24, 24, 24, 24, -1, 24, 46, 2, 67);
INSERT INTO `books` VALUES ('青铜时代', '王小波', 67, 67, 67, 67, -1, 67, 87, 50, 53);
INSERT INTO `books` VALUES ('飞狐外传', '金庸', 22, 22, 22, 22, -1, 22, 7, 92, 90);
INSERT INTO `books` VALUES ('魔女之旅', '白石定规', 82, 82, 82, 82, -1, 82, 48, 14, 98);
INSERT INTO `books` VALUES ('鸳鸯刀', '金庸', 41, 41, 41, 41, -1, 41, 20, 86, 75);
INSERT INTO `books` VALUES ('鹿鼎记', '金庸', 35, 35, 35, 35, -1, 35, 90, 26, 87);
INSERT INTO `books` VALUES ('黄金时代', '王小波', 66, 66, 66, 66, -1, 66, 34, 59, 28);
INSERT INTO `books` VALUES ('龙族', '江南', 3, 3, 3, 3, -1, 3, 100, 29, 76);

-- ----------------------------
-- Table structure for doc_list
-- ----------------------------
DROP TABLE IF EXISTS `doc_list`;
CREATE TABLE `doc_list`  (
  `bid` int NULL DEFAULT NULL,
  `idd` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doc_list
-- ----------------------------
INSERT INTO `doc_list` VALUES (1, 1, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (2, 2, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (3, 3, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (4, 4, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (5, 5, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (6, 6, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (7, 7, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (8, 8, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (9, 9, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (10, 10, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (11, 11, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (12, 12, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (13, 13, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (14, 14, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (15, 15, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (16, 16, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (17, 17, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (18, 18, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (19, 19, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (20, 20, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (21, 21, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (22, 22, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (23, 23, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (24, 24, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (25, 25, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (26, 26, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (27, 27, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (28, 28, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (29, 29, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (30, 30, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (31, 31, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (32, 32, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (33, 33, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (34, 34, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (35, 35, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (36, 36, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (37, 37, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (38, 38, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (39, 39, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (40, 40, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (41, 41, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (42, 42, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (43, 43, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (44, 44, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (45, 45, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (46, 46, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (47, 47, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (48, 48, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (49, 49, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (50, 50, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (51, 51, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (52, 52, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (53, 53, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (54, 54, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (55, 55, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (56, 56, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (57, 57, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (58, 58, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (59, 59, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (60, 60, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (61, 61, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (62, 62, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (63, 63, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (64, 64, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (65, 65, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (66, 66, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (67, 67, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (68, 68, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (69, 69, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (70, 70, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (71, 71, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (72, 72, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (73, 73, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (74, 74, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (75, 75, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (76, 76, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (77, 77, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (78, 78, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (79, 79, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (80, 80, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (81, 81, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (82, 82, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (83, 83, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (84, 84, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (85, 85, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (86, 86, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (87, 87, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (88, 88, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `doc_list` VALUES (89, 89, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');

-- ----------------------------
-- Table structure for el_list
-- ----------------------------
DROP TABLE IF EXISTS `el_list`;
CREATE TABLE `el_list`  (
  `bid` int NULL DEFAULT NULL,
  `idp` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_list
-- ----------------------------

-- ----------------------------
-- Table structure for infos
-- ----------------------------
DROP TABLE IF EXISTS `infos`;
CREATE TABLE `infos`  (
  `info_record` int NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attr_edu` int NULL DEFAULT NULL,
  `attr_amu` int NULL DEFAULT NULL,
  `attr_lit` int NULL DEFAULT NULL,
  `attr_sci` int NULL DEFAULT NULL,
  `attr_day` int NULL DEFAULT NULL,
  `attr_oth` int NULL DEFAULT NULL,
  PRIMARY KEY (`info_record`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of infos
-- ----------------------------
INSERT INTO `infos` VALUES (1, '2022-06-09', '天蚕土豆', 0, 1, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (2, '2022-06-09', '郑宝东', 1, 0, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (3, '2022-06-09', '江南', 0, 1, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (4, '2022-06-09', '张嘉佳', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (5, '2022-06-09', '太宰治', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (6, '2022-06-09', '唐朔飞', 1, 0, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (7, '2022-06-09', '屈婉玲', 1, 0, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (8, '2022-06-09', '蒋宗礼', 1, 0, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (9, '2022-06-09', '孙振绮', 1, 0, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (10, '2022-06-09', '柯南·道尔', 0, 0, 0, 0, 0, 1);
INSERT INTO `infos` VALUES (11, '2022-06-09', '余秋雨', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (12, '2022-06-09', '查尔斯·狄更斯', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (13, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (14, '2022-06-09', '王小波', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (15, '2022-06-09', '余华', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (16, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (17, '2022-06-09', '阿加莎·克里斯蒂', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (18, '2022-06-09', '阿加莎·克里斯蒂', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (19, '2022-06-09', '阿加莎·克里斯蒂', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (20, '2022-06-09', '阿加莎·克里斯蒂', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (21, '2022-06-09', '阿加莎·克里斯蒂', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (22, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (23, '2022-06-09', '严蔚敏', 1, 0, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (24, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (25, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (26, '2022-06-09', '茨威格', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (27, '2022-06-09', '期刊', 0, 0, 0, 0, 1, 0);
INSERT INTO `infos` VALUES (28, '2022-06-09', 'Bryant,R.E.', 1, 0, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (29, '2022-06-09', '期刊', 0, 0, 0, 0, 1, 0);
INSERT INTO `infos` VALUES (30, '2022-06-09', '期刊', 0, 0, 0, 0, 1, 0);
INSERT INTO `infos` VALUES (31, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (32, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (33, '2022-06-09', '加西亚·马尔克斯', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (34, '2022-06-09', '期刊', 0, 0, 0, 1, 0, 0);
INSERT INTO `infos` VALUES (35, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (36, '2022-06-09', '钱钟书', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (37, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (38, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (39, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (40, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (41, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (42, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (43, '2022-06-09', '东野圭吾', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (44, '2022-06-09', '刘慈欣', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (45, '2022-06-09', '罗贯中', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (46, '2022-06-09', '儒勒·凡尔纳', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (47, '2022-06-09', '沈从文', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (48, '2022-06-09', '晓枣', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (49, '2022-06-09', '金庸', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (50, '2022-06-09', '阿尔贝·加缪', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (51, '2022-06-09', '海伦·凯勒', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (52, '2022-06-09', '尼采', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (53, '2022-06-09', '尼采', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (54, '2022-06-09', '鲁迅', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (55, '2022-06-09', '但丁', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (56, '2022-06-09', '柏拉图', 0, 0, 0, 1, 0, 0);
INSERT INTO `infos` VALUES (57, '2022-06-09', '叔本华', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (58, '2022-06-09', '康德', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (59, '2022-06-09', '高尔基', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (60, '2022-06-09', '高尔基', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (61, '2022-06-09', '高尔基', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (62, '2022-06-09', '奥斯特洛夫斯基', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (63, '2022-06-09', '西尾维新', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (64, '2022-06-09', '陈忠实', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (65, '2022-06-09', '王小波', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (66, '2022-06-09', '王小波', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (67, '2022-06-09', '王小波', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (68, '2022-06-09', '当年明月', 0, 0, 0, 0, 0, 1);
INSERT INTO `infos` VALUES (69, '2022-06-09', '司马迁', 0, 0, 0, 1, 0, 0);
INSERT INTO `infos` VALUES (70, '2022-06-09', '司马光', 0, 0, 0, 1, 0, 0);
INSERT INTO `infos` VALUES (71, '2022-06-09', '朱棣', 0, 0, 1, 1, 0, 0);
INSERT INTO `infos` VALUES (72, '2022-06-09', '罗曼·罗兰', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (73, '2022-06-09', '希特勒', 0, 0, 0, 1, 0, 0);
INSERT INTO `infos` VALUES (74, '2022-06-09', '冯友兰', 0, 0, 0, 1, 0, 0);
INSERT INTO `infos` VALUES (75, '2022-06-09', '村上春树', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (76, '2022-06-09', '施耐庵', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (77, '2022-06-09', '吴承恩', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (78, '2022-06-09', '海德格尔', 0, 0, 0, 0, 0, 1);
INSERT INTO `infos` VALUES (79, '2022-06-09', '克鲁泡特金', 0, 0, 0, 0, 0, 1);
INSERT INTO `infos` VALUES (80, '2022-06-09', '大仲马', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (81, '2022-06-09', '曹雪芹', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (82, '2022-06-09', '白石定规', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (83, '2022-06-09', '让-保罗·萨特', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (84, '2022-06-09', '阿尔贝·加缪', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (85, '2022-06-09', '乔治·伯里曼', 1, 0, 0, 0, 0, 0);
INSERT INTO `infos` VALUES (86, '2022-06-09', '莫言', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (87, '2022-06-09', '渡航', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (88, '2022-06-09', '川原砾', 0, 0, 1, 0, 0, 0);
INSERT INTO `infos` VALUES (89, '2022-06-09', '亚历山大·伊萨耶维奇·索尔仁尼琴', 0, 0, 0, 0, 0, 1);

-- ----------------------------
-- Table structure for pdf_list
-- ----------------------------
DROP TABLE IF EXISTS `pdf_list`;
CREATE TABLE `pdf_list`  (
  `bid` int NULL DEFAULT NULL,
  `idp` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdf_list
-- ----------------------------
INSERT INTO `pdf_list` VALUES (1, 1, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (2, 2, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (3, 3, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (4, 4, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (5, 5, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (6, 6, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (7, 7, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (8, 8, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (9, 9, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (10, 10, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (11, 11, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (12, 12, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (13, 13, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (14, 14, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (15, 15, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (16, 16, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (17, 17, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (18, 18, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (19, 19, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (20, 20, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (21, 21, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (22, 22, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (23, 23, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (24, 24, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (25, 25, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (26, 26, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (27, 27, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (28, 28, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (29, 29, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (30, 30, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (31, 31, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (32, 32, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (33, 33, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (34, 34, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (35, 35, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (36, 36, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (37, 37, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (38, 38, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (39, 39, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (40, 40, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (41, 41, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (42, 42, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (43, 43, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (44, 44, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (45, 45, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (46, 46, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (47, 47, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (48, 48, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (49, 49, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (50, 50, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (51, 51, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (52, 52, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (53, 53, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (54, 54, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (55, 55, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (56, 56, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (57, 57, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (58, 58, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (59, 59, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (60, 60, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (61, 61, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (62, 62, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (63, 63, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (64, 64, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (65, 65, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (66, 66, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (67, 67, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (68, 68, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (69, 69, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (70, 70, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (71, 71, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (72, 72, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (73, 73, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (74, 74, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (75, 75, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (76, 76, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (77, 77, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (78, 78, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (79, 79, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (80, 80, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (81, 81, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (82, 82, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (83, 83, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (84, 84, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (85, 85, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (86, 86, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (87, 87, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (88, 88, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `pdf_list` VALUES (89, 89, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');

-- ----------------------------
-- Table structure for txt_list
-- ----------------------------
DROP TABLE IF EXISTS `txt_list`;
CREATE TABLE `txt_list`  (
  `bid` int NULL DEFAULT NULL,
  `idt` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idt`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of txt_list
-- ----------------------------
INSERT INTO `txt_list` VALUES (1, 1, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (2, 2, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (3, 3, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (4, 4, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (5, 5, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (6, 6, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (7, 7, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (8, 8, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (9, 9, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (10, 10, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (11, 11, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (12, 12, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (13, 13, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (14, 14, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (15, 15, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (16, 16, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (17, 17, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (18, 18, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (19, 19, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (20, 20, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (21, 21, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (22, 22, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (23, 23, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (24, 24, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (25, 25, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (26, 26, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (27, 27, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (28, 28, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (29, 29, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (30, 30, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (31, 31, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (32, 32, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (33, 33, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (34, 34, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (35, 35, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (36, 36, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (37, 37, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (38, 38, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (39, 39, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (40, 40, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (41, 41, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (42, 42, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (43, 43, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (44, 44, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (45, 45, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (46, 46, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (47, 47, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (48, 48, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (49, 49, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (50, 50, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (51, 51, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (52, 52, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (53, 53, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (54, 54, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (55, 55, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (56, 56, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (57, 57, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (58, 58, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (59, 59, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (60, 60, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (61, 61, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (62, 62, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (63, 63, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (64, 64, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (65, 65, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (66, 66, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (67, 67, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (68, 68, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (69, 69, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (70, 70, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (71, 71, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (72, 72, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (73, 73, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (74, 74, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (75, 75, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (76, 76, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (77, 77, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (78, 78, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (79, 79, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (80, 80, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (81, 81, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (82, 82, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (83, 83, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (84, 84, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (85, 85, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (86, 86, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (87, 87, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (88, 88, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');
INSERT INTO `txt_list` VALUES (89, 89, 'C:/Users/Administrator/Desktop/APPDesign3/disk/PublishedFiles');

-- ----------------------------
-- Table structure for writers
-- ----------------------------
DROP TABLE IF EXISTS `writers`;
CREATE TABLE `writers`  (
  `wname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bid` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of writers
-- ----------------------------
INSERT INTO `writers` VALUES ('天蚕土豆', '斗破苍穹', 1);
INSERT INTO `writers` VALUES ('郑宝东', '线性代数', 2);
INSERT INTO `writers` VALUES ('江南', '龙族', 3);
INSERT INTO `writers` VALUES ('张嘉佳', '从你的全世界路过', 4);
INSERT INTO `writers` VALUES ('太宰治', '人间失格', 5);
INSERT INTO `writers` VALUES ('唐朔飞', '计算机组成原理', 6);
INSERT INTO `writers` VALUES ('屈婉玲', '离散数学', 7);
INSERT INTO `writers` VALUES ('蒋宗礼', '形式语言与自动机理论', 8);
INSERT INTO `writers` VALUES ('孙振绮', '计算技术与程序设计', 9);
INSERT INTO `writers` VALUES ('柯南·道尔', '福尔摩斯探案集', 10);
INSERT INTO `writers` VALUES ('余秋雨', '文化苦旅', 11);
INSERT INTO `writers` VALUES ('查尔斯·狄更斯', '双城记', 12);
INSERT INTO `writers` VALUES ('金庸', '射雕英雄传', 13);
INSERT INTO `writers` VALUES ('王小波', '沉默的大多数', 14);
INSERT INTO `writers` VALUES ('余华', '活着', 15);
INSERT INTO `writers` VALUES ('金庸', '神雕侠侣', 16);
INSERT INTO `writers` VALUES ('阿加莎·克里斯蒂', '巴陀督探长', 17);
INSERT INTO `writers` VALUES ('阿加莎·克里斯蒂', '波洛', 18);
INSERT INTO `writers` VALUES ('阿加莎·克里斯蒂', '玛普尔小姐', 19);
INSERT INTO `writers` VALUES ('阿加莎·克里斯蒂', '无人生还', 20);
INSERT INTO `writers` VALUES ('阿加莎·克里斯蒂', '汤美杜本丝夫妇', 21);
INSERT INTO `writers` VALUES ('金庸', '飞狐外传', 22);
INSERT INTO `writers` VALUES ('严蔚敏', '数据结构', 23);
INSERT INTO `writers` VALUES ('金庸', '雪山飞狐', 24);
INSERT INTO `writers` VALUES ('金庸', '连城诀', 25);
INSERT INTO `writers` VALUES ('茨威格', '人类群星闪耀时', 26);
INSERT INTO `writers` VALUES ('期刊', '意林', 27);
INSERT INTO `writers` VALUES ('Bryant,R.E.', '深入理解计算机系统', 28);
INSERT INTO `writers` VALUES ('期刊', '故事会', 29);
INSERT INTO `writers` VALUES ('期刊', '小说绘', 30);
INSERT INTO `writers` VALUES ('金庸', '天龙八部', 31);
INSERT INTO `writers` VALUES ('金庸', '白马啸西风', 32);
INSERT INTO `writers` VALUES ('加西亚·马尔克斯', '百年孤独', 33);
INSERT INTO `writers` VALUES ('期刊', 'Natrual', 34);
INSERT INTO `writers` VALUES ('金庸', '鹿鼎记', 35);
INSERT INTO `writers` VALUES ('钱钟书', '围城', 36);
INSERT INTO `writers` VALUES ('金庸', '笑傲江湖', 37);
INSERT INTO `writers` VALUES ('金庸', '书剑恩仇录', 38);
INSERT INTO `writers` VALUES ('金庸', '侠客行', 39);
INSERT INTO `writers` VALUES ('金庸', '碧血剑', 40);
INSERT INTO `writers` VALUES ('金庸', '鸳鸯刀', 41);
INSERT INTO `writers` VALUES ('金庸', '倚天屠龙记', 42);
INSERT INTO `writers` VALUES ('东野圭吾', '白夜行', 43);
INSERT INTO `writers` VALUES ('刘慈欣', '三体', 44);
INSERT INTO `writers` VALUES ('罗贯中', '三国演义', 45);
INSERT INTO `writers` VALUES ('儒勒·凡尔纳', '海底两万里', 46);
INSERT INTO `writers` VALUES ('沈从文', '边城', 47);
INSERT INTO `writers` VALUES ('晓枣', '为美好的世界献上祝福', 48);
INSERT INTO `writers` VALUES ('金庸', '越女剑', 49);
INSERT INTO `writers` VALUES ('阿尔贝·加缪', '局外人', 50);
INSERT INTO `writers` VALUES ('海伦·凯勒', '假如给我三天光明', 51);
INSERT INTO `writers` VALUES ('尼采', '悲剧的诞生', 52);
INSERT INTO `writers` VALUES ('尼采', '查拉图斯特拉如是说', 53);
INSERT INTO `writers` VALUES ('鲁迅', '狂人日记', 54);
INSERT INTO `writers` VALUES ('但丁', '神曲', 55);
INSERT INTO `writers` VALUES ('柏拉图', '理想国', 56);
INSERT INTO `writers` VALUES ('叔本华', '作为意志表象存在的世界', 57);
INSERT INTO `writers` VALUES ('康德', '纯粹理性批判', 58);
INSERT INTO `writers` VALUES ('高尔基', '童年', 59);
INSERT INTO `writers` VALUES ('高尔基', '在人间', 60);
INSERT INTO `writers` VALUES ('高尔基', '我的大学', 61);
INSERT INTO `writers` VALUES ('奥斯特洛夫斯基', '钢铁是怎样炼成的', 62);
INSERT INTO `writers` VALUES ('西尾维新', '化物语', 63);
INSERT INTO `writers` VALUES ('陈忠实', '白鹿原', 64);
INSERT INTO `writers` VALUES ('王小波', '白银时代', 65);
INSERT INTO `writers` VALUES ('王小波', '黄金时代', 66);
INSERT INTO `writers` VALUES ('王小波', '青铜时代', 67);
INSERT INTO `writers` VALUES ('当年明月', '明朝那些事', 68);
INSERT INTO `writers` VALUES ('司马迁', '史记', 69);
INSERT INTO `writers` VALUES ('司马光', '资治通鉴', 70);
INSERT INTO `writers` VALUES ('朱棣', '永乐大典', 71);
INSERT INTO `writers` VALUES ('罗曼·罗兰', '名人传', 72);
INSERT INTO `writers` VALUES ('希特勒', '我的奋斗', 73);
INSERT INTO `writers` VALUES ('冯友兰', '中国哲学简史', 74);
INSERT INTO `writers` VALUES ('村上春树', '挪威的森林', 75);
INSERT INTO `writers` VALUES ('施耐庵', '水浒传', 76);
INSERT INTO `writers` VALUES ('吴承恩', '西游记', 77);
INSERT INTO `writers` VALUES ('海德格尔', '存在与时间', 78);
INSERT INTO `writers` VALUES ('克鲁泡特金', '互助论', 79);
INSERT INTO `writers` VALUES ('大仲马', '基督山伯爵', 80);
INSERT INTO `writers` VALUES ('曹雪芹', '红楼梦', 81);
INSERT INTO `writers` VALUES ('白石定规', '魔女之旅', 82);
INSERT INTO `writers` VALUES ('让-保罗·萨特', '存在与虚无', 83);
INSERT INTO `writers` VALUES ('阿尔贝·加缪', '局外人', 84);
INSERT INTO `writers` VALUES ('乔治·伯里曼', '伯里曼人体结构绘画教学', 85);
INSERT INTO `writers` VALUES ('莫言', '丰乳肥臀', 86);
INSERT INTO `writers` VALUES ('渡航', '我的青春恋爱物语果然有问题', 87);
INSERT INTO `writers` VALUES ('川原砾', '刀剑神域', 88);
INSERT INTO `writers` VALUES ('亚历山大·伊萨耶维奇·索尔仁尼琴', '古拉格群岛', 89);

SET FOREIGN_KEY_CHECKS = 1;
