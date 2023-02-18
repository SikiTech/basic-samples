
CREATE DATABASE  `news_platform_stg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use news_platform_stg;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;



-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '新闻编号ID',
  `title` varchar(255) NOT NULL COMMENT '新闻标题',
  `cover` varchar(255) NOT NULL COMMENT '新闻封面',
  `publish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `online_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否上架 0 1',
  `is_top` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否置顶 0 1',
  `content` text COMMENT '新闻内容',
  `link` varchar(255) NOT NULL DEFAULT '' COMMENT '新闻链接',
  `create_by` varchar(255) NOT NULL DEFAULT '' COMMENT '创建人',
  `update_by` varchar(255) NOT NULL DEFAULT ''  COMMENT '更新人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `fk_news_id` (`id`) USING BTREE,
  KEY `fk_news_publish_date` (`publish_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='新闻列表';


-- ----------------------------
-- Table structure for admin_auth
-- ----------------------------
DROP TABLE IF EXISTS `admin_auth`;
CREATE TABLE `admin_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增',
  `identifier` varchar(255) NOT NULL DEFAULT '' COMMENT '用户唯一标识',
  `certificate` varchar(255) NOT NULL DEFAULT '' COMMENT '密码凭证',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入驻时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:正常、0:停用',
  `role` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:管理员 0:普通',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_auth_ua` (`identifier`,`certificate`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='用户授权表';

SET FOREIGN_KEY_CHECKS = 1;