-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-10-2015 a las 08:28:56
-- Versión del servidor: 5.5.43-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cakephp-store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `selected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `parent_id`, `user_id`, `size`, `name`, `name_tag`, `selected`, `deleted`, `created`, `modified`) VALUES
('5522d119-5700-40a3-a9ec-236a7f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', 'e86a1cd6-555f-4fe5-9aa9-19cee55f9f06.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, 1, '2015-04-06 14:01:53', '2015-04-19 16:06:26'),
('5522d119-7d08-41b0-b922-23607f00000c', '5522d119-9ac0-4cd2-ad16-23607f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '31520745-a081-4309-ae42-c16a787ebdb8.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:01:53', '2015-04-19 16:06:26'),
('5522d119-9ac0-4cd2-ad16-23607f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '314da80a-91f3-4a02-bde9-cf6935045296.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 1, '2015-04-06 14:01:53', '2015-04-19 16:06:26'),
('5522d119-c140-4a1f-9e67-236a7f00000c', '5522d119-5700-40a3-a9ec-236a7f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'c3e65357-6146-4daf-b339-c66f6ea5e1be.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, 0, '2015-04-06 14:01:53', '2015-04-19 16:06:26'),
('5522d13c-634c-4a20-b69f-12787f00000c', '5522d13c-ba38-47e5-8b20-12787f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'c2410b08-f58c-43d0-9b1e-f89100b75467.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, 0, '2015-04-06 14:02:28', '2015-04-19 16:06:26'),
('5522d13c-8f9c-4841-b460-23607f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '9385808b-b85a-4293-a752-99f9b921e7b4.jpg', '120-PG-0750-GR_LG_4.jpg', 0, 1, '2015-04-06 14:02:28', '2015-04-19 16:06:26'),
('5522d13c-ba38-47e5-8b20-12787f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', 'ec18d75c-d0f0-4f5f-b0f7-81e20864a28f.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, 1, '2015-04-06 14:02:28', '2015-04-19 16:06:27'),
('5522d13c-fb38-42a5-ac2f-23607f00000c', '5522d13c-8f9c-4841-b460-23607f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'ace59b73-5c4d-4412-b1b0-e2d48fe10929.jpg', '120-PG-0750-GR_LG_4.jpg', 0, 0, '2015-04-06 14:02:28', '2015-04-19 16:06:27'),
('5522d237-4400-4c76-a1d3-24a77f00000c', '5522d237-8c80-4e34-93ee-24a77f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '1dd48567-f864-4eff-96d5-30c0a05abafe.jpg', '04G-P4-3688-KR_LG_6.jpg', 0, 0, '2015-04-06 14:06:39', '2015-04-19 16:06:27'),
('5522d237-55b8-4bff-b7ca-11247f00000c', '5522d237-7de4-4d3c-9744-11247f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '2b7f546b-06c4-40e8-b9f3-bef817b9fb74.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, 0, '2015-04-06 14:06:39', '2015-04-19 16:06:27'),
('5522d237-7de4-4d3c-9744-11247f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '5f8420fc-96b6-414c-95e5-46cd35246716.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, 1, '2015-04-06 14:06:39', '2015-04-19 16:06:27'),
('5522d237-8c80-4e34-93ee-24a77f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', 'e32436cb-f5c8-42ce-bfab-c8c44f96301f.jpg', '04G-P4-3688-KR_LG_6.jpg', 0, 1, '2015-04-06 14:06:39', '2015-04-19 16:06:27'),
('5522d2aa-b90c-4c3b-981d-12787f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '59fa2008-f5e4-4fa3-89ea-606b944a13af.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 1, '2015-04-06 14:08:34', '2015-04-19 16:06:27'),
('5522d2ab-2df0-470d-aa86-218a7f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '577ef968-737f-4966-9b81-688ddaf4fe45.jpg', '120-PG-1500-XR_LG_7.jpg', 0, 1, '2015-04-06 14:08:35', '2015-04-19 16:06:27'),
('5522d2ab-63c4-441e-9df0-12787f00000c', '5522d2aa-b90c-4c3b-981d-12787f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'd5f05ea3-5359-4e17-a484-f82ece2f75d8.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:08:35', '2015-04-19 16:06:27'),
('5522d2ab-67ec-4308-aae3-218a7f00000c', '5522d2ab-2df0-470d-aa86-218a7f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg', '120-PG-1500-XR_LG_7.jpg', 0, 0, '2015-04-06 14:08:35', '2015-04-19 16:06:27'),
('5522d6c6-b85c-49e3-8230-24de7f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '14a97b60-9866-4112-84b8-964f3d468521.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 1, '2015-04-06 14:26:06', '2015-04-19 16:06:27'),
('5522d6c7-ebe8-495e-94f9-24de7f00000c', '5522d6c6-b85c-49e3-8230-24de7f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'e96ddb7c-1f52-470f-ac16-a24c0218d5b4.jpg', '120-PG-0750-GR_LG_3.jpg', 0, 0, '2015-04-06 14:26:07', '2015-04-19 16:06:27'),
('5522de94-e7d8-4801-b9a5-29647f00000c', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '9e9057f2-2abb-4d8b-984f-93f9f4a86eab.jpg', 'hero-1.jpg', 0, 1, '2015-04-06 14:59:24', '2015-04-19 16:06:27'),
('5522de95-53e8-4986-80f3-29647f00000c', '5522de94-e7d8-4801-b9a5-29647f00000c', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '8a726a00-2490-48b8-9f5c-dd360989049b.jpg', 'hero-1.jpg', 0, 0, '2015-04-06 14:59:25', '2015-04-19 16:06:27'),
('5533b03c-a734-4ce1-a3a4-317b7f00000a', '5533b03c-ebb4-4fee-b209-317b7f00000a', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', 'd67d2ea7-059f-4cc8-8f1b-5a3a02b9c7a6.jpg', 'photos_int_01.jpg', 0, 0, '2015-04-19 09:10:12', '2015-04-19 16:06:27'),
('5533b03c-ebb4-4fee-b209-317b7f00000a', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', '67d5bfb9-c98c-44ac-b53e-71cee3743410.jpg', 'photos_int_01.jpg', 0, 0, '2015-04-19 09:10:12', '2015-04-19 16:06:27'),
('5533b05a-0298-4d82-82d8-32307f00000a', '5533b05a-a6d8-4ef0-bec7-32307f00000a', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '7260ec20-88e8-4fce-8091-577520a2625f.jpg', 'Bruce-Lee-Quote-Wallpaper-Actor.jpg', 0, 0, '2015-04-19 09:10:42', '2015-04-19 16:06:27'),
('5533b05a-a6d8-4ef0-bec7-32307f00000a', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', 'b825f8bd-d089-462e-b6c4-59d8b93be424.jpg', 'Bruce-Lee-Quote-Wallpaper-Actor.jpg', 0, 0, '2015-04-19 09:10:42', '2015-04-19 16:06:27'),
('553411c8-2100-463c-ac4e-43887f00000b', NULL, '54bd4fc0-45f0-464f-82f1-33007f000008', 'small', 'f15dcca2-8695-4fcc-850c-5f80d1292d89.jpg', '1208-8l-08+wish-list-2011-ford-f250+2011-ford-f250-super-duty-side-angle.jpg', 0, 0, '2015-04-19 16:06:24', '2015-04-19 16:06:27'),
('553411c8-59b0-4beb-bda5-43887f00000b', '553411c8-2100-463c-ac4e-43887f00000b', '54bd4fc0-45f0-464f-82f1-33007f000008', 'facebook', '5ad4be12-3a38-4702-b934-a06c32f63898.jpg', '1208-8l-08+wish-list-2011-ford-f250+2011-ford-f250-super-duty-side-angle.jpg', 1, 0, '2015-04-19 16:06:24', '2015-04-19 16:06:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cake_sessions`
--

