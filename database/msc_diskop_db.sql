-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2023 at 01:13 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msc_diskop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `title`, `description`) VALUES
(1, 'auth-users', ''),
(2, 'auth-roles', ''),
(3, 'auth-permissions', ''),
(14, 'content-post', ''),
(15, 'content-pages', ''),
(16, 'ref-post-category', ''),
(17, 'ref-languages', ''),
(18, 'ref-settings', ''),
(24, 'content-announcement', ''),
(26, 'content-sliders', ''),
(29, 'ref-department', ''),
(30, 'ref-dept-category', ''),
(31, 'ref-district', ''),
(32, 'ref-subdistrict', ''),
(33, 'content-service', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_roles`
--

CREATE TABLE `auth_roles` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_roles`
--

INSERT INTO `auth_roles` (`id`, `title`, `description`) VALUES
(1, 'Root', 'root'),
(3, 'Content Creator', '<p>content creator</p>');

-- --------------------------------------------------------

--
-- Table structure for table `auth_roles_has_permissions`
--

CREATE TABLE `auth_roles_has_permissions` (
  `id` int NOT NULL,
  `roles_id` int NOT NULL,
  `permissions_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_roles_has_permissions`
--

INSERT INTO `auth_roles_has_permissions` (`id`, `roles_id`, `permissions_id`) VALUES
(192, 2, 3),
(193, 2, 1),
(194, 5, 3),
(218, 3, 15),
(219, 3, 14),
(220, 3, 26),
(221, 1, 3),
(222, 1, 2),
(223, 1, 1),
(224, 1, 24),
(225, 1, 15),
(226, 1, 14),
(227, 1, 26),
(228, 1, 29),
(229, 1, 30),
(230, 1, 31),
(231, 1, 17),
(232, 1, 16),
(233, 1, 18),
(234, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `auth_users`
--

CREATE TABLE `auth_users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roles_id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_users`
--

INSERT INTO `auth_users` (`id`, `username`, `password`, `roles_id`, `email`, `fullname`, `photo`, `status`, `created_at`) VALUES
(2, 'root', '63a9f0ea7bb98050796b649e85481845', 1, 'root@mail.com', 'Root', 'Lambang_Kota_Manado.png', 1, 1647086807),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 3, 'admin@gmail.com', 'admin', NULL, 1, 1698407036);

-- --------------------------------------------------------

--
-- Table structure for table `content_announcement`
--

CREATE TABLE `content_announcement` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int NOT NULL,
  `website` varchar(200) NOT NULL,
  `created` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `content_page`
--

CREATE TABLE `content_page` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `parent` varchar(100) DEFAULT NULL,
  `slug` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `status` int NOT NULL,
  `view` int NOT NULL,
  `edited` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_page`
--

INSERT INTO `content_page` (`id`, `title`, `parent`, `slug`, `content`, `status`, `view`, `edited`) VALUES
(1, 'Profil Dinas', 'Tentang Kami', 'profil-dinas', '<div><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">Berdasarkan Peraturan Walikota Manado No. 51 Tahun 2022 Pasal 135 tentang Kedudukan, Susunan Organisasi, Tugas Dan Fungsi Serta Tata Kerja Perangkat Daerah, Dinas Koperasi, Usaha Kecil dan Menengah merupakan unsur pelaksana urusan pemerintahan bidang Koperasi, Usaha Kecil dan Menengah. Dinas Koperasi, Usaha Kecil dan Menengah dipimpin oleh Kepala Dinas yang berkedudukan dibawah dan bertanggung jawab kepada Walikota melalui Sekretaris Daerah. Dinas Koperasi, Usaha Kecil dan Menengah mempunyai tugas membantu Walikota dalam melaksanakan urusan pemerintahan bidang Koperasi, Usaha Kecil dan Menengah serta tugas pembantuan.</span></font></div><div><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">Dinas Koperasi, Usaha Kecil dan Menengah dalam melaksanakan tugas menyelenggarakan fungsi :&nbsp;</span></font></div><div><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">1.<span style=\"white-space:pre\">	</span>Pelaksanaan urusan pemerintahan di bidang Koperasi, Usaha Kecil dan Menengah</span></font></div><div><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">2.<span style=\"white-space:pre\">	</span>Pembinaan dan koordinasi pelaksanaan tugas serta pelayanan administrasi</span></font></div><div><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">3.<span style=\"white-space:pre\">	</span>pelaksanaan penelitian dan pengembangan terapan serta pendidikan dan pelatihan tertentu dalam rangka mendukung kebijakan di bidang urusan Koperasi, Usaha Kecil dan Menengah dan otonomi Daerah</span></font></div><div><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">4.<span style=\"white-space:pre\">	</span>Pelaksanaan pengawasan melekat dan pengawasan fungsional; d. perumusan dan penetapan kebijakan teknis dan pedoman pelayanan umum di bidang kesekretariatan, koperasi dan usaha mikro, kecil dan menengah, UPT, dan Jabatan fungsional;</span></font></div><div><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">5.<span style=\"white-space:pre\">	</span>Pelaksanaan tugas lain yang diberikan atasan sesuai lingkup bidang Koperasi, Usaha Kecil dan Menengah.</span></font></div><div><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">Dinas Koperasi, Usaha Kecil dan Menengah merupakan unsur pelaksana urusan pemerintahan bidang Koperasi, Usaha Kecil dan Menengah memiliki jumlah keseluruhan personil sebanyak 31 orang yang terdiri dari Aparatur Sipil Negara (ASN) 31 orang (7 orang Pejabat Struktural, 8 orang Pejabat Fungsional dan 16 orang staf ASN) dan 8 orang non PNS/THL</span></font></div><div><br></div>', 1, 2806, 1698386662),
(3, 'Visi Misi', 'Tentang Kami', 'visi-misi', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:18.0pt;text-align:justify;text-indent:27.0pt;line-height:150%\"><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">Searah dengan visi dan misi pemerintah Kota Manado yang tertuang dalam RPJMD (Rencana Pembangunan Jangka Menengah Daerah), Dinas Koperasi dan UKM Kota Manado mempunyai visi :</span></font></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:18.0pt;text-align:justify;text-indent:27.0pt;line-height:150%\"><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:18.0pt;text-align:justify;text-indent:27.0pt;line-height:150%\"><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">“Koperasi Menjadi Soko Guru Perekonomian Daerah Serta Usaha Mikro Kecil Dan Menengah Yang Mandiri Dan Berdaya Saing”</span></font></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:18.0pt;text-align:justify;text-indent:27.0pt;line-height:150%\"><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:18.0pt;text-align:justify;text-indent:27.0pt;line-height:150%\"><font face=\"Arial, sans-serif\"><span style=\"font-size: 16px;\">Misi :</span></font></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:18.0pt;text-align:justify;text-indent:27.0pt;line-height:150%\"><span style=\"font-size: 16px; font-family: Arial, sans-serif; text-indent: 27pt;\">“Memberdayakan Koperasi Dan Usaha Mikro Kecil Dan Menengah Sebagai Penggerak Ekonomi Rakyat Untuk Meningkatkan Kesejahteraan Dan Memperluas Kesempatan Kerja Serta Menurunkan Jumlah Kemiskinan”.</span><br></p>', 1, 1145, 1698386713),
(4, 'Struktur Organisasi', 'Tentang Kami', 'struktur-organisasi', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:18.0pt;text-align:justify;line-height:150%\"><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Dinas Koperasi, Usaha Kecil dan Menengah terdiri dari :<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:35.45pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-17.45pt;line-height:150%;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Kepala Dinas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <b>Tony Novie Mamahit, S.E.,\r\nM.Si<o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:35.45pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-17.45pt;line-height:150%;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Sekretaris Dinas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <b>Drs Soni Sondakh</b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:18.0pt;text-align:justify;line-height:150%\"><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Yang membawahi :<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:54.0pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;line-height:150%;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">a.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Kepala Subbagian Kepegawaian, Umum dan Perlengkapan<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:54.0pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;line-height:150%;mso-list:l0 level1 lfo2\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">b.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Kepala Subbagian Program, Keuangan dan&nbsp; Pelaporan<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:35.45pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-17.45pt;line-height:150%;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Kepala Bidang Koperasi &nbsp;&nbsp;&nbsp; :\r\n<b>Roy Sendow, S.H., M.M </b><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:35.45pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-17.45pt;line-height:150%;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Kepala Bidang Usaha Mikro, Kecil dan Menengah : <b>Joice\r\nC. B. Sumolang, S.E<o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:35.45pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-17.45pt;line-height:150%;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-ansi-language:SV\">Kepala Bidang Fasilitasi, Pembiyaan dan Simpan Pinjam : <b>Yunita\r\nY.<o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:35.45pt;mso-add-space:auto;text-align:justify;\r\nline-height:150%\"><b><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:&quot;Arial&quot;,sans-serif;mso-ansi-language:SV\">Makalangi, S.E<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:35.45pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-17.45pt;line-height:150%;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-font-kerning:0pt;mso-ligatures:none;mso-ansi-language:SV\">Kelompok Jabatan\r\nFungsional<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:35.45pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-17.45pt;line-height:150%;mso-list:l1 level1 lfo1\"><!--[if !supportLists]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial;mso-ansi-language:SV\">7.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"SV\" style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-font-kerning:0pt;mso-ligatures:none;mso-ansi-language:SV\">Kelompok\r\nJabatan&nbsp; Pelaksana<o:p></o:p></span></p>', 1, 2701, 1698386733);

-- --------------------------------------------------------

--
-- Table structure for table `content_post`
--

CREATE TABLE `content_post` (
  `id` int NOT NULL,
  `post_category_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `datetime` int NOT NULL,
  `status` int NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `user_id` int NOT NULL,
  `view` int NOT NULL,
  `edited` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_post`
--

INSERT INTO `content_post` (`id`, `post_category_id`, `title`, `slug`, `date`, `datetime`, `status`, `thumbnail`, `content`, `user_id`, `view`, `edited`) VALUES
(2, 1, 'Tes Berita', 'tes-berita', '2023-10-27', 1698407994, 1, 'foto_buat_slider_pertama_(1).jpg', '<p>Oke ini berita pertama</p>', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `content_service`
--

CREATE TABLE `content_service` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `thumbnail` varchar(200) DEFAULT NULL,
  `department_id` int NOT NULL,
  `start` varchar(50) NOT NULL,
  `end` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `status` int NOT NULL,
  `view` int NOT NULL,
  `edited` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_service`
--

INSERT INTO `content_service` (`id`, `title`, `slug`, `thumbnail`, `department_id`, `start`, `end`, `content`, `contact`, `website`, `status`, `view`, `edited`) VALUES
(1, 'Layanan Kartu Indonesia Pintar', 'layanan-kartu-indonesia-pintar', 'kip.jpg', 0, '08:00', '15:00', '<h3>Persyaratan</h3><ul><li>- Surat Keterangan Tidak Mampu (SKTM) dari Kelurahan</li><li>- Sudah Sensus Lengkap Ketua Lingkungan</li><li>- Fotocopy Kartu Keluarga (KK)</li><li>- Fotocopy KTP Anggota Keluarga</li></ul><h3><br></h3><h3>Prosedur/Alur</h3><ol><li>Pemohon datang langsung dengan membawa persyaratan atau dapat diwakilkan</li><li>Penerimaan dan verifikasi berkas permohonan</li><li>Wawancara</li><li>Pencatatan</li><li>Pelaporan</li><li>Informasi deberikan kepada pemohon</li><li>Selesai</li></ol><h3><br></h3><h3>Waktu Pelayanan</h3><ul><li>5 Hari Kerja</li><li>Senin - Kamis 8:00 - 15:00 WITA</li><li>Jumat 8:00 - 11:30 WITA</li><li>Hari Sabtu, Minggu dan Hari Besar Libur</li></ul><h3><br></h3><h3>Biaya</h3><p><b><font style=\"\" color=\"#ff0000\">GRATIS</font></b></p>', '', '', 1, 5, 1689232657),
(2, 'Layanan Kartu Indonesia Sehat', 'layanan-kartu-indonesia-sehat', 'kis.jpg', 0, '08:00', '15:00', '<h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\">Persyaratan</h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\"><ul style=\"font-size: 14px; font-weight: 400;\"><li>- Surat Keterangan Tidak Mampu (SKTM) dari Kelurahan</li><li>- Sudah Sensus Lengkap Ketua Lingkungan</li><li>- Fotocopy Kartu Keluarga (KK)</li><li>- Fotocopy KTP Anggota Keluarga</li></ul></h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\"><br></h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\">Prosedur/Alur</h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\"><ol style=\"font-size: 14px; font-weight: 400;\"><li>Pemohon datang langsung dengan membawa persyaratan atau dapat diwakilkan</li><li>Penerimaan dan verifikasi berkas permohonan</li><li>Wawancara</li><li>Pencatatan</li><li>Pelaporan</li><li>Informasi deberikan kepada pemohon</li><li>Selesai</li></ol></h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\"><br></h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\">Waktu Pelayanan</h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\"><ul style=\"font-size: 14px; font-weight: 400;\"><li>5 Hari Kerja</li><li>Senin - Kamis 8:00 - 15:00 WITA</li><li>Jumat 8:00 - 11:30 WITA</li><li>Hari Sabtu, Minggu dan Hari Besar Libur</li></ul></h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\"><br></h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\">Biaya</h3><h3 style=\"font-family: Archia, &quot;Segoe UI&quot;, arial; color: rgb(108, 117, 125);\"><p style=\"font-size: 14px; font-weight: 400;\"><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">GRATIS</font></span></p></h3>', '', '', 1, 0, 1689232664),
(3, 'Layanan DTKS', 'layanan-dtks', 'dtks.jpg', 0, '08:00', '15:00', '', '', '', 1, 0, 1689218749);

-- --------------------------------------------------------

--
-- Table structure for table `content_sliders`
--

CREATE TABLE `content_sliders` (
  `id` int NOT NULL,
  `image` varchar(200) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(500) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `link_title` varchar(100) DEFAULT NULL,
  `number` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_sliders`
--

INSERT INTO `content_sliders` (`id`, `image`, `title`, `subtitle`, `link`, `link_title`, `number`, `status`) VALUES
(2, 'banner-dinsos-2-hd.jpg', 'Selamat Datang', 'di Website Dinas Sosial dan Pemberdayaan Masyarakat Kota Manado', 'page/detail/profil-dinas', 'Selengkapnya', 2, 0),
(11, 'foto_buat_slider_pertama_(1).jpg', 'WOKU MANADO', 'Woku Manado adalah Wadah Konsultasi bagi Koperasi dan UMKM di Kota Manado', '', 'selengkapnya', 1, 1),
(15, 'slider_kedua.jpg', '', '', '', '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ref_department`
--

CREATE TABLE `ref_department` (
  `id` int NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `category_id` int NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_department`
--

INSERT INTO `ref_department` (`id`, `fullname`, `nickname`, `category_id`, `address`, `contact`, `email`, `website`, `logo`) VALUES
(3, 'Sekretaris Daerah', 'SEKDA', 2, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(4, 'Asisten Pemerintahan Umum dan Kesra', 'ASISTEN1', 2, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(5, 'Asisten Perekonomian dan Pembangunan', 'ASISTEN2', 2, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(6, 'Asisten Administrasi Umum', 'ASISTEN3', 2, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(7, 'Staf Ahli Walikota Bidang Pemerintahan Kemasyarakatan', 'STAFAHLI1', 2, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(8, 'Staf Ahli Walikota Bidang Perekonomian dan Keuangan', 'STAFAHLI2', 2, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(9, 'Staf Ahli Walikota Bidang Hukum dan Politik', 'STAFAHLI3', 2, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(10, 'Inspektorat', 'INSPEKTORAT', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(11, 'Satuan Polisi Pamong Praja', 'SATPOLPP', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(12, 'Sekretariat DPRD', 'SETWAN', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(13, 'Badan Perencanaan Penelitian dan Pengembangan Daerah', 'BAPPELITBANGDA', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(14, 'Badan Kesatuan Bangsa, Politik dan Perlindungan Masyarakat', 'KESBANGPOL', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(15, 'Badan Kepegawaian dan Pengembangan Sumber Daya Manusia', 'BKPSDM', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(16, 'Badan Penanggulangan Bencana Daerah', 'BPBD', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(17, 'Badan Keuangan dan Aset Daerah', 'BKAD', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(18, 'Badan Pendapatan Daerah', 'BAPENDA', 3, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(19, 'Bagian Tata Pemerintahan', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(20, 'Bagian Kesejahteraan Rakyat', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(21, 'Bagian Hukum', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(22, 'Bagian Protokol Dan Komunikasi Pimpinan', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(23, 'Bagian Administrasi Pembangunan', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(24, 'Bagian Perekonomian', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(25, 'Bagian Sumber Daya Alam', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(26, 'Bagian Pengadaan Barang dan Jasa', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(27, 'Bagian Organisasi', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(28, 'Bagian Umum', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(29, 'Bagian Kerja Sama', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(30, 'Bagian Perencanaan dan Keuangan', '', 4, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(31, 'Dinas Kesehatan', 'DINKES', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(32, 'Dinas Pendidikan dan Kebudayaan', 'DIKBUD', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(33, 'Dinas Ketenagakerjaan', 'DISNAKER', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(34, 'Dinas Kependudukan dan Pencatatan Sipil', 'DISDUKCAPIL', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(35, 'Dinas Komunikasi dan Informatika', 'DISKOMINFO', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(36, 'Dinas Sosial dan Pemberdayaan Masyarakat', 'DINSOS', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(37, 'Dinas Pekerjaan Umum dan Penataan Ruang', 'PUPR', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(38, 'Dinas Perumahan dan Kawasan Permukiman', 'DISPERKIM', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(39, 'Dinas Koperasi, Usaha Kecil dan Menengah', 'DINKOPUMKM', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(40, 'Dinas Perindustrian dan Perdagangan', 'DISPERINDAG', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(41, 'Dinas Pariwisata', 'DISPAR', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(42, 'Dinas Pertanian, Kelautan dan Perikanan', 'DPKP', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(43, 'Dinas Lingkungan Hidup', 'DLH', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(44, 'Dinas Kebakaran', 'DAMKAR', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(45, 'Dinas Pangan', 'DISPANGAN', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(46, 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak', 'DPPPA', 5, 'Jl. Balai Kota No. 1', '(0431) 851104', 'admin@manadokota.go.id', NULL, NULL),
(47, 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'PTSP', 5, 'Jl. Balai Kota No. 1', '(0431) 851149', 'admin@manadokota.go.id', NULL, NULL),
(48, 'Dinas Pengendalian Penduduk dan Keluarga Berencana', 'DPPKB', 5, 'Jl. Balai Kota No. 1', '(0431) 851149', 'admin@manadokota.go.id', NULL, NULL),
(49, 'Dinas Perpustakaan dan Kearsipan', 'DISPERSIP', 5, 'Jl. Balai Kota No. 1', '(0431) 851149', 'admin@manadokota.go.id', NULL, NULL),
(50, 'Dinas Perhubungan', 'DISHUB', 5, 'Jl. Balai Kota No. 1', '(0431) 851149', 'admin@manadokota.go.id', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_dept_category`
--

CREATE TABLE `ref_dept_category` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_dept_category`
--

INSERT INTO `ref_dept_category` (`id`, `title`, `slug`, `description`) VALUES
(2, 'Sekretariat Daerah', 'sekretariat-daerah', ''),
(3, 'Lembaga Teknis', 'lembaga-teknis', ''),
(4, 'Bagian Sekretariat Daerah', 'bagian-sekretariat-daerah', ''),
(5, 'Dinas', 'dinas', ''),
(6, 'Unit Pelaksana Teknis Kesehatan', 'unit-pelaksana-teknis-kesehatan', ''),
(7, 'Perusahaan Daerah', 'perusahaan-daerah', '');

-- --------------------------------------------------------

--
-- Table structure for table `ref_district`
--

CREATE TABLE `ref_district` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `leader_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `thumbnail` varchar(200) DEFAULT NULL,
  `contact` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `website` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_district`
--

INSERT INTO `ref_district` (`id`, `title`, `slug`, `leader_name`, `address`, `thumbnail`, `contact`, `description`, `website`) VALUES
(1, 'Kecamatan Bunaken', 'kecamatan-bunaken', 'Drs. Boyke Pandean', 'Jl. Raya Molas Tongkeyna', 'avatar-52.png', '+62 813 4051 4145', '                 ', ''),
(2, 'Kecamatan Bunaken Kepulauan', 'kecamatan-bunaken-kepulauan', 'Christian Salindeho', 'Jl. Raya Bunaken Lingk. 2', 'avatar-53.png', '(0431) 851103', 'Bunaken Kepulauan adalah salah satu kecamatan di Kota Manado, yang merupakan pemekaran berdasarkan PERDA Kota Manado Nomor 2 Tahun 2012.                 ', ''),
(3, 'Kecamatan Malalayang', 'kecamatan-malalayang', 'Reintje Heidemans', 'Jl. Mogandi Kelurahan Malalayang Satu', 'avatar-54.png', '(0431) 851103', '                 ', ''),
(4, 'Kecamatan Mapanget', 'kecamatan-mapanget', 'Robert Dauhan S,STP', 'Jl. A.A. Maramis, Paniki Bawah', 'avatar-55.png', '(0431) 851103', '                 ', ''),
(5, 'Kecamatan Paal Dua', 'kecamatan-paal-dua', 'Glennstiano Kowaas, SH MH', 'Jl. Merpati No.1 Kel. Ranomuut, Lk. 2', 'avatar-56.png', '(0431) 851103', 'Paal Dua berasal dari kata paal (bahasa Belanda), yang artinya patok atau patokan atau tiang pembatas. Topografi kecamatan Paal Dua berbentuk dataran dan perbukitan. Rata-rata ketinggiannya 3 meter dari permukaan laut.***\r\n\r\nStatus kecamatan Paal Dua awalnya dimulai dari lingkungan. Tahun 1960-an, namanya adalah lingkungan Paal Dua Ranomuut. Kemudian statusnya meningkat menjadi salah satu kelurahan di kecamatan Tikala.\r\n\r\nPada Tahun 2012 berdasarkan Perda Kota Manado Nomor 2 Tahun 2012 tentang perubahan atas Perda Nomor 5 Tahun 2000 tentang Pemekaran Kelurahan dan kecamatan di kota Manado, kelurahan Paal Dua dimekarkan dari kecamatan Tikala dengan status sebagai kecamatan.\r\n\r\nPemekaran Paal Dua sebagai kecamatan diresmikan pada tanggal 17 Agustus 2012 oleh Walikota Manado Vicky Lumentut.                                  ', ''),
(6, 'Kecamatan Sario', 'kecamatan-sario', 'Handry Jouke Lasut, SE', 'Jl. Ahmad Yani No.49, Sario Utara, Sario', 'avatar-57.png', '(0431) 851103', 'Nama kecamatan Sario merupakan akronim atau kependekan dari kata salu dan rio (bahasa Tombulu). Salu artinya kuala (sungai). Rio artinya ribut. Jadi, arti Sario adalah kuala atau sungai yang ribut. Disebut demikian karena pada saat musim hujan, sungai Sario terdengar ribut oleh suara bebatuan yang hanyut dibawa banjir.\r\n\r\nSungai Sario mengalir dari kaki gunung Mahawu-Tomohon. Sebagian aliran airnya melewati desa Koka dan yang lainnya melewati desa Kali. Aliran yang terpisah tersebut kemudian menyatu kembali di kompleks perumahan Citraland, pasar Karombasan-Ranotana, Wanea, Sario dan bermuara di jalan Pierre Tendean-Boulevard pantai Manado.\r\n\r\nVersi lainnya menyebut bahwa nama Sario diambil dari nama belakang seorang gadis yang bernama Sariow. Nama lengkapnya adalah Simban Sariow. Simban Sariow adalah tokoh dalam cerita rakyat Minahasa pada abad XIV. Suaminya bernama Sangian Lawanan, yang memiliki kebiasaan senang berlayar. Jessy Wenas di dalam bukunya yang berjudul Sejarah dan Kebudayaan Minahasa (2007: 3 ) mengatakan bahwa Sangian Lawanan kemungkinan berasal dari kepulauan Sangihe.                                  ', ''),
(7, 'Kecamatan Singkil', 'kecamatan-singkil', 'Zainal Naway, S.Sos', 'Jl. Hasanudin No.34', 'avatar-58.png', '(0431) 851103', '', ''),
(8, 'Kecamatan Tikala', 'kecamatan-tikala', 'Argo B Sangkay', 'Jl. Daan Mogot Lingkungan VI, Kelurahan Paal IV', 'avatar-59.png', '(0431) 851103', 'Umumnya orang yang ditanyai tentang arti Tikala akan  mengatakan bahwa Tikala sama dengan Tikela. “Seharusnya Tikela bukan Tikala, tapi karena pengaruh dialek dan perubahan pelafalan berubah menjadi Tikala.” ujar seorang sumber.  Benarkah arti Tikala sama dengan Tikela?\r\n\r\nKata Tikala dan Tikela walaupun nampak sama, namun memiliki arti yang berbeda. Tikela berasal dari kata ti’kela (bahasa Tombulu). Ti merupakan kata depan yang artinya di, sedangkan kela artinya ini atau sini. Secara harfiah arti Tikela adalah di sini. Jhon Kandores, warga desa Tikela, umur 75 tahun, penutur bahasa Tombulu mengatakan bahwa Tikela artinya di sini kita tinggal/bermukim.\r\n\r\nTikala berasal dari kata ti kala (bahasa Tombulu). Ti adalah kata depan yang artinya di, sedangkan kala adalah nama sungai, yaitu sungai Kala. Namun lama-kelamaan penulisan kata ti kala  dirangkai menjadi satu, sehingga berubah menjadi Tikala.\r\n\r\nJadi, arti Ti Kala yang kemudian penulisannya dirangkai menjadi Tikala, adalah disungai Kala. Sungai Kala sampai sekarang masih ada dan sebelum mengalir ke Manado terlebih dahulu melewati desa Suluan, SMP Negeri I Rumengkor, Sawangan dan desa Tombuluan.\r\n\r\nAda tiga kelurahan di kota Manado yang nama depannya mencantumkan kata Tikala, yaitu kelurahan Tikala Ares, Tikala Kumaraka, dan Tikala Baru.                                  ', ''),
(9, 'Kecamatan Tuminting', 'kecamatan-tuminting', 'Dany H. Kumajas, S.Sos', 'Jl. Hasanuddin No.20, Islam, Kec. Tuminting', 'avatar-510.png', '(0431) 851103', 'Tuminting berasal dari kata tinting (bahasa Bantik), yang artinya ulur. Kata tinting diberi sisipan im, sehingga menjadi timinting, yang artinya terulur. Misalnya salah satu ujung tali yang terikat terulur ke bawah, atau salah satu ujung puya (kertas minyak) yang digantung terulur ke bawah.\r\n\r\nDikisahkan bahwa dulu di Tuminting terdapat air menetes. Air menetes tersebut tampak seperti terulur, yang dalam bahasa Bantik disebut timinting.\r\n\r\nLokasi air yang menetes tersebut terdapat di dekat Sospol Kodam Merdeka Manado, kelurahan Mahawu, kecamatan Tuminting.\r\n\r\nDalam perkembangannya, kata timinting mengalami perubahan bentuk menjadi tuminting dan diabadikan oleh tua-tua sebagai nama pemukiman dengan nama Tuminting. Arti Tuminting sama dengan timinting, yaitu air menetes\r\n                 ', ''),
(10, 'Kecamatan Wenang', 'kecamatan-wenang', 'Deysie Kalalo, SE MAP', 'Jl. Lumimuut Lingk 5 Kel. Tikala Kumaraka', 'avatar-511.png', '(0431) 851103', 'Wenang merupakan nama pertama kota Manado. Pergantian nama Wenang menjadi Manado menurut Prof. Geraldine Manoppo-Watupongoh dilakukan oleh Spanyol pada tahun 1682, tapi versi lainnya menyebut dilakukan oleh Belanda, sebab pada tahun 1677 sampai 31 Agustus 1682, gubernur jenderal  Hindia Belanda di Ternate, Dr. Robertus Padtbrugge berada di Manado mencatat sisa-sisa penduduk kerajaan Bowontehu (di Manado Tua) termasuk yang telah pindah ke Sindulang.\r\n\r\nWenang berasal dari kata wenang (bahasa Minahasa), yaitu nama pohon endemik yang bahasa lmiahnya Macaranga Hispida. Sub etnis Bantik menyebutnya benang. Daunnya lebih besar daripada daun pohon bahu (Hibiscus tiliaceus). Di ujung daunnya terdapat tonjolan kecil menyerupai ekor.\r\n\r\nWenang memiliki nilai kultural bagi masyarakat Manado. Dulu terdapat dua lokasi yang diberi nama wenang, yaitu pelabuhan Wenang yang berganti nama menjadi pelabuhan Manado, dan Rumah Sakit Wenang yang telah berubah menjadi lokasi hotel Sintesa Peninsula.***                                  ', ''),
(11, 'Kecamatan Wanea', 'kecamatan-wanea', 'Mario Reivalino Rio Karundeng, S.STP', 'Jl. Babe Palar No.23, Tj. Batu, Kec. Wanea', 'avatar-512.png', '(0431) 851103', 'Kecamatan Wanea merupakan pemekaran dari Kecamatan Sario yang berpisah sejak tanggal 7 februari tahun 2001. Nama kecamatan wanea sendiri diambil dari nama burung (burung wanea) yang menjadi ciri khas dari kecamatan wanea (tepatnya dikelurahan wanea) yang menjadi tempat persinggahan burung ini pada zaman dulu.  <br>     \r\nKecamatan Wanea dengan luas wilayah 785,25 Ha atau 4,99 % dari luas wilayah Kota Manado berada pada titik koordinat 1026’0” – 1029’20”  LU - 124049’20”- 124052’0” BT kecamatan Wanea memiliki 9 kelurahan yaitu kelurahan Bumi Nyiur, Karombasan Selatan, Karombasan Utara, Teling Atas, Tingkulu, Tanjung Batu, Pakowa, dan Wanea  yang terbagi dalam 60 lingkungan dengan batas wilayah sebagai berikut : <br>\r\nSebelah Utara : Kecamatan Wenang dan Kecamatan Tikala <br>\r\nSebelah Barat    : Kecamatan Sario dan   Kecamatan Malalayang   <br>  \r\nSebelah Timur  : Kec. Tikala dan Kecamatan  Tombulu Kab. Minahasa <br>\r\nSebelah Selatan   : Kec. Tombulu Kab. Minahasa                                                                                            ', '');

-- --------------------------------------------------------

--
-- Table structure for table `ref_languages`
--

CREATE TABLE `ref_languages` (
  `id` int NOT NULL,
  `code` varchar(5) NOT NULL,
  `flag_code` varchar(5) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` int NOT NULL,
  `number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_languages`
--

INSERT INTO `ref_languages` (`id`, `code`, `flag_code`, `title`, `status`, `number`) VALUES
(1, 'ID', 'ID', 'Bahasa', 1, 1),
(2, 'EN', 'GB', 'English', 1, 2),
(3, 'CN', 'CN', 'China', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ref_post_category`
--

CREATE TABLE `ref_post_category` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_post_category`
--

INSERT INTO `ref_post_category` (`id`, `title`, `slug`, `description`) VALUES
(1, 'Berita', 'berita', '<p>Berita</p>'),
(2, 'Kegiatan', 'kegiatan', '<p>Kegiatan</p>'),
(3, 'Informasi', 'informasi', '<p>Informasi</p>');

-- --------------------------------------------------------

--
-- Table structure for table `ref_settings`
--

CREATE TABLE `ref_settings` (
  `id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `last_update` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_settings`
--

INSERT INTO `ref_settings` (`id`, `title`, `slug`, `value`, `last_update`) VALUES
(3, 'Panel URL', 'panel-url', 'http://artmenjoy/msc-diskop-panel/', 1698386460),
(7, 'Social Youtube', 'social-youtube', 'https://www.youtube.com/@pemerintahkotamanado', 1685925151),
(9, 'Social Tiktok', 'social-tiktok', 'https://www.tiktok.com/@pemkotmanado', 1685925161),
(15, 'Social Instagram', 'social-instagram', 'https://www.instagram.com/diskopukm.manado', 1698407003),
(22, 'Social Facebook', 'social-facebook', 'https://www.facebook.com/diskopukmmanado', 1698406984),
(26, 'Website URL', 'website-url', 'https://diskop.manadokota.go.id/', 1698406481),
(27, 'Contact Email', 'contact-email', 'diskopumkm@manadokota.go.id', 1697165216),
(28, 'Contact Phone', 'contact-phone', '(0431) 851103', 1685924938),
(29, 'Contact Website', 'contact-website', 'diskop.manadokota.go.id', 1698406511),
(30, 'Contact Address', 'contact-address', 'Jl. A.A. Maramis, Paniki Bawah, Kec. Mapanget, Kota Manado, Sulawesi Utara', 1685925266),
(31, 'Contact Latitude', 'contact-latitude', '1.5080313', 1685926713),
(32, 'Contact Longitude', 'contact-longitude', '124.908156', 1685926729);

-- --------------------------------------------------------

--
-- Table structure for table `ref_subdistrict`
--

CREATE TABLE `ref_subdistrict` (
  `id` int NOT NULL,
  `district_id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `leader_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `thumbnail` varchar(50) NOT NULL,
  `postcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_subdistrict`
--

INSERT INTO `ref_subdistrict` (`id`, `district_id`, `title`, `leader_name`, `address`, `contact`, `thumbnail`, `postcode`) VALUES
(1, 1, 'KELURAHAN BAILANG', 'PUTRA SALENDA', '                     ', '', 'camat_male1.png', '95231'),
(2, 1, 'KELURAHAN MOLAS', 'TENNY KUSOY', '                     ', '', 'camat_male4.png', '95231'),
(3, 1, 'KELURAHAN MERAS', 'HAM TAMBENGI', '', '', 'camat_male2.png', '95231'),
(4, 1, 'KELURAHAN TONGKAINA', 'YANNI KALANGI', '', '', 'camat_male3.png', '95231'),
(5, 1, 'KELURAHAN PANDU', 'SOFIANI WONGKAR', '', '', 'camat_female.png', '95249'),
(6, 2, 'KELURAHAN BUNAKEN KEPULAUAN', 'GLEND NELSON LAARE STh', '                                   ', '', 'camat_male5.png', '95246'),
(7, 2, 'KELURAHAN ALUMBANUA', 'VENCUS BALAATI', '', '', 'camat_male6.png', '95231'),
(8, 2, 'KELURAHAN MANADO TUA SATU', 'WELFRETS BARING SSos', '                     ', '', 'camat_male7.png', '95231'),
(9, 2, 'KELURAHAN MANADO TUA DUA', 'MISEL RUMAGIT', '', '', 'camat_female1.png', '95231'),
(10, 3, 'KELURAHAN MALALAYANG SATU', 'NOLDY DAMO', '', '', 'camat_male8.png', '95162'),
(11, 3, 'KELURAHAN MALALAYANG SATU TIMUR', 'ALFIANE OROH SE', '                     ', '', 'camat_male9.png', '95163'),
(12, 3, 'KELURAHAN MALALAYANG SATU BARAT', 'MEILINA MAMITOHO SE', '                     ', '', 'camat_female2.png', '95163'),
(13, 3, 'KELURAHAN MALALAYANG DUA', 'LEON PIRI', '', '', 'camat_male10.png', '95163'),
(14, 3, 'KELURAHAN BAHU', 'KRISMAS STEVANUS TAMPI SIP', '                     ', '', 'camat_male11.png', '95115'),
(15, 3, 'KELURAHAN KLEAK', 'MARTINUS GENOHONG SPsi', '                     ', '', 'camat_female3.png', '95115'),
(16, 3, 'KELURAHAN BATU KOTA', 'JOHN SAMPUL SSos', '                     ', '', 'camat_male12.png', '95163'),
(17, 3, 'KELURAHAN WINANGUN SATU', 'TRIANE ALMAS', '', '', 'camat_female4.png', '95161'),
(18, 3, 'KELURAHAN WINANGUN DUA', 'ALTIN PUNGUS', '', '', 'camat_male13.png', '95161'),
(19, 4, 'KELURAHAN PANIKI BAWAH', 'OLIVIA PANGALILA', '', '', 'camat_female5.png', '95256'),
(20, 4, 'KELURAHAN BUHA', 'JEAN EVA WENTINUSA', '', '', 'camat_female6.png', '95252'),
(21, 4, 'KELURAHAN BENGKOL', 'JUSUF TEROK', '', '', 'camat_male14.png', '95251'),
(22, 4, 'KELURAHAN LAPANGAN', 'TRINCE AMIK', '', '', 'camat_female7.png', '95258'),
(23, 4, 'KELURAHAN MAPANGET', 'STEVEN PONGOH', '', '', 'camat_male15.png', '95258'),
(24, 4, 'KELURAHAN KIMA ATAS', 'SULJE DIEN', '', '', 'camat_female8.png', '95259'),
(25, 4, 'KELURAHAN KAIRAGI SATU', 'GREATLI GOEFRON', '', '', 'camat_male16.png', '95253'),
(26, 4, 'KELURAHAN KAIRAGI DUA', 'MELKI JOCOM', '', '', 'camat_male17.png', '95254'),
(27, 4, 'KELURAHAN PANIKI SATU', 'FRENDY RAU ST', '                     ', '', 'camat_male18.png', '95259'),
(28, 4, 'KELURAHAN PANIKI DUA', 'JERRIEL TUMIWA SE', '                     ', '', 'camat_male19.png', '95257'),
(29, 5, 'KELURAHAN DENDENGAN DALAM', 'DJAMES KAIRUPAN', '                     ', '', 'camat_female9.png', '95127'),
(30, 5, 'KELURAHAN DENDENGAN LUAR', 'MAIKEL KAPOH', '', '', 'camat_male20.png', '95127'),
(31, 5, 'KELURAHAN KAIRAGI WERU', 'MARIETJE RENGKU', '', '', 'camat_female10.png', '95129'),
(32, 5, 'KELURAHAN PERKAMIL', 'INGGRIT SUMILAT SIP', '                     ', '', 'camat_male21.png', '95129'),
(33, 5, 'KELURAHAN MALENDENG', 'ANWAR HALIDU', '', '', 'camat_male22.png', '95129'),
(34, 5, 'KELURAHAN RANOMUUT', 'EVA RENGKU SH', '                     ', '', 'camat_male23.png', '95128'),
(35, 6, 'KELURAHAN SARIO UTARA', 'PENDRA MEIKE LEGI SH', '                     ', '', 'camat_male24.png', '95114'),
(36, 6, 'KELURAHAN SARIO KOTA BARU', 'PUSPARANI LUMENTUT', '', '', 'camat_female11.png', '95113'),
(37, 6, 'KELURAHAN SARIO TUMPAAN', 'STELLA KALENGKONGAN', '', '', 'camat_female12.png', '95114'),
(38, 6, 'KELURAHAN SARIO', 'MEILIN LASUT', '', '', '', '95114'),
(39, 6, 'KELURAHAN TITIWUNGEN SELATAN', 'MOUDI KOWAAS SSos', '                     ', '', '', '95113'),
(40, 6, 'KELURAHAN RANOTANA', 'RIO SAEH SE MSi', '                     ', '', 'camat_male25.png', '95116'),
(41, 7, 'KELURAHAN SINGKIL SATU', 'STANLEY SIWY SIP', '                     ', '', '', '95234'),
(42, 7, 'KELURAHAN SINGKIL DUA', 'DEISKE KALENGKONGAN SE', '                     ', '', '', '95234'),
(43, 7, 'KELURAHAN WAWONASA', 'HAMZAH PALINTO', '', '', '', '95231'),
(44, 7, 'KELURAHAN KARAME', 'MOHAMAD WINGGU SUHAR', '', '', '', '95231'),
(45, 7, 'KELURAHAN KETANG BARU', 'MUHAMAD JABIR AWAL', '', '', '', '95232'),
(46, 7, 'KELURAHAN TERNATE BARU', 'HASTIN YUSUF', '', '', '', '95232'),
(47, 7, 'KELURAHAN TERNATE TANJUNG', 'RAMLY LABAJONG', '', '', '', '95234'),
(48, 7, 'KELURAHAN KOMBOS BARAT', 'JUDDY PILAT SE', '                     ', '', '', '95234'),
(49, 7, 'KELURAHAN KOMBOS TIMUR', 'THEODORA LANO SE', '                     ', '', '', '95234'),
(50, 8, 'KELURAHAN TIKALA BARU', 'SAMUEL DALAWIR', '', '', '', '95126'),
(51, 8, 'KELURAHAN TAAS', 'STEPANUS MANGONTING', '', '', '', '95129'),
(52, 8, 'KELURAHAN PAAL EMPAT', 'JAMES DORINGIN', '', '', '', '95129'),
(53, 8, 'KELURAHAN BANJER', 'MISNAWATI AGUNE', '', '', '', '95125'),
(54, 8, 'KELURAHAN TIKALA ARES', 'MARIO LUMI', '', '', '', '95124'),
(55, 9, 'KELURAHAN BITUNG KARANGRIA', 'MISKEWATI MARE', '', '', 'camat_female.png', '95239'),
(56, 9, 'KELURAHAN TUMINTING', 'RINTO SAMBUAGA', '                     ', '', 'camat_male2.png', '95239'),
(57, 9, 'KELURAHAN TUMUMPA SATU', 'ZAINAL NAWAY', '', '', 'camat_male1.png', '95239'),
(58, 9, 'KELURAHAN TUMUMPA DUA', 'EDWIN TARUMINGKENG', '', '', 'camat_male3.png', '95239'),
(59, 9, 'KELURAHAN MAASING', 'HERY ANWAR', '', '', 'camat_male4.png', '95238'),
(60, 9, 'KELURAHAN SINDULANG SATU', 'MARIA HOAN', '', '', '', '95239'),
(61, 9, 'KELURAHAN SINDULANG DUA', 'ERRIEL TUMIWA', '', '', '', '95239'),
(62, 9, 'KELURAHAN KAMPUNG ISLAM', 'SIDIK MOHA', '', '', '', '95239'),
(63, 9, 'KELURAHAN SUMOMPO', 'JHONLY KASENDA', '', '', '', '95239'),
(64, 9, 'KELURAHAN MAHAWU', 'MARYAM PAWEWANG', '', '', '', '95239'),
(65, 10, 'KELURAHAN MAHAKERET TIMUR', 'HEIS MOMENTU', '', '', '', '95112'),
(66, 10, 'KELURAHAN MAHAKERET BARAT', 'CHEVVY LUMINTANG SSos', '                     ', '', '', '95112'),
(67, 10, 'KELURAHAN TELING BAWAH', 'EDWIN MATHEOSZ SH', '                     ', '', '', '95119'),
(68, 10, 'KELURAHAN WENANG UTARA', 'TOMMY KARISOH', '', '', '', '95111'),
(69, 10, 'KELURAHAN WENANG SELATAN', 'STENLY RORING', '', '', '', '95111'),
(70, 10, 'KELURAHAN PINAESAAN', 'STEVEN MONGKAU SIP', '                     ', '', '', '95122'),
(71, 10, 'KELURAHAN CALACA', 'TOMMY TENDEAN', '', '', '', '95121'),
(72, 10, 'KELURAHAN ISTIQLAL', 'SULTAN DAMOPOLII', '', '', '', '95121'),
(73, 10, 'KELURAHAN LAWANGIRUNG', 'PAULUS UMBOH', '', '', '', '95123'),
(74, 10, 'KELURAHAN KOMO LUAR', 'ABDULAH RAHIM PADJU', '', '', '', '95122'),
(75, 10, 'KELURAHAN BUMI BERINGIN', 'SANDRA OROH SH', '                     ', '', '', '95113'),
(76, 10, 'KELURAHAN TIKALA KUMARAKA', 'GREITY KAWILARANG', '', '', '', '95124'),
(77, 6, 'KELURAHAN TITIWUNGEN UTARA', 'MAKSY TUMANDUK SE', '                     ', '', '', ''),
(78, 5, 'KELURAHAN PAAL DUA', 'I GUSTI KETUT SUDARMAJA SKom', '', '', '', ''),
(79, 11, 'KELURAHAN BUMI NYIUR', 'Youla Kartini Anita Stenny Sondakh SE', '', '', '', '95117'),
(80, 11, 'KELURAHAN KAROMBASAN SELATAN', 'Stenly F.A. Onibala, STP, MSi', '                     ', '', '', '95117'),
(81, 11, 'KELURAHAN KAROMBASAN UTARA', 'Listihani Lamani, SSTP', '', '', '', '95117'),
(82, 11, 'KELURAHAN TANJUNG BATU', 'Bonifasius J.F. Tambuwun, SPt', '', '', '', '95117'),
(83, 11, 'KELURAHAN TINGKULU', 'Selfi Tea SE', '', '', '', '95117'),
(84, 11, 'KELURAHAN WANEA', 'Agus Victor Panekenan, SE', '', '', '', '95117'),
(85, 11, 'KELURAHAN RANOTANA WERU', 'Aganitje Karolina Supit SE', '', '', '', '95118'),
(86, 11, 'KELURAHAN PAKOWA', 'Alitrian Deddy Pangkey, S.sos', '', '', '', '95119'),
(87, 11, 'KELURAHAN TELING ATAS', 'Maikel Brando Handoyo, SE', '', '', '', '95119');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_roles`
--
ALTER TABLE `auth_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_roles_has_permissions`
--
ALTER TABLE `auth_roles_has_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_users`
--
ALTER TABLE `auth_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_announcement`
--
ALTER TABLE `content_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_page`
--
ALTER TABLE `content_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_post`
--
ALTER TABLE `content_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_service`
--
ALTER TABLE `content_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_sliders`
--
ALTER TABLE `content_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_department`
--
ALTER TABLE `ref_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_dept_category`
--
ALTER TABLE `ref_dept_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_district`
--
ALTER TABLE `ref_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_languages`
--
ALTER TABLE `ref_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `ref_post_category`
--
ALTER TABLE `ref_post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_settings`
--
ALTER TABLE `ref_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ref_subdistrict`
--
ALTER TABLE `ref_subdistrict`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `auth_roles`
--
ALTER TABLE `auth_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_roles_has_permissions`
--
ALTER TABLE `auth_roles_has_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `auth_users`
--
ALTER TABLE `auth_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content_announcement`
--
ALTER TABLE `content_announcement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content_page`
--
ALTER TABLE `content_page`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `content_post`
--
ALTER TABLE `content_post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content_service`
--
ALTER TABLE `content_service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content_sliders`
--
ALTER TABLE `content_sliders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ref_department`
--
ALTER TABLE `ref_department`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ref_dept_category`
--
ALTER TABLE `ref_dept_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ref_district`
--
ALTER TABLE `ref_district`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ref_languages`
--
ALTER TABLE `ref_languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_post_category`
--
ALTER TABLE `ref_post_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_settings`
--
ALTER TABLE `ref_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ref_subdistrict`
--
ALTER TABLE `ref_subdistrict`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
