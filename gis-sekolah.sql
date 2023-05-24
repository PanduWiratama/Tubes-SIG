-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 12:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis-sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sekolah`
--

CREATE TABLE `tbl_sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `kepsek` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `status_sekolah` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `gambar` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sekolah`
--

INSERT INTO `tbl_sekolah` (`id_sekolah`, `nama_sekolah`, `kepsek`, `alamat`, `kelurahan`, `kecamatan`, `status_sekolah`, `latitude`, `longitude`, `gambar`) VALUES
(30, 'SD INPRES 15 WAMEGA', 'Arianti Pongoh', 'Wamega, Kec. Salawati Utara, Kabupaten Raja Ampat.', 'Wamega', 'Salawati Utara', 'Negri', '-1.0051901723020862', '131.10475824427974', 'Sekolah4.png'),
(24, ' SD NEGERI 2 WAISAI', 'Sutri Cal Bawole', 'Jl. Salawati, Kelurahan Sapordanco Distrik Kota Waisai', 'Sapordanco', 'Kota Waisai', 'Negri', '-0.4261954', '130.8178703', '2022-10-10.jpg'),
(28, 'SD NEGERI 29 Perum 100', 'Esau Kaihatu', 'WAISAI', 'Waisai', ' Kota Waisai', 'Negri', '-0.4112828543778808', '130.8258120758087', 'sd_n-min2.jpg'),
(31, 'SD INPRES 19 KAPATLAP', 'Syahbudin', 'Kapatlap, Kec. Salawati Utara, Kabupaten Raja Ampat', 'Kapatlap', 'Salawati Utara', 'Negri', '-0.9337609324155329', '131.05046865461563', 'Sekolah5.png'),
(32, ' SD NEGERI 19 HARAPAN JAYA', ' Musliadi', 'Kampung Harapan Jaya', 'Harapan Jaya', 'Misool Selatan', 'Negri', '-2.041956892485754', '130.40761028226552', 'Sekolah6.png'),
(33, 'TK. NEGERI PEMBINA', 'YOLAN B. ULA', 'Jln. Utama 30 Waisai', 'Sapordanco', 'Kota Waisai', 'Negri', '-0.42375348391502554', '130.816918682082', 'tk_pembina-min-min.JPG'),
(34, 'SD NEGERI 12 YEFMAN', 'Samsudin Ibrahim', 'Jefman, Kec. Salawati Utara, Kabupaten Raja Ampat.', 'Jefman', 'Salawati Utara', 'Negri', '-0.9247030529059213', '131.11893609598647', 'Sekolah7.png'),
(35, 'SD NEGERI 38 WARIRSAUPO', 'Trisyo Lalira', 'Wamega, Kec. Salawati Utara, Kabupaten Raja Ampat.', 'Wamega', 'Salawati Utara', 'Negri', '-0.998515575411088', '131.12977747027205', 'Sekolah8.png'),
(36, 'SD YPK LAHAIROY BIGA', 'Adiryan Dimara', 'Kampung Biga', 'Yellu', 'Misool Selatan', 'Swasta', '-0.7825310169523031', '130.8626917133233', 'Sekolah9.png'),
(37, ' PAUD. MKOWEDI', 'Andalina Kaihatu', 'Jl.Woisar Perumahan 300', 'Bonwakir', 'Kota Waisai', 'Swasta', '-0.4102101894579615', '130.87218157938764', 'tk.jpg'),
(38, 'SMP NEGERI 13 RAJA AMPAT', 'Ferdinandus Yapen', 'Yefman Barat, Jefman, Salawati Utara, Raja Ampat.', 'Yefman Barat', 'Salawati Utara', 'Negri', '-0.9226190374367121', '131.11957608209883', 'smp_13_j.png'),
(39, ' SMP NEGERI 18 RAJA AMPAT', 'Bagus Dwi Harjanto', 'Kampung Dabatan', 'DABATAN', 'Misool Selatan', 'Negri', '-0.04848182543079041', '131.00844723460236', 'Screenshot_2023-05-05_001131.png'),
(40, ' SMAS GUPPI RAJA AMPAT', 'Yakub Abdullah', 'Kampung Fafanlap', 'Fafanlap', 'Misool Selatan', 'Swasta', '-1.9904076066486283', '130.34248821884765', 'Sekolah10.png'),
(41, 'TK PERTIWI SAONEK', 'Azka Loji', 'Waisai, Kabupaten Raja Ampat.', 'Waisai', 'Waigeo Selatan', 'Swasta', '-0.467335715976311', '130.78341094283132', 'TK.png'),
(42, 'SD AISYIYAH 01 RAJA AMPAT', 'Tajudin Hamid', ' Jl. Swaimbon Gedung Siti Walidah Warmasen', 'Warmasen', 'Kota Waisai', 'Swasta', '-0.42450029638851855', '130.82650558308603', '2.jpg'),
(43, 'SD NEGERI 1 SAONEK', 'Mateos Manu', 'Waisai, Kabupaten Raja Ampat.', 'Waisai', 'Waigeo Selatan', 'Negri', '-0.4675118948162889', '130.78296969604511', 'Screenshot_2023-05-05_003651.png'),
(44, ' SD INPRES 22 ATKARI', 'Nasriy', 'Kampung Atkari', 'ATKARI', 'Misool (misool Utara)', 'Negri', '-1.772875399338282', '130.04731706670609', 'Sekolah11.png'),
(45, 'SD NEGERI 4 FRIWEN', 'Clementina Reressy', 'Friwen, Kec. Waigeo Sel., Kabupaten Raja Ampat.', 'Friwen', 'Waigeo Selatan', 'Negri', '-0.4802879921814735', '130.6918051240112', 'Sekolah12.png'),
(46, ' SD INPRES 23 SOLAL', 'Jois Ambafen', 'Kampung Solal', 'Solal', 'Misool (misool Utara)', 'Negri', '-0.9256126160821397', '130.88040398127993', 'Sekolah13.png'),
(47, 'TK. MAWAR', 'JANIBA SESERAY', 'Jl.Lumba-Lumba Waisai Kota', 'Waisai', 'Kota Waisai', 'Swasta', '-0.4129928307440754', '130.82020056271605', 'TK_MAWAR.jpg'),
(48, 'SD PERSIAPAN NAPIRBOI', 'Baenal', 'Waisai, Distrik Kota Waisai, Kabupaten Raja Ampat.', 'Waisai', 'Waigeo Selatan', 'Negri', '-0.43360814432169204', '130.76678170176393', 'Sekolah14.png'),
(49, ' SD NEGERI 14 WAIGAMA', ' Mohamad Amin Raubun', 'Kampung Waigama', 'Waigama', 'Misool (misool Utara)', 'Negri', '-1.8700395744246887', '129.7536102627547', 'Sekolah15.png'),
(50, 'SD YPK GETSEMANI SAPORKREN', 'Nikodemus Maray', 'Saprokren, Kec. Waigeo Sel., Kabupaten Raja Ampat.', 'Saproken', 'Waigeo Selatan', 'Swasta', '-0.4370575600011429', '130.73029900911757', 'Sekolah16.png'),
(51, 'SD YPK MARTHEN LUTHER YENBESER', 'Harapan Simanjuntak', 'Yenbeser, Kec. Waigeo Sel., Kabupaten Raja Ampat.', 'Yenbeser', 'Waigeo Selatan', 'Swasta', '-0.46455327746298763', '130.6819399986184', 'Sekolah17.png'),
(52, ' SD NEGERI 27 SALAFEN', ' Salim Angkutasa', 'Kamppung Salafen', 'Salafen', 'Misool (misool Utara)', 'Negri', '-1.85128115474307', '129.8958709145857', 'Sekolah18.png'),
(53, 'SMPN YENBESER', 'Felix Arnold Lakoy', 'Yenbeser, Kec. Waigeo Sel., Kabupaten Raja Ampat.', 'Yenbeser', 'Waigeo Selatan', 'Negri', '-0.46317739409428843', '130.68271333966157', 'Sekolah19.png'),
(54, ' SD YPK SYALOM ADUWEY', 'Oskar Enos Ngarbingan', 'Kampung Aduwey', 'Aduwei', 'Misool (misool Utara)', 'Swasta', '-1.9816475785279886', '129.92411213884168', 'Sekolah20.png'),
(55, ' SD NEGERI 35 KIMINDORES', 'Susyanto', 'Kimindores', 'Sapordanco', 'Susyanto', 'Negri', '-0.4335909195146893', '130.81264958075963', 'KIMI.jpg'),
(56, ' SMP NEGERI 3 RAJA AMPAT', 'Waluyo', 'Jln. Pendidikan Salafen', 'Salafen', 'Misool (misool Utara)', 'Negri', '-1.8306692778395421', '129.83287487479691', 'Screenshot_2023-05-05_005749.png'),
(57, ' SDN 33 WAIMNIR', 'Sukijo', 'Kampung Waimnir', 'Bonwakir', 'Kota Waisai', 'Negri', '-0.40862742969830973', '130.87056789121587', 'Sekolah21.png'),
(101, 'SD NEGERI 5 SAUKABU', 'Fince Snanfi', 'Saukabu, Kabupaten Raja Ampat.', 'Saukabu', 'Waigeo Barat Kepulauan', 'Negri', '-0.6474151478065898', '130.31153579983467', 'Sekolah54.png'),
(59, ' SMP NEGERI 3 RAJA AMPAT', 'Waluyo', 'Jln. Pendidikan Salafen', 'Salafen', 'Misool (misool Utara)', 'Negri', '-1.783199064901655', '129.9060770820318', 'Sekolah23.png'),
(60, 'SMA NEGERI 2 RAJA AMPAT', 'Bustam Umsapyat,s. Pd. M.si', 'JL. KI HAJAR DEWANTARA', 'Solal', 'Misool (misool Utara)', 'Negri', '-1.8294433004123836', '129.82660957906984', 'Screenshot_2023-05-05_0104391.png'),
(61, ' SMP NEGERI 14 RAJA AMPAT', 'Sitti Habiba Adjudant', 'Waisai', 'Waisai', 'Kota Waisai', 'Negri', '-0.42936347336172326', '130.8168657779609', 'SMP14.jpg'),
(62, 'PAUD. ELIM YENANAS', 'SELFINCE YAPEN', 'Kampung Yenanas', 'Yenanas', 'Batanta Selatan', 'Swasta', '-0.8390560859559979', '130.8702403603253', 'Paud.png'),
(63, ' SMP IT AL IKHLAS', 'Hari Nurdin Santosa', 'Jalan Basuki Rahmat, Perum 200 Moko', 'Bonwakir', 'Kota Waisai', 'Swasta', '-0.4149903716859413', '130.8488876411418', '2020-11-12-min.jpg'),
(64, 'SD INPRES 2 YENBUBA', 'Sarah Sareo', 'Kampung Yenbuba', 'Yenbuba', 'Meos Mansar', 'Negri', '-0.5878630885369092', '130.60048020634108', 'Sekolah24.png'),
(65, 'SD INPRES 3 YENWOUPNOR', 'Hein Johanis Wenno', 'Kampung Yrnwaupnor', 'Yenwaoupnor', 'Meos Mansar', 'Negri', '-0.5281168194424957', '130.60322173952025', 'Sekolah25.png'),
(66, 'SD ADVEND SAWANDAREK', 'Hary Adolong', 'kampung Sawandarek', 'SAUANDAREK', 'Meos Mansar', 'Swasta', '-0.5908053689368027', '130.60158502471995', '20121383_10155466501773290_586231828859879268_o.jpg'),
(67, 'SD NEGERI 28 AWAT', 'Elias Bormasa', 'Kampung Dibalal Daratan', 'AWAT', 'Kofiau', 'Negri', '-1.164847526673199', '129.8031226621174', 'Sekolah26.png'),
(68, 'SMP NEGERI 7 RAJA AMPAT', 'Benyamin Fiay, S.Pd', 'Kampung Deer', 'Deer', 'Kofiau', 'Negri', '-1.1506721744453996', '129.84860244502522', '2022-08-23-min.jpg'),
(69, 'SMA NEGERI 3 RAJA AMPAT', 'Yosafat Watem', 'KAMPUNG DEER', 'Deer', 'Kofiau', 'Negri', '-1.1488239102146955', '129.84870963318005', '2018-08-25-min.jpg'),
(70, ' SD YPK ELIM MEOSBEKWAN', 'JOKA HULISELAN', 'Kampung Meosbekwan', 'Meosbekwan', 'Kepulauan Ayau', 'Swasta', '0.39867802232819577', '131.13874184723304', 'Sekolah27.png'),
(71, 'SD YPK IMANUEL YENKAWIR', 'Linus Imbir', 'Kampung Yenkawir', 'Yenkawir', 'Kepulauan Ayau', 'Swasta', '0.38525505811740257', '131.03315255409962', 'Sekolah28.png'),
(72, 'SD YPK SILO DOREHKAR', 'Marlina Numberi', 'Kampung Dorehkar', 'Doreikar', 'Kepulauan Ayau', 'Swasta', '0.36319990914073547', '131.05137047574132', '2021-06-02.jpg'),
(73, 'SMP NEGERI 24 RAJA AMPAT', 'Mochamad Rochim', 'Kampung Rutum', 'Rutum', 'Kepulauan Ayau', 'Negri', '0.5581367662026702', '131.19020447195362', '2020-10-21.jpg'),
(74, 'SD NEGERI 26 KALWAL', 'Achmad Sugianto', 'Kampung Kalwal', 'Kalwal', 'Salawati Barat', 'Negri', '-0.9935744655792624', '130.68630208081663', 'Sekolah29.png'),
(75, 'SD INPRES 21 KALIAM', 'Mathias Mika Saleo', 'Kampung Kaliam', 'Kaliam', 'Salawati Barat', 'Negri', '-0.9534884645227517', '130.6710982567604', 'Sekolah30.png'),
(76, 'SD NEGERI 36 WAYOM', 'Jermia Korwa', 'Kampung Waibon', 'Waibon', 'Salawati Barat', 'Negri', '-0.9459121834145331', '130.7616401998703', 'IMG-20220511-WA0010.jpg'),
(77, 'SD YPK EBENHEIZER SOLOL', 'Magdalena Sauyai', 'Kampung Solol', 'Solol', 'Salawati Barat', 'Swasta', '-0.9432912639598592', '130.822005976292', 'Sekolah31.png'),
(78, 'SD NEGERI 3 KABUI', 'Nelci Dimara', 'Kampung kabui', 'Kabuy', 'Meos Mansar', 'Negri', '-0.4040692048541159', '130.5567928908022', 'Sekolah32.png'),
(79, 'SD INPRES 4 ARBOREK', 'Syahbuddin', 'Kampung Arborek', 'Arborek', 'Meos Mansar', 'Negri', '-0.5647369370577834', '130.5167013014364', 'Sekolah33.png'),
(80, 'SD YPK ELIM SAWINGGRAI', 'Sri Wiji Lestari', 'Kampung Sawinggrai', 'Sawinggrai', 'Meos Mansar', 'Swasta', '-0.48628905014064616', '130.6217970189782', 'Sekolah34.png'),
(81, 'SD YPK TABERNAKEL YENBEKWAN', 'Huldah Hermelina Apaseray', 'Kampung Yenbekwan', 'Yenbekwan', 'Meos Mansar', 'Swasta', '-0.5912878218960549', '130.60120073866187', 'Sekolah35.png'),
(82, 'SMP NEGERI 9 RAJA AMPAT', 'Agustina Apselina Arwakon', 'Kampung Yenbekwan', 'Yenbekwan', 'Meos Mansar', 'Negri', '-0.5894773337105726', '130.60189718657867', 'Sekolah36.png'),
(83, 'SD YPK BETHEL DEER', 'PLT - Baldus Watem.a Ma,pd', 'Kampung Deer', 'Deer', 'Kofiau', 'Swasta', '-1.17182023077064', '129.8585770052327', 'Sekolah37.png'),
(84, 'SMP NEGERI 22 RAJA AMPAT', 'Alfons Fakdawer S.pd', 'KAMPUNG DIBALAL', 'Deer', 'Kofiau', 'Negri', '-1.156882381254111', '129.7988008835577', 'Sekolah38.png'),
(85, ' SD INPRES 20 YENANAS', 'Arlince Lorina Dey', 'Kampung Yenanas', 'KAMPUNG YENANAS', 'Batanta Selatan', 'Negri', '-0.8844665788108482', '130.54949027432642', 'Sekolah39.png'),
(86, 'SD NEGERI 13 WAILEBET', 'Lukas Mamary', 'Kampung Wailebet', 'Wailebet', 'Batanta Selatan', 'Negri', '-1.0246904176124738', '131.00719800127172', 'Sekolah40.png'),
(87, 'SD NEGERI 44 WEIMAN', 'Herman George Mirino', 'Kampung Waiman', 'Kampung Weiman', 'Batanta Selatan', 'Negri', '-0.08844032242214987', '130.9877300740055', 'Sekolah41.png'),
(88, 'SD YPK BETLEHEM AMDUI', 'Nataniel Kareth', 'Kampung Amdui', 'Amdui', 'Batanta Selatan', 'Swasta', '-0.8217580124572069', '130.85650178310334', 'Sekolah42.png'),
(89, 'SMP NEGERI 6 RAJA AMPAT', 'Ramli Maniur Silalahi', 'Kampung Yenanas', 'KAMPUNG YENANAS', 'Batanta Selatan', 'Negri', '-0.8973826769849053', '130.5964959733978', 'Sekolah43.png'),
(90, 'SMA NEGERI 7 RAJA AMPAT', 'Yunus Rombe', 'KAMPUNG YENANAS', 'Yenanas', 'Batanta Selatan', 'Negri', '-0.8370141433632333', '130.88889356696822', 'Screenshot_2023-05-05_151616.png'),
(91, 'SD YPK EDEN WARKORI/BONI', 'Yuristina Leping', 'Kampung Warkori', 'Warkori', 'Warwarbomi', 'Swasta', '-0.035098986411189505', '131.07725720663262', 'Sekolah44.png'),
(92, 'SD YPK ELIM MNEIR', 'Yulius Sosir,s.pd.k', 'Kampung Mnier', ' Mnier', 'Warwarbomi', 'Swasta', '-0.2297855763374116', '131.12910006996884', 'Sekolah45.png'),
(93, ' SD YPK GETSEMANI WARWANAI', 'Andre Tuanakotta', 'Kamp.warwanai', 'Warmanai', 'Warwarbomi', 'Swasta', '-0.11348942446762741', '131.09709669830502', 'Sekolah46.png'),
(94, 'SMP NEGERI 17 RAJA AMPAT', 'Yece Umpes', 'Kampung Warwanai', 'Warmanai', 'Warwarbomi', 'Negri', '-0.09981591824767544', '131.17652483046226', 'Sekolah47.png'),
(95, 'SMA NEGERI 11 RAJA AMPAT', 'Nixon Miosido', 'KAMPUNG WARWANAI', 'Warmanai', 'Warwarbomi', 'Negri', '-0.0400947934082962', '131.05209843610305', 'Sekolah48.png'),
(96, 'SMP NEGERI 8 RAJA AMPAT', 'Metusaleh Wariroai', 'Kampung Dorehkar', 'Dorehkar', 'Kepulauan Ayau', 'Negri', '0.3679001681575102', '131.05358253176877', 'Sekolah49.png'),
(97, 'SD YPK BETHEL RAUKI', 'Yohan Everd Burdam', 'Kampung Rauki', 'Rauki', 'Supnin', 'Swasta', '-0.1394926625975834', '130.88939765889276', 'Sekolah50.png'),
(98, 'SMP PERSIAPAN SUPNIN', 'Asrading Sule Ptt Solong', 'Kampung Rauki', 'Rauki', 'Supnin', 'Negri', '-0.1043864631358931', '130.87754847904284', 'Sekolah51.png'),
(99, 'SD NEGERI 36 WAYOM', 'Jermia Korwa', 'Waibon', 'Waibon', 'Salawati Barat', 'Negri', '-1.113386525627104', '130.93046329187035', 'Sekolah53.png'),
(100, 'SMP NEGERI 26 RAJA AMPAT', 'Agustinus Bille', 'KAMPUNG WAYOM', 'Waibon', 'Salawati Barat', 'Negri', '-1.060570675121444', '130.87503190266426', '1.jpg'),
(102, 'SD NEGERI 7 GAG', 'Abdul Kadir', 'Waisilip, Kec. Waigeo Bar., Kabupaten Raja Ampat.', 'Waisilip', 'Waigeo Barat', 'Negri', '-0.2257289212899796', '130.44495622032468', 'Sekolah55.png'),
(103, 'SD YPK IMANUEL MANYAIFUN', 'Baisura Dimara', 'Batang Pele, Manyaifun, Distrik Waigeo Barat Kepulauan, Kabupaten Raja Ampat', 'Manyaifun', 'Waigeo Barat Kepulauan', 'Negri', '-0.29344630815563016', '130.21069875649312', 'Sekolah57.png'),
(104, 'SD YPK PNIEL PAAM', 'Simon Mambrasar', 'Pam Kec. Waigeo Barat Kepulauan, Kab. Raja Ampat.', 'Pam', 'Waigeo Barat Kepulauan', 'Negri', '-0.6642700512679445', '130.2793980015672', 'Sekolah58.png'),
(105, 'SMP NEGERI 19 RAJA AMPAT', 'Muh. Mahsyar B, S. Pd.', 'Batang Pele, Manyaifun, Distrik Waigeo Barat Kepulauan, Kabupaten Raja Ampat.', 'Manyaifun', 'Waigeo Barat Kepulauan', 'Negri', '-0.2973559649390256', '130.21950289098348', 'Sekolah59.png'),
(106, 'SMPS YPK PNIEL PAAM', 'Femi Tololiu, S. Pd.', 'Saukabu, Distrik Waigeo Barat Kepulauan, Kabupaten Raja Ampat.', 'Saukabu', 'Waigeo Barat Kepulauan', 'Swasta', '-0.6572945369561869', '130.29640118955442', 'smps_ypk_pam.png'),
(107, 'PAUD CENDRAWASI', 'Iriyani', 'Waibo, Kec. Salawati Utara, Kabupaten Raja Ampat, Papua Bar.', 'Waibo', 'Salawati Utara', 'Swasta', '-1.1210540841595773', '131.00960390112968', 'Paud1.png'),
(108, 'SD INPRES 16 KALOBO', 'Sariyani', 'Waibo, Kec. Salawati Tengah, Kabupaten Raja Ampat, Papua Bar.', 'Waibo', 'Salawati Tengah', 'Negri', '-1.1534569047924084', '131.00119490391697', 'Sekolah80.png'),
(109, 'SD INPRES 17 KALOBO', 'Atik Sugiarti', 'Waibo, Kec. Salawati Tengah, Kabupaten Raja Ampat, Papua Bar.', 'Waibo', 'Salawati Tengah', 'Negri', '-1.121676492681691', '131.00949965785045', 'Sekolah77.png'),
(110, 'SD INPRES 18 WAIJAN', 'Wijianto', 'Waibo, Kec. Salawati Tengah, Kabupaten Raja Ampat, Papua Bar.', 'Waibo', 'Salawati Tengah', 'Negri', '-1.023837057420825', '131.00719516072624', 'Sekolah76.png'),
(111, 'SD YAPIS KALOBO', 'Eka Sufatma M. Siajeng', 'Sakabu, Kec. Salawati Utara, Kabupaten Raja Ampat, Papua Bar.', 'Sakabu', 'Salawati Tengah', 'Swasta', '-1.0592658263860983', '131.07400278036354', 'sd_yapis1.png'),
(112, 'SMP NEGERI 5 RAJA AMPAT', 'Riyanto Widodo', 'Waibo, Kec. Salawati Tengah, Kabupaten Raja Ampat, Papua Bar.', 'Waibo', 'Salawati Tengah', 'Negri', '-1.0517774175565533', '131.0548997850156', 'Sekolah79.png'),
(113, 'SMA NEGERI 8 RAJA AMPAT', 'Rahman Rumlus', 'Kabupaten Raja Ampat, Papua Bar.', 'Kalobo', 'Salawati Tengah', 'Negri', '-1.0256913641677448', '130.97450162463508', 'sma_81.png'),
(114, 'SMP NEGERI 16 RAJA AMPAT', 'Herni Rerung', 'Yensawai, Selat Sagawin, Kabupaten Raja Ampat, Papua Bar.', 'Yensawai', 'Selat Sagawin', 'Negri', '-0.8070268469442287', '130.6847631433597', 'smp_16.png'),
(115, 'SMP YPPK SANTA MARIA REGINA', 'Bergita Sebian', 'Jl. jend Ahmad yani Perum 100', 'Waisai', ' Kota Waisai', 'Swasta', '-0.41080267561841577', '130.82207254347904', 'Sekolah64.png'),
(116, 'SMPS YPK ALFA OMEGA WAISAI', 'Jenny Tahitu', 'Kota Waisai', 'Warmasen', 'Kota Waisai', 'Swasta', '-0.42208091245106855', '130.82827296073492', 'Sekolah65.png'),
(117, 'SMA NEGERI 1 RAJA AMPAT', 'Helena Omkarsba', 'JL. FRANS KAISEPO', 'Sapordanco', 'Kota Waisai', 'Negri', '-0.4270563219119787 ', '130.81766240385608', 'sma_1.jpg'),
(118, ' SMK NEGERI 2 RAJA AMPAT', 'Nikodemus Mayor', 'JLN WARSAMBIN', 'Bonwakir', 'Kota Waisai', 'Negri', '-0.41208911525807596', '130.86720571409185', 'smk_2.jpg'),
(119, 'SMK DKV YANURAF KHIDIRRAJA', 'Jajang Kusnara', 'WAISAI', 'Sapordanco', 'Kota Waisai', 'Swasta', '-0.42980171765726743', '130.80601741125696', 'smk_dkv_(1).JPG'),
(120, 'SMKS YPK BUKIT ZAITUN WAISAI', 'Martina Bonsapia', 'Kampung Warmasen', 'Warmasen', 'Kota Waisai', 'Swasta', '-0.42049452236862017', '130.82712625411028', 'compressed_smk_ypk_compressed.jpg'),
(121, 'PKBM BAHARI KOFARKOR', 'PLT - Neles Rumaropen', 'Jln Batanta Kel.sapordanco Distrik Kota Waisai kab. Raja Ampat', 'Sapordanco', 'Kota Waisai', 'Swasta', '-0.3716272828999557', '130.8360131441896', 'Sekolah66.png'),
(122, 'TK BAHARI KOFARKOR', 'HAIRISANI RUMBEWAS', 'Jln. Batanta No.I', 'Sapordanco', 'Kota Waisai', 'Swasta', '-0.42715317030659244', '130.81813041394423', 'TK3.png'),
(123, 'TK BAHARI WAISAI', 'NORCE IRIANCE LEUNUFNA', 'WAISAI', 'Waisai', 'Kota Waisai', 'Swasta', '-0.41715455986312266', '130.82752516069223', 'TK4.png'),
(124, 'PAUD PENUAI', 'MARLIN SANDRA WAMBRAUW', 'Jln. Kalabia Kompleks Sosial Kobioser Waisai', 'Waisai', 'Kota Waisai', 'Swasta', '-0.4135998164190817', '130.8239530907345', 'TK5.png'),
(125, 'PAUD SUMBER HIKMAT', 'MINCE TURU', 'SWAIMBON', 'Warmasen', 'Kota Waisai', 'Swasta', '-0.4273197524195674', '130.82839924990273', 'Paud2.png'),
(126, 'SPS.BAITUL ARSYILLAH', 'PLT - Slamet', 'Perum sosial kobioser', 'Waisai', 'Kota Waisai', 'Swasta', '-0.4149262548435338', '130.82342741957922', 'Sekolah67.png'),
(127, 'SDS ST MARIA REGINA WAISAI', 'Aurelia Ratuanak', 'Jl. Jend. Ahmad Yani Perum 100 Distrik Kota Waisai', 'Waisai', 'Kota Waisai', 'Swasta', '-0.41118973138976367', '130.82211704036723', 'Sekolah68.png'),
(128, 'SD INPRES 6 WAIFOI', 'Estefanos Kading', 'ampung Waifoi, Waifoi, Kec. Tiplol Mayalibit', 'Waifoi', 'Tiplol Mayalibit', 'Negri', '-0.0997902917234555', '130.71430142077136', 'Sekolah69.png'),
(129, 'SD INPRES 7 BEO', 'Sandhi Prasetya Aji', ' Kampung Beo, Beo', 'Beo', 'Tiplol Mayalibit', 'Negri', '-0.13628779335182625', '130.68099860320172', 'Sekolah70.png'),
(130, 'SD NEGERI 10 WARIMAK', 'La Haja', 'Kampung Warimak', 'Warimak', 'Tiplol Mayalibit', 'Negri', '-0.144391349885709', '130.73653049630067', 'Sekolah71.png'),
(131, 'SD YPK EBENHEIZER AREFI', 'Novelorens Ngarbingan', 'Kampung Arefi Timur Kec. Batanta Utara Kab. Raja Ampat Prov. Papua Barat Daya', 'Arefi Timur', 'Batanta Utara', 'Swasta', '-0.7893518385644046', '130.70444476560647', 'ypk_arefi.jpg'),
(132, 'SD YPK LAHAIROI YENSAWAI', 'Orgenes Piter Wader', 'Kampung Yensaway, Yensawai Barat, Kec. Batanta Utara, Kab. Raja Ampat Prov. Papua Barat Daya', 'Yensawai Barat', 'Batanta Utara', 'Swasta', '-0.8508201128146905', '130.47680441816325', 'Sekolah72.png'),
(133, 'SD INPRES 11 ASUKWERI', 'Rami', ' Asukweri, Waigeo Utara, Raja Ampat Regency, West Papua ', 'Asukweri', 'Waigeo', 'Negri', '-0.045912213444915646', '131.0035997908298', 'WhatsApp_Image_2023-05-12_at_02_12_43.jpeg'),
(134, ' SD NEGERI 34 DARUMBAB', 'Irma, S.Pd', 'Kabare, Waigeo Utara, Raja Ampat Regency, West Papua ', 'Kabare', 'Waigeo Utara', 'Negri', '-0.05657217735219837', '130.9947947233699', '2018-03-07.jpg'),
(135, ' SD YPK BETFAGE KABARE', 'Betharia Ritonga', 'Bonsayor, Waigeo Utara, Raja Ampat Regency, West Papua', 'Bonsayor', 'Waigeo Utara', 'Swasta', '-0.09955943938971654', '130.90989971295693', 'WhatsApp_Image_2023-05-12_at_02_25_11.jpeg'),
(136, 'SD NEGERI 11 ANDEY', 'Thidorus Umpes', 'Andey Kec. Waigeo Utara   Kab. Raja Ampat Prov. Papua Barat Daya', 'Andey', 'Waigeo Utara', 'Negri', '-0.04689850752027937', '130.99567822847177', 'Sekolah81.png'),
(137, ' SMP YPK EBENHAEZER LIMALAS', 'Walterus Fautngiljnan', 'Kampung Limalas', 'Kampung Limalas', 'Misool Timur', 'Negri', '-1.9946861017433446', '130.29669087253498', 'Sekolah82.png'),
(138, 'PKBM.EMBUN KARMEL', 'Karel Burdam', 'Kampung Folley -Distrik Misool Timur Kab Raja Ampat', 'Kampung Folley', 'Misool Timur', 'Swasta', '-1.765741591559058', '130.40962876017218', 'Sekolah83.png'),
(139, ' SD YPK PETRUS TOMOLOL', 'Misael Maspitella, S.Pd', 'Kampung Tomolol', 'Kampung Tomolol', 'Misool Timur', 'Swasta', '-1.8358398195560148', '130.34266631618735', 'Sekolah84.png'),
(140, 'SMP NEGERI 15 RAJA AMPAT', 'Dahlan Alhamid', 'Jl. Pendidikan Kampung Folley, Distrik Misool Timur, Kab. Raja Ampat Papua Barat', 'Kampung Folley', 'Misool Timur', 'Negri', '-0.11289745100307158', '130.60634448879486', 'Sekolah85.png'),
(141, ' SD INPRES 24 FOLLEY', 'Rizki Febriana Wulandari', 'Kampung Folley', 'Kampung Folley', 'Misool Timur', 'Negri', '-1.778781615245231', '130.26028336305467', 'Sekolah86.png'),
(142, ' SMP NEGERI 2 RAJA AMPAT', 'Nursalam Manalu', 'Jl. Pendidikan, Kampung Darumbab, Distrik Waigeo Utara, Kab. Raja Ampat', 'Kampung Darumbab', 'Waigeo Utara', 'Negri', '-0.05464756402866453', '130.9904571818487', 'Sekolah87.png'),
(143, ' SD YPK LAHAIROI SELPELE', 'Yesayas Elake', 'Kampung Selpele', 'Kampung Selpele', 'Waigeo Barat', 'Swasta', '-0.21495494724402453', '130.34171162405337', 'Sekolah88.png'),
(144, 'SD NEGERI 6 WAISILIP', 'Septinus Mniber', 'Kampung Waisilip', 'Kampung Waisilip', 'Waigeo Barat', 'Negri', '-0.24862413152158633', '130.3633961801141', 'Sekolah89.png'),
(145, ' SD NEGERI 32 BIANCI', 'Saoda Umar', 'Kampung Bianci', 'Kampung Bianci', 'Waigeo Barat', 'Negri', '-0.0695582509565819, 130.124731644793', '130.124731644793', 'Sekolah90.png'),
(146, 'SD NEGERI 8 ARAWAI', 'Supardi', 'Kampung Arawai', 'Arway', 'Tiplol Mayalibit', 'Negri', '-0.27679013236567823', '130.70790047421679', 'Sekolah91.png'),
(147, 'SD YPK EFATA MUTUS', 'Fransiscus  Xaverius Naben', 'Kamp. Mutus', 'Kamp. Mutus', 'Waigeo Barat', 'Swasta', '-0.42688668832769383', '130.67565993383434', 'Sekolah92.png'),
(148, 'SD INPRES 5 SALEO', 'Halarius Nong Hengki, S.Pd', 'Kampung Salio', 'Kampung Salio', 'Waigeo Barat', 'Negri', '-0.11455258555207831', '130.29145410460552', 'Sekolah93.png'),
(149, 'SD NEGERI 30 MUMES', 'Yacop Izaak', 'Kampung Mumes', 'Kampung Mumes', 'Teluk Mayalibit ', 'Negri', '-0.37222036685564935', '130.80510224635998', 'Sekolah94.png'),
(150, 'SD NEGERI 9 GO', 'Mercy Marsha Syatauw', 'Kampung Go', 'Go', 'Tiplol Mayalibit', 'Negri', '-0.07798468863230144', '130.66549893156488', 'Sekolah95.png'),
(151, 'SD YAPIS LOPINTOL', 'Muhaba', 'Gang Pendidikan Kampung Lopintol', 'Kampung Lopintol', 'Teluk Mayalibit ', 'Swasta', '-0.34345934158526736', '130.7800798701821', 'Sekolah96.png'),
(152, 'SD YPK SILO KABILOL', 'Mulian Awairaro', 'Kampung Kabilol', 'Kabilol', 'Tiplol Mayalibit', 'Negri', '-0.11348625790577083', '130.64209928572157', 'Sekolah97.png'),
(153, ' SD NEGERI 43 WARENGKRIS', 'Pertonela Wenno', 'Jln. Trans Waisai - Warsambin KM. 23', 'Warsambin', 'Teluk Mayalibit ', 'Negri', '-0.3523080456362474', '130.90191926242235', 'Sekolah98.png'),
(154, ' SMP NEGERI 12 RAJA AMPAT', 'Ahtum Tuasial', ' Kampung Warsambin', ' Kampung Warsambin', 'Teluk Mayalibit ', 'Negri', '-0.3108647780990396', '130.91944132263265', 'Sekolah99.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(12, 'Admin', 'admin', '4321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
