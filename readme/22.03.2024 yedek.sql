-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Mar 2024, 07:19:43
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hastane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dt`
--

CREATE TABLE `dt` (
  `id` int(11) NOT NULL,
  `dttarihi` date NOT NULL,
  `dtadi` varchar(50) NOT NULL,
  `dtsahibi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dt`
--

INSERT INTO `dt` (`id`, `dttarihi`, `dtadi`, `dtsahibi`) VALUES
(1, '2024-02-05', 'ODYOMETRE  PROB ALIMI', 'BEKİR ASLAN'),
(2, '2024-02-05', 'ODYOMETRE  PROB ALIMI', 'BEKİR ASLAN'),
(3, '2024-02-14', '4 KALEM FONCOİL YEDEK PARÇA MAL ALIMI', 'BEKİR ARSLAN'),
(4, '2024-02-09', 'HEMODİYALİZ CİHAZI DESENFEKSİYON SOLÜSYONU ALIMI', 'BEKİR ARSLAN'),
(5, '2024-02-07', '2 KALEM İLAÇ ALIMI', 'BEKİR ARSLAN'),
(6, '2024-02-05', '5 KALEM DİŞ ÜNİTESİ İÇİN YEDEK PARÇA  MALZEME ALIM', 'BEKİR ARSLAN'),
(7, '2024-02-15', '1 ADET EVDE BAKIM ARACINI GİYDİRME HİZMET İŞİ', 'BEKİR ARSLAN'),
(8, '2024-02-08', '1 KALEM ALKOLMETRE KALİBRASYON HİZMET ALIMI', 'BEKİR ARSLAN'),
(9, '2024-02-14', '4 KALEM FONCOİL YEDEK PARÇA MAL ALIMI', 'BEKİR ARSLAN'),
(10, '2024-02-15', 'ASANSÖR FREN BLOĞU(PARAŞÜT FREN)', 'BEKİR ARSLAN'),
(11, '2024-03-08', '1 KALEM İLAÇ ALIMI', 'BEKİR ARSLAN'),
(12, '2024-03-13', '1 KALEM PERSONEL TAKİP SİSTEMLERİ KART OKUMA PANEL', 'BEKİR ARSLAN');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ihaleler`
--

