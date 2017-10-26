-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2017 at 09:55 AM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.23-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mimesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(31, 'Kris'),
(32, 'Bogan'),
(33, 'Mohr'),
(34, 'Koch'),
(35, 'Gibson'),
(36, 'Simonis'),
(37, 'Towne'),
(38, 'Reynolds'),
(39, 'Koelpin'),
(40, 'Rodriguez');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20170703144052'),
('20170817072658'),
('20170901073804'),
('20170904095352');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `text`, `author`, `createdAt`, `is_published`) VALUES
(38, 'Dolor et.', 'Quaerat ut fuga non quibusdam itaque ut quia at. Quibusdam commodi fugiat debitis voluptatum. Nihil quam quaerat ipsum earum vel qui itaque. Quis numquam dicta accusamus non laboriosam ad eius.\nRerum et autem sint laboriosam et aut. Possimus consequuntur aliquam fugiat sit ratione est aut.\nAdipisci nihil enim dolorem aliquid sint. Iure voluptates fuga libero. Laudantium itaque non enim enim cumque quasi.', 'Dr. Norwood Stiedemann', '2016-03-11 15:17:53', 0),
(39, 'Necessitatibus tenetur.', 'Ducimus consequuntur voluptatem id quod pariatur distinctio quis. Consectetur aut repellat qui alias et ad.\nCupiditate vitae dolores et rem est ipsam voluptatem. Ut quibusdam voluptas dicta voluptatem. Soluta aut inventore non dolores ut in sit.\nVeniam non perspiciatis totam et. Corrupti eius optio nihil voluptas et ea repellat. Velit ex id sint quia velit nihil. Est et corrupti commodi ab.', 'Ms. Twila Muller', '2016-10-30 00:23:56', 1),
(40, 'Ut dignissimos.', 'Eius qui eaque doloribus delectus earum autem ipsum. Veritatis eum molestiae voluptatibus esse occaecati consequatur voluptatem modi. Aut veritatis impedit ut est tempore.\nQuam et impedit illum consequuntur consequatur reprehenderit quasi. Quae quod ea occaecati est. Dolorum omnis nostrum quia ut qui modi est.', 'Mr. Deontae Pfeffer', '2016-11-20 06:43:42', 0),
(41, 'Sit corrupti voluptas.', 'Laboriosam fugit est vitae hic fuga. Enim nostrum consequatur perspiciatis expedita suscipit et et ex. Sed omnis fugiat qui cumque quia iure quaerat. Saepe doloremque est dicta dolore velit impedit eum.\nId voluptatem omnis magni ullam impedit quasi soluta. Harum id voluptates dolor et. Perspiciatis sunt numquam qui maiores adipisci magni aut.', 'Ms. Maryse Braun', '2016-05-23 17:55:47', 0),
(42, 'Cum provident quasi.', 'Quos sit aut quasi soluta minus quo et voluptas. Expedita quia veritatis quas ut at magnam est quidem.\nDucimus velit dolorum ad fugiat non. Aliquid eveniet harum temporibus voluptatem. Eligendi aperiam molestiae odit corrupti. Earum esse ab veniam distinctio velit.\nCulpa est velit et voluptas laboriosam explicabo praesentium. Est dicta velit voluptatem asperiores cupiditate voluptate natus. Qui consequuntur excepturi impedit ex.', 'Prof. Vern Walker', '2016-11-27 22:05:14', 0),
(43, 'Necessitatibus ipsam.', 'Consequatur perferendis alias sit minus at et aperiam veritatis. Voluptatum eum et et nihil exercitationem doloremque. Vel quasi aut qui ipsa minus nostrum. Dolor ab consequuntur harum.\nVel sit illum et laboriosam repellat. Iure eum et autem repellat odit dolorum. Eos atque ullam sapiente omnis consequatur et.\nSuscipit fugiat ullam provident. Est laborum sapiente deserunt libero placeat rem ut voluptas. Fugiat esse quasi in aspernatur.', 'Prof. Jamel Wuckert', '2016-01-02 21:33:42', 1),
(44, 'Corporis hic sit.', 'Veniam illum qui voluptatibus ducimus labore assumenda. Ad officia et eos blanditiis laborum molestiae consequatur error. Odio rerum rerum fugit.\nMagnam labore non ratione quas debitis non corrupti. Dolorum porro voluptas et non assumenda. Ut quis quis velit optio.\nQui veniam eligendi enim asperiores dolore saepe. Natus voluptas quo qui earum sunt accusamus. Odit provident est nemo vel.', 'Prof. Josefina Marquardt', '2015-01-07 22:48:07', 1),
(45, 'Vitae exercitationem.', 'Magnam dolorem saepe officia quis. Tenetur est iure nihil et voluptatem. Aut autem accusantium voluptatem reiciendis molestias quam. Maxime velit molestiae sunt eos iure dolor error.\nConsectetur aut exercitationem cupiditate ullam tempore nesciunt cum. Labore minima nihil fugiat et et occaecati facilis. Magni ab aut qui. Consectetur laborum necessitatibus aut sed est amet eaque iusto.', 'Dr. Stefanie Nitzsche', '2015-12-20 16:59:06', 1),
(46, 'Est nam ipsa.', 'Assumenda et fugit vel rem aut ipsa dolorem. Eligendi error consequuntur dicta. Reiciendis voluptas voluptatem magni sunt.\nDolorem ad aliquam ut omnis velit ad. Dolores fugiat molestiae rerum nulla. Rerum officiis exercitationem veniam ut. Cumque maiores non maxime quos. Blanditiis et earum quia quo dolorum molestiae aspernatur ullam.\nNihil cupiditate est debitis soluta consequatur nihil vel. Consequatur mollitia sint et esse aliquam. Esse omnis aperiam sit velit accusantium.', 'Mr. Aglae Champlin', '2015-01-20 11:20:17', 1),
(47, 'Iste atque sit.', 'Qui aspernatur saepe veritatis non id eos facere. Dolor fuga sunt exercitationem optio. Qui nulla quis autem ipsa earum earum quia inventore. Consectetur quo reiciendis voluptatem et veniam in provident.\nUt quibusdam recusandae ad. Architecto tempore adipisci impedit deleniti totam. Ut neque magnam qui.\nQui nostrum deserunt doloremque blanditiis. Ex reiciendis dolores laborum quo. Repudiandae nihil quia ut aspernatur recusandae amet laborum.', 'Mrs. Vincenza Purdy', '2016-03-18 10:30:54', 1),
(48, 'asdasd', 'asdasd', 'asdasd', '2017-09-04 00:00:00', 1),
(49, 'asdasd', 'asdasd', 'asdasd', '2017-09-04 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

CREATE TABLE `post_comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_avatar_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_comment`
--

INSERT INTO `post_comment` (`id`, `post_id`, `author`, `author_avatar_filename`, `comment`, `created_at`) VALUES
(301, 43, 'cole.markus', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Nisi laborum tempore ipsa autem velit. Inventore quos vero sint eius est ut sit. Qui saepe quos dolorum. Fuga voluptatem dolorum magni nostrum earum sunt.', '2017-04-24 17:13:20'),
(302, 43, 'rkoepp', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Nobis distinctio eum in libero omnis veritatis. Enim voluptas aut voluptatibus ut sint eos. Expedita aut voluptatem sapiente earum. Sed quis aperiam ut consequatur error dolorem neque.', '2017-05-08 07:45:26'),
(303, 42, 'gay99', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Optio veniam ratione corporis asperiores. Est qui nihil ipsum quia esse pariatur vero. In impedit ipsam fugiat magnam.', '2016-10-13 10:04:23'),
(304, 38, 'jenkins.delores', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Autem saepe hic quam consequuntur officiis perspiciatis placeat. Sint veritatis dignissimos non unde. Sit sit ipsa dolorem reprehenderit voluptates alias soluta odit. Tenetur voluptas sunt aut est. Itaque dolor quam repudiandae consequatur.', '2017-07-15 02:40:16'),
(305, 45, 'kennedi.yundt', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Et nam ab eius qui. Consequatur sit doloremque vel doloribus laudantium. Ut maxime qui magnam natus sed quod qui. Qui nisi esse nihil quia ad aut mollitia.', '2016-11-17 22:42:49'),
(306, 39, 'watsica.paolo', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Nostrum odit doloremque rem sint est. Placeat et corporis enim amet laborum. Deleniti dolorem doloremque vitae.', '2017-01-15 22:05:09'),
(307, 46, 'rex.oconner', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Nemo nam numquam illum vel magnam reiciendis. Dicta voluptates saepe autem at odio nemo delectus. Itaque rem ut aut culpa et mollitia. Voluptatem exercitationem voluptate nesciunt incidunt.', '2017-04-26 06:30:50'),
(308, 38, 'buddy.buckridge', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Quidem voluptatem dolores quasi quae eos alias culpa. Laborum commodi qui sequi. Quisquam nostrum sed incidunt optio ut.', '2017-03-17 20:17:51'),
(309, 38, 'mmiller', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Dicta ad ut aut rerum nobis in quidem. Ut nesciunt ut vel nihil nulla aliquid. Provident accusantium eius quo impedit deserunt fugiat voluptate.', '2017-02-28 16:15:16'),
(310, 46, 'ucrooks', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Vero dolore aut est repudiandae. Qui deleniti molestiae suscipit ipsa nulla doloribus consequatur voluptas. Iste exercitationem consequatur laudantium incidunt. Voluptatum repellat odio ad enim quisquam.', '2017-02-08 01:36:22'),
(311, 47, 'nicholaus26', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Corrupti autem voluptas maiores est. Harum dignissimos similique minus animi. Fugit animi asperiores qui hic.', '2016-11-25 09:40:02'),
(312, 46, 'cartwright.lilian', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Aliquam quia qui voluptas inventore non eum nihil. Sunt dolor sit minus eius dolorum ut ratione ut. Voluptatibus ut esse consequatur est omnis. Nesciunt facere vitae eum neque est.', '2017-08-03 07:03:16'),
(313, 42, 'myron38', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Quis velit deserunt id recusandae deleniti at asperiores. Nam cupiditate corrupti sed nulla perspiciatis dolores maiores. Molestiae veniam at aut qui omnis. Occaecati saepe est ut delectus voluptatem numquam est.', '2016-09-16 23:45:16'),
(314, 46, 'jdicki', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Maiores assumenda ratione nostrum minus. Consequatur dolore ipsam ipsa doloremque. Sint voluptatum pariatur aliquam et aut quasi.', '2017-05-14 12:20:36'),
(315, 38, 'kemmer.rasheed', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Eos laudantium iusto beatae dolorum eos inventore veritatis. Nemo quia numquam itaque ut molestiae quis. Iste dolorem id veritatis voluptatem reiciendis quam possimus et. Voluptas molestiae ipsa in amet.', '2017-08-02 19:56:04'),
(316, 45, 'aurelio.aufderhar', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Ipsum numquam similique non omnis voluptatibus in. Voluptatem laboriosam recusandae voluptas architecto ducimus cupiditate. Fugit quam nisi deleniti accusantium nisi perferendis.', '2016-11-05 00:45:33'),
(317, 39, 'beatrice67', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Esse dicta sed soluta quod vel libero quasi. Quia quis tempora eum repudiandae at exercitationem suscipit autem. At facilis et saepe laudantium provident quaerat voluptatem assumenda.', '2017-05-07 10:33:32'),
(318, 44, 'betty25', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Nobis quas illum odio omnis sit. Nam non et et aut laboriosam ut reprehenderit. Sequi non expedita sit provident perspiciatis.', '2017-04-05 21:04:14'),
(319, 46, 'merle89', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Ut aut ipsam dolorum neque est et natus. Ab est ut dignissimos. Dolores dignissimos molestias adipisci amet nobis facere.', '2017-04-15 20:41:55'),
(320, 44, 'berta01', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Quis voluptatum dolorem error eum laudantium. Dolorum tempora non vitae animi eum nobis. Dolorem rerum explicabo deserunt ut.', '2016-10-07 23:56:16'),
(321, 41, 'bins.magali', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Sunt cupiditate minima ut qui dolor est. Eligendi unde accusamus molestias harum. Neque minima fugiat nam unde.', '2016-12-07 14:42:47'),
(322, 39, 'blanda.lee', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Sunt dicta assumenda rerum nobis. Sint omnis consequatur eligendi consequuntur. Vel cumque vel ut quaerat quis nam impedit ut.', '2017-03-19 00:43:03'),
(323, 41, 'bkeebler', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Animi illo modi eaque aperiam est nobis impedit quos. Neque nostrum eum consequatur iste debitis laboriosam. Maiores animi odio est cumque voluptate beatae. Sed aliquid consequatur tempora nesciunt.', '2017-01-11 10:23:10'),
(324, 42, 'jarret.jenkins', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Ut repellat molestiae ut ut excepturi. Ut repellat delectus sequi natus rerum. In dolorem itaque ullam occaecati. Velit molestiae sapiente reprehenderit tenetur tempora ut non.', '2017-05-25 20:13:23'),
(325, 39, 'hassie14', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Eius vitae id aut sunt ut dolore consequatur. Esse molestiae aut optio quisquam enim laudantium ex. Unde iste inventore similique nemo.', '2017-03-19 02:43:22'),
(326, 43, 'torrey92', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Molestias eos sint eveniet tempore alias est est odit. Itaque saepe est aliquam asperiores repudiandae. Mollitia ut hic saepe natus est excepturi.', '2017-04-22 16:18:01'),
(327, 44, 'owunsch', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Quasi deleniti asperiores molestiae sapiente. Delectus sit consectetur rerum omnis quasi. Eum nobis id temporibus.', '2017-07-17 04:25:44'),
(328, 44, 'fwalter', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Autem enim vel minus eaque quia accusantium. Sint eveniet magni excepturi ab maiores eum veniam. Delectus voluptatem omnis laudantium voluptatem.', '2016-10-20 00:41:49'),
(329, 41, 'leuschke.casimir', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Aut in voluptatem amet voluptas ad. Iure similique fuga sit dolores excepturi ratione quia. Consequatur nihil molestias corrupti nostrum eos ut reiciendis dolore. Nulla repellat eum ipsa eaque quasi.', '2017-06-03 00:48:56'),
(330, 43, 'dhuels', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Eos voluptas harum veritatis earum. Modi quaerat voluptate eligendi ut deleniti nulla officiis modi. Soluta sed enim sunt inventore. Odio molestias consequuntur cumque modi aut quae.', '2017-06-03 02:11:30'),
(331, 46, 'corkery.juliana', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Enim necessitatibus voluptatem nihil culpa eos. Deleniti saepe velit similique ullam magni.', '2017-07-13 00:02:18'),
(332, 45, 'emmett.gleichner', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Commodi debitis ut quasi occaecati est eos. Dolores ipsa nostrum maiores molestiae ut impedit neque. Nesciunt sequi nam a voluptas iure ea.', '2016-12-28 19:37:41'),
(333, 38, 'farrell.jordi', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Cum aut dolore consequatur ut assumenda sint. Voluptas qui nesciunt ipsum voluptas. Impedit perferendis quos voluptate ipsam vel placeat. Possimus et quia ut non quis nesciunt.', '2016-10-20 18:28:41'),
(334, 38, 'katlyn.strosin', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Amet quisquam sit id dolores. Ad cum fugiat sed labore voluptas quasi qui. Quia unde ad ipsum libero dolores. In impedit eum vel.', '2017-08-03 03:25:49'),
(335, 42, 'kuphal.marcelino', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Voluptatem ullam vero optio aut delectus. Non vitae sint ad voluptatum dolore deleniti id et. Illum est debitis non porro sunt.', '2017-03-28 21:10:59'),
(336, 39, 'gtorp', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Doloribus veritatis corrupti sed omnis qui. Minima culpa pariatur magni sequi facilis. Provident rem qui doloremque libero minus nam.', '2017-07-26 12:49:28'),
(337, 38, 'chanel.stracke', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Quis ut nesciunt sunt neque. Corporis et et nobis officiis voluptate laboriosam consectetur. Quia eos aut ullam vel autem hic harum eos.', '2017-07-24 17:54:51'),
(338, 45, 'toy87', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Occaecati aut quis fugit repellat et quaerat totam. Aut et nostrum sed exercitationem. Rerum et suscipit qui quis debitis placeat. Facere blanditiis repellendus dicta repudiandae.', '2017-08-06 04:20:26'),
(339, 47, 'albina62', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Exercitationem et qui alias voluptatem nemo voluptates. Quo deleniti magni cupiditate quibusdam repellendus soluta. Et vel officia est pariatur ut.', '2016-12-01 12:01:40'),
(340, 38, 'jones.kris', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Aliquam voluptatem deleniti rerum reprehenderit ut minus quia. Aliquid doloribus sed aut impedit atque sequi odit. Sit autem omnis cupiditate.', '2016-09-14 09:38:46'),
(341, 45, 'hegmann.matilde', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Voluptatem in at ducimus qui impedit. Optio excepturi debitis autem similique. Nisi praesentium rerum ut ut et in placeat. Assumenda fugiat rerum qui nam.', '2017-06-26 01:12:43'),
(342, 41, 'kane.kemmer', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Expedita rerum distinctio quos praesentium mollitia rem repellat. Eos est commodi et ex.', '2017-04-29 16:34:31'),
(343, 38, 'tromp.oceane', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Ratione eum aut provident impedit dolores qui. Voluptatum ut repellendus perferendis omnis et. Eos voluptatibus eligendi voluptas.', '2017-09-01 22:08:11'),
(344, 39, 'yaltenwerth', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Et tempora quas eveniet inventore distinctio. At aut molestiae nihil et. Dolorum odio neque iure sequi optio. Voluptatem incidunt repellat voluptate id amet enim sit. Consequatur minus totam illo iure repellat eveniet sunt.', '2017-07-19 01:21:22'),
(345, 42, 'alverta52', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Sed nihil rem vitae exercitationem aliquam vitae est. Modi dolores dolorum voluptatem et in quae porro qui. Molestiae harum minus nulla iste. Magnam sit nisi sint non rerum alias eum et. Aut velit vel aperiam voluptas rerum reiciendis qui aperiam.', '2016-09-12 13:36:14'),
(346, 45, 'otis23', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Facilis enim non nam eveniet. Iure quidem inventore odio ut sed. Minima sed est nihil repudiandae. Laboriosam praesentium accusantium nulla cumque exercitationem ipsam veritatis mollitia.', '2017-05-29 19:18:13'),
(347, 40, 'stroman.alvah', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Rerum sunt voluptas iste dolor. Non incidunt veritatis cupiditate. Sit ea modi voluptatem sed sit.', '2016-12-16 23:32:21'),
(348, 41, 'zion33', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Autem soluta magnam quod ducimus. Qui amet numquam cupiditate vel laudantium rerum. Aperiam eveniet qui est et ipsam. Ea earum in corrupti in quisquam similique. Reprehenderit quos assumenda quas id qui optio.', '2016-11-14 00:57:08'),
(349, 44, 'kshlerin.elmer', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Eos optio ut illo voluptatem totam quas aspernatur. Et optio libero et hic laborum id aut natus. Ut temporibus tempore aut dicta blanditiis.', '2016-11-03 10:09:05'),
(350, 46, 'swalsh', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Animi vel quisquam dolorem quos animi. Id quia voluptatem aperiam illum vel. Amet exercitationem qui possimus distinctio. Pariatur molestias id magnam animi odio.', '2017-04-28 11:46:48'),
(351, 41, 'alexandrea69', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Voluptatibus assumenda cum veniam soluta. Esse iste neque nihil. Magnam temporibus quos expedita cum aspernatur.', '2017-06-25 19:28:34'),
(352, 38, 'omoen', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Et quo nihil ipsa mollitia ratione nihil harum. Quis ducimus voluptate sit cupiditate. Et nisi quis consectetur recusandae voluptas vel. Accusantium tempora sed excepturi.', '2017-03-24 08:33:24'),
(353, 38, 'kparker', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Eum officia unde temporibus officiis est deserunt. Rerum beatae aliquid explicabo molestias dolore officiis. Atque amet in vel facere et. Quisquam doloremque incidunt eius voluptatem atque aut et.', '2016-09-05 08:13:35'),
(354, 39, 'senger.sarah', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Hic dolores blanditiis sunt provident. Porro rem aut hic id. Facere dolore explicabo esse ratione consequatur ratione. Maxime et autem quos commodi id quaerat cupiditate dignissimos.', '2017-01-23 04:08:01'),
(355, 42, 'roy17', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Quae sed sint in odit dicta. Quo cupiditate optio quae repudiandae quis ut. Ullam sit quia dignissimos deleniti ut vel optio. Alias voluptatem omnis perspiciatis asperiores.', '2016-10-06 23:04:54'),
(356, 42, 'buckridge.wilson', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Dicta earum enim velit quam. Officiis ut rerum distinctio exercitationem. Saepe et aut velit eius laboriosam aperiam neque aliquam. Nisi nulla aut vel facilis tempore.', '2016-09-15 08:55:47'),
(357, 44, 'jast.darlene', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Et sed fugiat voluptas unde. Assumenda sint quia a est.', '2017-08-02 04:15:01'),
(358, 44, 'awitting', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Placeat ducimus recusandae aut quia accusantium qui temporibus. Nihil iusto aliquid a unde adipisci et. Quaerat eum quibusdam minus adipisci.', '2016-09-30 08:32:39'),
(359, 40, 'reina.rowe', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Labore quia voluptatibus omnis rerum asperiores perspiciatis sit. Alias nisi cupiditate rerum. Maiores sint nihil consequatur quidem.', '2017-06-01 08:23:51'),
(360, 39, 'halvorson.ubaldo', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Asperiores atque qui minima consequatur pariatur itaque. Deserunt labore eius aspernatur odio voluptas. Recusandae explicabo consectetur esse illum nam.', '2016-10-01 13:55:57'),
(361, 45, 'tstark', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Corrupti tempore omnis quod quas amet ex. Quaerat ducimus nobis cumque earum. Quas enim neque aliquam perferendis. Ducimus non quia rerum delectus qui aspernatur quis.', '2016-12-19 07:03:39'),
(362, 43, 'colin28', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Reiciendis libero delectus et et voluptas eveniet ut excepturi. Fugit quas assumenda animi. Tempora ullam earum accusantium at ad quasi.', '2016-11-24 09:38:24'),
(363, 38, 'bianka99', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Omnis rerum enim voluptate aut. Velit molestiae numquam facere dolore maxime quasi molestiae. Voluptatem iure eum corporis maxime distinctio velit ut aut.', '2017-05-18 19:16:06'),
(364, 41, 'ybraun', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Fugiat non minus dicta nobis eveniet dicta. Quia dolorem consequatur itaque est labore molestiae. Officia inventore sit voluptates reiciendis libero.', '2017-06-01 04:20:06'),
(365, 42, 'jaleel.hauck', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Nostrum deleniti dicta placeat dolorum laborum. Alias iure consequatur vel. Illum ipsum laboriosam placeat accusantium ut corrupti.', '2017-03-14 10:53:10'),
(366, 45, 'zoe.wisozk', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Esse enim sunt nemo laborum corporis id. Rerum mollitia et quisquam voluptatem. Provident accusantium rerum error nihil.', '2017-07-25 23:00:24'),
(367, 46, 'johns.cara', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Quae voluptas occaecati non ut similique. Commodi sit qui molestias. Reprehenderit voluptatum qui labore molestias.', '2017-05-20 16:51:46'),
(368, 39, 'ieffertz', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Deleniti qui laboriosam dolorum. Qui ut non accusamus et animi qui. Enim et sit ipsa odio consequatur.', '2017-08-25 17:23:01'),
(369, 43, 'ledner.trey', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Itaque expedita et ullam suscipit minus. Debitis pariatur quia totam odio sed aspernatur. Voluptas veniam tempore sequi assumenda esse ut architecto. Laborum voluptate iusto optio possimus laboriosam quis rerum sapiente.', '2017-06-04 02:53:23'),
(370, 39, 'opouros', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Maiores aperiam deserunt dolore. Quo esse est qui nulla nisi. Tempora aut aut quam occaecati. Quas et voluptatum voluptates eaque et ab.', '2017-06-29 00:53:08'),
(371, 43, 'ibotsford', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Nisi labore molestias sequi quas ea et corporis temporibus. Quisquam sed a ut nisi. Illo iure enim quo occaecati beatae.', '2017-06-15 20:08:26'),
(372, 47, 'jameson.lindgren', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Est eligendi quo sed tempore rerum quos. Voluptatem sed et laborum assumenda voluptas corrupti voluptatem. Ut velit porro fugit enim harum aut nihil.', '2017-07-16 00:23:15'),
(373, 42, 'zula42', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Aliquam id minus harum et itaque officiis similique necessitatibus. Mollitia accusantium provident consectetur iusto et. Magni perspiciatis perferendis id consequatur.', '2016-11-13 12:42:05'),
(374, 45, 'quitzon.marshall', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Quis dolore quam ut illum dolor sed inventore ut. Adipisci est earum repellat vitae. Assumenda necessitatibus eos totam et aut.', '2017-03-01 23:05:38'),
(375, 47, 'ihansen', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Fugiat et illum dolor facilis facere et consequatur. Facilis doloremque occaecati quod minima ex vero perspiciatis. At magnam ipsum consequuntur rem. Qui eum officiis pariatur aut.', '2017-05-10 17:00:30'),
(376, 40, 'jacobson.rozella', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Similique laborum qui autem voluptatem omnis quos autem. Nostrum molestias ut ea voluptatem ut fuga eaque. Nam velit ut iste quibusdam omnis. Eum debitis eos in nisi quos maxime.', '2017-03-03 14:22:31'),
(377, 41, 'lang.abdullah', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Iusto molestiae rem accusantium cumque fugiat. Voluptas omnis quod molestias maiores explicabo minus quia consequatur. Nisi esse dolorem et et ullam. Quis enim consequatur repellendus nam.', '2017-03-05 18:13:31'),
(378, 46, 'wilburn.hills', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Id et sed incidunt eum reprehenderit eos consectetur ipsam. Sit aut minima dolore. Quisquam aut voluptas velit praesentium qui laborum ut. Earum itaque vel consequatur ipsum minima nulla.', '2016-11-28 08:28:33'),
(379, 39, 'uosinski', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Ex hic quos eaque eum ut nostrum cum et. Velit distinctio sit qui. Minus qui id est ut exercitationem eos animi provident. Quidem ut pariatur laboriosam quasi optio.', '2017-05-15 03:10:50'),
(380, 41, 'mosciski.raheem', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Aut quos debitis ut aut sequi veritatis esse. Consequatur et facilis eius delectus possimus nesciunt corrupti. Asperiores dolores ullam hic quod. Iste aut laudantium expedita provident enim sunt voluptas. Aliquid ratione molestiae commodi sit incidunt.', '2017-05-11 18:45:30'),
(381, 43, 'hollie01', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Consequatur dolores est est quas suscipit laboriosam modi. Consequatur ea accusantium deleniti odio deserunt temporibus et. Quia vero voluptatem ratione illo assumenda possimus omnis.', '2016-12-21 12:59:11'),
(382, 45, 'barton.gisselle', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Nesciunt ipsam excepturi nesciunt neque quas. Quis aut illo distinctio modi et. Dignissimos non inventore dolor et omnis.', '2017-07-10 17:35:08'),
(383, 47, 'green.delia', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Autem quae nam animi tempore molestiae culpa officiis ut. Est unde et sint aliquam laudantium. Eum porro esse natus. Necessitatibus ad ab ut velit dolores.', '2016-11-19 19:40:41'),
(384, 44, 'murazik.andres', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Officia officiis vitae maiores repudiandae. Animi est dignissimos blanditiis minus sequi voluptates. Id delectus rerum dolorum voluptas ducimus repellendus. Autem optio officiis officiis reprehenderit.', '2017-02-17 02:26:31'),
(385, 44, 'chuel', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Sed consequatur itaque ut quia. Fugit cum voluptatum voluptatem quis repudiandae. In enim rerum magnam eum magni libero. Qui consequatur quia rerum laudantium inventore.', '2017-06-02 08:01:16'),
(386, 46, 'joy.metz', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Qui quo est ratione aut. Distinctio minus tempore minima quia voluptatem. Est ducimus unde ratione facere adipisci consequatur dolore. Laudantium aut eligendi sunt. Reiciendis aspernatur sequi doloribus fugiat aut laborum rerum.', '2017-02-13 16:21:52'),
(387, 39, 'mhamill', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Voluptatum libero consequatur sint non sapiente tenetur omnis. Saepe doloremque quia eaque ut. Corporis repudiandae aut totam molestias.', '2016-09-22 18:42:28'),
(388, 44, 'felicia50', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Quam rerum enim qui quos a vel repellat. Est magnam quasi sit illum. A rerum ut et ad magnam laborum dolores. Ratione dolor sunt qui in nesciunt et pariatur.', '2017-07-31 22:58:21'),
(389, 46, 'ikuphal', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Sed consectetur quos voluptas. Incidunt ut et voluptates doloremque temporibus dolorem voluptatem. Laborum nemo et odit est ea ut aut. Earum voluptatem commodi sed voluptatum.', '2016-09-05 03:25:58'),
(390, 41, 'shana.gottlieb', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'In nulla alias aut velit natus rem. Veritatis hic et amet nihil et dignissimos. Eius explicabo doloremque libero sed expedita.', '2017-05-13 02:03:39'),
(391, 45, 'georgiana.mayer', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Ut voluptatem et aut architecto totam ut. Aut saepe blanditiis sed ipsa ut reprehenderit. Veniam tempora quae odit voluptatibus. Omnis aut pariatur dolores nam quod ab voluptatem.', '2016-09-22 11:10:51'),
(392, 41, 'oconroy', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Est similique error quis voluptatem. Enim quis quae est fugit unde iste. Voluptatem optio labore rem ut. Autem aut ullam distinctio dolorem dolorem facere modi iste. Voluptate dolores id voluptatum quidem eos asperiores aut quaerat.', '2017-02-13 09:37:26'),
(393, 39, 'cydney07', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Illum eum soluta facilis numquam atque. Amet qui ea sit blanditiis quod. Quae eligendi et natus incidunt a dolorem distinctio.', '2017-06-10 17:59:54'),
(394, 46, 'hgerlach', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Blanditiis culpa voluptatem voluptatibus at tempora eveniet consequatur suscipit. Occaecati dolore voluptate mollitia quisquam est accusamus.', '2017-03-02 23:02:32'),
(395, 42, 'ed.bashirian', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Enim sapiente enim enim ut quisquam. Et vel sed et enim eos quod. Incidunt sint id autem provident. Autem dolore dolorum facilis dicta quae.', '2017-05-07 12:14:59'),
(396, 47, 'andreanne85', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Repudiandae ipsa eum labore officiis. Quis totam sed vero eos culpa. Amet nobis ut necessitatibus atque et voluptas provident. Molestias veritatis est nesciunt cum omnis voluptate.', '2016-11-04 22:58:17'),
(397, 38, 'reilly61', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Ullam aspernatur et sit deserunt quasi. Minima recusandae aspernatur quod aut aut nam sint. Sunt blanditiis voluptas aut et eligendi.', '2017-09-02 13:21:07'),
(398, 40, 'billie86', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Cupiditate rerum quibusdam reiciendis doloremque. Dicta impedit quod voluptatibus quaerat provident eius id. Corporis harum fugiat voluptatibus reprehenderit expedita sequi.', '2016-10-14 06:03:03'),
(399, 38, 'gorczany.ova', 'https://cdn0.iconfinder.com/data/icons/iconshock_guys/512/andrew.png', 'Corrupti ratione magnam iure quo sed maxime aliquam. Laborum ea inventore inventore et amet nostrum reprehenderit corporis. Ea inventore non ut labore qui dicta quisquam.', '2017-07-14 10:32:46'),
(400, 44, 'dexter.schoen', 'https://www.tm-town.com/assets/default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', 'Mollitia quae et aperiam. Sunt sed nostrum perferendis ducimus dolor dignissimos non.', '2017-01-29 13:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `post_genre`
--

CREATE TABLE `post_genre` (
  `post_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_genre`
--

INSERT INTO `post_genre` (`post_id`, `genre_id`) VALUES
(38, 38),
(39, 39),
(40, 36),
(41, 35),
(42, 32),
(43, 40),
(44, 31),
(45, 31),
(46, 38),
(47, 40),
(48, 39),
(49, 39);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`) VALUES
(21, 'olegyurievich+1@gmail.com', '$2y$13$ybskXYRZuBWuWeuxGaJWp.9in7h0h9XYo6OVyJnAtYUnizJrnfLsm', '["ROLE_ADMIN"]'),
(22, 'olegyurievich+2@gmail.com', '$2y$13$9jS5UpAygg0xp/CxSqlPOOop7sV8gxYyB7ghGU0VnSNLqNF9zbOXW', '["ROLE_ADMIN"]'),
(23, 'olegyurievich+3@gmail.com', '$2y$13$CeotG59HxrYBla3vKWKnwux87onEU5dZ.9QdNZcQYR9fZauEj2yl2', '["ROLE_ADMIN"]'),
(24, 'olegyurievich+4@gmail.com', '$2y$13$5Ce564XJbBWpvzw6mGa.teBMkuLr2/MFAnNoIJTO.t2M7p1u3Ufxu', '["ROLE_ADMIN"]'),
(25, 'olegyurievich+5@gmail.com', '$2y$13$uTb0NZ/iLLCKw273FWRnBu78coJEaOgAEewPwC51VxD1bY3PuDdjS', '["ROLE_ADMIN"]'),
(26, 'olegyurievich+6@gmail.com', '$2y$13$xQ6E4fzcrQFzbop7ph4sLOtb2BCtXTir.5A65dZx5Yg1/KAYq.HHK', '["ROLE_ADMIN"]'),
(27, 'olegyurievich+7@gmail.com', '$2y$13$xjMwdVXYMjgkCPFqs6bKE.Vv2gVIexqMIAhrXy84vIiDbd19WOcZG', '["ROLE_ADMIN"]'),
(28, 'olegyurievich+8@gmail.com', '$2y$13$LTpwpPKrnfVG/ErvwooXF.KxlwlVJGnosCbJQMrcqrpgtgxzHF6dm', '["ROLE_ADMIN"]'),
(29, 'olegyurievich+9@gmail.com', '$2y$13$ounySzQpmV0vghNanTWvtuCHUwIS5vP9Y7m5lUTWLbpMSVSMspsO6', '["ROLE_ADMIN"]'),
(30, 'olegyurievich+10@gmail.com', '$2y$13$bE3fFtk6Lz97HnOeNHsnA.kz4iRJjJUma.nIlX9OkTR7VaqI4D8mS', '["ROLE_ADMIN"]'),
(31, 'bonny', '$2y$13$QlzciD.vprA43NJtmlmqxusk8GCd.HV.QcX5IjmZypiNd5t4Xm6k6', '[]'),
(32, 'tiny', '$2y$13$Lh/C/aMZxMcwx.7D0OHeUON5PWSg6h13R5JdHzl6lMWmzBr7g5xBG', '[]'),
(33, 'olegyurievick+20@gmail.com', '$2y$13$uTG1wL3MYJE44E.b5bK31uSEzo9x2rbdeUFA4L9oi7vOZY0Ren8eG', '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A99CE55F4B89032C` (`post_id`);

--
-- Indexes for table `post_genre`
--
ALTER TABLE `post_genre`
  ADD PRIMARY KEY (`post_id`,`genre_id`),
  ADD KEY `IDX_144BBF174B89032C` (`post_id`),
  ADD KEY `IDX_144BBF174296D31F` (`genre_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `post_comment`
--
ALTER TABLE `post_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD CONSTRAINT `FK_A99CE55F4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Constraints for table `post_genre`
--
ALTER TABLE `post_genre`
  ADD CONSTRAINT `FK_144BBF174296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `FK_144BBF174B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