CREATE TABLE IF NOT EXISTS `cake_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cake_sessions`
--

INSERT INTO `cake_sessions` (`id`, `data`, `expires`) VALUES
('4sk1i43ume1701q27enh6gfb01', 'Config|a:3:{s:9:"userAgent";s:32:"55f6b1fe2e3fe037781160074d23dbdc";s:4:"time";i:1421955675;s:9:"countdown";i:10;}Auth|a:1:{s:8:"redirect";s:1:"/";}Message|a:1:{s:4:"auth";a:3:{s:7:"message";s:47:"You are not authorized to access that location.";s:7:"element";s:7:"default";s:6:"params";a:0:{}}}', 1421955675),
('19ho6satuitn85dd3jah4fu2h3', 'Config|a:3:{s:9:"userAgent";s:32:"fbbe48b71c2e980eae4b9031776ba90e";s:4:"time";i:1428611343;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"54bd4fc0-45f0-464f-82f1-33007f000008";s:8:"password";s:60:"$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa";s:13:"temp_password";s:60:"$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu";s:4:"name";s:5:"Maria";s:5:"email";s:13:"mia@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";N;s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-01-19 14:11:04";s:8:"modified";s:19:"2015-01-19 14:11:04";}}}', 1428611343),
('351sm40q9pme1i7fs0136nolv4', 'Config|a:3:{s:9:"userAgent";s:32:"fbbe48b71c2e980eae4b9031776ba90e";s:4:"time";i:1429715383;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"54bd4fc0-45f0-464f-82f1-33007f000008";s:8:"password";s:60:"$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa";s:13:"temp_password";s:60:"$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu";s:4:"name";s:5:"Maria";s:5:"email";s:13:"mia@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";s:40:"3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg";s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-01-19 14:11:04";s:8:"modified";s:19:"2015-04-06 14:08:38";}}}', 1429715383),
('s53650be0o60igukdu0bgsplg7', 'Config|a:3:{s:9:"userAgent";s:32:"fbbe48b71c2e980eae4b9031776ba90e";s:4:"time";i:1429744026;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"54bd4fc0-45f0-464f-82f1-33007f000008";s:8:"password";s:60:"$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa";s:13:"temp_password";s:60:"$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu";s:4:"name";s:5:"Maria";s:5:"email";s:13:"mia@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";s:40:"3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg";s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-01-19 14:11:04";s:8:"modified";s:19:"2015-04-06 14:08:38";}}}', 1429744026),
('6tevvb3482ivrbg77nds6pdoc6', 'Config|a:3:{s:9:"userAgent";s:32:"fbbe48b71c2e980eae4b9031776ba90e";s:4:"time";i:1436032981;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"54bd4fc0-45f0-464f-82f1-33007f000008";s:8:"password";s:60:"$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa";s:13:"temp_password";s:60:"$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu";s:4:"name";s:5:"Maria";s:5:"email";s:13:"mia@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";s:40:"3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg";s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-01-19 14:11:04";s:8:"modified";s:19:"2015-04-06 14:08:38";}}}', 1436032981),
('f65qb16tggq1hgntqg9stprja4', 'Config|a:3:{s:9:"userAgent";s:32:"6d84d921ac9b87baacdb643b35b56809";s:4:"time";i:1437948217;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"54bd4fc0-45f0-464f-82f1-33007f000008";s:8:"password";s:60:"$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa";s:13:"temp_password";s:60:"$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu";s:4:"name";s:5:"Maria";s:5:"email";s:13:"mia@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";s:40:"3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg";s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-01-19 14:11:04";s:8:"modified";s:19:"2015-04-06 14:08:38";}}}', 1437948217),
('mb3j0lsqua1evp2ajnjk88huo4', 'Config|a:3:{s:9:"userAgent";s:32:"6d84d921ac9b87baacdb643b35b56809";s:4:"time";i:1438563001;s:9:"countdown";i:10;}Auth|a:1:{s:4:"User";a:1:{s:4:"User";a:15:{s:2:"id";s:36:"54bd4fc0-45f0-464f-82f1-33007f000008";s:8:"password";s:60:"$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa";s:13:"temp_password";s:60:"$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu";s:4:"name";s:5:"Maria";s:5:"email";s:13:"mia@gmail.com";s:14:"email_verified";b:1;s:5:"phone";N;s:6:"banner";s:40:"3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg";s:6:"banned";b:0;s:13:"banned_reason";N;s:9:"suspended";b:0;s:16:"suspended_reason";N;s:7:"deleted";b:0;s:7:"created";s:19:"2015-01-19 14:11:04";s:8:"modified";s:19:"2015-04-06 14:08:38";}}}', 1438563002);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` char(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `parent_id`, `product_id`, `size`, `name`, `name_tag`, `deleted`, `created`, `modified`) VALUES
('54bd5007-4e04-4d2c-8f39-30277f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '4623c957-7843-4eec-9eb6-03f0cec92c4d.jpg', '04G-P4-2699-K2_LG_6.jpg', 1, '2015-01-19 14:12:15', '2015-04-06 14:01:17'),
('54bd5007-5768-4660-97c9-303d7f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '52794aea-4e21-456c-a266-9d3d46ee7156.jpg', '02G-P4-2689-KR_LG_7.jpg', 1, '2015-01-19 14:12:15', '2015-01-19 14:13:01'),
('54bd5007-e378-4423-9068-30277f000008', '54bd5007-4e04-4d2c-8f39-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', 'cda26c41-e49a-45b2-bf5c-924610634859.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, '2015-01-19 14:12:15', '2015-01-19 14:12:15'),
('54bd5008-0a94-4015-b8b2-30277f000008', '54bd5008-2c28-4da9-9efb-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '9bd81baf-043d-4c0d-9dfa-8ba8d346d31d.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-0be4-4957-a786-30277f000008', '54bd5008-47e8-42d1-b58c-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '397abf89-90ce-4e06-9453-5bed99ca9ff4.jpg', '151-SE-E779-K2_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-1990-462d-83da-30277f000008', '54bd5007-4e04-4d2c-8f39-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '08eb44fd-ec99-4264-9405-fdea97ada4be.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-2c28-4da9-9efb-30277f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'ce894b02-6f3d-4e89-b93f-5a33a9ad012c.jpg', '04G-P4-3688-KR_LG_4.jpg', 1, '2015-01-19 14:12:16', '2015-04-06 14:01:17'),
('54bd5008-413c-49f2-8232-303d7f000008', '54bd5008-58e0-4bd9-b1b2-303d7f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', 'd369f96c-ec05-4c47-afc1-366e21b30f9a.jpg', '120-PG-0750-GR_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-47e8-42d1-b58c-30277f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'b7ee7556-0166-46bc-b483-867f091dadfc.jpg', '151-SE-E779-K2_LG_4.jpg', 1, '2015-01-19 14:12:16', '2015-04-06 14:01:17'),
('54bd5008-52b4-4476-ae0e-30277f000008', '54bd5008-2c28-4da9-9efb-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '82a3c8a7-021d-4040-88d4-e1c54d389e8a.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-58e0-4bd9-b1b2-303d7f000008', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '208f6c5c-f728-4332-b996-d37b0a847221.jpg', '120-PG-0750-GR_LG_4.jpg', 1, '2015-01-19 14:12:16', '2015-04-06 14:01:18'),
('54bd5008-6fa4-4b57-9bf8-30277f000008', '54bd5008-47e8-42d1-b58c-30277f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '8695ea63-7b5b-4947-af98-34aefe1512e6.jpg', '151-SE-E779-K2_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-92a4-43c4-95b9-303d7f000008', '54bd5007-5768-4660-97c9-303d7f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '35cae1b0-c388-44c6-bb1b-a4acaa51edf4.jpg', '02G-P4-2689-KR_LG_7.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-9e78-4ed2-9ad9-303d7f000008', '54bd5007-5768-4660-97c9-303d7f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '82b18f9e-8e3b-4bb5-a467-ec6d8f14ee9c.jpg', '02G-P4-2689-KR_LG_7.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd5008-f3e0-4196-80d4-303d7f000008', '54bd5008-58e0-4bd9-b1b2-303d7f000008', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '1a480ce5-6844-4a13-8598-360bcb5f48d5.jpg', '120-PG-0750-GR_LG_4.jpg', 0, '2015-01-19 14:12:16', '2015-01-19 14:12:16'),
('54bd583a-4ea0-42ba-abb6-3c1c7f000008', '54bd583a-a5a4-4de3-8a4e-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '53c53c55-38da-4e96-ba81-0ef20fc820ad.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-907c-4397-a545-303d7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '668b45fc-5ec6-4fa1-95c2-bd94b41ba415.jpg', '04G-P4-2699-K2_LG_6.jpg', 1, '2015-01-19 14:47:14', '2015-04-06 14:01:02'),
('54bd583a-9d04-4d53-96e8-303d7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '99a37470-37ac-4b92-b86e-c3ff2b7eaa71.jpg', '04G-P4-3688-KR_LG_4.jpg', 1, '2015-01-19 14:47:14', '2015-04-06 14:01:02'),
('54bd583a-a5a4-4de3-8a4e-3c1c7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', 'd2d20a68-0ec7-4ce3-b4cd-52e014ef9380.jpg', '04G-P4-2690-KR_LG_4.jpg', 1, '2015-01-19 14:47:14', '2015-04-06 14:01:03'),
('54bd583a-b498-4721-b19b-3c1c7f000008', '54bd583a-dea8-4fd1-b740-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '91d752f6-538f-4c7a-bb8a-289b1fbae811.jpg', '04G-P4-2699-K2_LG_7.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-c220-4bd7-8399-303d7f000008', '54bd583a-9d04-4d53-96e8-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '5ec330ad-ffbf-4a20-a15e-84bcf5e8cab4.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-dea8-4fd1-b740-3c1c7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '689f1232-6d8e-45c4-974c-b0fd9190bb2e.jpg', '04G-P4-2699-K2_LG_7.jpg', 1, '2015-01-19 14:47:14', '2015-04-06 14:01:03'),
('54bd583a-dfdc-4a3a-8a0d-3c1c7f000008', '54bd583a-a5a4-4de3-8a4e-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '98da58c1-3fa8-4da0-8bfc-e29ae65f22fb.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-e524-40cd-a468-303d7f000008', '54bd583a-907c-4397-a545-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '33c103b7-7c69-49b0-8fda-7049cd42ae20.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583a-ed20-40fd-be9c-303d7f000008', '54bd583a-907c-4397-a545-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', 'ad4405c3-5d09-4487-89a3-ec62de04dc0b.jpg', '04G-P4-2699-K2_LG_6.jpg', 0, '2015-01-19 14:47:14', '2015-01-19 14:47:14'),
('54bd583b-0f90-4fb5-97b3-303d7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '8fec37f1-abf4-4537-a8fe-ae6194529890.jpg', '120-PG-1500-XR_LG_4.jpg', 1, '2015-01-19 14:47:15', '2015-04-06 14:01:03'),
('54bd583b-4008-45eb-99a0-303d7f000008', '54bd583b-0f90-4fb5-97b3-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'c59f3020-01ed-485c-8b86-53df0d357700.jpg', '120-PG-1500-XR_LG_4.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-4e5c-4534-86d6-3c1c7f000008', '54bd583a-dea8-4fd1-b740-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '4f6d28bd-85ea-4f92-b7eb-41ca48126f2b.jpg', '04G-P4-2699-K2_LG_7.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-9c58-466b-a803-303d7f000008', '54bd583a-9d04-4d53-96e8-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'ce817c86-6283-4352-99c4-74754c3f36b8.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-aa6c-48d2-ab91-3c1c7f000008', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '3554e672-acb6-426e-957c-d053158fdb15.jpg', '120-PG-0750-GR_LG_1.jpg', 1, '2015-01-19 14:47:15', '2015-04-06 14:01:03'),
('54bd583b-b45c-4843-8c76-3c1c7f000008', '54bd583b-aa6c-48d2-ab91-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '3ede507a-6c02-4c2e-a655-c1b1363c4dff.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-d8f0-4ac2-8df8-3c1c7f000008', '54bd583b-aa6c-48d2-ab91-3c1c7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '31a0962e-a31a-41db-b5d8-29c9b5281c59.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd583b-fb6c-4847-be39-303d7f000008', '54bd583b-0f90-4fb5-97b3-303d7f000008', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', 'ebd15355-0e3b-4258-aa14-5c2ce5d50c66.jpg', '120-PG-1500-XR_LG_4.jpg', 0, '2015-01-19 14:47:15', '2015-01-19 14:47:15'),
('54bd5869-24fc-4cee-b02e-3a597f000008', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'e5129e96-d4fb-46b5-a3eb-c791b6f5a5ed.jpg', '04G-P4-2699-K2_LG_4.jpg', 1, '2015-01-19 14:48:01', '2015-04-06 14:00:44'),
('54bd5869-2a20-4022-b19a-3a597f000008', '54bd5869-24fc-4cee-b02e-3a597f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '3b1bb2b3-2d86-4aed-a910-71e6738b3eb5.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-703c-467c-a0fc-399d7f000008', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', '1f77b265-c0f7-4f92-9a01-536a8a51f73e.jpg', '04G-P4-3688-KR_LG_6.jpg', 1, '2015-01-19 14:48:01', '2015-04-06 14:00:45'),
('54bd5869-7d08-42d8-bed9-3a597f000008', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'efd3bfc6-2d93-4803-a543-f5ab92e2db36.jpg', '120-PG-1500-XR_LG_3.jpg', 1, '2015-01-19 14:48:01', '2015-04-06 14:00:45'),
('54bd5869-88b0-4d90-90c3-399d7f000008', '54bd5869-703c-467c-a0fc-399d7f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '10e49159-1afc-4010-b084-5b8ccffc19e1.jpg', '04G-P4-3688-KR_LG_6.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-b814-4546-b908-3a597f000008', '54bd5869-24fc-4cee-b02e-3a597f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '10877024-f399-4693-9bcb-2a9212ffe220.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-ede8-47c8-8f76-3a597f000008', '54bd5869-7d08-42d8-bed9-3a597f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', 'e1fb975b-cad0-483a-bbbd-56c8ece80e62.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-eeac-4a19-aaf2-3a597f000008', '54bd5869-7d08-42d8-bed9-3a597f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'd30047e2-6472-4db6-a1b9-d5bbe6cee840.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('54bd5869-f980-4cda-873d-399d7f000008', '54bd5869-703c-467c-a0fc-399d7f000008', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'f8d63c8a-4e9e-420c-84dc-5992787ec779.jpg', '04G-P4-3688-KR_LG_6.jpg', 0, '2015-01-19 14:48:01', '2015-01-19 14:48:01'),
('5522d0db-0958-41cc-a95c-218a7f00000c', '5522d0db-09fc-42a5-be50-218a7f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'af0f7d27-81aa-4d84-873f-9225b7f96cd9.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0db-09fc-42a5-be50-218a7f00000c', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'a18f5080-f436-4e1c-b888-2bcf36568f73.jpg', '04G-P4-2690-KR_LG_4.jpg', 1, '2015-04-06 14:00:51', '2015-04-19 09:08:13'),
('5522d0db-0bf0-42db-a1c3-21867f00000c', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', '62c403b3-8a58-48a2-854a-91d63932e640.jpg', '04G-P4-2699-K2_LG_4.jpg', 1, '2015-04-06 14:00:51', '2015-04-19 09:08:14'),
('5522d0db-7e48-478b-86bc-21867f00000c', '5522d0db-0bf0-42db-a1c3-21867f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '3ad37a04-c374-4672-882c-cd7d1ff91918.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0db-9640-483a-ade8-218a7f00000c', '5522d0db-09fc-42a5-be50-218a7f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', 'ec7580e1-0e32-4b59-9cd8-f8a90284721c.jpg', '04G-P4-2690-KR_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0db-b4f4-46f1-9ee1-21867f00000c', '5522d0db-0bf0-42db-a1c3-21867f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '29c452bb-46e6-4675-b97e-29726718b63f.jpg', '04G-P4-2699-K2_LG_4.jpg', 0, '2015-04-06 14:00:51', '2015-04-06 14:00:51'),
('5522d0dc-2414-416c-8323-218a7f00000c', '5522d0dc-b834-4d8b-9b92-218a7f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '5a52effa-60d8-4e3a-9e27-f87078b170ea.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0dc-2c24-45d0-8932-218a7f00000c', '5522d0dc-b834-4d8b-9b92-218a7f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '677127cc-ad8d-4cd2-8c7d-5490a945e722.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0dc-6ea8-4781-bd38-21867f00000c', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', '0cef97ca-5e19-4a1b-91a6-8b02061777d1.jpg', '120-PG-0750-GR_LG_1.jpg', 1, '2015-04-06 14:00:52', '2015-04-19 09:08:15'),
('5522d0dc-9108-447a-8591-21867f00000c', '5522d0dc-6ea8-4781-bd38-21867f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '36a840fd-c179-4f07-96ee-b34807bd1f54.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0dc-b834-4d8b-9b92-218a7f00000c', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'd3dfab9a-190a-4b49-b4b0-2ea72eb1b0a8.jpg', '04G-P4-3688-KR_LG_4.jpg', 1, '2015-04-06 14:00:52', '2015-04-19 09:08:15'),
('5522d0dc-bad0-46dc-a9ce-21867f00000c', '5522d0dc-6ea8-4781-bd38-21867f00000c', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'e95ab243-ff88-436d-b23d-69d2c0e983e7.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:00:52', '2015-04-06 14:00:52'),
('5522d0ed-0f80-46c7-978b-11237f00000c', '5522d0ed-7acc-482e-a411-11237f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '0b263dae-0267-4d0e-a059-f5bfe1437b8c.jpg', '120-PG-1500-XR_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-181c-4dd1-b42b-10e17f00000c', '5522d0ed-a1b0-4f59-97ff-10e17f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'b2ab2e59-7c5d-4275-ba50-bb53360223b9.jpg', '151-SE-E779-K2_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-3058-4256-af91-10e17f00000c', '5522d0ed-a1b0-4f59-97ff-10e17f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '04f7c0b6-2e95-461a-875a-aceda8ad4b23.jpg', '151-SE-E779-K2_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-69e0-4aeb-9fdb-10e17f00000c', '5522d0ed-7cc0-46cf-a6cd-10e17f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'e7d27e97-0ee8-41a2-8a47-58d1a8cce25c.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-7acc-482e-a411-11237f00000c', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '8bb0e2ff-c403-4b9d-8925-2ef79e7ddef2.jpg', '120-PG-1500-XR_LG_1.jpg', 1, '2015-04-06 14:01:09', '2015-04-19 09:08:33'),
('5522d0ed-7cc0-46cf-a6cd-10e17f00000c', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', 'd7547b44-4e03-49f3-8b99-46674612b212.jpg', '04G-P4-3688-KR_LG_4.jpg', 1, '2015-04-06 14:01:09', '2015-04-19 09:08:33'),
('5522d0ed-a1b0-4f59-97ff-10e17f00000c', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '1400b914-4a4e-45f5-b500-43acbbcfb418.jpg', '151-SE-E779-K2_LG_1.jpg', 1, '2015-04-06 14:01:09', '2015-04-19 09:08:34'),
('5522d0ed-b2d0-4c88-9ce6-10e17f00000c', '5522d0ed-7cc0-46cf-a6cd-10e17f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '7cdf99ed-efd7-4291-a058-7d2125a3e9b2.jpg', '04G-P4-3688-KR_LG_4.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0ed-c720-45f6-ab4e-11237f00000c', '5522d0ed-7acc-482e-a411-11237f00000c', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '6023f45f-c6f5-4ca8-8e75-5a2c9e19cc2c.jpg', '120-PG-1500-XR_LG_1.jpg', 0, '2015-04-06 14:01:09', '2015-04-06 14:01:09'),
('5522d0fc-0738-47ab-becb-24797f00000c', '5522d0fc-0c34-4d47-a3e2-24797f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '261c4e51-df6d-4df1-8afe-29b62bfcf9e8.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-0c34-4d47-a3e2-24797f00000c', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '44da642b-78e8-4ec2-a266-e9459e990da4.jpg', '120-PG-0750-GR_LG_1.jpg', 1, '2015-04-06 14:01:24', '2015-04-19 09:09:18'),
('5522d0fc-2890-4eac-8f01-11247f00000c', '5522d0fc-6d54-48e8-af27-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '7116c7a9-31a7-4d76-bdbd-2330693fa6b6.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-6d54-48e8-af27-11247f00000c', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'b4ffa9d5-c4d7-472d-ac9b-865279864305.jpg', '120-PG-1500-XR_LG_3.jpg', 1, '2015-04-06 14:01:24', '2015-04-19 09:09:19'),
('5522d0fc-8a9c-4d08-b3b4-11247f00000c', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'bab89d90-99da-429a-a3f7-2faa3c2152c2.jpg', '151-SE-E779-K2_LG_7.jpg', 1, '2015-04-06 14:01:24', '2015-04-19 09:09:19'),
('5522d0fc-8ea8-4ed3-a4ff-24797f00000c', '5522d0fc-0c34-4d47-a3e2-24797f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', 'd13f8417-a815-4894-b182-3e1145fb543f.jpg', '120-PG-0750-GR_LG_1.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-d15c-4e98-b90a-11247f00000c', '5522d0fc-8a9c-4d08-b3b4-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '5c3fd36e-7009-4a55-9c39-690c5588e1f5.jpg', '151-SE-E779-K2_LG_7.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-d2e8-459e-89ab-11247f00000c', '5522d0fc-8a9c-4d08-b3b4-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '3f5b8305-3780-46dc-8df7-9f39acbfc613.jpg', '151-SE-E779-K2_LG_7.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5522d0fc-f338-45c7-8551-11247f00000c', '5522d0fc-6d54-48e8-af27-11247f00000c', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '1edd0d9b-850e-48da-af12-cc7b900495ff.jpg', '120-PG-1500-XR_LG_3.jpg', 0, '2015-04-06 14:01:24', '2015-04-06 14:01:24'),
('5533afcf-0a84-4bc9-8c6a-32c37f00000a', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'a8388a0b-c6a0-4582-bb2b-4ddc6dcb3ace.jpg', '12G-P4-3999-KR_XL_6.jpg', 1, '2015-04-19 09:08:23', '2015-04-19 16:11:12'),
('5533afcf-3330-47e0-8b3d-32c37f00000a', '5533afcf-611c-40c3-ad72-32c37f00000a', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '410a110a-dd7f-4a85-a674-30c187f8e62d.jpg', '06G-P4-3799-KR_XL_5.jpg', 0, '2015-04-19 09:08:23', '2015-04-19 09:08:23'),
('5533afcf-3f8c-4798-8989-298e7f00000a', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', 'b8d6e746-0d09-4194-bdfd-55fcd42eb224.jpg', '06G-P4-3799-KR_XL_7.jpg', 1, '2015-04-19 09:08:23', '2015-04-19 16:11:12'),
('5533afcf-611c-40c3-ad72-32c37f00000a', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', '6d1c7293-4eff-4fd5-8300-b4789fab5d57.jpg', '06G-P4-3799-KR_XL_5.jpg', 1, '2015-04-19 09:08:23', '2015-04-19 16:11:12'),
('5533afcf-b33c-4ee4-8543-32c37f00000a', '5533afcf-0a84-4bc9-8c6a-32c37f00000a', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', 'a189ff84-f4f5-4026-9b5e-e3167e176db3.jpg', '12G-P4-3999-KR_XL_6.jpg', 0, '2015-04-19 09:08:23', '2015-04-19 09:08:23'),
('5533afcf-c83c-49bf-ae5c-298e7f00000a', '5533afcf-3f8c-4798-8989-298e7f00000a', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '3207721d-0e26-44b6-a155-b47b3e5f7e7b.jpg', '06G-P4-3799-KR_XL_7.jpg', 0, '2015-04-19 09:08:23', '2015-04-19 09:08:23'),
('5533afcf-cee8-4a18-8689-298e7f00000a', '5533afcf-3f8c-4798-8989-298e7f00000a', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', 'a7bcdb78-ec20-46f5-985b-3953fce20833.jpg', '06G-P4-3799-KR_XL_7.jpg', 0, '2015-04-19 09:08:23', '2015-04-19 09:08:23'),
('5533afcf-e078-40d0-922c-32c37f00000a', '5533afcf-611c-40c3-ad72-32c37f00000a', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '77f32f11-7e33-4bc6-bc10-f03f272417c0.jpg', '06G-P4-3799-KR_XL_5.jpg', 0, '2015-04-19 09:08:23', '2015-04-19 09:08:23'),
('5533afcf-ff6c-40c1-ae82-32c37f00000a', '5533afcf-0a84-4bc9-8c6a-32c37f00000a', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '1409ad43-c902-40c1-a607-ece29742d69d.jpg', '12G-P4-3999-KR_XL_6.jpg', 0, '2015-04-19 09:08:23', '2015-04-19 09:08:23'),
('5533afdf-0d80-4486-9d69-32307f00000a', '5533afdf-2ef0-4c61-8a6c-32307f00000a', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', 'ec7350f6-35d2-4713-a19a-b49a37e9153b.jpg', '06G-P4-3799-KR_XL_7.jpg', 0, '2015-04-19 09:08:39', '2015-04-19 09:08:39'),
('5533afdf-1150-431c-b4d9-317a7f00000a', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', '2d0fd4aa-7fff-4562-80bc-e9c4a641b1bd.jpg', '12G-P4-3999-KR_XL_6.jpg', 1, '2015-04-19 09:08:39', '2015-04-19 09:09:11'),
('5533afdf-1740-4058-8fe3-317a7f00000a', '5533afdf-1150-431c-b4d9-317a7f00000a', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '67c392c2-3c3b-4f53-b9bb-cc5e25743f6d.jpg', '12G-P4-3999-KR_XL_6.jpg', 0, '2015-04-19 09:08:39', '2015-04-19 09:08:39'),
('5533afdf-28d0-48fa-a624-32307f00000a', '5533afdf-2ef0-4c61-8a6c-32307f00000a', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '2d352958-5e53-4c97-9a5c-b4a0176b4f4d.jpg', '06G-P4-3799-KR_XL_7.jpg', 0, '2015-04-19 09:08:39', '2015-04-19 09:08:39'),
('5533afdf-2ef0-4c61-8a6c-32307f00000a', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', 'adb9d636-d276-4830-899f-1b6859dd8436.jpg', '06G-P4-3799-KR_XL_7.jpg', 0, '2015-04-19 09:08:39', '2015-04-19 09:08:39'),
('5533afdf-c210-42a2-b1d2-317a7f00000a', '5533afdf-1150-431c-b4d9-317a7f00000a', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', '66eea3e7-099d-4132-842f-6aeefd2ca560.jpg', '12G-P4-3999-KR_XL_6.jpg', 0, '2015-04-19 09:08:39', '2015-04-19 09:08:39'),
('5533afe0-2244-4da3-9148-32307f00000a', '5533afe0-37e4-4387-8ab8-32307f00000a', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'facebook', 'a6898086-3158-4825-91cd-a96e27ae3222.jpg', '111-HR-E972-KR_XL_4.jpg', 0, '2015-04-19 09:08:40', '2015-04-19 09:08:40'),
('5533afe0-37e4-4387-8ab8-32307f00000a', NULL, '54bd583a-f4d8-4937-b992-3c1c7f000008', 'small', 'cd58c4a6-54e7-4127-a1ed-9aa3e369e6fb.jpg', '111-HR-E972-KR_XL_4.jpg', 0, '2015-04-19 09:08:40', '2015-04-19 09:08:40'),
('5533afe0-6514-430a-a034-32307f00000a', '5533afe0-37e4-4387-8ab8-32307f00000a', '54bd583a-f4d8-4937-b992-3c1c7f000008', 'large', '003ed8d4-14cb-4a16-85ff-aec875e9cebc.jpg', '111-HR-E972-KR_XL_4.jpg', 0, '2015-04-19 09:08:40', '2015-04-19 09:08:40'),
('5533b018-2e6c-4e52-96b0-27d67f00000a', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', 'abd0c071-0bf7-4878-a2ce-4b2dd37a3c9d.jpg', '152-HR-E979-KR_XL_5.jpg', 0, '2015-04-19 09:09:36', '2015-04-19 09:09:36'),
('5533b018-3704-4086-b7f8-32227f00000a', NULL, '54bd5007-81e8-4ea7-b04d-303d7f000008', 'small', '9a8ff913-c682-44dd-8bad-1c8b800e9c09.jpg', '152-HR-E979-KR_XL_1.jpg', 0, '2015-04-19 09:09:36', '2015-04-19 09:09:36'),
('5533b018-7b94-4b8b-b4ad-27d67f00000a', '5533b018-2e6c-4e52-96b0-27d67f00000a', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', 'c4772f17-668d-41c5-958a-eeb60e368bbd.jpg', '152-HR-E979-KR_XL_5.jpg', 0, '2015-04-19 09:09:36', '2015-04-19 09:09:36'),
('5533b018-8ec0-4e47-9686-32227f00000a', '5533b018-3704-4086-b7f8-32227f00000a', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'large', '67dfac4b-6752-48d5-b306-465d9cbfc721.jpg', '152-HR-E979-KR_XL_1.jpg', 0, '2015-04-19 09:09:36', '2015-04-19 09:09:36'),
('5533b018-9308-4778-adfa-32227f00000a', '5533b018-3704-4086-b7f8-32227f00000a', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '046e85ec-a0a3-4c1f-b9fa-f1ab00bb8a9c.jpg', '152-HR-E979-KR_XL_1.jpg', 0, '2015-04-19 09:09:36', '2015-04-19 09:09:36'),
('5533b019-3684-4a84-8dea-27d67f00000a', '5533b018-2e6c-4e52-96b0-27d67f00000a', '54bd5007-81e8-4ea7-b04d-303d7f000008', 'facebook', '1e00a362-579e-4842-89cc-5a1d75862273.jpg', '152-HR-E979-KR_XL_5.jpg', 0, '2015-04-19 09:09:37', '2015-04-19 09:09:37'),
('553412ea-0d64-4a2b-934b-40b27f00000b', NULL, '54bd5868-2ff8-403a-a06e-3a597f000008', 'small', '7571bcc6-b24f-42d9-9df8-03b482c6e12c.jpg', '042012tr_03+2011_ford_f250_super_duty+web_exclusive.jpg', 0, '2015-04-19 16:11:14', '2015-04-19 16:11:14'),
('553412ea-3b94-4510-b5a8-40b27f00000b', '553412ea-0d64-4a2b-934b-40b27f00000b', '54bd5868-2ff8-403a-a06e-3a597f000008', 'facebook', '60288e5d-fa58-4335-9d64-c1c5c8bfbe0e.jpg', '042012tr_03+2011_ford_f250_super_duty+web_exclusive.jpg', 0, '2015-04-19 16:11:14', '2015-04-19 16:11:14'),
('553412ea-5754-47f4-b55f-40b27f00000b', '553412ea-0d64-4a2b-934b-40b27f00000b', '54bd5868-2ff8-403a-a06e-3a597f000008', 'large', '1e3ca6d9-e186-4f84-9fa3-a20a6d561a7c.jpg', '042012tr_03+2011_ford_f250_super_duty+web_exclusive.jpg', 0, '2015-04-19 16:11:14', '2015-04-19 16:11:14'),
('55b14b3e-1440-414f-95b1-04b77f00000a', '55b14b3e-4518-434a-8e4c-04b77f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'large', '90d9329a-bbc4-4afe-bbf2-7fd266dad414.jpg', '12G-P4-3999-KR_XL_3.jpg', 0, '2015-07-23 15:44:54', '2015-07-23 15:44:54'),
('55b14b3e-4518-434a-8e4c-04b77f00000a', NULL, '55b14b3d-f484-457e-9413-245b7f00000a', 'small', 'ea8f17f0-9b79-4a21-9c3e-a4c6eab62ed9.jpg', '12G-P4-3999-KR_XL_3.jpg', 0, '2015-07-23 15:44:54', '2015-07-23 15:44:54'),
('55b14b3e-5050-4a26-a6fa-245b7f00000a', '55b14b3e-a800-423b-b389-245b7f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'large', '16f9461f-e214-4d58-a23e-94525aa40077.jpg', '06G-P4-3799-KR_XL_8.jpg', 0, '2015-07-23 15:44:54', '2015-07-23 15:44:54'),
('55b14b3e-5164-4fbe-b7f3-04b77f00000a', '55b14b3e-7d28-4295-a01c-04b77f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'facebook', 'c2ea8866-de81-48bf-8fa9-e357f9268a50.jpg', '12G-P4-3999-KR_XL_2.jpg', 0, '2015-07-23 15:44:54', '2015-07-23 15:44:54'),
('55b14b3e-7558-479b-a039-04b77f00000a', '55b14b3e-7d28-4295-a01c-04b77f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'large', '6a3bb6f7-de5a-46da-aeac-ecfe36b702f5.jpg', '12G-P4-3999-KR_XL_2.jpg', 0, '2015-07-23 15:44:54', '2015-07-23 15:44:54'),
('55b14b3e-7d28-4295-a01c-04b77f00000a', NULL, '55b14b3d-f484-457e-9413-245b7f00000a', 'small', '8b250362-d2f1-464d-8631-363b8d0aefa5.jpg', '12G-P4-3999-KR_XL_2.jpg', 1, '2015-07-23 15:44:54', '2015-07-23 17:33:37'),
('55b14b3e-a800-423b-b389-245b7f00000a', NULL, '55b14b3d-f484-457e-9413-245b7f00000a', 'small', 'deae9b40-82f1-42a0-98d5-fb90915db1f6.jpg', '06G-P4-3799-KR_XL_8.jpg', 0, '2015-07-23 15:44:54', '2015-07-23 15:44:54'),
('55b14b3e-c284-4b9c-bcc1-245b7f00000a', '55b14b3e-a800-423b-b389-245b7f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'facebook', '928167b3-8056-43ad-96d4-f09e046e15ea.jpg', '06G-P4-3799-KR_XL_8.jpg', 0, '2015-07-23 15:44:54', '2015-07-23 15:44:54'),
('55b14b3f-1500-4815-a38e-04b77f00000a', '55b14b3f-2b8c-4e2f-a83e-04b77f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'facebook', '798ff6e1-cc37-469c-943e-d6695e2791f6.jpg', '120-G2-1600-X1_XL_3.jpg', 0, '2015-07-23 15:44:55', '2015-07-23 15:44:55'),
('55b14b3f-2b8c-4e2f-a83e-04b77f00000a', NULL, '55b14b3d-f484-457e-9413-245b7f00000a', 'small', 'e82403cf-2c1f-4485-9ac6-ebab4c1fd030.jpg', '120-G2-1600-X1_XL_3.jpg', 0, '2015-07-23 15:44:55', '2015-07-23 15:44:55'),
('55b14b3f-6ce8-4499-b652-04b77f00000a', '55b14b3f-2b8c-4e2f-a83e-04b77f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'large', '5d6d4b92-44cb-48aa-8488-27328143d71f.jpg', '120-G2-1600-X1_XL_3.jpg', 0, '2015-07-23 15:44:55', '2015-07-23 15:44:55'),
('55b14b3f-8044-47b9-8ee6-245b7f00000a', '55b14b3f-8ed8-41de-a976-245b7f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'large', '2c724f64-190c-46ad-960e-630f0dbf3da5.jpg', '111-HR-E972-KR_XL_4.jpg', 0, '2015-07-23 15:44:55', '2015-07-23 15:44:55'),
('55b14b3f-8ed8-41de-a976-245b7f00000a', NULL, '55b14b3d-f484-457e-9413-245b7f00000a', 'small', '53d7a9d3-af72-4ad8-a627-d1e41f273401.jpg', '111-HR-E972-KR_XL_4.jpg', 0, '2015-07-23 15:44:55', '2015-07-23 15:44:55'),
('55b14b3f-9f1c-4ffc-b29c-245b7f00000a', '55b14b3f-8ed8-41de-a976-245b7f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'facebook', '2c7782e3-c383-43a9-91e4-424c650214fb.jpg', '111-HR-E972-KR_XL_4.jpg', 0, '2015-07-23 15:44:55', '2015-07-23 15:44:55'),
('55b14b3f-ced8-4bf2-8e92-04b77f00000a', '55b14b3e-4518-434a-8e4c-04b77f00000a', '55b14b3d-f484-457e-9413-245b7f00000a', 'facebook', '904bade2-ee66-4965-a5a3-16ef7d8c290e.jpg', '12G-P4-3999-KR_XL_3.jpg', 0, '2015-07-23 15:44:55', '2015-07-23 15:44:55'),
('55bab1fc-13a4-4c89-a4d2-05457f00000a', '55bab1fc-3c10-43f8-bcfe-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', '203effc9-dc9f-43de-bd32-85c4a99d5f2b.jpg', '120-G2-1600-X1_XL_5.jpg', 0, '2015-07-30 18:53:40', '2015-07-30 18:53:40'),
('55bab1fc-3c10-43f8-bcfe-05457f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '11f1644e-6548-4789-8fb3-4ccc54345dd9.jpg', '120-G2-1600-X1_XL_5.jpg', 1, '2015-07-30 18:53:40', '2015-07-30 18:53:48'),
('55bab1fc-48a0-41e5-82d5-05457f00000a', '55bab1fc-d324-41da-aa16-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', '612c9901-c2ea-494e-9628-3c97520c911e.jpg', '120-G2-1600-X1_XL_3.jpg', 0, '2015-07-30 18:53:40', '2015-07-30 18:53:40'),
('55bab1fc-5008-40c5-80cb-05477f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', 'cccc72d7-ab54-4cd9-b357-4efc1930d96f.jpg', '120-G2-1600-X1_XL_4.jpg', 1, '2015-07-30 18:53:40', '2015-07-30 18:53:47'),
('55bab1fc-5818-4bce-82c3-05477f00000a', '55bab1fc-c9d4-4055-bbd2-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', '499d0ac9-f1e4-41fd-ab0c-aa10857298da.jpg', '120-G2-1600-X1_XL_1.jpg', 0, '2015-07-30 18:53:40', '2015-07-30 18:53:40'),
('55bab1fc-9844-4041-ada6-05477f00000a', '55bab1fc-c9d4-4055-bbd2-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', '48baf8f4-23b7-43b3-a006-25919cbb6d4c.jpg', '120-G2-1600-X1_XL_1.jpg', 0, '2015-07-30 18:53:40', '2015-07-30 18:53:40'),
('55bab1fc-9848-44e7-bdb0-05457f00000a', '55bab1fc-d324-41da-aa16-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', '71f67b28-1359-408a-8de3-257c2550ed0e.jpg', '120-G2-1600-X1_XL_3.jpg', 0, '2015-07-30 18:53:40', '2015-07-30 18:53:40'),
('55bab1fc-a774-4636-806e-05477f00000a', '55bab1fc-5008-40c5-80cb-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', '80d11a4e-0d03-424c-83df-d48cf63558e5.jpg', '120-G2-1600-X1_XL_4.jpg', 0, '2015-07-30 18:53:40', '2015-07-30 18:53:40'),
('55bab1fc-c9d4-4055-bbd2-05477f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', 'c88d6d6d-ffdf-4084-98cf-fb72c8168722.jpg', '120-G2-1600-X1_XL_1.jpg', 0, '2015-07-30 18:53:40', '2015-07-30 18:53:40'),
('55bab1fc-d324-41da-aa16-05457f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '8ebe85ab-9618-4685-b139-82f54b3518b2.jpg', '120-G2-1600-X1_XL_3.jpg', 1, '2015-07-30 18:53:40', '2015-07-30 18:53:45'),
('55bab1fd-22d8-48ba-8304-05477f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', 'f932e857-6065-4e39-9b94-f644974b3877.jpg', '120-G2-1600-X1_XL_6.jpg', 1, '2015-07-30 18:53:41', '2015-07-30 18:53:49'),
('55bab1fd-6d9c-415c-932f-05477f00000a', '55bab1fd-22d8-48ba-8304-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', 'c159d7d5-0cf5-4ea7-80bd-1ced109162a2.jpg', '120-G2-1600-X1_XL_6.jpg', 0, '2015-07-30 18:53:41', '2015-07-30 18:53:41'),
('55bab1fd-8984-4c2d-8571-05457f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '7c69b614-bbc8-43f0-ba56-2beb0f5971fe.jpg', '120-G2-1600-X1_XL_7.jpg', 1, '2015-07-30 18:53:41', '2015-07-30 18:53:55'),
('55bab1fd-8d68-4f5c-a41e-05457f00000a', '55bab1fd-8984-4c2d-8571-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', 'd0b20f6a-941b-420c-8e31-61f89bb55231.jpg', '120-G2-1600-X1_XL_7.jpg', 0, '2015-07-30 18:53:41', '2015-07-30 18:53:41'),
('55bab1fd-9468-4433-82b5-05457f00000a', '55bab1fc-3c10-43f8-bcfe-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', '460dafbe-b671-4672-9ca4-e205df1f019d.jpg', '120-G2-1600-X1_XL_5.jpg', 0, '2015-07-30 18:53:41', '2015-07-30 18:53:41'),
('55bab1fd-9840-4acc-986d-05477f00000a', '55bab1fd-22d8-48ba-8304-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', '78351030-5f87-445b-8fa2-8cfef5950ffb.jpg', '120-G2-1600-X1_XL_6.jpg', 0, '2015-07-30 18:53:41', '2015-07-30 18:53:41'),
('55bab1fd-ae34-492a-a3c3-05477f00000a', '55bab1fc-5008-40c5-80cb-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', '65b8cc31-5d88-4a55-84ef-df94b93cbdf1.jpg', '120-G2-1600-X1_XL_4.jpg', 0, '2015-07-30 18:53:41', '2015-07-30 18:53:41'),
('55bab1fd-f620-4431-bf69-05457f00000a', '55bab1fd-8984-4c2d-8571-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', 'a715333a-7a65-4162-ad69-9afa79ad77b8.jpg', '120-G2-1600-X1_XL_7.jpg', 0, '2015-07-30 18:53:41', '2015-07-30 18:53:41'),
('55bab1fe-0ebc-451a-b89f-05457f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', 'e7829013-365b-41b4-9c64-72fcea6d72d2.jpg', '151-HE-E999-KR_XL_1.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-102c-4925-811d-05457f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '189b5487-4a6e-456a-99de-5cb148f8dadd.jpg', '142-HR-E977-KR_XL_4.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-4118-48b8-a6de-05457f00000a', '55bab1fe-102c-4925-811d-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', 'bc5a2735-04e5-4c9a-ad09-e5bf141e79be.jpg', '142-HR-E977-KR_XL_4.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-54e4-4327-a05b-05477f00000a', '55bab1fe-61b0-46ae-ac90-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', '3ff71957-e2b4-4c66-b077-1ca8c834e25c.jpg', '142-HR-E977-KR_XL_1.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-61b0-46ae-ac90-05477f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '9ec08b4a-854a-4fc0-a6f4-eb0e7b6fa0e3.jpg', '142-HR-E977-KR_XL_1.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-6cd4-436d-8228-05477f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '2425b724-6daf-45e6-8457-79a62edcf95b.jpg', '142-HR-E977-KR_XL_7.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-6db4-43ce-8a46-05457f00000a', '55bab1fe-102c-4925-811d-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', '0a979194-8911-4172-aa1e-dae357dc50ae.jpg', '142-HR-E977-KR_XL_4.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-7f9c-4fdb-a763-05477f00000a', '55bab1fe-6cd4-436d-8228-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', 'bc51ba22-e673-48cc-ad17-8956ec6b4386.jpg', '142-HR-E977-KR_XL_7.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-8058-4bf9-839f-05477f00000a', '55bab1fe-61b0-46ae-ac90-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', 'ea1a2001-cf8e-4e8f-9320-1d8a0036fccc.jpg', '142-HR-E977-KR_XL_1.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1fe-fb54-404c-b12d-05477f00000a', '55bab1fe-6cd4-436d-8228-05477f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', 'fd56f837-32dc-46c3-b7e8-0d46451f36f1.jpg', '142-HR-E977-KR_XL_7.jpg', 0, '2015-07-30 18:53:42', '2015-07-30 18:53:42'),
('55bab1ff-39e8-4f39-989a-05457f00000a', '55bab1fe-0ebc-451a-b89f-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', 'ae645a44-5e7d-4446-8bc2-fc58502a252d.jpg', '151-HE-E999-KR_XL_1.jpg', 0, '2015-07-30 18:53:43', '2015-07-30 18:53:43'),
('55bab1ff-ee80-49de-a476-05457f00000a', '55bab1fe-0ebc-451a-b89f-05457f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', 'fb073604-19d1-4760-8ac4-3a3fb5048dd2.jpg', '151-HE-E999-KR_XL_1.jpg', 0, '2015-07-30 18:53:43', '2015-07-30 18:53:43'),
('55bac639-15c8-4d14-a70c-16737f00000a', '55bac639-4280-42d5-8197-16737f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', '624c6a70-dbbc-40dd-9e0b-380483ff96a6.jpg', '12G-P4-3999-KR_XL_5.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-2ff4-42da-bf40-16747f00000a', '55bac639-67a0-4219-9725-16747f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', 'af13a5e3-9db2-431e-89a3-31a1b98a07bc.jpg', '111-HR-E972-KR_XL_1.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-4078-4a8f-94e9-16737f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '5192ef89-2e72-45a2-b09a-546817ec5bd0.jpg', '110-MW-1002-K1_XL_1.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-4280-42d5-8197-16737f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', 'eaac209e-0003-4384-a7f2-ffe21a235664.jpg', '12G-P4-3999-KR_XL_5.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-67a0-4219-9725-16747f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '6e7aa73d-dbb4-4884-b0dd-a7c5724b0ada.jpg', '111-HR-E972-KR_XL_1.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-7b50-4ce1-9f02-16737f00000a', '55bac639-4078-4a8f-94e9-16737f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', 'c0b5a787-9abe-4f63-8eaa-5b186885a4d2.jpg', '110-MW-1002-K1_XL_1.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-8a98-4258-83be-16747f00000a', '55bac639-b420-4eeb-96e2-16747f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', '8efaec40-3b65-4095-ba0e-f27c3a59fb8a.jpg', '12G-P4-3999-KR_XL_6.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-a15c-4a3f-be25-16747f00000a', '55bac639-b420-4eeb-96e2-16747f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', 'f3e96128-a5ce-4b32-8c04-aa4360d8ca9e.jpg', '12G-P4-3999-KR_XL_6.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-a9dc-4126-b597-16737f00000a', '55bac639-4280-42d5-8197-16737f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'large', 'c9ae2eee-4aa8-42ba-b8f2-5436d8e3972d.jpg', '12G-P4-3999-KR_XL_5.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-b420-4eeb-96e2-16747f00000a', NULL, '55bab1fb-64a8-4c7e-867c-05477f00000a', 'small', '78753b18-63a9-4193-a36d-e502a8eb2f79.jpg', '12G-P4-3999-KR_XL_6.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac639-e950-40c5-8c28-16737f00000a', '55bac639-4078-4a8f-94e9-16737f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', '3b61c0f1-e4af-40be-97c0-c3fe3661c9fc.jpg', '110-MW-1002-K1_XL_1.jpg', 0, '2015-07-30 20:20:01', '2015-07-30 20:20:01'),
('55bac63a-37e4-4e9d-bb35-16747f00000a', '55bac639-67a0-4219-9725-16747f00000a', '55bab1fb-64a8-4c7e-867c-05477f00000a', 'facebook', 'e8f3679a-0426-48b1-a97b-ec831f1d24ee.jpg', '111-HR-E972-KR_XL_1.jpg', 0, '2015-07-30 20:20:02', '2015-07-30 20:20:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `price` int(10) unsigned DEFAULT '0',
  `quantity` int(10) unsigned DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'esta publicado o no, 1 es publicado  ',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 es eliminado',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='nodes';

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `user_id`, `title`, `body`, `price`, `quantity`, `status`, `published`, `banned`, `deleted`, `created`, `modified`) VALUES
('54bd5007-81e8-4ea7-b04d-303d7f000008', '54bd4fc0-45f0-464f-82f1-33007f000008', 'Case corsair', '<p>ok la ase&nbsp;</p>', 11, 11, 1, 1, 0, 0, '2015-01-19 14:12:15', '2015-04-19 09:09:36'),
('54bd583a-f4d8-4937-b992-3c1c7f000008', '54bd4fc0-45f0-464f-82f1-33007f000008', 'case', '<p>asasa xalskma., salksmnc</p>', 2121, 212, 1, 1, 0, 0, '2015-01-19 14:47:14', '2015-04-19 09:08:39'),
('54bd5868-2ff8-403a-a06e-3a597f000008', '54bd4fc0-45f0-464f-82f1-33007f000008', 'dcsdcsd', '<p>sdcsdcsdcs</p>', 2, 221, 1, 1, 0, 0, '2015-01-19 14:48:00', '2015-04-19 16:11:13'),
('55b14b3d-f484-457e-9413-245b7f00000a', '54bd4fc0-45f0-464f-82f1-33007f000008', '', '', NULL, NULL, 0, 0, 0, 0, '2015-07-23 15:44:53', '2015-07-23 15:44:53'),
('55bab1fb-64a8-4c7e-867c-05477f00000a', '54bd4fc0-45f0-464f-82f1-33007f000008', '', '', NULL, NULL, 0, 0, 0, 0, '2015-07-30 18:53:39', '2015-07-30 20:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `temp_password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `banned_reason` varchar(300) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `suspended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspended_reason` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `password`, `temp_password`, `name`, `email`, `email_verified`, `phone`, `banner`, `banned`, `banned_reason`, `suspended`, `suspended_reason`, `deleted`, `created`, `modified`) VALUES
('54bd4fc0-45f0-464f-82f1-33007f000008', '$2a$10$p60MfrOlgo7Va3U.cobLgefwQuUT/SDaB6Ge4JuPMjN0gS7NGkmAa', '$2a$10$Y2QiMLKCKJnmWVqJ2YSsXeU6Tg/zfGr3ykOtPsVoixwP/k6YUKhOu', 'Maria', 'mia@gmail.com', 1, NULL, '3bba7034-e367-4c9e-bbc6-91fa962b8286.jpg', 0, NULL, 0, NULL, 0, '2015-01-19 14:11:04', '2015-04-06 14:08:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
