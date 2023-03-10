-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 11:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bisrmuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add custom user', 6, 'add_customuser'),
(22, 'Can change custom user', 6, 'change_customuser'),
(23, 'Can delete custom user', 6, 'delete_customuser'),
(24, 'Can view custom user', 6, 'view_customuser'),
(25, 'Can add car_brand', 7, 'add_car_brand'),
(26, 'Can change car_brand', 7, 'change_car_brand'),
(27, 'Can delete car_brand', 7, 'delete_car_brand'),
(28, 'Can view car_brand', 7, 'view_car_brand'),
(29, 'Can add orders', 8, 'add_orders'),
(30, 'Can change orders', 8, 'change_orders'),
(31, 'Can delete orders', 8, 'delete_orders'),
(32, 'Can view orders', 8, 'view_orders'),
(33, 'Can add order_list', 9, 'add_order_list'),
(34, 'Can change order_list', 9, 'change_order_list'),
(35, 'Can delete order_list', 9, 'delete_order_list'),
(36, 'Can view order_list', 9, 'view_order_list');

-- --------------------------------------------------------

--
-- Table structure for table `bisrmutiapp_car_brand`
--

CREATE TABLE `bisrmutiapp_car_brand` (
  `id` bigint(20) NOT NULL,
  `car_style` varchar(250) NOT NULL,
  `car_size` varchar(250) NOT NULL,
  `car_price` varchar(250) NOT NULL,
  `car_yeehaw` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bisrmutiapp_car_brand`
--

INSERT INTO `bisrmutiapp_car_brand` (`id`, `car_style`, `car_size`, `car_price`, `car_yeehaw`) VALUES
(35, 'สี:ดำ', 'ตัวเล็ก', '595,000', 'ISU'),
(36, 'สี:ขาว', 'ตัวกลาง', '695,000', 'SCA'),
(37, 'เพนต์ลวดลาย:อุลตร้าแมน', 'ตัวกลาง', '750,000', 'ISU'),
(38, 'สี:ขาว', 'ตัวท็อป', '990,000', 'ISU'),
(39, 'เพนต์ลวดลาย:โดราเอมอน', 'ตัวท็อป', '1,250,000', 'SCA'),
(40, 'สี:ดำ', 'ตัวเล็ก', '615,000', 'SCA'),
(41, 'เพนต์ลวดลาย:สุขสันต์แมน', 'ตัวท็อป', '1,150,000', 'ISU');

-- --------------------------------------------------------

--
-- Table structure for table `bisrmutiapp_customuser`
--

CREATE TABLE `bisrmutiapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bisrmutiapp_customuser`
--

INSERT INTO `bisrmutiapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_active`, `date_joined`, `email`, `is_staff`, `tel`) VALUES
(2, 'pbkdf2_sha256$320000$Nqv6iIIkEp5fnqKGKgO62y$65ZDLdxYmKbpRjCUneD3gIt8trArGmrn/MQIEEnxNEM=', '2023-03-10 10:05:42.851376', 1, NULL, NULL, 1, '2023-03-09 04:32:53.908733', 'admin@admin.com', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bisrmutiapp_customuser_groups`
--

CREATE TABLE `bisrmutiapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bisrmutiapp_customuser_user_permissions`
--

CREATE TABLE `bisrmutiapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bisrmutiapp_orders`
--

CREATE TABLE `bisrmutiapp_orders` (
  `id` bigint(20) NOT NULL,
  `order_date` date NOT NULL,
  `cus_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bisrmutiapp_order_list`
--

CREATE TABLE `bisrmutiapp_order_list` (
  `id` bigint(20) NOT NULL,
  `car_brand_id` bigint(20) NOT NULL,
  `order_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-09 05:00:39.029576', '1', 'car_brand object (1)', 1, '[{\"added\": {}}]', 7, 2),
(2, '2023-03-09 05:01:59.106589', '2', 'car_brand object (2)', 1, '[{\"added\": {}}]', 7, 2),
(3, '2023-03-09 05:02:51.600972', '3', 'car_brand object (3)', 1, '[{\"added\": {}}]', 7, 2),
(4, '2023-03-09 05:02:54.730039', '4', 'car_brand object (4)', 1, '[{\"added\": {}}]', 7, 2),
(5, '2023-03-09 05:02:56.905972', '5', 'car_brand object (5)', 1, '[{\"added\": {}}]', 7, 2),
(6, '2023-03-09 05:03:02.244908', '6', 'car_brand object (6)', 1, '[{\"added\": {}}]', 7, 2),
(7, '2023-03-09 05:03:06.342857', '7', 'car_brand object (7)', 1, '[{\"added\": {}}]', 7, 2),
(8, '2023-03-09 05:03:09.968377', '8', 'car_brand object (8)', 1, '[{\"added\": {}}]', 7, 2),
(9, '2023-03-09 05:03:12.782275', '9', 'car_brand object (9)', 1, '[{\"added\": {}}]', 7, 2),
(10, '2023-03-09 05:03:15.826356', '10', 'car_brand object (10)', 1, '[{\"added\": {}}]', 7, 2),
(11, '2023-03-09 05:03:18.994980', '11', 'car_brand object (11)', 1, '[{\"added\": {}}]', 7, 2),
(12, '2023-03-09 05:03:21.224721', '12', 'car_brand object (12)', 1, '[{\"added\": {}}]', 7, 2),
(13, '2023-03-09 05:03:25.239205', '13', 'car_brand object (13)', 1, '[{\"added\": {}}]', 7, 2),
(14, '2023-03-09 05:03:26.846852', '14', 'car_brand object (14)', 1, '[{\"added\": {}}]', 7, 2),
(15, '2023-03-09 05:03:29.238297', '15', 'car_brand object (15)', 1, '[{\"added\": {}}]', 7, 2),
(16, '2023-03-09 05:03:33.203412', '16', 'car_brand object (16)', 1, '[{\"added\": {}}]', 7, 2),
(17, '2023-03-09 05:03:36.046954', '17', 'car_brand object (17)', 1, '[{\"added\": {}}]', 7, 2),
(18, '2023-03-09 05:03:38.429838', '18', 'car_brand object (18)', 1, '[{\"added\": {}}]', 7, 2),
(19, '2023-03-09 05:03:41.380072', '19', 'car_brand object (19)', 1, '[{\"added\": {}}]', 7, 2),
(20, '2023-03-09 05:03:43.317515', '20', 'car_brand object (20)', 1, '[{\"added\": {}}]', 7, 2),
(21, '2023-03-09 05:03:44.695914', '21', 'car_brand object (21)', 1, '[{\"added\": {}}]', 7, 2),
(22, '2023-03-10 10:07:35.934695', '35', 'car_brand object (35)', 1, '[{\"added\": {}}]', 7, 2),
(23, '2023-03-10 10:08:22.494498', '36', 'car_brand object (36)', 1, '[{\"added\": {}}]', 7, 2),
(24, '2023-03-10 10:09:01.312525', '37', 'car_brand object (37)', 1, '[{\"added\": {}}]', 7, 2),
(25, '2023-03-10 10:09:46.406057', '38', 'car_brand object (38)', 1, '[{\"added\": {}}]', 7, 2),
(26, '2023-03-10 10:10:16.730771', '39', 'car_brand object (39)', 1, '[{\"added\": {}}]', 7, 2),
(27, '2023-03-10 10:10:38.908765', '40', 'car_brand object (40)', 1, '[{\"added\": {}}]', 7, 2),
(28, '2023-03-10 10:11:13.792807', '41', 'car_brand object (41)', 1, '[{\"added\": {}}]', 7, 2),
(29, '2023-03-10 10:11:44.682399', '37', 'car_brand object (37)', 2, '[{\"changed\": {\"fields\": [\"Car style\"]}}]', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(7, 'bisrmutiapp', 'car_brand'),
(6, 'bisrmutiapp', 'customuser'),
(8, 'bisrmutiapp', 'orders'),
(9, 'bisrmutiapp', 'order_list'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-09 04:25:20.239211'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-03-09 04:25:20.343234'),
(3, 'auth', '0001_initial', '2023-03-09 04:25:20.719330'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-03-09 04:25:20.791350'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-03-09 04:25:20.807350'),
(6, 'auth', '0004_alter_user_username_opts', '2023-03-09 04:25:20.823354'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-03-09 04:25:20.831356'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-03-09 04:25:20.839378'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-03-09 04:25:20.855361'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-03-09 04:25:20.863385'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-03-09 04:25:20.879373'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-03-09 04:25:20.919399'),
(13, 'auth', '0011_update_proxy_permissions', '2023-03-09 04:25:20.927403'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-03-09 04:25:20.943388'),
(15, 'bisrmutiapp', '0001_initial', '2023-03-09 04:25:21.383493'),
(16, 'admin', '0001_initial', '2023-03-09 04:25:21.583543'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-03-09 04:25:21.599570'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-09 04:25:21.615574'),
(19, 'sessions', '0001_initial', '2023-03-09 04:25:21.655563'),
(20, 'bisrmutiapp', '0002_remove_customuser_email_remove_customuser_is_staff_and_more', '2023-03-09 04:29:02.985879'),
(21, 'bisrmutiapp', '0003_customuser_is_staff', '2023-03-09 04:30:53.955493'),
(22, 'bisrmutiapp', '0004_remove_customuser_is_staff_customuser_email_and_more', '2023-03-09 04:31:48.316525'),
(23, 'bisrmutiapp', '0005_customuser_is_staff', '2023-03-09 04:32:24.770897'),
(24, 'bisrmutiapp', '0006_car_brand_remove_customuser_username_customuser_tel_and_more', '2023-03-09 04:49:11.266502'),
(25, 'bisrmutiapp', '0007_alter_orders_order_date', '2023-03-09 18:50:42.490472'),
(26, 'bisrmutiapp', '0008_car_brand_car_yeehaw', '2023-03-10 10:06:30.932815');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('uca9khjt2rkv0a9ghyv7vfthdjwn0l6q', '.eJxVjMsOwiAQRf-FtSHMlEfr0r3fQAYGpGogKe3K-O_apAvd3nPOfQlP21r81tPiZxZngeL0uwWKj1R3wHeqtyZjq-syB7kr8qBdXhun5-Vw_w4K9fKtQ3RAY0ATechkowanNAEgWQhjVkN2WVueUGkwUzRsrQFmrW3AjDiI9wfiTDdb:1pa7xa:3V1XCVtbHSjJ9CL-AviGLhGfKgdlrrla8KRF71AOuvQ', '2023-03-23 04:32:58.920418'),
('uycca3dgo70qxg5fwzl9r6bnno9gavqx', '.eJxVjMsOwiAQRf-FtSHMlEfr0r3fQAYGpGogKe3K-O_apAvd3nPOfQlP21r81tPiZxZngeL0uwWKj1R3wHeqtyZjq-syB7kr8qBdXhun5-Vw_w4K9fKtQ3RAY0ATechkowanNAEgWQhjVkN2WVueUGkwUzRsrQFmrW3AjDiI9wfiTDdb:1paZd8:2Jrm9vXp-avHB3_oj-HYl_3iuI7M6LrpjfgPnieINNw', '2023-03-24 10:05:42.854377');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `bisrmutiapp_car_brand`
--
ALTER TABLE `bisrmutiapp_car_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bisrmutiapp_customuser`
--
ALTER TABLE `bisrmutiapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `bisrmutiapp_customuser_groups`
--
ALTER TABLE `bisrmutiapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bisrmutiapp_customuser_g_customuser_id_group_id_a8f22c58_uniq` (`customuser_id`,`group_id`),
  ADD KEY `bisrmutiapp_customuser_groups_group_id_89d47514_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `bisrmutiapp_customuser_user_permissions`
--
ALTER TABLE `bisrmutiapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bisrmutiapp_customuser_u_customuser_id_permission_a3bc43d7_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `bisrmutiapp_customus_permission_id_3bf42d65_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bisrmutiapp_orders`
--
ALTER TABLE `bisrmutiapp_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bisrmutiapp_orders_cus_id_id_5487c0dc_fk_bisrmutia` (`cus_id_id`);

--
-- Indexes for table `bisrmutiapp_order_list`
--
ALTER TABLE `bisrmutiapp_order_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bisrmutiapp_order_list_order_id_id_car_brand_id_fc86d60a_uniq` (`order_id_id`,`car_brand_id`),
  ADD KEY `bisrmutiapp_order_li_car_brand_id_190e65de_fk_bisrmutia` (`car_brand_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_bisrmutiapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `bisrmutiapp_car_brand`
--
ALTER TABLE `bisrmutiapp_car_brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `bisrmutiapp_customuser`
--
ALTER TABLE `bisrmutiapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bisrmutiapp_customuser_groups`
--
ALTER TABLE `bisrmutiapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bisrmutiapp_customuser_user_permissions`
--
ALTER TABLE `bisrmutiapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bisrmutiapp_orders`
--
ALTER TABLE `bisrmutiapp_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bisrmutiapp_order_list`
--
ALTER TABLE `bisrmutiapp_order_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `bisrmutiapp_customuser_groups`
--
ALTER TABLE `bisrmutiapp_customuser_groups`
  ADD CONSTRAINT `bisrmutiapp_customus_customuser_id_5056069a_fk_bisrmutia` FOREIGN KEY (`customuser_id`) REFERENCES `bisrmutiapp_customuser` (`id`),
  ADD CONSTRAINT `bisrmutiapp_customuser_groups_group_id_89d47514_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `bisrmutiapp_customuser_user_permissions`
--
ALTER TABLE `bisrmutiapp_customuser_user_permissions`
  ADD CONSTRAINT `bisrmutiapp_customus_customuser_id_68a4402b_fk_bisrmutia` FOREIGN KEY (`customuser_id`) REFERENCES `bisrmutiapp_customuser` (`id`),
  ADD CONSTRAINT `bisrmutiapp_customus_permission_id_3bf42d65_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `bisrmutiapp_orders`
--
ALTER TABLE `bisrmutiapp_orders`
  ADD CONSTRAINT `bisrmutiapp_orders_cus_id_id_5487c0dc_fk_bisrmutia` FOREIGN KEY (`cus_id_id`) REFERENCES `bisrmutiapp_customuser` (`id`);

--
-- Constraints for table `bisrmutiapp_order_list`
--
ALTER TABLE `bisrmutiapp_order_list`
  ADD CONSTRAINT `bisrmutiapp_order_li_car_brand_id_190e65de_fk_bisrmutia` FOREIGN KEY (`car_brand_id`) REFERENCES `bisrmutiapp_car_brand` (`id`),
  ADD CONSTRAINT `bisrmutiapp_order_li_order_id_id_bedf5d26_fk_bisrmutia` FOREIGN KEY (`order_id_id`) REFERENCES `bisrmutiapp_orders` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_bisrmutiapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `bisrmutiapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