CREATE TABLE `ihaleler` (
  `id` int(11) NOT NULL,
  `iknno` varchar(13) NOT NULL,
  `ihalead` varchar(100) NOT NULL,
  `ihaletari` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ihaleler`
--

INSERT INTO `ihaleler` (`id`, `iknno`, `ihalead`, `ihaletari`) VALUES
(1, '2020/751732', '72 KALEM BİYOMEDİKAL SARF MALZEME ALIMI', '2021-04-19'),
(2, '2020/347354', '229 Kısım Kırtasiye, Temizlik ve Toner Alımı', '2020-09-01'),
(3, '42/2021', '1 KALEM ACİL SERVİS GÖZLEM FORMU MAL ALIMI', '2021-10-21'),
(16, '2021/517063', '2 KALEM ÇÖP TORBASI ALIMI', '2021-09-01'),
(19, '2019/427113', '502 KALEM İLAÇ VE SERUM ALIMI', '2019-10-10'),
(20, '2021/331653', 'DMO SAĞLIK MARKET ALIMI', '2021-06-21'),
(21, '2021/619156', 'DMO SAĞLIK MARKET ALIMI', '2021-10-12'),
(22, '2021/466358', 'DMO SAĞLIK MARKET ALIMI', '2021-08-12'),
(23, '2021/331673', 'DMO SAĞLIK MARKET ALIMI', '2021-06-21'),
(24, '2021/354764', 'DMO SAĞLIK MARKET ALIMI', '2021-06-24'),
(25, '2021/45', '1 KALEM DEMİR PROFİL(40*40) VE ALÜMÜNYUM KAPI ALIM', '2021-11-01'),
(26, '2020/659372', '2 Kısım Cihaz Karşılığı Pulse Oksimetre Probu Alımı', '2020-12-31'),
(27, '2020/751732	', '72 KALEM BİYOMEDİKAL SARF MALZEME ALIMI', '2021-04-19'),
(38, '2021/89300', 'TIBBİ OKSİJEN GAZ ALIMI', '2021-03-09'),
(53, '2021/268901', '63 KISIM LABORATUVAR SARFMALZEME ALIMI', '2021-05-18'),
(56, '48/2021', '5 kalem foncoil yedek parça mal alımı', '2021-12-01'),
(57, '2021/47', '1 KALEM İDRAR TORBASI MAL ALIMI', '2021-11-26'),
(58, '2021/38', '3 KALEM DİYALİZ MALZEME ALIMI', '2021-10-05'),
(59, '2021/625458', '60 Kısım Laboratuvar Sarf Malzeme Alımı', '2021-10-19'),
(60, '2021/611035', 'Odun ve Kömür Alımı', '2021-10-27'),
(61, '2020/498', '138 Kalem İlaç Alımı', '2020-02-17'),
(65, '2021/874204', 'DMO SAĞLIK MARKET ALIMI', '2021-12-23'),
(66, '2021/49', '8 KALEM DİŞ MALZEMESİ ALIMI', '2021-12-20'),
(67, '2021/798912', 'DMO SAĞLIK MARKET ALIMI', '2021-12-07'),
(68, '2022/2', '5 KALEM TIBBİ MAL ALIMI', '2022-01-17'),
(69, '2021/637817', '238 Kısım Kırtasiye, Toner Ve Temizlik Alımı', '2021-11-23'),
(70, '2021/894249', 'DMO SAĞLIK MARKET ALIMI', '2021-12-28'),
(71, '2021/798932', 'DMO SAĞLIK MARKET ALIMI', '2021-12-07'),
(72, '2021/796387', '5 Kalem Genel Sarf Malzeme Alımı', '2021-12-08'),
(73, '2021/905109', 'DMO SAĞLIK MARKET ALIMI', '2021-12-30'),
(75, '2022/31266', 'DMO SAĞLIK MARKET ALIMI', '2022-01-20'),
(76, '2021/439533', 'DMO SAĞLIK MARKET ALIMI', '2021-08-05'),
(81, '2021/619156	', 'DMO SAĞLIK MARKET ALIMI', '2021-10-12'),
(82, '2022/50995	', 'DMO SAĞLIK MARKET ALIMI', '2022-01-27'),
(83, '2021/6192', 'TIBBİ OKSİJEN GAZ ALIMI', '2021-03-08'),
(86, '2022/50995', 'DMO SAĞLIK MARKET ALIMI', '2022-01-27'),
(87, '2022/31266	', 'DMO SAĞLIK MARKET ALIMI', '2022-01-20'),
(88, '2021/798932	', 'DMO SAĞLIK MARKET ALIMI', '2021-12-07'),
(89, '2022/84394	', 'DMO SAĞLIK MARKET ALIMI', '2022-02-14'),
(90, '2022/225085', '2 TIBBİ SARF MALZEME ALIMI', '2022-03-11'),
(91, '2020/588983', 'DMO SAĞLIK MARKET ALIMI', '2020-11-04'),
(92, '2022/6', '1 KALEM ASANSÖR YEDEK PARÇA MAL ALIMI', '2022-02-21'),
(93, '2022/84394', 'DEVLET MALZEME OFİSİ', '2022-02-14'),
(94, '2022/178803', 'DMO SAĞLIK MARKET ALIMI', '2022-03-03'),
(95, '2022/136566', '18 KISIM TIBBİ SARF MALZEME ALIMI', '2022-03-08'),
(96, '2022/8', '21 KALEM DİŞ MALZEMESİ ALIMI', '2022-03-25'),
(97, '2022/166194', 'DMO SAĞLIK MARKET', '2022-02-28'),
(99, '8/2022', '21 KALEM DİŞ MALZEMESİ MAL ALIMI', '2022-03-25'),
(100, '2021/637817	', '238 Kısım Kırtasiye, Toner Ve Temizlik Alımı', '2021-11-23'),
(102, '2022/84544', 'DMO SAĞLIK MARKET ALIMI', '2022-02-14'),
(103, '2022/297947', 'DMO SAĞLIK MARKET', '2022-03-31'),
(104, '2022/84566', 'DMO SAĞLIK MARKET ALIMI', '2022-02-14'),
(105, '2022/355374', 'DMO SAĞLIK MARKET', '2022-04-14'),
(107, '2022/246879', 'LİKİT OKSİJEN GAZ ALIMI', '2022-03-24'),
(108, '2022/298035', 'DMO SAĞLIK MARKET ALIMI', '2022-03-29'),
(112, '2022/9', '35 KALEM MAL ALIMI', '2022-04-21'),
(113, '2022/47693', '	134 Kısım Kırtasiye, Toner ve Temizlik Malzeme Alımı', '2022-03-16'),
(114, '20/2022', '3 KALEM KIRTASİYE MAL ALIMI', '2022-06-16'),
(115, '2022/20', '3 KALEM KIRTASİYE MAL ALIMI', '2022-06-16'),
(116, '2022/46298817', 'DMO SAĞLIK MARKET ALIMI', '2022-05-17'),
(117, '2022/462988', 'DMO SAĞLIK MARKET ALIMI', '2022-05-17'),
(118, '2022/31735', 'ERDEM ECZA DEPOSU', '2022-06-23'),
(119, '2022/17', '2 kalem hemodiyaliz için fistül iğnesi mal alımı', '2022-06-08'),
(122, '0/0', 'Tekstil Ürünlerinin Dikim İşine Ait Protokol', '2021-11-01'),
(123, '2021/194544', '5 KISIM GİYİM MALZEMESİ ALIMI', '2021-04-29'),
(124, '2022/156518', '111 Kalem Biyomedikal Sarf Alımı', '2022-04-07'),
(132, '2022/26', '1 KALEM POTASYUM FOSFAT DİBAZİK 1394+ POTSYUM FOSF', '2022-07-06'),
(133, '2022/550580', '21 Kısım Tıbbi Sarf Malzeme Alımı', '2022-06-08'),
(134, '	2022/462988', 'DMO SAĞLIK MARKET ALIMI', '2022-05-17'),
(135, '2022/27', '2 KALEM SERUM ', '2022-07-21'),
(136, '2022/539611', 'DMO SAĞLIK MARKET ALIMI', '2022-06-09'),
(137, '2022/655294', 'DMO SAĞLIK MARKET ALIMI', '2022-06-30'),
(138, '2022/484732', '125 Kalem Patoloji ve Laboratuvar Tıbbi Sarf Malzeme Alımı', '2022-06-09'),
(141, '28/2022', '2 KALEM PLASTİK DUBA VE ÇÖP POŞETİ ALIMI', '2022-08-08'),
(142, '29/2022', 'emniyet ventili mal alımı', '2022-08-08'),
(143, '2021/50423', 'DMO SAĞLIK MARKET ALIMI', '2021-02-04'),
(144, '2022/539616', 'DMO SAĞLIK MARKET ALIMI', '2022-06-09'),
(145, '2022/744029', 'DMO SAĞLIK MARKET ALIMI', '2022-08-02'),
(146, '2022/744079', 'DMO SAĞLIK MARKET ALIMI', '2022-08-02'),
(147, '2022/733470', 'DMO SAĞLIK MARKET ALIMI', '2022-07-28'),
(155, '2022/875644', 'DMO SAĞLIK MARKET ALIMI', '2022-09-01'),
(157, '-', 'ADRENALİN 1 MG/ML 1 ML AMPUL AĞUSTOS ALIMI - 1', '2022-07-27'),
(158, '30/2022', '9 KALEM YER YIKAMA MAKİNASI YEDEK PARÇA MAL ALIMI', '2022-07-21'),
(159, '25/2022', '2 KALEM ÇAMAŞIR MAKİNESİ YEDEK PARÇASI MAL ALIMI', '2022-07-06'),
(160, '2022/748698', 'DMO SAĞLIK MARKET ALIMI', '2022-08-02'),
(161, '2022/759492', 'DMO SAĞLIK MARKET ALIMI', '2022-08-08'),
(166, '35/2022', '2 KALEM İLAÇ ALIMI', '2022-09-12'),
(167, '2022/990934', 'DEVLET MALZEME OFİSİ', '2022-09-29'),
(168, '2022/38', '3 KALEM SERUM ALIMI', '2022-10-12'),
(169, '2022/1023320', 'DMO SAĞLIK MARKET ALIMI', '2022-10-06'),
(170, '2022/510422', 'LİKİT OKSİJEN GAZ ALIMI', '2022-08-22'),
(171, '0/00', 'BİLGİSAYARLI MUHASEBE ALINDI BELGESİ', '2022-11-01'),
(172, '2022/1117976', 'DMO SAĞLIK MARKET ALIMI', '2022-10-26'),
(173, '2022/1013389', 'EYLÜL 2022 SAĞLIK MARKET TIBBİ SARF MALZEME', '2022-10-11'),
(174, '2022/41', '5 kalem tıbbi cihaz yedek parça mal alımı', '2022-11-27'),
(175, '2022/1129803', 'DMO SAĞLIK MARKET ALIMI', '2022-10-31'),
(176, '2022/974253', 'Odun ve Kömür Alımı ', '2022-10-24'),
(177, '51/2022', 'OMER MATBAA MEDİKAL KAĞIT VE ENDÜSTRİ MALZEMELERİ', '2022-12-07'),
(178, '1165707', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(179, '2022/1062470', '231 Kısım Kırtasiye, Toner ve Temizlik Sarf Malzeme Alımı', '2022-11-22'),
(180, '2023/35', '6 Kalem Bilgisayar-Yazıcı Yedek parça mal alımı', '2023-11-20'),
(181, '2023/673502', '66 KALEM GİYİM MALZEMESİ ALIMI', '2023-07-07'),
(182, '2023/39', '2 KALEM ÇAMAŞIR MAKİNESİ YEDEK PARÇA MAL ALIMI', '2023-12-04'),
(183, '2023/642568', '131 KALEM BİYOMEDİKAL SARF MALZEME ALIMI', '2023-08-17'),
(184, '1165695', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(185, '1165716', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(186, '1380177', 'DMO SAĞLIK MARKET ALIMI', '2023-12-04'),
(187, '1351506', 'DMO SAĞLIK MARKET ALIMI', '2023-11-30'),
(188, '1160234', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(189, '1164513', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(190, '1164971', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(191, '1381485', 'DMO SAĞLIK MARKET ALIMI', '2023-12-04'),
(192, '1164048', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(193, '1163882', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(194, '1512690', 'DMO SAĞLIK MARKET ALIMI', '2023-12-21'),
(195, '1163904', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(196, '1352285', 'DMO SAĞLIK MARKET ALIMI', '2023-11-30'),
(198, '00/0', '2024 Yılı Tekstil Ürünlerinin Dikim İşine Ait Protokol', '2023-11-25'),
(199, '2023/1250369', 'AĞUSTOS 2023 SAĞLIK MARKET TIBBİ SARF MALZEME', '2023-11-13'),
(200, '2023/910797', 'AĞUSTOS 2023 SAĞLIK MARKET TIBBİ SARF MALZEME', '2023-09-12'),
(201, '2023/1250144', 'AĞUSTOS 2023 SAĞLIK MARKET TIBBİ SARF MALZEME', '2023-11-13'),
(202, '2023/1251945', 'AĞUSTOS 2023 SAĞLIK MARKET TIBBİ SARF MALZEME', '2023-11-13'),
(203, '2023/837033', '242 Kalem Diş Tıbbi Sarf Malzeme Alımı', '2023-09-21'),
(204, '1166638', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(205, '1382058', 'DMO SAĞLIK MARKET ALIMI', '2023-12-04'),
(206, '1161014', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(207, '1166587', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(208, '1163052', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(209, '91629', 'SAĞLIK MARKET ARALIK 2023 VİTAMİN K1 10 MG/ML 1 ML AMPUL ALIMI', '2024-01-25'),
(210, '1158149', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(211, '1158026', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(212, '1158410', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(213, '1166247', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(214, '1165967', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(215, '1381031', 'DMO SAĞLIK MARKET ALIMI', '2023-12-04'),
(216, '1162618', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(217, '2023/478085', 'LİKİT OKSİJEN GAZ ALIMI', '2023-06-20'),
(218, '2023/17', '9 KALEM EVDE BAKIM PERSONEL KIYAFET ALIMI', '2023-06-09'),
(219, '2023/1250639', 'AĞUSTOS 2023 SAĞLIK MARKET TIBBİ SARF MALZEME', '2023-11-13'),
(220, '2023/1250153', 'AĞUSTOS 2023 SAĞLIK MARKET TIBBİ SARF MALZEME', '2023-11-13'),
(221, '2023/894048', 'HEMODİYALİZ SOLÜSYONU AĞUSTOS 2023', '2023-09-04'),
(222, '2023/1249426', 'AĞUSTOS 2023 SAĞLIK MARKET TIBBİ SARF MALZEME', '2023-11-13'),
(223, '2023/670915', '27 Kısım Tıbbi Sarf Malzeme Alımı(Madde 19 Açık İhale Usulü)', '2023-08-22'),
(224, '1164289', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(225, '1159190', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(226, '1513062', 'DMO SAĞLIK MARKET ALIMI', '2023-12-21'),
(227, '1512400', 'DMO SAĞLIK MARKET ALIMI', '2023-12-21'),
(228, '1166661', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(229, '1161736', 'DMO SAĞLIK MARKET ALIMI', '2023-10-24'),
(230, '2024/28147', 'TIBBİ SARF MALZEME ALIMI ARALIK 2023', '2024-01-18'),
(231, '2023/1250518', 'AĞUSTOS 2023 SAĞLIK MARKET TIBBİ SARF MALZEME', '2023-11-13'),
(232, '2024/10', 'ASANSÖR FREN BLOĞU(PARAŞÜT FREN)', '2024-02-15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `muayene`
--

CREATE TABLE `muayene` (
  `id` int(11) NOT NULL,
  `muayenetarihi` date NOT NULL,
  `firmaadi` varchar(50) NOT NULL,
  `faturano` varchar(50) NOT NULL,
  `iknno` varchar(15) NOT NULL,
  `faturasahibi` varchar(50) NOT NULL,
  `faturasahibi1` varchar(50) NOT NULL,
  `faturasahibi2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `muayene`
--

INSERT INTO `muayene` (`id`, `muayenetarihi`, `firmaadi`, `faturano`, `iknno`, `faturasahibi`, `faturasahibi1`, `faturasahibi2`) VALUES
(99, '2024-01-01', 'hata', 'hata', 'hata', 'hata', 'hata', 'hata'),
(100, '2024-02-13', 'ŞUSKİ', '2024-2', '', 'Ali YOLDAŞ', 'Ali YOLDAŞ', 'Ali YOLDAŞ'),
(101, '2024-02-13', 'DMO AKARYAKIT', '636', '', 'Ali YOLDAŞ', 'Hatice GÜR', 'Hasan AKMAN'),
(102, '2024-02-13', 'CELAL ALTUN', '005', '', 'Ali YOLDAŞ', 'Veysel ULU', 'Ceren Burcu KORKMAZ'),
(103, '2024-02-13', 'DESAR', '05', '', 'ALİ YOLDAŞ', 'YAKUP REŞAN ', 'ABDULLAH CEYLAN'),
(104, '2024-02-13', 'TELE SİSTEM', '09', '', 'ALİ YOLDAŞ', 'SİNAN KULAK', 'ŞEMSİ HURMA'),
(105, '2024-02-13', 'DOĞA HAŞERE', '01', '', 'ALİ YOLDAŞ', 'ALİ YOLDAŞ', 'ENES DAĞ'),
(106, '2024-02-13', 'FRESENIUS', '127', '', 'ALİ YOLDAŞ', 'ALİ YOLDAŞ', 'HASAN AKILLI'),
(107, '2024-02-13', 'meri mekanik', '03', '', 'ALİ YOLDAŞ', 'YAKUP REŞAN ', 'ABDULLAH CEYLAN'),
(108, '2024-02-13', 'UGS', '10', '', 'ALİ YOLDAŞ', 'YAKUP REŞAN ', 'ABDULLAH CEYLAN'),
(109, '2024-02-13', 'UGS', '24', '', 'ALİ YOLDAŞ', 'YAKUP REŞAN', 'MUHAMMET KARAÇİZMELİ'),
(110, '2024-02-15', 'ZEN TIP', '149', '', 'Ali YOLDAŞ', 'SİNAN KULAK', 'MEHMET DEREBAŞ'),
(111, '2024-02-15', 'ZEN TIP', '150', '', 'Ali YOLDAŞ', 'SİNAN KULAK', 'MEHMET DEREBAŞ'),
(112, '2024-02-19', 'LABOTEST', '092', '', 'Ali YOLDAŞ', 'SİNAN KULAK', 'MEHMET DEREBAŞ'),
(113, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABE2024000000681', '1165707', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(114, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'AYY2024000001042', '1352285', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER GÜL'),
(115, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABH2024000001957', '1163904', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(116, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABH2024000001960', '1512690', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER GÜL'),
(117, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABE2024000002058', '1163882', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NAZLI AKGÜN '),
(118, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABE2024000000213', '1164048', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(119, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABE2024000002333', '1381485', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'VEYSEL ULU '),
(120, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABH2024000001956', '1164971', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(121, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABH2024000001961', '1164513', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(122, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABH2024000001959', '1160234', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER GÜL'),
(123, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABH2024000001962', '1351506', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(124, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABE2024000001720', '1380177', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(125, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'AYY2024000001041', '1165716', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(126, '2024-02-19', 'DEVLET MALZEME OFİSİ', 'ABE2024000001313', '1165695', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(127, '2024-02-19', 'DESAR', '22', '', 'ALİ YOLDAŞ', 'YAKUP REŞAN ', 'ABDULLAH CEYLAN'),
(128, '2024-02-19', 'BAŞARAN TEKNİK', 'GIB2023000000191', '', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'İHSAN AKGEYİK'),
(129, '2024-03-04', 'SET İŞ ELBİSELERİ', 'HAC2024000000001', '2023/17', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'HÜSEYİN ARSLAN'),
(130, '2024-02-19', 'KURT TİCARET', 'MEK2023000000109', '', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'ŞEMSİ HURMA'),
(131, '2024-02-19', 'BİLSOY TEKNOLOJİ', 'BL12023000000074', '', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'ŞEMSİ HURMA'),
(132, '2024-02-19', 'DEPAR SPOR GİYİM', 'T0K2024000000007', '2022/1062470', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'İHSAN AKGEYİK'),
(133, '2024-02-19', 'ALİCAN ÖZCAN', 'COA2024000000003', '2022/1062470', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'İHSAN AKGEYİK'),
(134, '2024-02-19', 'ROTA HİJYEN', 'RTV2024000000046', '2022/1062470', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'İHSAN AKGEYİK'),
(135, '2024-02-19', 'DUYUR MATBAA', 'GIB2023000000390', '', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'NESLİHAN ÜNSEVER GÜL'),
(136, '2024-02-20', 'METRO DİŞ DEPOSU TIBBİ MALZEMELER İTH.VE İHR.LTD.Ş', 'MDA2024000000004', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'HALİL TAŞKAYNATAN'),
(137, '2024-02-20', 'SELÇUK ÖZTEKİN - KALE DİŞ DEPOSU', 'DEN2024000000002', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'HALİL TAŞKAYNATAN'),
(138, '2024-02-20', 'GAYAMED ECZA DEPOSU', 'GM12024000000044', '', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NAZLI AKGÜN '),
(139, '2024-02-20', 'ANR FARMA İLAÇ ECZA DEPOSU ', 'ANF2024000000022', '', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(140, '2024-02-20', 'MEDİPLUS MEDİKAL SANAYİ VE TİCARET LİMİTED ŞİRKETİ', 'MDP2024000000011', '', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'İBRAHİM HALİL GÜLER'),
(141, '2024-02-21', 'SAMED TIBBİ CİHAZLAR TUR. TEKS. SAN. VE DIŞ TİC. L', 'SMD2023000000219', '', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'HALİL TAŞKAYNATAN'),
(142, '2024-02-21', 'SAMED TIBBİ CİHAZLAR TUR. TEKS. SAN. VE DIŞ TİC. L', 'SMD2023000000237', '', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'HALİL TAŞKAYNATAN'),
(144, '2024-02-22', 'ŞANLIURFA 2 NOLU T TİPİ KAPALI CEZA İNFAZ KURUMU', 'SUA2024000000005', '00/0', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'NESLİHAN ÜNSEVER GÜL'),
(145, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABT2024000002920', '2023/1250369', 'KEMAL TAŞTAN', 'İBRAHİM HALİL GÜLER', 'NAZLI AKGÜN'),
(146, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABH2024000001963', '2023/910797', 'KEMAL TAŞTAN', 'İBRAHİM HALİL GÜLER', 'NAZLI AKGÜN'),
(147, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABG2024000000763', '2023/1250144', 'KEMAL TAŞTAN', 'İBRAHİM HALİL GÜLER', 'NAZLI AKGÜN'),
(148, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABG2024000000762', '2023/910797', 'KEMAL TAŞTAN', 'İBRAHİM HALİL GÜLER', 'NAZLI AKGÜN'),
(149, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABG2024000000761', '2023/910797', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NAZLI AKGÜN'),
(150, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABF2024000000454', '2023/910797', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NAZLI AKGÜN'),
(151, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000001450', '2023/1251945', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NAZLI AKGÜN'),
(152, '2024-02-26', 'OPAL TIBBI ALETLER', 'GIB2024000000015', '', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NİHAT DEMİRKOL'),
(153, '2024-02-26', 'ÖZ GLOBAL DENTAL', 'GDD2024000000087', '2023/837033', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'CEREN BURCU KORKMAZ'),
(154, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABW2024000000584', '1162618', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(155, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABO2024000000355', '1380177', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(156, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABO2024000000356', '1381031', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(157, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABH2024000001958', '1166247', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(158, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABE2024000001622', '1165707', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(159, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABE2024000002260', '1165967', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(160, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000000441', '1166247', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(161, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000000796', '1160234', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER GÜL'),
(162, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000001309', '1158410', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER GÜL'),
(163, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000000404', '1158026', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER GÜL'),
(164, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000000257', '1158149', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(165, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000001582', '91629', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'ESRA DOLAŞ'),
(166, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000000871', '1163052', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(167, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABW2024000000465', '1166587', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(168, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABX2024000000774', '1161014', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(169, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABX2024000001037', '1382058', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER GÜL'),
(170, '2024-02-26', 'DEVLET MALZEME OFİSİ', 'ABV2024000002095', '1166638', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(171, '2024-02-27', 'DMO AKARYAKIT', '667', '', 'Ali YOLDAŞ', 'Hatice GÜR', 'Hasan AKMAN'),
(172, '2024-02-27', 'DEVLET MALZEME OFİSİ', 'ALL2023000007653', '1166247', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(173, '2024-02-27', 'RADKOR', '290', '', 'ALİ YOLDAŞ', 'ALİ YOLDAŞ', 'ALİ YOLDAŞ'),
(174, '2024-02-28', 'HABAŞ SINAİ VE TIBBİ GAZLAR', 'SHB2024000001060', '2023/478085', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'İBRAHİM HALİL GÜLER'),
(175, '2024-02-28', 'DENİZ DENTAL MEDİKAL ', 'DNA2024000000026', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'İBRAHİM HALİL GÜLER'),
(176, '2024-03-01', 'CLEAN WORLD', '207', '', 'Ali YOLDAŞ', 'HALİL TAŞKAYNATAN', 'İHSAN AKGEYİK'),
(177, '2024-03-01', 'YÜKSEL İŞ GÜVENLİĞİ', '79', '', 'ALİ YOLDAŞ', 'NAZLI ÖZEN', 'TUBA ALMAS'),
(178, '2024-03-04', 'UZMAN GÜVENLİK', '05', '', 'ALİ YOLDAŞ', 'BEKİR ARSLAN', 'YAKUP REŞAN'),
(179, '2024-03-04', 'BAŞARI EV ALETLER', 'BSS2023000000732', '2023/673502', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'İZET AKSOY'),
(180, '2024-03-04', 'BAŞARI EV ALETLER', 'BSS2023000000085', '2023/673502', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'İZET AKSOY'),
(181, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'AB12024000001573', '2023/1250639', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HATİCE ŞAHİN'),
(182, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ABE2024000002016', '2023/910797', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HATİCE ŞAHİN'),
(183, '2024-03-05', 'DİCLE ELEKTRİK', '19964', '', 'Ali YOLDAŞ', 'Ali YOLDAŞ', 'Ali YOLDAŞ'),
(184, '2024-03-05', 'FONET', '223', '', 'Ali YOLDAŞ', 'Hatice GÜR', 'Adem DEMİRCİOĞLU'),
(185, '2024-03-07', 'FLORYA', '062', '', 'Ali YOLDAŞ', 'Hatice GÜR', 'ÇİĞDEM ALTUN'),
(186, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'AB32024000001477', '2023/1250153', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HASAN AKILLI'),
(187, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'AB32024000001478', '2023/910797', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HATİCE ŞAHİN'),
(188, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACD2024000001019', '2023/894048', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HASAN AKILLI'),
(189, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACD2024000001020', '2023/894048', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HASAN AKILLI'),
(190, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACD2024000001021', '2023/894048', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HASAN AKILLI'),
(191, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACE2024000001322', '2023/1249426', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HASAN AKILLI'),
(192, '2024-03-11', 'AKFA SAĞLIK TİCARET', 'AS22023000000400', '2023/670915', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'HASAN AKILLI'),
(193, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACH2024000000391', '1161736', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(194, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACH2024000000393', '1166661', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(195, '2024-03-11', 'ŞUSKİ', '2024-3', '', 'Ali YOLDAŞ', 'Ali YOLDAŞ', 'Ali YOLDAŞ'),
(196, '2024-03-11', 'DMO AKARYAKIT', '1597', '', 'Ali YOLDAŞ', 'Hatice GÜR', 'Hasan AKMAN'),
(197, '2024-03-11', 'CELAL ALTUN', '020', '', 'Ali YOLDAŞ', 'Veysel ULU', 'Ceren Burcu KORKMAZ'),
(198, '2024-03-11', 'ÇAĞLAR', '048', '', 'Ali YOLDAŞ', 'BEKİR ARSLAN', 'MEHMET DEREBAŞ'),
(199, '2024-03-11', 'MEDUS', '068', '', 'Ali YOLDAŞ', 'Ali YOLDAŞ', 'MEHMET DEREBAŞ'),
(200, '2024-03-11', 'ZEN TIP', '307', '', 'Ali YOLDAŞ', 'SİNAN KULAK', 'MEHMET DEREBAŞ'),
(201, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACH2024000000392', '1512400', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NAZLI AKGÜN '),
(202, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACE2024000001240', '1513062', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(203, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'AB4202400000633', '1159190', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER GÜL'),
(204, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACE2024000001241', '1166247', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(205, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACH2024000000390', '1164289', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(206, '2024-03-11', 'DEVLET MALZEME OFİSİ', 'ACE2024000001242', '1164048', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(207, '2024-03-11', 'ERCAN DEMİR', 'IRA2024000000014', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'İBRAHİM HALİL GÜLER'),
(208, '2024-03-11', 'ONUR DİŞ DEPOSU TIBBİ GEREÇLER SAN. TİC. LTD. ŞTİ.', 'ONU2024000000431', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'İBRAHİM HALİL GÜLER'),
(209, '2024-03-11', 'REDA HASTANE DONANIMLARI VE SAĞLIK HİZMETLERİ SAN.', 'ARD2024000000054', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'İBRAHİM HALİL GÜLER'),
(210, '2024-03-12', 'ATALİFT ASANSÖR', '005', '', 'YAKUP REŞAN', 'İHSAN AKGEYİK', 'ABDULLAH CEYLAN'),
(211, '2024-03-12', 'ZENTIP', '306', '', 'Ali YOLDAŞ', 'SİNAN KULAK', 'MEHMET DEREBAŞ'),
(212, '2024-03-12', 'BİLKAN ', '088', '', 'YAKUP REŞAN', 'İHSAN AKGEYİK', 'ABDULLAH CEYLAN'),
(213, '2024-03-12', 'ATA-LİON', '019', '', 'YAKUP REŞAN', 'İHSAN AKGEYİK', 'ABDULLAH CEYLAN'),
(214, '2024-03-12', 'LABOTEST', '193', '', 'Ali YOLDAŞ', 'SİNAN KULAK', 'MEHMET DEREBAŞ'),
(215, '2024-03-18', 'DEVLET MALZEME OFİSİ', 'ACL2024000000966', '1163882', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'NAZLI AKGÜN '),
(216, '2024-03-18', 'DEVLET MALZEME OFİSİ', 'ACL2024000000965', '1163882', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(217, '2024-03-18', 'DEVLET MALZEME OFİSİ', 'ACN2024000002105', '1381485', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(218, '2024-03-18', 'DEVLET MALZEME OFİSİ', 'ACM2024000000761', '1382058', 'KEMAL TAŞTAN', 'GÜLER ÖZKAN', 'EDA TUNCAY'),
(219, '2024-03-18', 'DELTA', '14', '', 'ALİ YOLDAŞ', 'SİNAN KULAK', 'HASAN AKILLI'),
(220, '2024-03-18', 'DELTA', '25', '', 'ALİ YOLDAŞ', 'SİNAN KULAK', 'HASAN AKILLI'),
(221, '2024-03-18', 'DESAR', '37', '', 'ALİ YOLDAŞ', 'YAKUP REŞAN ', 'ABDULLAH CEYLAN'),
(222, '2024-03-18', 'TREND RADYOLOJİ MEDİKAL VE BİLİŞİM TİC. LTD. ŞTİ.', 'TRA2024000000034', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'HALİL TAŞKAYNATAN'),
(223, '2024-03-18', 'TEMPO SAĞLIK HİZMETLERİ ANONİM ŞİRKETİ', 'TMA2024000000178', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'HALİL TAŞKAYNATAN'),
(224, '2024-03-18', 'ÜZÜMCÜ TIBBİ CİHAZ VE MEDİKAL GAZ SİSTEMLERİ SAN. ', 'AUZ2024000000110', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'HALİL TAŞKAYNATAN'),
(225, '2024-03-19', 'DSN', '066', '', 'Ali YOLDAŞ', 'BEKİR ARSLAN', 'HALİL TAŞKAYNATAN'),
(226, '2024-03-19', 'DEVLET MALZEME OFİSİ', 'ACK2024000001570', '2024/28147', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NESLİHAN ÜNSEVER'),
(227, '2024-03-19', 'DEVLET MALZEME OFİSİ', 'ACM2024000000765', '2023/1250518', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NESLİHAN ÜNSEVER'),
(228, '2024-03-19', 'DEVLET MALZEME OFİSİ', 'ACM2024000000762', '2023/1250144', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NESLİHAN ÜNSEVER'),
(229, '2024-03-19', 'DEVLET MALZEME OFİSİ', 'ACK2024000001571', '2024/28147', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'EYYÜP GENÇ'),
(230, '2024-03-19', 'DEVLET MALZEME OFİSİ', 'ACM2024000000764', '2024/28147', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NESLİHAN ÜNSEVER'),
(231, '2024-03-19', 'DEVLET MALZEME OFİSİ', 'ACM2024000000763', '2024/28147', 'KEMAL TAŞTAN ', 'İBRAHİM HALİL GÜLER', 'NESLİHAN ÜNSEVER'),
(232, '2024-03-19', 'DEVLET MALZEME OFİSİ', 'ACN2024000002104', '2024/28147', 'KEMAL TAŞTAN ', 'GÜLER ÖZKAN', 'NESLİHAN ÜNSEVER'),
(233, '2024-03-20', 'BİNAŞ MEDİKAL SİSTEMLER SAN. VE TİC.LTD. ŞTİ.', 'BIN2024000000430', '2023/642568', 'KEMAL TAŞTAN', 'İHSAN AKGEYİK', 'HALİL TAŞKAYNATAN'),
(234, '2024-03-20', 'AHMET EFE', 'AEF2024000000015', '2022/1062470', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'İHSAN AKGEYİK'),
(235, '2024-03-20', 'NOKTA BASKI', '029', '', 'YAKUP REŞAN', 'İHSAN AKGEYİK', 'ABDULLAH CEYLAN'),
(236, '2024-03-20', 'ATALİFT ASANSÖR', 'GIB2024000000006', '2024/10', 'KEMAL TAŞTAN', 'HALİL TAŞKAYNATAN', 'İHSAN AKGEYİK'),
(237, '2024-03-20', 'FRESENIUS', '489', '', 'ALİ YOLDAŞ', 'ALİ YOLDAŞ', 'HASAN AKILLI'),
(238, '2024-03-20', 'RADKOR', '817', '', 'ALİ YOLDAŞ', 'BEKİR ARSLAN', 'ZERRİN AYHAN');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `dt`
--
ALTER TABLE `dt`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ihaleler`
--
ALTER TABLE `ihaleler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iknno` (`iknno`);

--
-- Tablo için indeksler `muayene`
--
ALTER TABLE `muayene`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `dt`
--
ALTER TABLE `dt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `ihaleler`
--
ALTER TABLE `ihaleler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- Tablo için AUTO_INCREMENT değeri `muayene`
--
ALTER TABLE `muayene`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
