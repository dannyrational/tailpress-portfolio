-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 05, 2022 at 04:06 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailpress-portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-07-03 18:45:48', '2022-07-03 18:45:48', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://local.tailpress-portfolio.com', 'yes'),
(2, 'home', 'http://local.tailpress-portfolio.com', 'yes'),
(3, 'blogname', 'Dannyrational', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'drodas6232@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tailpress', 'yes'),
(41, 'stylesheet', 'tailpress', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1672425947', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1656996348;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1657003548;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1657003557;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1657046748;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657046757;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657565148;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'nonce_key', '=X)fbzj8y?iI=LNE(FO2=$yD#Vxk<|-SBy/(*<JLL9EpBLn5(WB4[p3%MVYVnXak', 'no'),
(116, 'nonce_salt', '=0r%[y|N&a8v1vwzfi[DCx$Z1e9R^9iBI5>C3.TnU(DnnE}i^/yc76xCx|w{K=Na', 'no'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1656989269;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(128, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1656874009;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(134, 'auth_key', '28G%2Rn%7T<(,FqvLy;J<pO9RWv=#s.UzB7fuTpnqT~61**KzCWIY@@fUw.wFQS,', 'no'),
(135, 'auth_salt', 'k!j/)>d]?CFo..oJrF0sF)4[g)y]qG.EVi6D]g8xK5Hg$3I}!.c/0%#8@y*0>}P&', 'no'),
(136, 'logged_in_key', 'Q%hPy%eZ+MUO; p8;zw)ZsxegPRHK(M_EPvs<>!_F6S+kas,nLc9e|aEcuX>*H-k', 'no'),
(137, 'logged_in_salt', 'NSqv4T4kXya^5HmMz%0$$/ 9{M&R<}`o?#7aR)+D&g3$iRy(Q0q*ai1ke1y^))`1', 'no'),
(138, '_site_transient_timeout_browser_d3d4068a11f4e0f44e4527b12fc4b98f', '1657478757', 'no'),
(139, '_site_transient_browser_d3d4068a11f4e0f44e4527b12fc4b98f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"103.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(140, '_site_transient_timeout_php_check_20f4df878f211a5689e76acb3f9067a8', '1657478757', 'no'),
(141, '_site_transient_php_check_20f4df878f211a5689e76acb3f9067a8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(149, 'can_compress_scripts', '1', 'no'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(161, 'acf_version', '5.12.2', 'yes'),
(162, 'current_theme', 'TailPress', 'yes'),
(163, 'theme_mods_tailpress', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:15;}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(169, 'finished_updating_comment_type', '1', 'yes'),
(170, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1656989270;s:7:\"checked\";a:1:{s:9:\"tailpress\";s:5:\"3.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(184, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(185, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(198, 'site_logo', '15', 'yes'),
(234, '_transient_timeout_acf_plugin_updates', '1657051630', 'no'),
(235, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";}}', 'no'),
(237, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1656989270;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";}}', 'no'),
(259, '_site_transient_timeout_theme_roots', '1656991067', 'no'),
(260, '_site_transient_theme_roots', 'a:1:{s:9:\"tailpress\";s:7:\"/themes\";}', 'no'),
(261, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(263, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1657001249', 'no'),
(264, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5613;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4790;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2759;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2631;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2034;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1880;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1878;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1572;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1547;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1526;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1522;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1507;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1489;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1381;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1325;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1315;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1256;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1170;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1146;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1110;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1018;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:971;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:971;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:942;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:897;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:855;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:848;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:842;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:842;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:834;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:805;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:779;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:774;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:759;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:759;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:752;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:725;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:713;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:708;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:699;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:681;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:673;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:672;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:670;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:667;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:666;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:649;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:618;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:611;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:603;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:598;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:596;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:584;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:583;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:576;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:575;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:575;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:572;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:565;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:557;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:551;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:537;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:532;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:530;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:529;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:522;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:518;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:517;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:506;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:505;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:497;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:497;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:497;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:493;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:483;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:464;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:457;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:457;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:452;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:445;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:441;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:434;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:429;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:423;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:417;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:412;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:412;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:407;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:398;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:396;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:396;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:394;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:392;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:392;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:385;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:382;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:377;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:372;}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 2, '_wp_trash_meta_status', 'publish'),
(6, 2, '_wp_trash_meta_time', '1656874195'),
(7, 2, '_wp_desired_post_slug', 'sample-page'),
(8, 8, '_edit_lock', '1656993826:1'),
(9, 8, '_wp_page_template', 'home-page.php'),
(10, 11, '_wp_trash_meta_status', 'publish'),
(11, 11, '_wp_trash_meta_time', '1656875028'),
(12, 12, '_wp_trash_meta_status', 'publish'),
(13, 12, '_wp_trash_meta_time', '1656875808'),
(14, 13, '_wp_trash_meta_status', 'publish'),
(15, 13, '_wp_trash_meta_time', '1656875814'),
(16, 14, '_wp_trash_meta_status', 'publish'),
(17, 14, '_wp_trash_meta_time', '1656875981'),
(18, 15, '_wp_attached_file', '2022/07/dannyrational-logo-01-1.png'),
(19, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:179;s:4:\"file\";s:35:\"2022/07/dannyrational-logo-01-1.png\";s:8:\"filesize\";i:12260;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"dannyrational-logo-01-1-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5266;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"dannyrational-logo-01-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4364;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 16, '_wp_trash_meta_status', 'publish'),
(21, 16, '_wp_trash_meta_time', '1656876118'),
(22, 17, '_edit_last', '1'),
(23, 17, '_edit_lock', '1656990301:1'),
(24, 8, '_edit_last', '1'),
(25, 8, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(26, 8, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(27, 8, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(28, 8, '_home_page_content', 'field_62c1f529bba84'),
(29, 20, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what <span>you know</span>; it\'s about what you can <span>figure out</span>.</h1>'),
(30, 20, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(31, 20, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(32, 20, '_home_page_content', 'field_62c1f529bba84'),
(33, 21, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what <span>you know</span>; it\'s about what you can <span>figure out</span>.</h1>'),
(34, 21, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(35, 21, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(36, 21, '_home_page_content', 'field_62c1f529bba84'),
(37, 22, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(38, 22, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(39, 22, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(40, 22, '_home_page_content', 'field_62c1f529bba84'),
(41, 8, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(42, 8, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(43, 23, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(44, 23, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(45, 23, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(46, 23, '_home_page_content', 'field_62c1f529bba84'),
(47, 23, 'home_page_content_0_top_banner_text', '<h1>\r\n              Programming isn\'t about what <span>you know</span>; it\'s about\r\n              what you can <span>figure out</span>.\r\n            </h1>'),
(48, 23, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(49, 24, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(50, 24, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(51, 24, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(52, 24, '_home_page_content', 'field_62c1f529bba84'),
(53, 24, 'home_page_content_0_top_banner_text', '<h1>\r\n              Programming isn\'t about what <span class=\"text-red-500\">you know</span>; it\'s about\r\n              what you can <span>figure out</span>.\r\n            </h1>'),
(54, 24, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(55, 25, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(56, 25, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(57, 25, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(58, 25, '_home_page_content', 'field_62c1f529bba84'),
(59, 25, 'home_page_content_0_top_banner_text', '<h1>\r\n              Programming isn\'t about what <span class=\"text-red-500\">you know</span>; it\'s about\r\n              what you can <span class=\"text-red-500\">figure out</span>.\r\n            </h1>'),
(60, 25, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(61, 26, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(62, 26, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(63, 26, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(64, 26, '_home_page_content', 'field_62c1f529bba84'),
(65, 26, 'home_page_content_0_top_banner_text', '<h1>Programming isn\'t about what <span class=\"text-red-500\">you know</span>; it\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(66, 26, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(67, 27, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(68, 27, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(69, 27, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(70, 27, '_home_page_content', 'field_62c1f529bba84'),
(71, 27, 'home_page_content_0_top_banner_text', '<h1>Programming isn\'t about what <span class=\"text-red-500\">you know</span>; \r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(72, 27, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(73, 28, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(74, 28, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(75, 28, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(76, 28, '_home_page_content', 'field_62c1f529bba84'),
(77, 28, 'home_page_content_0_top_banner_text', '<h1 class=\"text-lg\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(78, 28, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(79, 29, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(80, 29, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(81, 29, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(82, 29, '_home_page_content', 'field_62c1f529bba84'),
(83, 29, 'home_page_content_0_top_banner_text', '<h1 class=\"text-xl\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(84, 29, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(85, 30, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(86, 30, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(87, 30, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(88, 30, '_home_page_content', 'field_62c1f529bba84'),
(89, 30, 'home_page_content_0_top_banner_text', '<h1 class=\"text-2xl\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(90, 30, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(91, 31, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(92, 31, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(93, 31, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(94, 31, '_home_page_content', 'field_62c1f529bba84'),
(95, 31, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(96, 31, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(97, 32, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(98, 32, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(99, 32, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(100, 32, '_home_page_content', 'field_62c1f529bba84'),
(101, 32, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl font-light\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(102, 32, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(103, 33, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(104, 33, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(105, 33, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(106, 33, '_home_page_content', 'field_62c1f529bba84'),
(107, 33, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl font-light\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(108, 33, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(109, 34, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(110, 34, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(111, 34, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(112, 34, '_home_page_content', 'field_62c1f529bba84'),
(113, 34, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl sm:text-4xl font-light\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(114, 34, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(115, 35, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(116, 35, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(117, 35, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(118, 35, '_home_page_content', 'field_62c1f529bba84'),
(119, 35, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl font-light\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(120, 35, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(121, 36, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(122, 36, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(123, 36, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(124, 36, '_home_page_content', 'field_62c1f529bba84'),
(125, 36, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl font-light max-w-[375px]\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(126, 36, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(127, 37, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(128, 37, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(129, 37, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(130, 37, '_home_page_content', 'field_62c1f529bba84'),
(131, 37, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl font-light max-w-[375px] md:max-w-full\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(132, 37, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(133, 38, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(134, 38, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(135, 38, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(136, 38, '_home_page_content', 'field_62c1f529bba84'),
(137, 38, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl font-light\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(138, 38, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(139, 39, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(140, 39, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(141, 39, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(142, 39, '_home_page_content', 'field_62c1f529bba84'),
(143, 39, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl font-light max-w-[425px] md:max-w-full\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(144, 39, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(145, 40, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(146, 40, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(147, 40, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(148, 40, '_home_page_content', 'field_62c1f529bba84'),
(149, 40, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl font-light max-w-[425px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(150, 40, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(151, 41, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(152, 41, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(153, 41, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(154, 41, '_home_page_content', 'field_62c1f529bba84'),
(155, 41, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(156, 41, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(157, 42, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(158, 42, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(159, 42, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(160, 42, '_home_page_content', 'field_62c1f529bba84'),
(161, 42, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:txt-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(162, 42, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(163, 43, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(164, 43, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(165, 43, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(166, 43, '_home_page_content', 'field_62c1f529bba84'),
(167, 43, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500\">figure out</span>.</h1>'),
(168, 43, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(169, 44, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(170, 44, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(171, 44, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(172, 44, '_home_page_content', 'field_62c1f529bba84'),
(173, 44, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(174, 44, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(175, 8, 'home_page_content_0_email_address', 'test@gmail.com'),
(176, 8, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(177, 46, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(178, 46, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(179, 46, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(180, 46, '_home_page_content', 'field_62c1f529bba84'),
(181, 46, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(182, 46, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(183, 46, 'home_page_content_0_email_address', 'test@gmail.com'),
(184, 46, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(185, 8, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(186, 8, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(187, 47, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(188, 47, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(189, 47, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(190, 47, '_home_page_content', 'field_62c1f529bba84'),
(191, 47, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(192, 47, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(193, 47, 'home_page_content_0_email_address', 'test@gmail.com'),
(194, 47, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(195, 47, 'home_page_content_0_header_email_address', 'test@gmail.com'),
(196, 47, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(197, 48, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(198, 48, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(199, 48, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(200, 48, '_home_page_content', 'field_62c1f529bba84'),
(201, 48, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(202, 48, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(203, 48, 'home_page_content_0_email_address', 'test@gmail.com'),
(204, 48, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(205, 48, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(206, 48, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(207, 8, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(208, 8, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(209, 8, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(210, 8, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(211, 8, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(212, 8, '_home_page', 'field_62c1f529bba84'),
(213, 49, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(214, 49, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(215, 49, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(216, 49, '_home_page_content', 'field_62c1f529bba84'),
(217, 49, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(218, 49, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(219, 49, 'home_page_content_0_email_address', 'test@gmail.com'),
(220, 49, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(221, 49, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(222, 49, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(223, 49, 'home_page_0_header_email_address', ''),
(224, 49, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(225, 49, 'home_page_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(226, 49, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(227, 49, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(228, 49, '_home_page', 'field_62c1f529bba84'),
(229, 50, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(230, 50, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(231, 50, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(232, 50, '_home_page_content', 'field_62c1f529bba84'),
(233, 50, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(234, 50, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(235, 50, 'home_page_content_0_email_address', 'test@gmail.com'),
(236, 50, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(237, 50, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(238, 50, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(239, 50, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(240, 50, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(241, 50, 'home_page_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(242, 50, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(243, 50, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(244, 50, '_home_page', 'field_62c1f529bba84'),
(245, 8, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(246, 8, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(247, 8, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(248, 8, '_home_page_0_github_account', 'field_62c2622e51e52'),
(249, 53, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(250, 53, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(251, 53, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(252, 53, '_home_page_content', 'field_62c1f529bba84'),
(253, 53, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(254, 53, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(255, 53, 'home_page_content_0_email_address', 'test@gmail.com'),
(256, 53, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(257, 53, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(258, 53, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(259, 53, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(260, 53, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(261, 53, 'home_page_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(262, 53, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(263, 53, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(264, 53, '_home_page', 'field_62c1f529bba84'),
(265, 53, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(266, 53, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(267, 53, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(268, 53, '_home_page_0_github_account', 'field_62c2622e51e52'),
(269, 54, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(270, 54, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(271, 54, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(272, 54, '_home_page_content', 'field_62c1f529bba84'),
(273, 54, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(274, 54, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(275, 54, 'home_page_content_0_email_address', 'test@gmail.com'),
(276, 54, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(277, 54, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(278, 54, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(279, 54, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(280, 54, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(281, 54, 'home_page_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(282, 54, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(283, 54, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(284, 54, '_home_page', 'field_62c1f529bba84'),
(285, 54, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(286, 54, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(287, 54, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(288, 54, '_home_page_0_github_account', 'field_62c2622e51e52'),
(289, 55, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(290, 55, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(291, 55, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(292, 55, '_home_page_content', 'field_62c1f529bba84'),
(293, 55, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(294, 55, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(295, 55, 'home_page_content_0_email_address', 'test@gmail.com'),
(296, 55, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(297, 55, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(298, 55, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(299, 55, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(300, 55, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(301, 55, 'home_page_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl xl:text-6xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(302, 55, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(303, 55, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(304, 55, '_home_page', 'field_62c1f529bba84'),
(305, 55, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(306, 55, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(307, 55, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(308, 55, '_home_page_0_github_account', 'field_62c2622e51e52'),
(309, 56, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(310, 56, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(311, 56, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(312, 56, '_home_page_content', 'field_62c1f529bba84'),
(313, 56, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(314, 56, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(315, 56, 'home_page_content_0_email_address', 'test@gmail.com'),
(316, 56, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(317, 56, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(318, 56, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(319, 56, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(320, 56, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(321, 56, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(322, 56, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(323, 56, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(324, 56, '_home_page', 'field_62c1f529bba84'),
(325, 56, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(326, 56, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(327, 56, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(328, 56, '_home_page_0_github_account', 'field_62c2622e51e52'),
(329, 58, '_wp_attached_file', '2022/07/profile-pic-scaled.jpg'),
(330, 58, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1832;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2022/07/profile-pic-scaled.jpg\";s:8:\"filesize\";i:389463;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"profile-pic-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12688;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"profile-pic-733x1024.jpg\";s:5:\"width\";i:733;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89907;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"profile-pic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5802;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"profile-pic-768x1073.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1073;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97257;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"profile-pic-1099x1536.jpg\";s:5:\"width\";i:1099;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:173674;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"profile-pic-1466x2048.jpg\";s:5:\"width\";i:1466;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:275312;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"profile-pic.jpg\";}'),
(331, 8, 'home_page_0_about_section_image', '58'),
(332, 8, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(333, 59, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(334, 59, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(335, 59, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(336, 59, '_home_page_content', 'field_62c1f529bba84'),
(337, 59, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(338, 59, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(339, 59, 'home_page_content_0_email_address', 'test@gmail.com'),
(340, 59, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(341, 59, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(342, 59, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(343, 59, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(344, 59, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(345, 59, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(346, 59, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(347, 59, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(348, 59, '_home_page', 'field_62c1f529bba84'),
(349, 59, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(350, 59, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(351, 59, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(352, 59, '_home_page_0_github_account', 'field_62c2622e51e52'),
(353, 59, 'home_page_0_about_section_image', '58'),
(354, 59, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(355, 8, 'home_page_0_about_red_title', 'Hi, my name is...'),
(356, 8, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(357, 8, 'home_page_0_about_black_title', 'Danny Rodas'),
(358, 8, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(359, 8, 'home_page_0_about_description', '<p class=\"paragraph-space\">I\'m a front‑end developer focused on crafting clean &amp; user‑friendly websites. My strongest skill is the process of designing and coding a user interface from scratch that is responsive and cross-browser compatible.</p>\r\n<p class=\"paragraph-space\">A bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap, jQuery and Javascript. Oh, and PHP I guess... I use WordPress on a daily basis to develop websites, however, I also like to explore new things. I\'m currently exploring Vue and it\'s integration with Headless WordPress.</p>\r\n<p>During my free time I like to go to the gym and also play video games when time allows it. Not that great at video games anymore, but I still enjoy them. Well, also trying to learn a bit about the Unity Game Engine on the side. Feel free to get in touch via email or Twitter.</p>\r\n\r\n'),
(360, 8, '_home_page_0_about_description', 'field_62c283a9a6138'),
(361, 63, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(362, 63, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(363, 63, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(364, 63, '_home_page_content', 'field_62c1f529bba84'),
(365, 63, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(366, 63, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(367, 63, 'home_page_content_0_email_address', 'test@gmail.com'),
(368, 63, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(369, 63, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(370, 63, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(371, 63, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(372, 63, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(373, 63, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(374, 63, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(375, 63, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(376, 63, '_home_page', 'field_62c1f529bba84'),
(377, 63, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(378, 63, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(379, 63, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(380, 63, '_home_page_0_github_account', 'field_62c2622e51e52'),
(381, 63, 'home_page_0_about_section_image', '58'),
(382, 63, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(383, 63, 'home_page_0_about_red_title', 'Hi, my name is...'),
(384, 63, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(385, 63, 'home_page_0_about_black_title', 'Danny Rodas'),
(386, 63, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(387, 63, 'home_page_0_about_description', ''),
(388, 63, '_home_page_0_about_description', 'field_62c283a9a6138'),
(389, 64, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(390, 64, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(391, 64, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(392, 64, '_home_page_content', 'field_62c1f529bba84'),
(393, 64, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(394, 64, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(395, 64, 'home_page_content_0_email_address', 'test@gmail.com'),
(396, 64, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(397, 64, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(398, 64, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(399, 64, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(400, 64, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(401, 64, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(402, 64, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(403, 64, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(404, 64, '_home_page', 'field_62c1f529bba84'),
(405, 64, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(406, 64, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(407, 64, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(408, 64, '_home_page_0_github_account', 'field_62c2622e51e52'),
(409, 64, 'home_page_0_about_section_image', '58'),
(410, 64, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(411, 64, 'home_page_0_about_red_title', 'Hi, my name is...'),
(412, 64, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(413, 64, 'home_page_0_about_black_title', 'Danny Rodas'),
(414, 64, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(415, 64, 'home_page_0_about_description', 'I\'m a web designer & front‑end developer focused on crafting clean & user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(416, 64, '_home_page_0_about_description', 'field_62c283a9a6138'),
(417, 65, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(418, 65, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(419, 65, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(420, 65, '_home_page_content', 'field_62c1f529bba84'),
(421, 65, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(422, 65, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(423, 65, 'home_page_content_0_email_address', 'test@gmail.com'),
(424, 65, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(425, 65, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(426, 65, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(427, 65, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(428, 65, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(429, 65, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(430, 65, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(431, 65, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(432, 65, '_home_page', 'field_62c1f529bba84'),
(433, 65, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(434, 65, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(435, 65, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(436, 65, '_home_page_0_github_account', 'field_62c2622e51e52'),
(437, 65, 'home_page_0_about_section_image', '58'),
(438, 65, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(439, 65, 'home_page_0_about_red_title', 'Hi, my name is...'),
(440, 65, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(441, 65, 'home_page_0_about_black_title', 'Danny Rodas'),
(442, 65, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(443, 65, 'home_page_0_about_description', 'I\'m a web designer & front‑end developer focused on crafting clean & user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n<br>\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n<br>\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(444, 65, '_home_page_0_about_description', 'field_62c283a9a6138'),
(445, 66, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(446, 66, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(447, 66, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(448, 66, '_home_page_content', 'field_62c1f529bba84'),
(449, 66, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(450, 66, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(451, 66, 'home_page_content_0_email_address', 'test@gmail.com'),
(452, 66, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(453, 66, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(454, 66, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(455, 66, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(456, 66, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(457, 66, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(458, 66, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(459, 66, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(460, 66, '_home_page', 'field_62c1f529bba84'),
(461, 66, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(462, 66, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(463, 66, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(464, 66, '_home_page_0_github_account', 'field_62c2622e51e52'),
(465, 66, 'home_page_0_about_section_image', '58'),
(466, 66, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(467, 66, 'home_page_0_about_red_title', 'Hi, my name is...'),
(468, 66, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(469, 66, 'home_page_0_about_black_title', 'Danny Rodas'),
(470, 66, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(471, 66, 'home_page_0_about_description', 'I\'m a web designer & front‑end developer focused on crafting clean & user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\nnbsp&\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n<br>\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(472, 66, '_home_page_0_about_description', 'field_62c283a9a6138'),
(473, 67, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(474, 67, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(475, 67, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(476, 67, '_home_page_content', 'field_62c1f529bba84'),
(477, 67, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(478, 67, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(479, 67, 'home_page_content_0_email_address', 'test@gmail.com'),
(480, 67, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(481, 67, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(482, 67, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(483, 67, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(484, 67, '_home_page_0_header_email_address', 'field_62c25bba1b368');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(485, 67, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(486, 67, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(487, 67, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(488, 67, '_home_page', 'field_62c1f529bba84'),
(489, 67, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(490, 67, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(491, 67, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(492, 67, '_home_page_0_github_account', 'field_62c2622e51e52'),
(493, 67, 'home_page_0_about_section_image', '58'),
(494, 67, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(495, 67, 'home_page_0_about_red_title', 'Hi, my name is...'),
(496, 67, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(497, 67, 'home_page_0_about_black_title', 'Danny Rodas'),
(498, 67, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(499, 67, 'home_page_0_about_description', 'I\'m a web designer & front‑end developer focused on crafting clean & user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n&nbsp\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n<br>\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(500, 67, '_home_page_0_about_description', 'field_62c283a9a6138'),
(501, 68, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(502, 68, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(503, 68, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(504, 68, '_home_page_content', 'field_62c1f529bba84'),
(505, 68, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(506, 68, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(507, 68, 'home_page_content_0_email_address', 'test@gmail.com'),
(508, 68, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(509, 68, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(510, 68, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(511, 68, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(512, 68, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(513, 68, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(514, 68, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(515, 68, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(516, 68, '_home_page', 'field_62c1f529bba84'),
(517, 68, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(518, 68, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(519, 68, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(520, 68, '_home_page_0_github_account', 'field_62c2622e51e52'),
(521, 68, 'home_page_0_about_section_image', '58'),
(522, 68, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(523, 68, 'home_page_0_about_red_title', 'Hi, my name is...'),
(524, 68, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(525, 68, 'home_page_0_about_black_title', 'Danny Rodas'),
(526, 68, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(527, 68, 'home_page_0_about_description', 'I\'m a web designer & front‑end developer focused on crafting clean & user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n&nbsp\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n&nbsp\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(528, 68, '_home_page_0_about_description', 'field_62c283a9a6138'),
(529, 69, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(530, 69, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(531, 69, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(532, 69, '_home_page_content', 'field_62c1f529bba84'),
(533, 69, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(534, 69, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(535, 69, 'home_page_content_0_email_address', 'test@gmail.com'),
(536, 69, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(537, 69, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(538, 69, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(539, 69, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(540, 69, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(541, 69, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(542, 69, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(543, 69, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(544, 69, '_home_page', 'field_62c1f529bba84'),
(545, 69, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(546, 69, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(547, 69, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(548, 69, '_home_page_0_github_account', 'field_62c2622e51e52'),
(549, 69, 'home_page_0_about_section_image', '58'),
(550, 69, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(551, 69, 'home_page_0_about_red_title', 'Hi, my name is...'),
(552, 69, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(553, 69, 'home_page_0_about_black_title', 'Danny Rodas'),
(554, 69, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(555, 69, 'home_page_0_about_description', 'I\'m a web designer & front‑end developer focused on crafting clean & user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n<br>\r\n<br>\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n<br>\r\n<br>\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(556, 69, '_home_page_0_about_description', 'field_62c283a9a6138'),
(557, 70, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(558, 70, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(559, 70, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(560, 70, '_home_page_content', 'field_62c1f529bba84'),
(561, 70, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(562, 70, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(563, 70, 'home_page_content_0_email_address', 'test@gmail.com'),
(564, 70, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(565, 70, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(566, 70, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(567, 70, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(568, 70, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(569, 70, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(570, 70, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(571, 70, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(572, 70, '_home_page', 'field_62c1f529bba84'),
(573, 70, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(574, 70, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(575, 70, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(576, 70, '_home_page_0_github_account', 'field_62c2622e51e52'),
(577, 70, 'home_page_0_about_section_image', '58'),
(578, 70, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(579, 70, 'home_page_0_about_red_title', 'Hi, my name is...'),
(580, 70, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(581, 70, 'home_page_0_about_black_title', 'Danny Rodas'),
(582, 70, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(583, 70, 'home_page_0_about_description', 'I\'m a web designer & front‑end developer focused on crafting clean & user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n<br>\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n<br>\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(584, 70, '_home_page_0_about_description', 'field_62c283a9a6138'),
(585, 71, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(586, 71, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(587, 71, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(588, 71, '_home_page_content', 'field_62c1f529bba84'),
(589, 71, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(590, 71, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(591, 71, 'home_page_content_0_email_address', 'test@gmail.com'),
(592, 71, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(593, 71, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(594, 71, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(595, 71, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(596, 71, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(597, 71, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(598, 71, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(599, 71, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(600, 71, '_home_page', 'field_62c1f529bba84'),
(601, 71, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(602, 71, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(603, 71, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(604, 71, '_home_page_0_github_account', 'field_62c2622e51e52'),
(605, 71, 'home_page_0_about_section_image', '58'),
(606, 71, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(607, 71, 'home_page_0_about_red_title', 'Hi, my name is...'),
(608, 71, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(609, 71, 'home_page_0_about_black_title', 'Danny Rodas'),
(610, 71, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(611, 71, 'home_page_0_about_description', 'I\'m a web designer & front‑end developer focused on crafting clean & user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n<br>\r\n\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n<br>\r\n\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(612, 71, '_home_page_0_about_description', 'field_62c283a9a6138'),
(613, 72, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(614, 72, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(615, 72, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(616, 72, '_home_page_content', 'field_62c1f529bba84'),
(617, 72, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(618, 72, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(619, 72, 'home_page_content_0_email_address', 'test@gmail.com'),
(620, 72, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(621, 72, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(622, 72, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(623, 72, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(624, 72, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(625, 72, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(626, 72, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(627, 72, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(628, 72, '_home_page', 'field_62c1f529bba84'),
(629, 72, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(630, 72, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(631, 72, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(632, 72, '_home_page_0_github_account', 'field_62c2622e51e52'),
(633, 72, 'home_page_0_about_section_image', '58'),
(634, 72, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(635, 72, 'home_page_0_about_red_title', 'Hi, my name is...'),
(636, 72, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(637, 72, 'home_page_0_about_black_title', 'Danny Rodas'),
(638, 72, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(639, 72, 'home_page_0_about_description', 'I\'m a web designer &amp; front‑end developer focused on crafting clean &amp; user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(640, 72, '_home_page_0_about_description', 'field_62c283a9a6138'),
(641, 73, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(642, 73, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(643, 73, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(644, 73, '_home_page_content', 'field_62c1f529bba84'),
(645, 73, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(646, 73, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(647, 73, 'home_page_content_0_email_address', 'test@gmail.com'),
(648, 73, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(649, 73, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(650, 73, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(651, 73, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(652, 73, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(653, 73, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(654, 73, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(655, 73, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(656, 73, '_home_page', 'field_62c1f529bba84'),
(657, 73, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(658, 73, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(659, 73, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(660, 73, '_home_page_0_github_account', 'field_62c2622e51e52'),
(661, 73, 'home_page_0_about_section_image', '58'),
(662, 73, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(663, 73, 'home_page_0_about_red_title', 'Hi, my name is...'),
(664, 73, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(665, 73, 'home_page_0_about_black_title', 'Danny Rodas'),
(666, 73, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(667, 73, 'home_page_0_about_description', 'I\'m a web designer &amp; front‑end developer focused on crafting clean &amp; user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.\r\n\r\n&nbsp;\r\n\r\nA bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.\r\n\r\n&nbsp;\r\n\r\nI am starting to learn Vue and SQL to advance my knowledge.'),
(668, 73, '_home_page_0_about_description', 'field_62c283a9a6138'),
(669, 74, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(670, 74, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(671, 74, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(672, 74, '_home_page_content', 'field_62c1f529bba84'),
(673, 74, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(674, 74, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(675, 74, 'home_page_content_0_email_address', 'test@gmail.com'),
(676, 74, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(677, 74, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(678, 74, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(679, 74, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(680, 74, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(681, 74, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(682, 74, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(683, 74, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(684, 74, '_home_page', 'field_62c1f529bba84'),
(685, 74, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(686, 74, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(687, 74, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(688, 74, '_home_page_0_github_account', 'field_62c2622e51e52'),
(689, 74, 'home_page_0_about_section_image', '58'),
(690, 74, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(691, 74, 'home_page_0_about_red_title', 'Hi, my name is...'),
(692, 74, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(693, 74, 'home_page_0_about_black_title', 'Danny Rodas'),
(694, 74, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(695, 74, 'home_page_0_about_description', '<p class=\"\">I\'m a web designer &amp; front‑end developer focused on crafting clean &amp; user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.</p>\r\n\r\n<p class=\"\">A bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.</p>\r\n\r\n<p>I am starting to learn Vue and SQL to advance my knowledge.</p>'),
(696, 74, '_home_page_0_about_description', 'field_62c283a9a6138'),
(697, 75, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(698, 75, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(699, 75, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(700, 75, '_home_page_content', 'field_62c1f529bba84'),
(701, 75, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(702, 75, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(703, 75, 'home_page_content_0_email_address', 'test@gmail.com'),
(704, 75, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(705, 75, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(706, 75, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(707, 75, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(708, 75, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(709, 75, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(710, 75, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(711, 75, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(712, 75, '_home_page', 'field_62c1f529bba84'),
(713, 75, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(714, 75, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(715, 75, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(716, 75, '_home_page_0_github_account', 'field_62c2622e51e52'),
(717, 75, 'home_page_0_about_section_image', '58'),
(718, 75, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(719, 75, 'home_page_0_about_red_title', 'Hi, my name is...'),
(720, 75, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(721, 75, 'home_page_0_about_black_title', 'Danny Rodas'),
(722, 75, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(723, 75, 'home_page_0_about_description', '<p class=\"paragraph-space\">I\'m a web designer &amp; front‑end developer focused on crafting clean &amp; user‑friendly experiences. I am passionate about building great websites that improve the lives of those around me. My strongest skill is the process of designing and coding a user interface from scratch.</p>\r\n\r\n<p class=\"paragraph-space\">A bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap and Javascript. For version control I use Git and push to Github to deploy in Netlify. I also have some experience creating websites in Wordpress using site builders such as Divi and Elementor working directly in a hosting environment such as Siteground.</p>\r\n\r\n<p>I am starting to learn Vue and SQL to advance my knowledge.</p>'),
(724, 75, '_home_page_0_about_description', 'field_62c283a9a6138'),
(725, 76, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(726, 76, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(727, 76, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(728, 76, '_home_page_content', 'field_62c1f529bba84'),
(729, 76, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(730, 76, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(731, 76, 'home_page_content_0_email_address', 'test@gmail.com'),
(732, 76, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(733, 76, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(734, 76, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(735, 76, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(736, 76, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(737, 76, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(738, 76, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(739, 76, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(740, 76, '_home_page', 'field_62c1f529bba84'),
(741, 76, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(742, 76, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(743, 76, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(744, 76, '_home_page_0_github_account', 'field_62c2622e51e52'),
(745, 76, 'home_page_0_about_section_image', '58'),
(746, 76, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(747, 76, 'home_page_0_about_red_title', 'Hi, my name is...'),
(748, 76, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(749, 76, 'home_page_0_about_black_title', 'Danny Rodas'),
(750, 76, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(751, 76, 'home_page_0_about_description', '<p class=\"paragraph-space\">I\'m a front‑end developer focused on crafting clean &amp; user‑friendly websites. My strongest skill is the process of designing and coding a user interface from scratch that is responsive and cross-browser compatible.</p>\r\n<p class=\"paragraph-space\">A bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap, jQuery and Javascript. Oh, and PHP I guess... I use WordPress on a daily basis to develop websites, however, I also like to explore new things. I\'m currently exploring Vue and it\'s integration with Headless WordPress.</p>\r\n<p>During my free time I like to go to the gym and also play video games when time allows it. Not that great at video games anymore, but I still enjoy them. Well, also trying to learn a bit about the Unity Game Engine on the side.</p>\r\n\r\n'),
(752, 76, '_home_page_0_about_description', 'field_62c283a9a6138'),
(753, 78, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(754, 78, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(755, 78, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(756, 78, '_home_page_content', 'field_62c1f529bba84'),
(757, 78, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(758, 78, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(759, 78, 'home_page_content_0_email_address', 'test@gmail.com'),
(760, 78, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(761, 78, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(762, 78, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(763, 78, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(764, 78, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(765, 78, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(766, 78, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(767, 78, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(768, 78, '_home_page', 'field_62c1f529bba84'),
(769, 78, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(770, 78, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(771, 78, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(772, 78, '_home_page_0_github_account', 'field_62c2622e51e52'),
(773, 78, 'home_page_0_about_section_image', '58'),
(774, 78, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(775, 78, 'home_page_0_about_red_title', 'Hi, my name is...'),
(776, 78, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(777, 78, 'home_page_0_about_black_title', 'Danny Rodas'),
(778, 78, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(779, 78, 'home_page_0_about_description', '<p class=\"paragraph-space\">I\'m a front‑end developer focused on crafting clean &amp; user‑friendly websites. My strongest skill is the process of designing and coding a user interface from scratch that is responsive and cross-browser compatible.</p>\r\n<p class=\"paragraph-space\">A bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap, jQuery and Javascript. Oh, and PHP I guess... I use WordPress on a daily basis to develop websites, however, I also like to explore new things. I\'m currently exploring Vue and it\'s integration with Headless WordPress.</p>\r\n<p>During my free time I like to go to the gym and also play video games when time allows it. Not that great at video games anymore, but I still enjoy them. Well, also trying to learn a bit about the Unity Game Engine on the side. Feel free to get in touch via email.</p>\r\n\r\n'),
(780, 78, '_home_page_0_about_description', 'field_62c283a9a6138'),
(781, 79, 'home_page_content_0_top_banner', '<h1>Programming isn\'t about what you know; it\'s about what you can figure out.</h1>'),
(782, 79, '_home_page_content_0_top_banner', 'field_62c1f582bba85'),
(783, 79, 'home_page_content', 'a:1:{i:0;s:10:\"top_banner\";}'),
(784, 79, '_home_page_content', 'field_62c1f529bba84'),
(785, 79, 'home_page_content_0_top_banner_text', '<h1 class=\"text-3xl md:text-4xl lg:text-5xl font-light max-w-[375px] md:max-w-full mx-auto\">Programming isn\'t about what <span class=\"text-red-500 inline-block\">you know</span>;\r\nit\'s about what you can <span class=\"text-red-500 inline-block\">figure out</span>.</h1>'),
(786, 79, '_home_page_content_0_top_banner_text', 'field_62c1f582bba85'),
(787, 79, 'home_page_content_0_email_address', 'test@gmail.com'),
(788, 79, '_home_page_content_0_email_address', 'field_62c25bba1b368'),
(789, 79, 'home_page_content_0_header_email_address', 'drodas6232@me.com'),
(790, 79, '_home_page_content_0_header_email_address', 'field_62c25bba1b368'),
(791, 79, 'home_page_0_header_email_address', 'drodas6232@me.com'),
(792, 79, '_home_page_0_header_email_address', 'field_62c25bba1b368'),
(793, 79, 'home_page_0_top_banner_text', '<h1 class=\"top-banner-h1\">Programming isn\'t about what <span class=\"top-banner-span\">you know</span>;\r\nit\'s about what you can <span class=\"top-banner-span\">figure out</span>.</h1>'),
(794, 79, '_home_page_0_top_banner_text', 'field_62c1f582bba85'),
(795, 79, 'home_page', 'a:1:{i:0;s:17:\"home_page_content\";}'),
(796, 79, '_home_page', 'field_62c1f529bba84'),
(797, 79, 'home_page_0_twitter_account', 'https://twitter.com/dannyrational'),
(798, 79, '_home_page_0_twitter_account', 'field_62c261cc51e51'),
(799, 79, 'home_page_0_github_account', 'https://github.com/dannyrational'),
(800, 79, '_home_page_0_github_account', 'field_62c2622e51e52'),
(801, 79, 'home_page_0_about_section_image', '58'),
(802, 79, '_home_page_0_about_section_image', 'field_62c27b69b98dc'),
(803, 79, 'home_page_0_about_red_title', 'Hi, my name is...'),
(804, 79, '_home_page_0_about_red_title', 'field_62c2835fa6136'),
(805, 79, 'home_page_0_about_black_title', 'Danny Rodas'),
(806, 79, '_home_page_0_about_black_title', 'field_62c28389a6137'),
(807, 79, 'home_page_0_about_description', '<p class=\"paragraph-space\">I\'m a front‑end developer focused on crafting clean &amp; user‑friendly websites. My strongest skill is the process of designing and coding a user interface from scratch that is responsive and cross-browser compatible.</p>\r\n<p class=\"paragraph-space\">A bit of the technical aspect... I am efficient in HTML, CSS, Tailwind CSS, Bootstrap, jQuery and Javascript. Oh, and PHP I guess... I use WordPress on a daily basis to develop websites, however, I also like to explore new things. I\'m currently exploring Vue and it\'s integration with Headless WordPress.</p>\r\n<p>During my free time I like to go to the gym and also play video games when time allows it. Not that great at video games anymore, but I still enjoy them. Well, also trying to learn a bit about the Unity Game Engine on the side. Feel free to get in touch via email or Twitter.</p>\r\n\r\n'),
(808, 79, '_home_page_0_about_description', 'field_62c283a9a6138');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-07-03 18:45:48', '2022-07-03 18:45:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-07-03 18:45:48', '2022-07-03 18:45:48', '', 0, 'http://local.tailpress-portfolio.com/?p=1', 0, 'post', '', 1),
(2, 1, '2022-07-03 18:45:48', '2022-07-03 18:45:48', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://local.tailpress-portfolio.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-07-03 18:49:55', '2022-07-03 18:49:55', '', 0, 'http://local.tailpress-portfolio.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-07-03 18:45:48', '2022-07-03 18:45:48', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://local.tailpress-portfolio.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-07-03 18:45:48', '2022-07-03 18:45:48', '', 0, 'http://local.tailpress-portfolio.com/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-07-03 18:45:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-03 18:45:57', '0000-00-00 00:00:00', '', 0, 'http://local.tailpress-portfolio.com/?p=4', 0, 'post', '', 0),
(6, 1, '2022-07-03 18:48:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-07-03 18:48:45', '0000-00-00 00:00:00', '', 0, 'http://local.tailpress-portfolio.com/?post_type=acf-field-group&p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2022-07-03 18:49:55', '2022-07-03 18:49:55', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://local.tailpress-portfolio.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-07-03 18:49:55', '2022-07-03 18:49:55', '', 2, 'http://local.tailpress-portfolio.com/?p=7', 0, 'revision', '', 0),
(8, 1, '2022-07-03 18:50:10', '2022-07-03 18:50:10', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-07-05 03:14:22', '2022-07-05 03:14:22', '', 0, 'http://local.tailpress-portfolio.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-07-03 18:50:02', '2022-07-03 18:50:02', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-tailpress', '', '', '2022-07-03 18:50:02', '2022-07-03 18:50:02', '', 0, 'http://local.tailpress-portfolio.com/2022/07/03/wp-global-styles-tailpress/', 0, 'wp_global_styles', '', 0),
(10, 1, '2022-07-03 18:50:10', '2022-07-03 18:50:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 18:50:10', '2022-07-03 18:50:10', '', 8, 'http://local.tailpress-portfolio.com/?p=10', 0, 'revision', '', 0),
(11, 1, '2022-07-03 19:03:48', '2022-07-03 19:03:48', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-03 19:03:48\"\n    },\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-03 19:03:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40a52492-0375-40a6-87ae-166524f27038', '', '', '2022-07-03 19:03:48', '2022-07-03 19:03:48', '', 0, 'http://local.tailpress-portfolio.com/2022/07/03/40a52492-0375-40a6-87ae-166524f27038/', 0, 'customize_changeset', '', 0),
(12, 1, '2022-07-03 19:16:48', '2022-07-03 19:16:48', '{\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-03 19:16:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff847489-b36e-4cd4-beb4-6486ca5082b0', '', '', '2022-07-03 19:16:48', '2022-07-03 19:16:48', '', 0, 'http://local.tailpress-portfolio.com/2022/07/03/ff847489-b36e-4cd4-beb4-6486ca5082b0/', 0, 'customize_changeset', '', 0),
(13, 1, '2022-07-03 19:16:54', '2022-07-03 19:16:54', '{\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-03 19:16:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e29914bb-dd64-47ba-9dae-4f85cc33b615', '', '', '2022-07-03 19:16:54', '2022-07-03 19:16:54', '', 0, 'http://local.tailpress-portfolio.com/2022/07/03/e29914bb-dd64-47ba-9dae-4f85cc33b615/', 0, 'customize_changeset', '', 0),
(14, 1, '2022-07-03 19:19:41', '2022-07-03 19:19:41', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-03 19:19:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7438660-0417-4aff-aac4-13e92f83b793', '', '', '2022-07-03 19:19:41', '2022-07-03 19:19:41', '', 0, 'http://local.tailpress-portfolio.com/2022/07/03/d7438660-0417-4aff-aac4-13e92f83b793/', 0, 'customize_changeset', '', 0),
(15, 1, '2022-07-03 19:21:50', '2022-07-03 19:21:50', '', 'dannyrational-logo-01 (1)', '', 'inherit', 'open', 'closed', '', 'dannyrational-logo-01-1', '', '', '2022-07-03 19:21:50', '2022-07-03 19:21:50', '', 0, 'http://local.tailpress-portfolio.com/wp-content/uploads/2022/07/dannyrational-logo-01-1.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2022-07-03 19:21:58', '2022-07-03 19:21:58', '{\n    \"tailpress::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-03 19:21:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fce85a64-c8be-43a0-b5d5-7d09cbe70c6a', '', '', '2022-07-03 19:21:58', '2022-07-03 19:21:58', '', 0, 'http://local.tailpress-portfolio.com/2022/07/03/fce85a64-c8be-43a0-b5d5-7d09cbe70c6a/', 0, 'customize_changeset', '', 0),
(17, 1, '2022-07-03 20:02:59', '2022-07-03 20:02:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:5:{i:0;s:11:\"the_content\";i:1;s:10:\"discussion\";i:2;s:8:\"comments\";i:3;s:9:\"revisions\";i:4;s:6:\"author\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home Page Content', 'home-page-content', 'publish', 'closed', 'closed', '', 'group_62c1f51c98fe7', '', '', '2022-07-04 06:21:50', '2022-07-04 06:21:50', '', 0, 'http://local.tailpress-portfolio.com/?post_type=acf-field-group&#038;p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2022-07-03 20:02:59', '2022-07-03 20:02:59', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:1:{s:20:\"layout_62c1f547b640a\";a:6:{s:3:\"key\";s:20:\"layout_62c1f547b640a\";s:5:\"label\";s:17:\"Home Page Content\";s:4:\"name\";s:17:\"home_page_content\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:7:\"Add Row\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:1;}', 'Home Page', 'home_page', 'publish', 'closed', 'closed', '', 'field_62c1f529bba84', '', '', '2022-07-04 06:08:02', '2022-07-04 06:08:02', '', 17, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=18', 0, 'acf-field', '', 0),
(19, 1, '2022-07-03 20:02:59', '2022-07-03 20:02:59', 'a:11:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62c1f547b640a\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Top Banner Text', 'top_banner_text', 'publish', 'closed', 'closed', '', 'field_62c1f582bba85', '', '', '2022-07-04 03:46:24', '2022-07-04 03:46:24', '', 18, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=19', 3, 'acf-field', '', 0),
(20, 1, '2022-07-03 20:12:51', '2022-07-03 20:12:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 20:12:51', '2022-07-03 20:12:51', '', 8, 'http://local.tailpress-portfolio.com/?p=20', 0, 'revision', '', 0),
(21, 1, '2022-07-03 20:14:13', '2022-07-03 20:14:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 20:14:13', '2022-07-03 20:14:13', '', 8, 'http://local.tailpress-portfolio.com/?p=21', 0, 'revision', '', 0),
(22, 1, '2022-07-03 20:14:26', '2022-07-03 20:14:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 20:14:26', '2022-07-03 20:14:26', '', 8, 'http://local.tailpress-portfolio.com/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-07-03 21:15:50', '2022-07-03 21:15:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 21:15:50', '2022-07-03 21:15:50', '', 8, 'http://local.tailpress-portfolio.com/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-07-03 21:16:20', '2022-07-03 21:16:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 21:16:20', '2022-07-03 21:16:20', '', 8, 'http://local.tailpress-portfolio.com/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-07-03 21:21:25', '2022-07-03 21:21:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 21:21:25', '2022-07-03 21:21:25', '', 8, 'http://local.tailpress-portfolio.com/?p=25', 0, 'revision', '', 0),
(26, 1, '2022-07-03 21:22:02', '2022-07-03 21:22:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 21:22:02', '2022-07-03 21:22:02', '', 8, 'http://local.tailpress-portfolio.com/?p=26', 0, 'revision', '', 0),
(27, 1, '2022-07-03 21:22:42', '2022-07-03 21:22:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-03 21:22:42', '2022-07-03 21:22:42', '', 8, 'http://local.tailpress-portfolio.com/?p=27', 0, 'revision', '', 0),
(28, 1, '2022-07-04 01:51:11', '2022-07-04 01:51:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 01:51:11', '2022-07-04 01:51:11', '', 8, 'http://local.tailpress-portfolio.com/?p=28', 0, 'revision', '', 0),
(29, 1, '2022-07-04 01:55:50', '2022-07-04 01:55:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 01:55:50', '2022-07-04 01:55:50', '', 8, 'http://local.tailpress-portfolio.com/?p=29', 0, 'revision', '', 0),
(30, 1, '2022-07-04 01:56:36', '2022-07-04 01:56:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 01:56:36', '2022-07-04 01:56:36', '', 8, 'http://local.tailpress-portfolio.com/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-07-04 01:57:03', '2022-07-04 01:57:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 01:57:03', '2022-07-04 01:57:03', '', 8, 'http://local.tailpress-portfolio.com/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-07-04 02:00:11', '2022-07-04 02:00:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:00:11', '2022-07-04 02:00:11', '', 8, 'http://local.tailpress-portfolio.com/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-07-04 02:26:50', '2022-07-04 02:26:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:26:50', '2022-07-04 02:26:50', '', 8, 'http://local.tailpress-portfolio.com/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-07-04 02:29:02', '2022-07-04 02:29:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:29:02', '2022-07-04 02:29:02', '', 8, 'http://local.tailpress-portfolio.com/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-07-04 02:29:24', '2022-07-04 02:29:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:29:24', '2022-07-04 02:29:24', '', 8, 'http://local.tailpress-portfolio.com/?p=35', 0, 'revision', '', 0),
(36, 1, '2022-07-04 02:31:10', '2022-07-04 02:31:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:31:10', '2022-07-04 02:31:10', '', 8, 'http://local.tailpress-portfolio.com/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-07-04 02:31:49', '2022-07-04 02:31:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:31:49', '2022-07-04 02:31:49', '', 8, 'http://local.tailpress-portfolio.com/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-07-04 02:33:07', '2022-07-04 02:33:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:33:07', '2022-07-04 02:33:07', '', 8, 'http://local.tailpress-portfolio.com/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-07-04 02:34:01', '2022-07-04 02:34:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:34:01', '2022-07-04 02:34:01', '', 8, 'http://local.tailpress-portfolio.com/?p=39', 0, 'revision', '', 0),
(40, 1, '2022-07-04 02:34:41', '2022-07-04 02:34:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:34:41', '2022-07-04 02:34:41', '', 8, 'http://local.tailpress-portfolio.com/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-07-04 02:35:54', '2022-07-04 02:35:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:35:54', '2022-07-04 02:35:54', '', 8, 'http://local.tailpress-portfolio.com/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-07-04 02:48:40', '2022-07-04 02:48:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:48:40', '2022-07-04 02:48:40', '', 8, 'http://local.tailpress-portfolio.com/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-07-04 02:49:00', '2022-07-04 02:49:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:49:00', '2022-07-04 02:49:00', '', 8, 'http://local.tailpress-portfolio.com/?p=43', 0, 'revision', '', 0),
(44, 1, '2022-07-04 02:52:14', '2022-07-04 02:52:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 02:52:14', '2022-07-04 02:52:14', '', 8, 'http://local.tailpress-portfolio.com/?p=44', 0, 'revision', '', 0),
(45, 1, '2022-07-04 03:17:42', '2022-07-04 03:17:42', 'a:10:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62c1f547b640a\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Header Email Address', 'header_email_address', 'publish', 'closed', 'closed', '', 'field_62c25bba1b368', '', '', '2022-07-04 03:46:24', '2022-07-04 03:46:24', '', 18, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=45', 2, 'acf-field', '', 0),
(46, 1, '2022-07-04 03:21:03', '2022-07-04 03:21:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 03:21:03', '2022-07-04 03:21:03', '', 8, 'http://local.tailpress-portfolio.com/?p=46', 0, 'revision', '', 0),
(47, 1, '2022-07-04 03:21:59', '2022-07-04 03:21:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 03:21:59', '2022-07-04 03:21:59', '', 8, 'http://local.tailpress-portfolio.com/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-07-04 03:29:11', '2022-07-04 03:29:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 03:29:11', '2022-07-04 03:29:11', '', 8, 'http://local.tailpress-portfolio.com/?p=48', 0, 'revision', '', 0),
(49, 1, '2022-07-04 03:31:20', '2022-07-04 03:31:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 03:31:20', '2022-07-04 03:31:20', '', 8, 'http://local.tailpress-portfolio.com/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-07-04 03:35:34', '2022-07-04 03:35:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 03:35:34', '2022-07-04 03:35:34', '', 8, 'http://local.tailpress-portfolio.com/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-07-04 03:45:04', '2022-07-04 03:45:04', 'a:8:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62c1f547b640a\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Twitter Account', 'twitter_account', 'publish', 'closed', 'closed', '', 'field_62c261cc51e51', '', '', '2022-07-04 03:47:04', '2022-07-04 03:47:04', '', 18, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=51', 0, 'acf-field', '', 0),
(52, 1, '2022-07-04 03:45:04', '2022-07-04 03:45:04', 'a:8:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62c1f547b640a\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Github Account', 'github_account', 'publish', 'closed', 'closed', '', 'field_62c2622e51e52', '', '', '2022-07-04 03:47:04', '2022-07-04 03:47:04', '', 18, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=52', 1, 'acf-field', '', 0),
(53, 1, '2022-07-04 03:47:39', '2022-07-04 03:47:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 03:47:39', '2022-07-04 03:47:39', '', 8, 'http://local.tailpress-portfolio.com/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-07-04 03:47:50', '2022-07-04 03:47:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 03:47:50', '2022-07-04 03:47:50', '', 8, 'http://local.tailpress-portfolio.com/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-07-04 04:16:38', '2022-07-04 04:16:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 04:16:38', '2022-07-04 04:16:38', '', 8, 'http://local.tailpress-portfolio.com/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-07-04 05:05:51', '2022-07-04 05:05:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 05:05:51', '2022-07-04 05:05:51', '', 8, 'http://local.tailpress-portfolio.com/?p=56', 0, 'revision', '', 0),
(57, 1, '2022-07-04 05:34:10', '2022-07-04 05:34:10', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62c1f547b640a\";s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'About Section Image', 'about_section_image', 'publish', 'closed', 'closed', '', 'field_62c27b69b98dc', '', '', '2022-07-04 06:21:50', '2022-07-04 06:21:50', '', 18, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=57', 4, 'acf-field', '', 0),
(58, 1, '2022-07-04 05:37:28', '2022-07-04 05:37:28', '', 'profile-pic', '', 'inherit', 'open', 'closed', '', 'profile-pic', '', '', '2022-07-04 05:37:28', '2022-07-04 05:37:28', '', 8, 'http://local.tailpress-portfolio.com/wp-content/uploads/2022/07/profile-pic.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2022-07-04 05:41:56', '2022-07-04 05:41:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 05:41:56', '2022-07-04 05:41:56', '', 8, 'http://local.tailpress-portfolio.com/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-07-04 06:08:02', '2022-07-04 06:08:02', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62c1f547b640a\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Red Title', 'about_red_title', 'publish', 'closed', 'closed', '', 'field_62c2835fa6136', '', '', '2022-07-04 06:21:50', '2022-07-04 06:21:50', '', 18, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=60', 5, 'acf-field', '', 0),
(61, 1, '2022-07-04 06:08:02', '2022-07-04 06:08:02', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:5:\"33.33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62c1f547b640a\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About Black Title', 'about_black_title', 'publish', 'closed', 'closed', '', 'field_62c28389a6137', '', '', '2022-07-04 06:21:50', '2022-07-04 06:21:50', '', 18, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=61', 6, 'acf-field', '', 0),
(62, 1, '2022-07-04 06:08:02', '2022-07-04 06:08:02', 'a:11:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_62c1f547b640a\";s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'About Description', 'about_description', 'publish', 'closed', 'closed', '', 'field_62c283a9a6138', '', '', '2022-07-04 06:21:50', '2022-07-04 06:21:50', '', 18, 'http://local.tailpress-portfolio.com/?post_type=acf-field&#038;p=62', 7, 'acf-field', '', 0),
(63, 1, '2022-07-04 06:12:39', '2022-07-04 06:12:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:12:39', '2022-07-04 06:12:39', '', 8, 'http://local.tailpress-portfolio.com/?p=63', 0, 'revision', '', 0),
(64, 1, '2022-07-04 06:13:20', '2022-07-04 06:13:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:13:20', '2022-07-04 06:13:20', '', 8, 'http://local.tailpress-portfolio.com/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-07-04 06:16:21', '2022-07-04 06:16:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:16:21', '2022-07-04 06:16:21', '', 8, 'http://local.tailpress-portfolio.com/?p=65', 0, 'revision', '', 0),
(66, 1, '2022-07-04 06:16:50', '2022-07-04 06:16:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:16:50', '2022-07-04 06:16:50', '', 8, 'http://local.tailpress-portfolio.com/?p=66', 0, 'revision', '', 0),
(67, 1, '2022-07-04 06:17:18', '2022-07-04 06:17:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:17:18', '2022-07-04 06:17:18', '', 8, 'http://local.tailpress-portfolio.com/?p=67', 0, 'revision', '', 0),
(68, 1, '2022-07-04 06:17:52', '2022-07-04 06:17:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:17:52', '2022-07-04 06:17:52', '', 8, 'http://local.tailpress-portfolio.com/?p=68', 0, 'revision', '', 0),
(69, 1, '2022-07-04 06:18:29', '2022-07-04 06:18:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:18:29', '2022-07-04 06:18:29', '', 8, 'http://local.tailpress-portfolio.com/?p=69', 0, 'revision', '', 0),
(70, 1, '2022-07-04 06:19:06', '2022-07-04 06:19:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:19:06', '2022-07-04 06:19:06', '', 8, 'http://local.tailpress-portfolio.com/?p=70', 0, 'revision', '', 0),
(71, 1, '2022-07-04 06:19:37', '2022-07-04 06:19:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:19:37', '2022-07-04 06:19:37', '', 8, 'http://local.tailpress-portfolio.com/?p=71', 0, 'revision', '', 0),
(72, 1, '2022-07-04 06:22:18', '2022-07-04 06:22:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:22:18', '2022-07-04 06:22:18', '', 8, 'http://local.tailpress-portfolio.com/?p=72', 0, 'revision', '', 0),
(73, 1, '2022-07-04 06:22:36', '2022-07-04 06:22:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:22:36', '2022-07-04 06:22:36', '', 8, 'http://local.tailpress-portfolio.com/?p=73', 0, 'revision', '', 0),
(74, 1, '2022-07-04 06:25:08', '2022-07-04 06:25:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:25:08', '2022-07-04 06:25:08', '', 8, 'http://local.tailpress-portfolio.com/?p=74', 0, 'revision', '', 0),
(75, 1, '2022-07-04 06:25:48', '2022-07-04 06:25:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:25:48', '2022-07-04 06:25:48', '', 8, 'http://local.tailpress-portfolio.com/?p=75', 0, 'revision', '', 0),
(76, 1, '2022-07-04 06:45:31', '2022-07-04 06:45:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-04 06:45:31', '2022-07-04 06:45:31', '', 8, 'http://local.tailpress-portfolio.com/?p=76', 0, 'revision', '', 0),
(77, 1, '2022-07-05 03:13:31', '2022-07-05 03:13:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-05 03:13:31', '2022-07-05 03:13:31', '', 8, 'http://local.tailpress-portfolio.com/?p=77', 0, 'revision', '', 0),
(78, 1, '2022-07-05 03:14:04', '2022-07-05 03:14:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-05 03:14:04', '2022-07-05 03:14:04', '', 8, 'http://local.tailpress-portfolio.com/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-07-05 03:14:22', '2022-07-05 03:14:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-07-05 03:14:22', '2022-07-05 03:14:22', '', 8, 'http://local.tailpress-portfolio.com/?p=79', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'tailpress', 'tailpress', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'drodas'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a3e347009a69749bffbaac57402cdd47413d7f596446e45663f37e671ffc1018\";a:4:{s:10:\"expiration\";i:1657046756;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1656873956;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1656915903'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:4:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'drodas', '$P$BzB.kELYtHCVQzQRdpe9nxrm.MYqBu1', 'drodas', 'drodas6232@gmail.com', 'http://local.tailpress-portfolio.com', '2022-07-03 18:45:47', '', 0, 'drodas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=809;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
