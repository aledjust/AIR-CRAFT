-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: sql6.freemysqlhosting.net
-- Generation Time: Mar 20, 2016 at 08:33 AM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.3.28

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `information_schema`
--
DROP DATABASE `information_schema`;
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--
-- Creation: Mar 20, 2016 at 08:34 AM
--

DROP TABLE IF EXISTS `CHARACTER_SETS`;
CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(60) NOT NULL DEFAULT '',
  `MAXLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('utf8mb4', 'utf8mb4_general_ci', 'UTF-8 Unicode', 4),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('utf16', 'utf16_general_ci', 'UTF-16 Unicode', 4),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('utf32', 'utf32_general_ci', 'UTF-32 Unicode', 4),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--
-- Creation: Mar 20, 2016 at 08:34 AM
--

DROP TABLE IF EXISTS `COLLATIONS`;
CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `ID` bigint(11) NOT NULL DEFAULT '0',
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT '',
  `IS_COMPILED` varchar(3) NOT NULL DEFAULT '',
  `SORTLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', 'Yes', 1),
('dec8_bin', 'dec8', 69, '', 'Yes', 1),
('cp850_general_ci', 'cp850', 4, 'Yes', 'Yes', 1),
('cp850_bin', 'cp850', 80, '', 'Yes', 1),
('hp8_english_ci', 'hp8', 6, 'Yes', 'Yes', 1),
('hp8_bin', 'hp8', 72, '', 'Yes', 1),
('koi8r_general_ci', 'koi8r', 7, 'Yes', 'Yes', 1),
('koi8r_bin', 'koi8r', 74, '', 'Yes', 1),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', 'Yes', 1),
('swe7_bin', 'swe7', 82, '', 'Yes', 1),
('ascii_general_ci', 'ascii', 11, 'Yes', 'Yes', 1),
('ascii_bin', 'ascii', 65, '', 'Yes', 1),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', 'Yes', 1),
('hebrew_bin', 'hebrew', 71, '', 'Yes', 1),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', 'Yes', 1),
('koi8u_bin', 'koi8u', 75, '', 'Yes', 1),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', 'Yes', 1),
('greek_bin', 'greek', 70, '', 'Yes', 1),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('cp1250_polish_ci', 'cp1250', 99, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', 'Yes', 1),
('latin5_bin', 'latin5', 78, '', 'Yes', 1),
('armscii8_general_ci', 'armscii8', 32, 'Yes', 'Yes', 1),
('armscii8_bin', 'armscii8', 64, '', 'Yes', 1),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('utf8_sinhala_ci', 'utf8', 211, '', 'Yes', 8),
('utf8_general_mysql500_ci', 'utf8', 223, '', 'Yes', 1),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('ucs2_sinhala_ci', 'ucs2', 147, '', 'Yes', 8),
('ucs2_general_mysql500_ci', 'ucs2', 159, '', 'Yes', 1),
('cp866_general_ci', 'cp866', 36, 'Yes', 'Yes', 1),
('cp866_bin', 'cp866', 68, '', 'Yes', 1),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', 'Yes', 1),
('keybcs2_bin', 'keybcs2', 73, '', 'Yes', 1),
('macce_general_ci', 'macce', 38, 'Yes', 'Yes', 1),
('macce_bin', 'macce', 43, '', 'Yes', 1),
('macroman_general_ci', 'macroman', 39, 'Yes', 'Yes', 1),
('macroman_bin', 'macroman', 53, '', 'Yes', 1),
('cp852_general_ci', 'cp852', 40, 'Yes', 'Yes', 1),
('cp852_bin', 'cp852', 81, '', 'Yes', 1),
('latin7_estonian_cs', 'latin7', 20, '', 'Yes', 1),
('latin7_general_ci', 'latin7', 41, 'Yes', 'Yes', 1),
('latin7_general_cs', 'latin7', 42, '', 'Yes', 1),
('latin7_bin', 'latin7', 79, '', 'Yes', 1),
('utf8mb4_general_ci', 'utf8mb4', 45, 'Yes', 'Yes', 1),
('utf8mb4_bin', 'utf8mb4', 46, '', 'Yes', 1),
('utf8mb4_unicode_ci', 'utf8mb4', 224, '', 'Yes', 8),
('utf8mb4_icelandic_ci', 'utf8mb4', 225, '', 'Yes', 8),
('utf8mb4_latvian_ci', 'utf8mb4', 226, '', 'Yes', 8),
('utf8mb4_romanian_ci', 'utf8mb4', 227, '', 'Yes', 8),
('utf8mb4_slovenian_ci', 'utf8mb4', 228, '', 'Yes', 8),
('utf8mb4_polish_ci', 'utf8mb4', 229, '', 'Yes', 8),
('utf8mb4_estonian_ci', 'utf8mb4', 230, '', 'Yes', 8),
('utf8mb4_spanish_ci', 'utf8mb4', 231, '', 'Yes', 8),
('utf8mb4_swedish_ci', 'utf8mb4', 232, '', 'Yes', 8),
('utf8mb4_turkish_ci', 'utf8mb4', 233, '', 'Yes', 8),
('utf8mb4_czech_ci', 'utf8mb4', 234, '', 'Yes', 8),
('utf8mb4_danish_ci', 'utf8mb4', 235, '', 'Yes', 8),
('utf8mb4_lithuanian_ci', 'utf8mb4', 236, '', 'Yes', 8),
('utf8mb4_slovak_ci', 'utf8mb4', 237, '', 'Yes', 8),
('utf8mb4_spanish2_ci', 'utf8mb4', 238, '', 'Yes', 8),
('utf8mb4_roman_ci', 'utf8mb4', 239, '', 'Yes', 8),
('utf8mb4_persian_ci', 'utf8mb4', 240, '', 'Yes', 8),
('utf8mb4_esperanto_ci', 'utf8mb4', 241, '', 'Yes', 8),
('utf8mb4_hungarian_ci', 'utf8mb4', 242, '', 'Yes', 8),
('utf8mb4_sinhala_ci', 'utf8mb4', 243, '', 'Yes', 8),
('cp1251_bulgarian_ci', 'cp1251', 14, '', 'Yes', 1),
('cp1251_ukrainian_ci', 'cp1251', 23, '', 'Yes', 1),
('cp1251_bin', 'cp1251', 50, '', 'Yes', 1),
('cp1251_general_ci', 'cp1251', 51, 'Yes', 'Yes', 1),
('cp1251_general_cs', 'cp1251', 52, '', 'Yes', 1),
('utf16_general_ci', 'utf16', 54, 'Yes', 'Yes', 1),
('utf16_bin', 'utf16', 55, '', 'Yes', 1),
('utf16_unicode_ci', 'utf16', 101, '', 'Yes', 8),
('utf16_icelandic_ci', 'utf16', 102, '', 'Yes', 8),
('utf16_latvian_ci', 'utf16', 103, '', 'Yes', 8),
('utf16_romanian_ci', 'utf16', 104, '', 'Yes', 8),
('utf16_slovenian_ci', 'utf16', 105, '', 'Yes', 8),
('utf16_polish_ci', 'utf16', 106, '', 'Yes', 8),
('utf16_estonian_ci', 'utf16', 107, '', 'Yes', 8),
('utf16_spanish_ci', 'utf16', 108, '', 'Yes', 8),
('utf16_swedish_ci', 'utf16', 109, '', 'Yes', 8),
('utf16_turkish_ci', 'utf16', 110, '', 'Yes', 8),
('utf16_czech_ci', 'utf16', 111, '', 'Yes', 8),
('utf16_danish_ci', 'utf16', 112, '', 'Yes', 8),
('utf16_lithuanian_ci', 'utf16', 113, '', 'Yes', 8),
('utf16_slovak_ci', 'utf16', 114, '', 'Yes', 8),
('utf16_spanish2_ci', 'utf16', 115, '', 'Yes', 8),
('utf16_roman_ci', 'utf16', 116, '', 'Yes', 8),
('utf16_persian_ci', 'utf16', 117, '', 'Yes', 8),
('utf16_esperanto_ci', 'utf16', 118, '', 'Yes', 8),
('utf16_hungarian_ci', 'utf16', 119, '', 'Yes', 8),
('utf16_sinhala_ci', 'utf16', 120, '', 'Yes', 8),
('cp1256_general_ci', 'cp1256', 57, 'Yes', 'Yes', 1),
('cp1256_bin', 'cp1256', 67, '', 'Yes', 1),
('cp1257_lithuanian_ci', 'cp1257', 29, '', 'Yes', 1),
('cp1257_bin', 'cp1257', 58, '', 'Yes', 1),
('cp1257_general_ci', 'cp1257', 59, 'Yes', 'Yes', 1),
('utf32_general_ci', 'utf32', 60, 'Yes', 'Yes', 1),
('utf32_bin', 'utf32', 61, '', 'Yes', 1),
('utf32_unicode_ci', 'utf32', 160, '', 'Yes', 8),
('utf32_icelandic_ci', 'utf32', 161, '', 'Yes', 8),
('utf32_latvian_ci', 'utf32', 162, '', 'Yes', 8),
('utf32_romanian_ci', 'utf32', 163, '', 'Yes', 8),
('utf32_slovenian_ci', 'utf32', 164, '', 'Yes', 8),
('utf32_polish_ci', 'utf32', 165, '', 'Yes', 8),
('utf32_estonian_ci', 'utf32', 166, '', 'Yes', 8),
('utf32_spanish_ci', 'utf32', 167, '', 'Yes', 8),
('utf32_swedish_ci', 'utf32', 168, '', 'Yes', 8),
('utf32_turkish_ci', 'utf32', 169, '', 'Yes', 8),
('utf32_czech_ci', 'utf32', 170, '', 'Yes', 8),
('utf32_danish_ci', 'utf32', 171, '', 'Yes', 8),
('utf32_lithuanian_ci', 'utf32', 172, '', 'Yes', 8),
('utf32_slovak_ci', 'utf32', 173, '', 'Yes', 8),
('utf32_spanish2_ci', 'utf32', 174, '', 'Yes', 8),
('utf32_roman_ci', 'utf32', 175, '', 'Yes', 8),
('utf32_persian_ci', 'utf32', 176, '', 'Yes', 8),
('utf32_esperanto_ci', 'utf32', 177, '', 'Yes', 8),
('utf32_hungarian_ci', 'utf32', 178, '', 'Yes', 8),
('utf32_sinhala_ci', 'utf32', 179, '', 'Yes', 8),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', 'Yes', 1),
('geostd8_bin', 'geostd8', 93, '', 'Yes', 1),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--
-- Creation: Mar 20, 2016 at 08:34 AM
--

DROP TABLE IF EXISTS `COLLATION_CHARACTER_SET_APPLICABILITY`;
CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('cp1250_polish_ci', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('utf8_sinhala_ci', 'utf8'),
('utf8_general_mysql500_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('ucs2_sinhala_ci', 'ucs2'),
('ucs2_general_mysql500_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('utf8mb4_general_ci', 'utf8mb4'),
('utf8mb4_bin', 'utf8mb4'),
('utf8mb4_unicode_ci', 'utf8mb4'),
('utf8mb4_icelandic_ci', 'utf8mb4'),
('utf8mb4_latvian_ci', 'utf8mb4'),
('utf8mb4_romanian_ci', 'utf8mb4'),
('utf8mb4_slovenian_ci', 'utf8mb4'),
('utf8mb4_polish_ci', 'utf8mb4'),
('utf8mb4_estonian_ci', 'utf8mb4'),
('utf8mb4_spanish_ci', 'utf8mb4'),
('utf8mb4_swedish_ci', 'utf8mb4'),
('utf8mb4_turkish_ci', 'utf8mb4'),
('utf8mb4_czech_ci', 'utf8mb4'),
('utf8mb4_danish_ci', 'utf8mb4'),
('utf8mb4_lithuanian_ci', 'utf8mb4'),
('utf8mb4_slovak_ci', 'utf8mb4'),
('utf8mb4_spanish2_ci', 'utf8mb4'),
('utf8mb4_roman_ci', 'utf8mb4'),
('utf8mb4_persian_ci', 'utf8mb4'),
('utf8mb4_esperanto_ci', 'utf8mb4'),
('utf8mb4_hungarian_ci', 'utf8mb4'),
('utf8mb4_sinhala_ci', 'utf8mb4'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('utf16_general_ci', 'utf16'),
('utf16_bin', 'utf16'),
('utf16_unicode_ci', 'utf16'),
('utf16_icelandic_ci', 'utf16'),
('utf16_latvian_ci', 'utf16'),
('utf16_romanian_ci', 'utf16'),
('utf16_slovenian_ci', 'utf16'),
('utf16_polish_ci', 'utf16'),
('utf16_estonian_ci', 'utf16'),
('utf16_spanish_ci', 'utf16'),
('utf16_swedish_ci', 'utf16'),
('utf16_turkish_ci', 'utf16'),
('utf16_czech_ci', 'utf16'),
('utf16_danish_ci', 'utf16'),
('utf16_lithuanian_ci', 'utf16'),
('utf16_slovak_ci', 'utf16'),
('utf16_spanish2_ci', 'utf16'),
('utf16_roman_ci', 'utf16'),
('utf16_persian_ci', 'utf16'),
('utf16_esperanto_ci', 'utf16'),
('utf16_hungarian_ci', 'utf16'),
('utf16_sinhala_ci', 'utf16'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('utf32_general_ci', 'utf32'),
('utf32_bin', 'utf32'),
('utf32_unicode_ci', 'utf32'),
('utf32_icelandic_ci', 'utf32'),
('utf32_latvian_ci', 'utf32'),
('utf32_romanian_ci', 'utf32'),
('utf32_slovenian_ci', 'utf32'),
('utf32_polish_ci', 'utf32'),
('utf32_estonian_ci', 'utf32'),
('utf32_spanish_ci', 'utf32'),
('utf32_swedish_ci', 'utf32'),
('utf32_turkish_ci', 'utf32'),
('utf32_czech_ci', 'utf32'),
('utf32_danish_ci', 'utf32'),
('utf32_lithuanian_ci', 'utf32'),
('utf32_slovak_ci', 'utf32'),
('utf32_spanish2_ci', 'utf32'),
('utf32_roman_ci', 'utf32'),
('utf32_persian_ci', 'utf32'),
('utf32_esperanto_ci', 'utf32'),
('utf32_hungarian_ci', 'utf32'),
('utf32_sinhala_ci', 'utf32'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--
-- Creation: Mar 20, 2016 at 08:34 AM
-- Last update: Mar 20, 2016 at 08:34 AM
--

DROP TABLE IF EXISTS `COLUMNS`;
CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL,
  `COLLATION_NAME` varchar(32) DEFAULT NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL DEFAULT '',
  `EXTRA` varchar(27) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
('def', 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
('def', 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 27, 81, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(27)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'ENGINE', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'SUPPORT', 2, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'COMMENT', 3, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'TRANSACTIONS', 4, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'XA', 5, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'ENGINES', 'SAVEPOINTS', 6, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_CATALOG', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'DEFINER', 4, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'TIME_ZONE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_BODY', 6, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_DEFINITION', 7, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_TYPE', 8, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EXECUTE_AT', 9, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'INTERVAL_VALUE', 10, NULL, 'YES', 'varchar', 256, 768, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(256)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'INTERVAL_FIELD', 11, NULL, 'YES', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'SQL_MODE', 12, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'STARTS', 13, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'ENDS', 14, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'STATUS', 15, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'ON_COMPLETION', 16, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'CREATED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'LAST_ALTERED', 18, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'LAST_EXECUTED', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'EVENT_COMMENT', 20, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'ORIGINATOR', 21, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'CHARACTER_SET_CLIENT', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'COLLATION_CONNECTION', 23, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'EVENTS', 'DATABASE_COLLATION', 24, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FILE_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FILE_NAME', 2, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FILE_TYPE', 3, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLESPACE_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLE_CATALOG', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLE_SCHEMA', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLE_NAME', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'LOGFILE_GROUP_NAME', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'LOGFILE_GROUP_NUMBER', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'ENGINE', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FULLTEXT_KEYS', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'DELETED_ROWS', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'UPDATE_COUNT', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'FREE_EXTENTS', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TOTAL_EXTENTS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'EXTENT_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'INITIAL_SIZE', 17, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'MAXIMUM_SIZE', 18, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'AUTOEXTEND_SIZE', 19, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'CREATION_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'LAST_UPDATE_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'LAST_ACCESS_TIME', 22, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'RECOVER_TIME', 23, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TRANSACTION_COUNTER', 24, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'VERSION', 25, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'ROW_FORMAT', 26, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'TABLE_ROWS', 27, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'AVG_ROW_LENGTH', 28, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'DATA_LENGTH', 29, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'MAX_DATA_LENGTH', 30, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'INDEX_LENGTH', 31, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'DATA_FREE', 32, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'CREATE_TIME', 33, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'UPDATE_TIME', 34, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'CHECK_TIME', 35, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'CHECKSUM', 36, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'STATUS', 37, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'FILES', 'EXTRA', 38, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
('def', 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'SPECIFIC_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'SPECIFIC_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'SPECIFIC_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'ORDINAL_POSITION', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'PARAMETER_MODE', 5, NULL, 'YES', 'varchar', 5, 15, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'PARAMETER_NAME', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'DATA_TYPE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'CHARACTER_MAXIMUM_LENGTH', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'CHARACTER_OCTET_LENGTH', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'NUMERIC_PRECISION', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'NUMERIC_SCALE', 11, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'CHARACTER_SET_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'COLLATION_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'DTD_IDENTIFIER', 14, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PARAMETERS', 'ROUTINE_TYPE', 15, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'SUBPARTITION_NAME', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_ORDINAL_POSITION', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'SUBPARTITION_ORDINAL_POSITION', 7, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_METHOD', 8, NULL, 'YES', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'SUBPARTITION_METHOD', 9, NULL, 'YES', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_EXPRESSION', 10, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'SUBPARTITION_EXPRESSION', 11, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_DESCRIPTION', 12, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLE_ROWS', 13, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'AVG_ROW_LENGTH', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'DATA_LENGTH', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'MAX_DATA_LENGTH', 16, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'INDEX_LENGTH', 17, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'DATA_FREE', 18, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'CREATE_TIME', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'UPDATE_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'CHECK_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'CHECKSUM', 22, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'PARTITION_COMMENT', 23, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'NODEGROUP', 24, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
('def', 'information_schema', 'PARTITIONS', 'TABLESPACE_NAME', 25, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_VERSION', 2, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_STATUS', 3, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_TYPE', 4, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_TYPE_VERSION', 5, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY_VERSION', 7, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_AUTHOR', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_DESCRIPTION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'PLUGIN_LICENSE', 10, NULL, 'YES', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
('def', 'information_schema', 'PLUGINS', 'LOAD_OPTION', 11, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'USER', 2, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'HOST', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'DB', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'COMMAND', 5, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'TIME', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(7)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'STATE', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'PROCESSLIST', 'INFO', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
('def', 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_CATALOG', 4, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_NAME', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'MATCH_OPTION', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UPDATE_RULE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'DELETE_RULE', 9, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'TABLE_NAME', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'REFERENCED_TABLE_NAME', 11, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'DATA_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CHARACTER_MAXIMUM_LENGTH', 7, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CHARACTER_OCTET_LENGTH', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'NUMERIC_PRECISION', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'NUMERIC_SCALE', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CHARACTER_SET_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'COLLATION_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 13, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 14, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 15, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 16, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 17, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 18, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 19, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 20, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SQL_PATH', 21, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 22, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CREATED', 23, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'LAST_ALTERED', 24, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'SQL_MODE', 25, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 26, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'DEFINER', 27, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'CHARACTER_SET_CLIENT', 28, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'COLLATION_CONNECTION', 29, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'ROUTINES', 'DATABASE_COLLATION', 30, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'SESSION_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SESSION_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'STATISTICS', 'INDEX_COMMENT', 16, '', 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
('def', 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 2048, 6144, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(2048)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'TABLESPACE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'ENGINE', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'TABLESPACE_TYPE', 3, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'LOGFILE_GROUP_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'EXTENT_SIZE', 5, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'AUTOEXTEND_SIZE', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'MAXIMUM_SIZE', 7, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'TABLESPACES', 'NODEGROUP_ID', 8, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
('def', 'information_schema', 'TABLESPACES', 'TABLESPACE_COMMENT', 9, NULL, 'YES', 'varchar', 2048, 6144, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(2048)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'DEFINER', 19, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'CHARACTER_SET_CLIENT', 20, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'COLLATION_CONNECTION', 21, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'TRIGGERS', 'DATABASE_COLLATION', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, '', 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'CHARACTER_SET_CLIENT', 9, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'VIEWS', 'COLLATION_CONNECTION', 10, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'POOL_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'BLOCK_ID', 2, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'SPACE', 3, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'PAGE_NUMBER', 4, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'PAGE_TYPE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'FLUSH_TYPE', 6, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'FIX_COUNT', 7, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'IS_HASHED', 8, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'NEWEST_MODIFICATION', 9, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'OLDEST_MODIFICATION', 10, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'ACCESS_TIME', 11, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'TABLE_NAME', 12, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'INDEX_NAME', 13, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'NUMBER_RECORDS', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'DATA_SIZE', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'COMPRESSED_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'PAGE_STATE', 17, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'IO_FIX', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'IS_OLD', 19, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'FREE_PAGE_CLOCK', 20, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_id', 1, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_state', 2, '', 'NO', 'varchar', 13, 39, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(13)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_started', 3, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_requested_lock_id', 4, NULL, 'YES', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_wait_started', 5, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_weight', 6, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_mysql_thread_id', 7, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_query', 8, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_operation_state', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_tables_in_use', 10, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_tables_locked', 11, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_lock_structs', 12, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_lock_memory_bytes', 13, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_rows_locked', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_rows_modified', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_concurrency_tickets', 16, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_isolation_level', 17, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_unique_checks', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_foreign_key_checks', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_last_foreign_key_error', 20, NULL, 'YES', 'varchar', 256, 768, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(256)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_adaptive_hash_latched', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_TRX', 'trx_adaptive_hash_timeout', 22, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'POOL_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'POOL_SIZE', 2, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'FREE_BUFFERS', 3, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'DATABASE_PAGES', 4, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'OLD_DATABASE_PAGES', 5, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'MODIFIED_DATABASE_PAGES', 6, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PENDING_DECOMPRESS', 7, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PENDING_READS', 8, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PENDING_FLUSH_LRU', 9, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PENDING_FLUSH_LIST', 10, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_YOUNG', 11, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_NOT_MADE_YOUNG', 12, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_YOUNG_RATE', 13, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_MADE_NOT_YOUNG_RATE', 14, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_READ', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_CREATED', 16, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_WRITTEN', 17, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_READ_RATE', 18, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_CREATE_RATE', 19, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'PAGES_WRITTEN_RATE', 20, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_GET', 21, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'HIT_RATE', 22, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'YOUNG_MAKE_PER_THOUSAND_GETS', 23, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NOT_YOUNG_MAKE_PER_THOUSAND_GETS', 24, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_PAGES_READ_AHEAD', 25, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'NUMBER_READ_AHEAD_EVICTED', 26, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'READ_AHEAD_RATE', 27, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'READ_AHEAD_EVICTED_RATE', 28, '0', 'NO', 'double', NULL, NULL, 12, NULL, NULL, NULL, 'double', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'LRU_IO_TOTAL', 29, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'LRU_IO_CURRENT', 30, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'UNCOMPRESS_TOTAL', 31, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'UNCOMPRESS_CURRENT', 32, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'requesting_trx_id', 1, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'requested_lock_id', 2, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'blocking_trx_id', 3, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'blocking_lock_id', 4, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'page_size', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'buffer_pool_instance', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'pages_used', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'pages_free', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'relocation_ops', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'relocation_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'page_size', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'compress_ops', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'compress_ops_ok', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'compress_time', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'uncompress_ops', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP', 'uncompress_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_id', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_trx_id', 2, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_mode', 3, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_type', 4, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_table', 5, '', 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_index', 6, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_space', 7, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_page', 8, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_rec', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'lock_data', 10, NULL, 'YES', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'page_size', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'buffer_pool_instance', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'pages_used', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'pages_free', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'relocation_ops', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'relocation_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'page_size', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'compress_ops', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'compress_ops_ok', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'compress_time', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'uncompress_ops', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'uncompress_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'POOL_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'LRU_POSITION', 2, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'SPACE', 3, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'PAGE_NUMBER', 4, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'PAGE_TYPE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'FLUSH_TYPE', 6, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'FIX_COUNT', 7, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'IS_HASHED', 8, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'NEWEST_MODIFICATION', 9, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'OLDEST_MODIFICATION', 10, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'ACCESS_TIME', 11, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'TABLE_NAME', 12, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'INDEX_NAME', 13, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'NUMBER_RECORDS', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'DATA_SIZE', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'COMPRESSED_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'COMPRESSED', 17, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'IO_FIX', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'IS_OLD', 19, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'FREE_PAGE_CLOCK', 20, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
('def', 'sql6110519', 'MsAirBase', 'RowId', 1, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsAirBase', 'AirBaseId', 2, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'PRI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsAirBase', 'BaseName', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsAirBase', 'latitude', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsAirBase', 'Longitude', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsCategory', 'RowId', 1, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', 'PRI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsCategory', 'CategoryCode', 2, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', 'UNI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsCategory', 'Description', 3, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsRegPlane', 'RowId', 1, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', 'PRI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsRegPlane', 'RegCode', 2, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', 'UNI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsRegPlane', 'Description', 3, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsStatus', 'RowId', 1, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', 'PRI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsStatus', 'StatusCode', 2, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', 'UNI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsStatus', 'Description', 3, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsSystem', 'RowId', 1, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', 'PRI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsSystem', 'SystemCode', 2, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', 'UNI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'MsSystem', 'Description', 3, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'RowId', 1, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', 'UNI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'Enginner', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'Plane', 3, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'RegCode', 4, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', 'PRI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'SystemCode', 5, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'CategoryCode', 6, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'StatusCode', 7, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'Latitude', 8, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'Longitude', 9, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'AirBaseId', 10, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'Remark', 11, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraft', 'ModifiedAt', 12, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraftItem', 'RowId', 1, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', 'PRI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraftItem', 'AirCraftId', 2, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraftItem', 'SystemCode', 3, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxAirCraftItem', 'Description', 4, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxCategory', 'RowId', 1, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', 'PRI', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxCategory', 'AirCraftId', 2, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update', ''),
('def', 'sql6110519', 'TxCategory', 'CategoryCode', 3, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `COLUMN_PRIVILEGES`;
CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ENGINES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `ENGINES`;
CREATE TEMPORARY TABLE `ENGINES` (
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `SUPPORT` varchar(8) NOT NULL DEFAULT '',
  `COMMENT` varchar(80) NOT NULL DEFAULT '',
  `TRANSACTIONS` varchar(3) DEFAULT NULL,
  `XA` varchar(3) DEFAULT NULL,
  `SAVEPOINTS` varchar(3) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ENGINES`
--

INSERT INTO `ENGINES` (`ENGINE`, `SUPPORT`, `COMMENT`, `TRANSACTIONS`, `XA`, `SAVEPOINTS`) VALUES
('MyISAM', 'YES', 'MyISAM storage engine', 'NO', 'NO', 'NO'),
('MRG_MYISAM', 'YES', 'Collection of identical MyISAM tables', 'NO', 'NO', 'NO'),
('CSV', 'YES', 'CSV storage engine', 'NO', 'NO', 'NO'),
('BLACKHOLE', 'YES', '/dev/null storage engine (anything you write to it disappears)', 'NO', 'NO', 'NO'),
('MEMORY', 'YES', 'Hash based, stored in memory, useful for temporary tables', 'NO', 'NO', 'NO'),
('FEDERATED', 'NO', 'Federated MySQL storage engine', NULL, NULL, NULL),
('ARCHIVE', 'YES', 'Archive storage engine', 'NO', 'NO', 'NO'),
('InnoDB', 'DEFAULT', 'Supports transactions, row-level locking, and foreign keys', 'YES', 'YES', 'YES'),
('PERFORMANCE_SCHEMA', 'YES', 'Performance Schema', 'NO', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `EVENTS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
-- Last update: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `EVENTS`;
CREATE TEMPORARY TABLE `EVENTS` (
  `EVENT_CATALOG` varchar(64) NOT NULL DEFAULT '',
  `EVENT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `TIME_ZONE` varchar(64) NOT NULL DEFAULT '',
  `EVENT_BODY` varchar(8) NOT NULL DEFAULT '',
  `EVENT_DEFINITION` longtext NOT NULL,
  `EVENT_TYPE` varchar(9) NOT NULL DEFAULT '',
  `EXECUTE_AT` datetime DEFAULT NULL,
  `INTERVAL_VALUE` varchar(256) DEFAULT NULL,
  `INTERVAL_FIELD` varchar(18) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `STARTS` datetime DEFAULT NULL,
  `ENDS` datetime DEFAULT NULL,
  `STATUS` varchar(18) NOT NULL DEFAULT '',
  `ON_COMPLETION` varchar(12) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `EVENT_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `ORIGINATOR` bigint(10) NOT NULL DEFAULT '0',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FILES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `FILES`;
CREATE TEMPORARY TABLE `FILES` (
  `FILE_ID` bigint(4) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(64) DEFAULT NULL,
  `FILE_TYPE` varchar(20) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL,
  `TABLE_CATALOG` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `TABLE_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NUMBER` bigint(4) DEFAULT NULL,
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `FULLTEXT_KEYS` varchar(64) DEFAULT NULL,
  `DELETED_ROWS` bigint(4) DEFAULT NULL,
  `UPDATE_COUNT` bigint(4) DEFAULT NULL,
  `FREE_EXTENTS` bigint(4) DEFAULT NULL,
  `TOTAL_EXTENTS` bigint(4) DEFAULT NULL,
  `EXTENT_SIZE` bigint(4) NOT NULL DEFAULT '0',
  `INITIAL_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `LAST_ACCESS_TIME` datetime DEFAULT NULL,
  `RECOVER_TIME` bigint(4) DEFAULT NULL,
  `TRANSACTION_COUNTER` bigint(4) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL DEFAULT '',
  `EXTRA` varchar(255) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_STATUS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `GLOBAL_STATUS`;
CREATE TEMPORARY TABLE `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_STATUS`
--

INSERT INTO `GLOBAL_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '70999'),
('ABORTED_CONNECTS', '1095655'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '0'),
('BINLOG_STMT_CACHE_DISK_USE', '0'),
('BINLOG_STMT_CACHE_USE', '0'),
('BYTES_RECEIVED', '5823381682'),
('BYTES_SENT', '251671731771'),
('COM_ADMIN_COMMANDS', '2639993'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '1082'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '16147'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '4'),
('COM_BEGIN', '48291'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '10970'),
('COM_CHANGE_DB', '8865779'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '29'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '186586'),
('COM_CREATE_DB', '5031'),
('COM_CREATE_EVENT', '51'),
('COM_CREATE_FUNCTION', '443'),
('COM_CREATE_INDEX', '357'),
('COM_CREATE_PROCEDURE', '1823'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '34778'),
('COM_CREATE_TRIGGER', '539'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '2211'),
('COM_CREATE_VIEW', '1608'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '85310'),
('COM_DELETE_MULTI', '665'),
('COM_DO', '0'),
('COM_DROP_DB', '981'),
('COM_DROP_EVENT', '2'),
('COM_DROP_FUNCTION', '38'),
('COM_DROP_INDEX', '3'),
('COM_DROP_PROCEDURE', '205'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '23283'),
('COM_DROP_TRIGGER', '16'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '623'),
('COM_EMPTY_QUERY', '1146'),
('COM_EXECUTE_SQL', '5'),
('COM_FLUSH', '96'),
('COM_GRANT', '2278'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '658'),
('COM_INSERT', '1650879'),
('COM_INSERT_SELECT', '3755'),
('COM_INSTALL_PLUGIN', '2'),
('COM_KILL', '323'),
('COM_LOAD', '62'),
('COM_LOCK_TABLES', '521624'),
('COM_OPTIMIZE', '96'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '5'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '493'),
('COM_RENAME_TABLE', '204'),
('COM_RENAME_USER', '2206'),
('COM_REPAIR', '104'),
('COM_REPLACE', '11560'),
('COM_REPLACE_SELECT', '388'),
('COM_RESET', '0'),
('COM_RESIGNAL', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '2191'),
('COM_ROLLBACK', '7833'),
('COM_ROLLBACK_TO_SAVEPOINT', '28'),
('COM_SAVEPOINT', '495'),
('COM_SELECT', '11364284'),
('COM_SET_OPTION', '24092430'),
('COM_SIGNAL', '0'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '7989'),
('COM_SHOW_CHARSETS', '510'),
('COM_SHOW_COLLATIONS', '446541'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '497937'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '122'),
('COM_SHOW_CREATE_PROC', '3698'),
('COM_SHOW_CREATE_TABLE', '5508178'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '20483'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '587'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '3209830'),
('COM_SHOW_FUNCTION_STATUS', '2753'),
('COM_SHOW_GRANTS', '4516'),
('COM_SHOW_KEYS', '48179'),
('COM_SHOW_MASTER_STATUS', '8623'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '3811'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '2763'),
('COM_SHOW_PROCESSLIST', '495'),
('COM_SHOW_PROFILE', '28'),
('COM_SHOW_PROFILES', '325'),
('COM_SHOW_RELAYLOG_EVENTS', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '8669'),
('COM_SHOW_STATUS', '149340'),
('COM_SHOW_STORAGE_ENGINES', '3825'),
('COM_SHOW_TABLE_STATUS', '2864428'),
('COM_SHOW_TABLES', '1085799'),
('COM_SHOW_TRIGGERS', '2744433'),
('COM_SHOW_VARIABLES', '543186'),
('COM_SHOW_WARNINGS', '14775'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '59083'),
('COM_STMT_EXECUTE', '78113'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '78384'),
('COM_STMT_REPREPARE', '15'),
('COM_STMT_RESET', '1092'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '3112'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '996241'),
('COM_UPDATE', '821448'),
('COM_UPDATE_MULTI', '1589'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '4502807'),
('CREATED_TMP_DISK_TABLES', '6154699'),
('CREATED_TMP_FILES', '4786'),
('CREATED_TMP_TABLES', '12069900'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '0'),
('DELAYED_WRITES', '0'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '9054650'),
('HANDLER_DELETE', '386432'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '13830673'),
('HANDLER_READ_KEY', '1310856441'),
('HANDLER_READ_LAST', '63722'),
('HANDLER_READ_NEXT', '5797921115'),
('HANDLER_READ_PREV', '2543314'),
('HANDLER_READ_RND', '10942479'),
('HANDLER_READ_RND_NEXT', '18107293872'),
('HANDLER_ROLLBACK', '52420'),
('HANDLER_SAVEPOINT', '491'),
('HANDLER_SAVEPOINT_ROLLBACK', '28'),
('HANDLER_UPDATE', '103065733'),
('HANDLER_WRITE', '325374285'),
('INNODB_BUFFER_POOL_PAGES_DATA', '8190'),
('INNODB_BUFFER_POOL_BYTES_DATA', '134184960'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_BYTES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '2310770'),
('INNODB_BUFFER_POOL_PAGES_FREE', '0'),
('INNODB_BUFFER_POOL_PAGES_MISC', '2'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '8192'),
('INNODB_BUFFER_POOL_READ_AHEAD_RND', '0'),
('INNODB_BUFFER_POOL_READ_AHEAD', '1620206'),
('INNODB_BUFFER_POOL_READ_AHEAD_EVICTED', '163492'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '34787576675'),
('INNODB_BUFFER_POOL_READS', '103697621'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '28577133'),
('INNODB_DATA_FSYNCS', '1861655'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '1725604188160'),
('INNODB_DATA_READS', '105324950'),
('INNODB_DATA_WRITES', '3944078'),
('INNODB_DATA_WRITTEN', '78427181568'),
('INNODB_DBLWR_PAGES_WRITTEN', '2310770'),
('INNODB_DBLWR_WRITES', '236861'),
('INNODB_HAVE_ATOMIC_BUILTINS', 'ON'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '4223514'),
('INNODB_LOG_WRITES', '1187961'),
('INNODB_OS_LOG_FSYNCS', '1387998'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '2605326336'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '95074'),
('INNODB_PAGES_READ', '105322387'),
('INNODB_PAGES_WRITTEN', '2310770'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '2968202'),
('INNODB_ROW_LOCK_TIME_AVG', '29100'),
('INNODB_ROW_LOCK_TIME_MAX', '51435'),
('INNODB_ROW_LOCK_WAITS', '102'),
('INNODB_ROWS_DELETED', '374632'),
('INNODB_ROWS_INSERTED', '6303951'),
('INNODB_ROWS_READ', '23235408752'),
('INNODB_ROWS_UPDATED', '2527795'),
('INNODB_TRUNCATED_STATUS_WRITES', '0'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '13370'),
('KEY_BLOCKS_USED', '1086'),
('KEY_READ_REQUESTS', '12203537'),
('KEY_READS', '193994'),
('KEY_WRITE_REQUESTS', '2188774'),
('KEY_WRITES', '687026'),
('LAST_QUERY_COST', '0.000000'),
('MAX_USED_CONNECTIONS', '149'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '86'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '400'),
('OPEN_TABLES', '400'),
('OPENED_FILES', '136809395'),
('OPENED_TABLE_DEFINITIONS', '68074685'),
('OPENED_TABLES', '70773663'),
('PERFORMANCE_SCHEMA_COND_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_COND_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_HANDLES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_LOCKER_LOST', '0'),
('PERFORMANCE_SCHEMA_MUTEX_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_MUTEX_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_RWLOCK_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_RWLOCK_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_TABLE_HANDLES_LOST', '0'),
('PERFORMANCE_SCHEMA_TABLE_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_THREAD_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_THREAD_INSTANCES_LOST', '0'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '852'),
('QCACHE_FREE_MEMORY', '2913024'),
('QCACHE_HITS', '6414691'),
('QCACHE_INSERTS', '1678238'),
('QCACHE_LOWMEM_PRUNES', '328911'),
('QCACHE_NOT_CACHED', '4340724'),
('QCACHE_QUERIES_IN_CACHE', '3731'),
('QCACHE_TOTAL_BLOCKS', '9219'),
('QUERIES', '78506776'),
('QUESTIONS', '75754490'),
('RPL_STATUS', 'AUTH_MASTER'),
('SELECT_FULL_JOIN', '49442'),
('SELECT_FULL_RANGE_JOIN', '116'),
('SELECT_RANGE', '66085'),
('SELECT_RANGE_CHECK', '113'),
('SELECT_SCAN', '17513470'),
('SLAVE_HEARTBEAT_PERIOD', '0.000'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RECEIVED_HEARTBEATS', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '2475'),
('SORT_MERGE_PASSES', '151'),
('SORT_RANGE', '70080'),
('SORT_ROWS', '12009395'),
('SORT_SCAN', '696780'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '13499665'),
('TABLE_LOCKS_WAITED', '176'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '3'),
('THREADS_CONNECTED', '14'),
('THREADS_CREATED', '39664'),
('THREADS_RUNNING', '1'),
('UPTIME', '6533689'),
('UPTIME_SINCE_FLUSH_STATUS', '6533689');

-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_VARIABLES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `GLOBAL_VARIABLES`;
CREATE TEMPORARY TABLE `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_VARIABLES`
--

INSERT INTO `GLOBAL_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('INNODB_BUFFER_POOL_SIZE', '134217728'),
('HAVE_CRYPT', 'YES'),
('PERFORMANCE_SCHEMA_EVENTS_WAITS_HISTORY_LONG_SIZE', '10000'),
('INNODB_VERSION', '5.5.46'),
('QUERY_PREALLOC_SIZE', '8192'),
('DELAYED_QUEUE_SIZE', '1000'),
('PERFORMANCE_SCHEMA_MAX_COND_INSTANCES', '1000'),
('SSL_CIPHER', ''),
('COLLATION_SERVER', 'latin1_swedish_ci'),
('SECURE_FILE_PRIV', ''),
('TIMED_MUTEXES', 'OFF'),
('DELAYED_INSERT_TIMEOUT', '300'),
('PERFORMANCE_SCHEMA_MAX_MUTEX_INSTANCES', '1000000'),
('LC_TIME_NAMES', 'en_US'),
('PERFORMANCE_SCHEMA_MAX_RWLOCK_INSTANCES', '1000000'),
('TIME_FORMAT', '%H:%i:%s'),
('PERFORMANCE_SCHEMA_MAX_RWLOCK_CLASSES', '30'),
('BASEDIR', '/usr'),
('PERFORMANCE_SCHEMA_MAX_MUTEX_CLASSES', '200'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('BACK_LOG', '50'),
('SLOW_LAUNCH_TIME', '2'),
('EVENT_SCHEDULER', 'OFF'),
('MAX_SEEKS_FOR_KEY', '18446744073709551615'),
('PERFORMANCE_SCHEMA_MAX_THREAD_CLASSES', '50'),
('RELAY_LOG_INDEX', ''),
('FT_STOPWORD_FILE', '(built-in)'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('PERFORMANCE_SCHEMA', 'OFF'),
('QUERY_CACHE_SIZE', '16777216'),
('BINLOG_FORMAT', 'STATEMENT'),
('WAIT_TIMEOUT', '1800'),
('LONG_QUERY_TIME', '10.000000'),
('PERFORMANCE_SCHEMA_MAX_TABLE_HANDLES', '100000'),
('CHARACTER_SETS_DIR', '/usr/share/mysql/charsets/'),
('LOWER_CASE_TABLE_NAMES', '0'),
('BINLOG_CACHE_SIZE', '32768'),
('REPORT_HOST', ''),
('CHARACTER_SET_RESULTS', 'latin1'),
('MYISAM_SORT_BUFFER_SIZE', '8388608'),
('CHARACTER_SET_CONNECTION', 'latin1'),
('INNODB_ROLLBACK_SEGMENTS', '128'),
('PRELOAD_BUFFER_SIZE', '32768'),
('LARGE_FILES_SUPPORT', 'ON'),
('MAX_WRITE_LOCK_COUNT', '18446744073709551615'),
('SQL_SAFE_UPDATES', 'OFF'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('NET_BUFFER_LENGTH', '16384'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('SKIP_SHOW_DATABASE', 'OFF'),
('FT_MAX_WORD_LEN', '84'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('MAX_SP_RECURSION_DEPTH', '0'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('SYNC_RELAY_LOG', '0'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('HAVE_QUERY_CACHE', 'YES'),
('INNODB_LOG_FILE_SIZE', '5242880'),
('DELAY_KEY_WRITE', 'ON'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('INTERACTIVE_TIMEOUT', '1800'),
('MYISAM_RECOVER_OPTIONS', 'BACKUP'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('PROTOCOL_VERSION', '10'),
('DELAYED_INSERT_LIMIT', '100'),
('LOW_PRIORITY_UPDATES', 'OFF'),
('COMPLETION_TYPE', 'NO_CHAIN'),
('REPORT_PASSWORD', ''),
('BINLOG_DIRECT_NON_TRANSACTIONAL_UPDATES', 'OFF'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('VERSION_COMMENT', '(Ubuntu)'),
('SQL_BIG_SELECTS', 'ON'),
('AUTO_INCREMENT_OFFSET', '1'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('JOIN_BUFFER_SIZE', '131072'),
('THREAD_CACHE_SIZE', '8'),
('CONNECT_TIMEOUT', '10'),
('INNODB_DOUBLEWRITE', 'ON'),
('SQL_LOW_PRIORITY_UPDATES', 'OFF'),
('IGNORE_BUILTIN_INNODB', 'OFF'),
('INIT_FILE', ''),
('DEFAULT_WEEK_FORMAT', '0'),
('LARGE_PAGES', 'OFF'),
('LOG_OUTPUT', 'FILE'),
('LARGE_PAGE_SIZE', '0'),
('INNODB_IO_CAPACITY', '200'),
('INIT_SLAVE', ''),
('INNODB_USE_NATIVE_AIO', 'ON'),
('MAX_BINLOG_SIZE', '104857600'),
('HAVE_SYMLINK', 'YES'),
('MAX_ERROR_COUNT', '64'),
('TIME_ZONE', 'SYSTEM'),
('MAX_CONNECTIONS', '200'),
('INNODB_TABLE_LOCKS', 'ON'),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('READ_BUFFER_SIZE', '131072'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('SQL_AUTO_IS_NULL', 'OFF'),
('LOWER_CASE_FILE_SYSTEM', 'OFF'),
('SLAVE_TRANSACTION_RETRIES', '10'),
('SORT_BUFFER_SIZE', '2097152'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('MAX_HEAP_TABLE_SIZE', '16777216'),
('SYNC_RELAY_LOG_INFO', '0'),
('LOCK_WAIT_TIMEOUT', '31536000'),
('INNODB_REPLICATION_DELAY', '0'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('NET_RETRY_COUNT', '10'),
('INNODB_STATS_ON_METADATA', 'ON'),
('LOG_WARNINGS', '1'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('FLUSH', 'OFF'),
('PROFILING_HISTORY_SIZE', '15'),
('MAX_LONG_DATA_SIZE', '16777216'),
('INNODB_CHANGE_BUFFERING', 'all'),
('CHARACTER_SET_SERVER', 'latin1'),
('READ_RND_BUFFER_SIZE', '262144'),
('SLAVE_MAX_ALLOWED_PACKET', '1073741824'),
('INNODB_FILE_FORMAT', 'Antelope'),
('FLUSH_TIME', '0'),
('BIG_TABLES', 'OFF'),
('CHARACTER_SET_DATABASE', 'latin1'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('BULK_INSERT_BUFFER_SIZE', '8388608'),
('DATE_FORMAT', '%Y-%m-%d'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('READ_ONLY', 'OFF'),
('BINLOG_STMT_CACHE_SIZE', '32768'),
('MAX_BINLOG_CACHE_SIZE', '18446744073709547520'),
('INNODB_DATA_FILE_PATH', 'ibdata1:10M:autoextend'),
('PERFORMANCE_SCHEMA_MAX_FILE_CLASSES', '50'),
('INNODB_PURGE_THREADS', '0'),
('MAX_SORT_LENGTH', '1024'),
('PROFILING', 'OFF'),
('PERFORMANCE_SCHEMA_EVENTS_WAITS_HISTORY_SIZE', '10'),
('INNODB_STRICT_MODE', 'OFF'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('OLD_PASSWORDS', 'OFF'),
('GENERAL_LOG_FILE', '/var/lib/mysql/ip-172-31-0-112.log'),
('NET_WRITE_TIMEOUT', '60'),
('PERFORMANCE_SCHEMA_MAX_COND_CLASSES', '80'),
('QUERY_CACHE_TYPE', 'ON'),
('AUTO_INCREMENT_INCREMENT', '1'),
('METADATA_LOCKS_CACHE_SIZE', '1024'),
('TMPDIR', '/tmp'),
('QUERY_CACHE_LIMIT', '1048576'),
('EXPIRE_LOGS_DAYS', '10'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('HAVE_PARTITIONING', 'YES'),
('LOG_ERROR', '/var/log/mysql/error.log'),
('FOREIGN_KEY_CHECKS', 'ON'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('THREAD_STACK', '196608'),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('NEW', 'OFF'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('SKIP_NAME_RESOLVE', 'OFF'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('PID_FILE', '/var/run/mysqld/mysqld.pid'),
('INNODB_PURGE_BATCH_SIZE', '20'),
('MAX_ALLOWED_PACKET', '16777216'),
('VERSION', '5.5.46-0ubuntu0.14.04.2'),
('CONCURRENT_INSERT', 'AUTO'),
('INNODB_SUPPORT_XA', 'ON'),
('TABLE_DEFINITION_CACHE', '400'),
('INNODB_SYNC_SPIN_LOOPS', '30'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('COLLATION_CONNECTION', 'latin1_swedish_ci'),
('MYISAM_REPAIR_THREADS', '1'),
('INNODB_ADAPTIVE_FLUSHING', 'ON'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('VERSION_COMPILE_MACHINE', 'x86_64'),
('SYSTEM_TIME_ZONE', 'UTC'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('DIV_PRECISION_INCREMENT', '4'),
('SYNC_FRM', 'ON'),
('STORED_PROGRAM_CACHE', '256'),
('TMP_TABLE_SIZE', '16777216'),
('INNODB_DATA_HOME_DIR', ''),
('PERFORMANCE_SCHEMA_MAX_THREAD_INSTANCES', '1000'),
('INNODB_READ_IO_THREADS', '4'),
('MULTI_RANGE_COUNT', '256'),
('INNODB_WRITE_IO_THREADS', '4'),
('SERVER_ID', '0'),
('INNODB_BUFFER_POOL_INSTANCES', '1'),
('SKIP_NETWORKING', 'OFF'),
('INNODB_FORCE_RECOVERY', '0'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('INIT_CONNECT', ''),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('AUTOCOMMIT', 'ON'),
('SYNC_BINLOG', '0'),
('SSL_CAPATH', ''),
('INNODB_PRINT_ALL_DEADLOCKS', 'OFF'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_OPEN_FILES', '300'),
('GENERAL_LOG', 'OFF'),
('INNODB_FILE_FORMAT_CHECK', 'ON'),
('INNODB_READ_AHEAD_THRESHOLD', '56'),
('HOSTNAME', 'ip-172-31-0-112'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('OLD', 'OFF'),
('KEY_BUFFER_SIZE', '16777216'),
('REPORT_PORT', '3306'),
('HAVE_NDBCLUSTER', 'NO'),
('SQL_LOG_BIN', 'ON'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('INNODB_STATS_METHOD', 'nulls_equal'),
('LOG_BIN', 'OFF'),
('INNODB_FAST_SHUTDOWN', '1'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SSL_CA', ''),
('MAX_USER_CONNECTIONS', '20'),
('INNODB_THREAD_CONCURRENCY', '0'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('SLAVE_NET_TIMEOUT', '3600'),
('TABLE_OPEN_CACHE', '400'),
('INNODB_STATS_SAMPLE_PAGES', '8'),
('SQL_BIG_TABLES', 'OFF'),
('LOCAL_INFILE', 'ON'),
('SQL_BUFFER_RESULT', 'OFF'),
('HAVE_RTREE_KEYS', 'YES'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('HAVE_PROFILING', 'YES'),
('LC_MESSAGES_DIR', '/usr/share/mysql/'),
('OLD_ALTER_TABLE', 'OFF'),
('HAVE_INNODB', 'YES'),
('MYISAM_MMAP_SIZE', '18446744073709551615'),
('SQL_MODE', ''),
('PERFORMANCE_SCHEMA_MAX_FILE_HANDLES', '32768'),
('RELAY_LOG_RECOVERY', 'OFF'),
('REPORT_USER', ''),
('MAX_DELAYED_THREADS', '20'),
('HAVE_GEOMETRY', 'YES'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('SLOW_QUERY_LOG', 'OFF'),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('LC_MESSAGES', 'en_US'),
('MAX_RELAY_LOG_SIZE', '0'),
('LOG', 'OFF'),
('INNODB_RANDOM_READ_AHEAD', 'OFF'),
('OPEN_FILES_LIMIT', '1024'),
('HAVE_CSV', 'YES'),
('DATADIR', '/var/lib/mysql/'),
('PORT', '3306'),
('FT_MIN_WORD_LEN', '4'),
('INNODB_CONCURRENCY_TICKETS', '500'),
('VERSION_COMPILE_OS', 'debian-linux-gnu'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('INNODB_FORCE_LOAD_CORRUPTED', 'OFF'),
('SQL_WARNINGS', 'OFF'),
('HAVE_OPENSSL', 'DISABLED'),
('RELAY_LOG', ''),
('MAX_BINLOG_STMT_CACHE_SIZE', '18446744073709547520'),
('PLUGIN_DIR', '/usr/lib/mysql/plugin/'),
('PERFORMANCE_SCHEMA_MAX_FILE_INSTANCES', '10000'),
('LOG_SLOW_QUERIES', 'OFF'),
('INNODB_SPIN_WAIT_DELAY', '6'),
('MAX_TMP_TABLES', '32'),
('INNODB_FILE_FORMAT_MAX', 'Antelope'),
('SQL_LOG_OFF', 'OFF'),
('DEFAULT_STORAGE_ENGINE', 'InnoDB'),
('SLOW_QUERY_LOG_FILE', '/var/lib/mysql/ip-172-31-0-112-slow.log'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('SQL_SLAVE_SKIP_COUNTER', '0'),
('INNODB_OLD_BLOCKS_TIME', '0'),
('SECURE_AUTH', 'OFF'),
('RPL_RECOVERY_RANK', '0'),
('NET_READ_TIMEOUT', '30'),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on,engine_condition_pushdown=on'),
('MAX_CONNECT_ERRORS', '10'),
('LOCKED_IN_MEMORY', 'OFF'),
('INNODB_FLUSH_METHOD', ''),
('INNODB_LARGE_PREFIX', 'OFF'),
('INNODB_CHECKSUMS', 'ON'),
('STORAGE_ENGINE', 'InnoDB'),
('SSL_KEY', ''),
('HAVE_SSL', 'DISABLED'),
('MYISAM_USE_MMAP', 'OFF'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('LOG_SLAVE_UPDATES', 'OFF'),
('RELAY_LOG_PURGE', 'ON'),
('SYNC_MASTER_INFO', '0'),
('COLLATION_DATABASE', 'latin1_swedish_ci'),
('INNODB_FILE_PER_TABLE', 'OFF'),
('INNODB_LOG_GROUP_HOME_DIR', './'),
('SSL_CERT', ''),
('INNODB_LOG_BUFFER_SIZE', '8388608'),
('SOCKET', '/var/run/mysqld/mysqld.sock'),
('CHARACTER_SET_CLIENT', 'latin1'),
('INNODB_MAX_PURGE_LAG', '0'),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('MYISAM_MAX_SORT_FILE_SIZE', '9223372036853727232'),
('SLAVE_LOAD_TMPDIR', '/tmp'),
('SLAVE_TYPE_CONVERSIONS', ''),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '8388608'),
('SQL_NOTES', 'ON'),
('INNODB_USE_SYS_MALLOC', 'ON'),
('LICENSE', 'GPL'),
('INNODB_MAX_DIRTY_PAGES_PCT', '75'),
('PERFORMANCE_SCHEMA_MAX_TABLE_INSTANCES', '50000'),
('THREAD_CONCURRENCY', '10'),
('UNIQUE_CHECKS', 'ON'),
('INNODB_OLD_BLOCKS_PCT', '37'),
('HAVE_COMPRESS', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `KEY_COLUMN_USAGE`;
CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(10) NOT NULL DEFAULT '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) DEFAULT NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) DEFAULT NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
('def', 'sql6110519', 'PRIMARY', 'def', 'sql6110519', 'MsAirBase', 'AirBaseId', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'PRIMARY', 'def', 'sql6110519', 'MsCategory', 'RowId', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'CategoryCode', 'def', 'sql6110519', 'MsCategory', 'CategoryCode', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'PRIMARY', 'def', 'sql6110519', 'MsRegPlane', 'RowId', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'RegCode', 'def', 'sql6110519', 'MsRegPlane', 'RegCode', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'PRIMARY', 'def', 'sql6110519', 'MsStatus', 'RowId', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'StatusCode', 'def', 'sql6110519', 'MsStatus', 'StatusCode', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'PRIMARY', 'def', 'sql6110519', 'MsSystem', 'RowId', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'SystemCode', 'def', 'sql6110519', 'MsSystem', 'SystemCode', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'PRIMARY', 'def', 'sql6110519', 'TxAirCraft', 'RegCode', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'RegCode', 'def', 'sql6110519', 'TxAirCraft', 'RegCode', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'RowId', 'def', 'sql6110519', 'TxAirCraft', 'RowId', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'PRIMARY', 'def', 'sql6110519', 'TxAirCraftItem', 'RowId', 1, NULL, NULL, NULL, NULL),
('def', 'sql6110519', 'PRIMARY', 'def', 'sql6110519', 'TxCategory', 'RowId', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PARAMETERS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
-- Last update: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `PARAMETERS`;
CREATE TEMPORARY TABLE `PARAMETERS` (
  `SPECIFIC_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `SPECIFIC_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` int(21) NOT NULL DEFAULT '0',
  `PARAMETER_MODE` varchar(5) DEFAULT NULL,
  `PARAMETER_NAME` varchar(64) DEFAULT NULL,
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` int(21) DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` int(21) DEFAULT NULL,
  `NUMERIC_PRECISION` int(21) DEFAULT NULL,
  `NUMERIC_SCALE` int(21) DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(64) DEFAULT NULL,
  `COLLATION_NAME` varchar(64) DEFAULT NULL,
  `DTD_IDENTIFIER` longtext NOT NULL,
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PARTITIONS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
-- Last update: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `PARTITIONS`;
CREATE TEMPORARY TABLE `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PARTITION_NAME` varchar(64) DEFAULT NULL,
  `SUBPARTITION_NAME` varchar(64) DEFAULT NULL,
  `PARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_METHOD` varchar(18) DEFAULT NULL,
  `SUBPARTITION_METHOD` varchar(12) DEFAULT NULL,
  `PARTITION_EXPRESSION` longtext,
  `SUBPARTITION_EXPRESSION` longtext,
  `PARTITION_DESCRIPTION` longtext,
  `TABLE_ROWS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `AVG_ROW_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_FREE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_COMMENT` varchar(80) NOT NULL DEFAULT '',
  `NODEGROUP` varchar(12) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARTITIONS`
--

INSERT INTO `PARTITIONS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `PARTITION_NAME`, `SUBPARTITION_NAME`, `PARTITION_ORDINAL_POSITION`, `SUBPARTITION_ORDINAL_POSITION`, `PARTITION_METHOD`, `SUBPARTITION_METHOD`, `PARTITION_EXPRESSION`, `SUBPARTITION_EXPRESSION`, `PARTITION_DESCRIPTION`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `CHECKSUM`, `PARTITION_COMMENT`, `NODEGROUP`, `TABLESPACE_NAME`) VALUES
('def', 'information_schema', 'CHARACTER_SETS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 384, 0, 16434816, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'COLLATIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 231, 0, 16704765, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 195, 0, 16357770, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'COLUMNS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'COLUMN_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2565, 0, 16757145, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'ENGINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 490, 0, 16574250, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'EVENTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'FILES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2677, 0, 16758020, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'GLOBAL_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'GLOBAL_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'KEY_COLUMN_USAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4637, 0, 16762755, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PARAMETERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PARTITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PLUGINS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PROCESSLIST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'PROFILING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 308, 0, 16562084, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4814, 0, 16767162, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'ROUTINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'SCHEMATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3464, 0, 16738048, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2179, 0, 16736899, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'SESSION_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'SESSION_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5753, 0, 16752736, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9450, 0, 16764300, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TABLESPACES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6951, 0, 16772763, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TABLE_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2504, 0, 16721712, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TABLE_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2372, 0, 16748692, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'TRIGGERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'USER_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1986, 0, 16726092, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'VIEWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2016-03-20 08:35:14', '2016-03-20 08:35:14', NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6852, 0, 16766844, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_TRX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4534, 0, 16766732, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 257, 0, 16332350, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_LOCK_WAITS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 599, 0, 16749238, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_CMPMEM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 29, 0, 15204352, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_CMP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 25, 0, 13107200, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_LOCKS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 31244, 0, 16746784, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 29, 0, 15204352, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_CMP_RESET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 25, 0, 13107200, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6669, 0, 16765866, 0, 0, '2016-03-20 08:35:14', NULL, NULL, NULL, '', '', NULL),
('def', 'sql6110519', 'MsAirBase', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 3276, 16384, NULL, 0, 6291456, '2016-03-20 08:29:05', NULL, NULL, NULL, '', '', NULL),
('def', 'sql6110519', 'MsCategory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 4096, 16384, NULL, 16384, 6291456, '2016-03-13 14:38:00', NULL, NULL, NULL, '', '', NULL),
('def', 'sql6110519', 'MsRegPlane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 16384, 6291456, '2016-03-13 14:44:01', NULL, NULL, NULL, '', '', NULL),
('def', 'sql6110519', 'MsStatus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8192, 16384, NULL, 16384, 6291456, '2016-03-13 14:42:44', NULL, NULL, NULL, '', '', NULL),
('def', 'sql6110519', 'MsSystem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 16384, 6291456, '2016-03-13 14:40:50', NULL, NULL, NULL, '', '', NULL),
('def', 'sql6110519', 'TxAirCraft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 32768, 6291456, '2016-03-20 08:34:04', NULL, NULL, NULL, '', '', NULL),
('def', 'sql6110519', 'TxAirCraftItem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 0, 6291456, '2016-03-13 14:57:57', NULL, NULL, NULL, '', '', NULL),
('def', 'sql6110519', 'TxCategory', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 16384, NULL, 0, 6291456, '2016-03-20 08:31:49', NULL, NULL, NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PLUGINS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
-- Last update: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `PLUGINS`;
CREATE TEMPORARY TABLE `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(10) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) DEFAULT NULL,
  `LOAD_OPTION` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PLUGINS`
--

INSERT INTO `PLUGINS` (`PLUGIN_NAME`, `PLUGIN_VERSION`, `PLUGIN_STATUS`, `PLUGIN_TYPE`, `PLUGIN_TYPE_VERSION`, `PLUGIN_LIBRARY`, `PLUGIN_LIBRARY_VERSION`, `PLUGIN_AUTHOR`, `PLUGIN_DESCRIPTION`, `PLUGIN_LICENSE`, `LOAD_OPTION`) VALUES
('binlog', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'MySQL AB', 'This is a pseudo storage engine to represent the binlog in a transaction', 'GPL', 'FORCE'),
('mysql_native_password', '1.0', 'ACTIVE', 'AUTHENTICATION', '1.0', NULL, NULL, 'R.J.Silk, Sergei Golubchik', 'Native MySQL authentication', 'GPL', 'FORCE'),
('mysql_old_password', '1.0', 'ACTIVE', 'AUTHENTICATION', '1.0', NULL, NULL, 'R.J.Silk, Sergei Golubchik', 'Old MySQL-4.0 authentication', 'GPL', 'FORCE'),
('MEMORY', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'MySQL AB', 'Hash based, stored in memory, useful for temporary tables', 'GPL', 'FORCE'),
('CSV', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'Brian Aker, MySQL AB', 'CSV storage engine', 'GPL', 'FORCE'),
('MRG_MYISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'MySQL AB', 'Collection of identical MyISAM tables', 'GPL', 'FORCE'),
('MyISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'MySQL AB', 'MyISAM storage engine', 'GPL', 'FORCE'),
('BLACKHOLE', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'MySQL AB', '/dev/null storage engine (anything you write to it disappears)', 'GPL', 'ON'),
('FEDERATED', '1.0', 'DISABLED', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'Patrick Galbraith and Brian Aker, MySQL AB', 'Federated MySQL storage engine', 'GPL', 'OFF'),
('InnoDB', '5.5', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'Oracle Corporation', 'Supports transactions, row-level locking, and foreign keys', 'GPL', 'ON'),
('INNODB_TRX', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'InnoDB transactions', 'GPL', 'ON'),
('INNODB_LOCKS', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'InnoDB conflicting locks', 'GPL', 'ON'),
('INNODB_LOCK_WAITS', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'InnoDB which lock is blocking which', 'GPL', 'ON'),
('INNODB_CMP', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compression', 'GPL', 'ON'),
('INNODB_CMP_RESET', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compression; reset cumulated counts', 'GPL', 'ON'),
('INNODB_CMPMEM', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compressed buffer pool', 'GPL', 'ON'),
('INNODB_CMPMEM_RESET', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'Statistics for the InnoDB compressed buffer pool; reset cumulated counts', 'GPL', 'ON'),
('INNODB_BUFFER_PAGE', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Page Information', 'GPL', 'ON'),
('INNODB_BUFFER_PAGE_LRU', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Page in LRU', 'GPL', 'ON'),
('INNODB_BUFFER_POOL_STATS', '5.5', 'ACTIVE', 'INFORMATION SCHEMA', '50546.0', NULL, NULL, 'Oracle Corporation', 'InnoDB Buffer Pool Statistics Information ', 'GPL', 'ON'),
('ARCHIVE', '3.0', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'Brian Aker, MySQL AB', 'Archive storage engine', 'GPL', 'ON'),
('PERFORMANCE_SCHEMA', '0.1', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'Marc Alff, Oracle', 'Performance Schema', 'GPL', 'FORCE'),
('partition', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50546.0', NULL, NULL, 'Mikael Ronstrom, MySQL AB', 'Partition Storage Engine Helper', 'GPL', 'ON');

-- --------------------------------------------------------

--
-- Table structure for table `PROCESSLIST`
--
-- Creation: Mar 20, 2016 at 08:35 AM
-- Last update: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `PROCESSLIST`;
CREATE TEMPORARY TABLE `PROCESSLIST` (
  `ID` bigint(4) NOT NULL DEFAULT '0',
  `USER` varchar(16) NOT NULL DEFAULT '',
  `HOST` varchar(64) NOT NULL DEFAULT '',
  `DB` varchar(64) DEFAULT NULL,
  `COMMAND` varchar(16) NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) DEFAULT NULL,
  `INFO` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROCESSLIST`
--

INSERT INTO `PROCESSLIST` (`ID`, `USER`, `HOST`, `DB`, `COMMAND`, `TIME`, `STATE`, `INFO`) VALUES
(4502794, 'sql6110519', 'web12.extendcp.co.uk:50905', NULL, 'Query', 0, 'executing', 'SELECT * FROM `information_schema`.`PROCESSLIST`');

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `PROFILING`;
CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` int(20) NOT NULL DEFAULT '0',
  `SEQ` int(20) NOT NULL DEFAULT '0',
  `STATE` varchar(30) NOT NULL DEFAULT '',
  `DURATION` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `CPU_USER` decimal(9,6) DEFAULT NULL,
  `CPU_SYSTEM` decimal(9,6) DEFAULT NULL,
  `CONTEXT_VOLUNTARY` int(20) DEFAULT NULL,
  `CONTEXT_INVOLUNTARY` int(20) DEFAULT NULL,
  `BLOCK_OPS_IN` int(20) DEFAULT NULL,
  `BLOCK_OPS_OUT` int(20) DEFAULT NULL,
  `MESSAGES_SENT` int(20) DEFAULT NULL,
  `MESSAGES_RECEIVED` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MAJOR` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MINOR` int(20) DEFAULT NULL,
  `SWAPS` int(20) DEFAULT NULL,
  `SOURCE_FUNCTION` varchar(30) DEFAULT NULL,
  `SOURCE_FILE` varchar(20) DEFAULT NULL,
  `SOURCE_LINE` int(20) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `REFERENTIAL_CONSTRAINTS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `REFERENTIAL_CONSTRAINTS`;
CREATE TEMPORARY TABLE `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_NAME` varchar(64) DEFAULT NULL,
  `MATCH_OPTION` varchar(64) NOT NULL DEFAULT '',
  `UPDATE_RULE` varchar(64) NOT NULL DEFAULT '',
  `DELETE_RULE` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
-- Last update: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `ROUTINES`;
CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `ROUTINE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` int(21) DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` int(21) DEFAULT NULL,
  `NUMERIC_PRECISION` int(21) DEFAULT NULL,
  `NUMERIC_SCALE` int(21) DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(64) DEFAULT NULL,
  `COLLATION_NAME` varchar(64) DEFAULT NULL,
  `DTD_IDENTIFIER` longtext,
  `ROUTINE_BODY` varchar(8) NOT NULL DEFAULT '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) DEFAULT NULL,
  `EXTERNAL_LANGUAGE` varchar(64) DEFAULT NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL DEFAULT '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL DEFAULT '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(64) DEFAULT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `ROUTINE_COMMENT` longtext NOT NULL,
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `SCHEMATA`;
CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) NOT NULL DEFAULT '',
  `SCHEMA_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(512) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
('def', 'information_schema', 'utf8', 'utf8_general_ci', NULL),
('def', 'sql6110519', 'latin1', 'latin1_swedish_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `SCHEMA_PRIVILEGES`;
CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''sql6110519''@''%''', 'def', 'sql6110519', 'SELECT', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'INSERT', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'UPDATE', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'DELETE', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'CREATE', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'DROP', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'INDEX', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'ALTER', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'LOCK TABLES', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'EXECUTE', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'CREATE VIEW', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'SHOW VIEW', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'CREATE ROUTINE', 'NO'),
('''sql6110519''@''%''', 'def', 'sql6110519', 'ALTER ROUTINE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_STATUS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `SESSION_STATUS`;
CREATE TEMPORARY TABLE `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_STATUS`
--

INSERT INTO `SESSION_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '71000'),
('ABORTED_CONNECTS', '1095664'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '0'),
('BINLOG_STMT_CACHE_DISK_USE', '0'),
('BINLOG_STMT_CACHE_USE', '0'),
('BYTES_RECEIVED', '7662'),
('BYTES_SENT', '226623'),
('COM_ADMIN_COMMANDS', '0'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '0'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '0'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '0'),
('COM_BEGIN', '0'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '0'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '0'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '0'),
('COM_CREATE_DB', '0'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '0'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '0'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '0'),
('COM_DELETE_MULTI', '0'),
('COM_DO', '0'),
('COM_DROP_DB', '0'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '0'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '0'),
('COM_EXECUTE_SQL', '0'),
('COM_FLUSH', '0'),
('COM_GRANT', '0'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '0'),
('COM_INSERT_SELECT', '0'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '0'),
('COM_LOAD', '0'),
('COM_LOCK_TABLES', '0'),
('COM_OPTIMIZE', '0'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '0'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '0'),
('COM_RENAME_TABLE', '0'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '0'),
('COM_REPLACE', '0'),
('COM_REPLACE_SELECT', '0'),
('COM_RESET', '0'),
('COM_RESIGNAL', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '0'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '0'),
('COM_SELECT', '22'),
('COM_SET_OPTION', '25'),
('COM_SIGNAL', '0'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '0'),
('COM_SHOW_CHARSETS', '0'),
('COM_SHOW_COLLATIONS', '0'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '21'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '1'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '0'),
('COM_SHOW_FUNCTION_STATUS', '1'),
('COM_SHOW_GRANTS', '0'),
('COM_SHOW_KEYS', '0'),
('COM_SHOW_MASTER_STATUS', '0'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '0'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '1'),
('COM_SHOW_PROCESSLIST', '0'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '0'),
('COM_SHOW_RELAYLOG_EVENTS', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '0'),
('COM_SHOW_STATUS', '0'),
('COM_SHOW_STORAGE_ENGINES', '0'),
('COM_SHOW_TABLE_STATUS', '42'),
('COM_SHOW_TABLES', '1'),
('COM_SHOW_TRIGGERS', '20'),
('COM_SHOW_VARIABLES', '0'),
('COM_SHOW_WARNINGS', '0'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '0'),
('COM_STMT_EXECUTE', '0'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '0'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '0'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '0'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '0'),
('COM_UPDATE', '0'),
('COM_UPDATE_MULTI', '0'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '4502819'),
('CREATED_TMP_DISK_TABLES', '93'),
('CREATED_TMP_FILES', '4786'),
('CREATED_TMP_TABLES', '330'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '0'),
('DELAYED_WRITES', '0'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '0'),
('HANDLER_DELETE', '0'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '4'),
('HANDLER_READ_KEY', '0'),
('HANDLER_READ_LAST', '0'),
('HANDLER_READ_NEXT', '952'),
('HANDLER_READ_PREV', '0'),
('HANDLER_READ_RND', '0'),
('HANDLER_READ_RND_NEXT', '1860'),
('HANDLER_ROLLBACK', '0'),
('HANDLER_SAVEPOINT', '0'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '0'),
('HANDLER_WRITE', '1944'),
('INNODB_BUFFER_POOL_PAGES_DATA', '8190'),
('INNODB_BUFFER_POOL_BYTES_DATA', '134184960'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_BYTES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '2310770'),
('INNODB_BUFFER_POOL_PAGES_FREE', '0'),
('INNODB_BUFFER_POOL_PAGES_MISC', '2'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '8192'),
('INNODB_BUFFER_POOL_READ_AHEAD_RND', '0'),
('INNODB_BUFFER_POOL_READ_AHEAD', '1620206'),
('INNODB_BUFFER_POOL_READ_AHEAD_EVICTED', '163492'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '34787576969'),
('INNODB_BUFFER_POOL_READS', '103697621'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '28577133'),
('INNODB_DATA_FSYNCS', '1861655'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '1725604188160'),
('INNODB_DATA_READS', '105324950'),
('INNODB_DATA_WRITES', '3944078'),
('INNODB_DATA_WRITTEN', '78427181568'),
('INNODB_DBLWR_PAGES_WRITTEN', '2310770'),
('INNODB_DBLWR_WRITES', '236861'),
('INNODB_HAVE_ATOMIC_BUILTINS', 'ON'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '4223514'),
('INNODB_LOG_WRITES', '1187961'),
('INNODB_OS_LOG_FSYNCS', '1387998'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '2605326336'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '95074'),
('INNODB_PAGES_READ', '105322387'),
('INNODB_PAGES_WRITTEN', '2310770'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '2968202'),
('INNODB_ROW_LOCK_TIME_AVG', '29100'),
('INNODB_ROW_LOCK_TIME_MAX', '51435'),
('INNODB_ROW_LOCK_WAITS', '102'),
('INNODB_ROWS_DELETED', '374632'),
('INNODB_ROWS_INSERTED', '6303951'),
('INNODB_ROWS_READ', '23235408752'),
('INNODB_ROWS_UPDATED', '2527795'),
('INNODB_TRUNCATED_STATUS_WRITES', '0'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '13370'),
('KEY_BLOCKS_USED', '1086'),
('KEY_READ_REQUESTS', '12203637'),
('KEY_READS', '193994'),
('KEY_WRITE_REQUESTS', '2188774'),
('KEY_WRITES', '687026'),
('LAST_QUERY_COST', '10.499000'),
('MAX_USED_CONNECTIONS', '149'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '86'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '400'),
('OPEN_TABLES', '400'),
('OPENED_FILES', '136809651'),
('OPENED_TABLE_DEFINITIONS', '0'),
('OPENED_TABLES', '0'),
('PERFORMANCE_SCHEMA_COND_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_COND_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_HANDLES_LOST', '0'),
('PERFORMANCE_SCHEMA_FILE_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_LOCKER_LOST', '0'),
('PERFORMANCE_SCHEMA_MUTEX_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_MUTEX_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_RWLOCK_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_RWLOCK_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_TABLE_HANDLES_LOST', '0'),
('PERFORMANCE_SCHEMA_TABLE_INSTANCES_LOST', '0'),
('PERFORMANCE_SCHEMA_THREAD_CLASSES_LOST', '0'),
('PERFORMANCE_SCHEMA_THREAD_INSTANCES_LOST', '0'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '852'),
('QCACHE_FREE_MEMORY', '2913024'),
('QCACHE_HITS', '6414693'),
('QCACHE_INSERTS', '1678238'),
('QCACHE_LOWMEM_PRUNES', '328911'),
('QCACHE_NOT_CACHED', '4340738'),
('QCACHE_QUERIES_IN_CACHE', '3731'),
('QCACHE_TOTAL_BLOCKS', '9219'),
('QUERIES', '78506864'),
('QUESTIONS', '134'),
('RPL_STATUS', 'AUTH_MASTER'),
('SELECT_FULL_JOIN', '0'),
('SELECT_FULL_RANGE_JOIN', '0'),
('SELECT_RANGE', '0'),
('SELECT_RANGE_CHECK', '0'),
('SELECT_SCAN', '87'),
('SLAVE_HEARTBEAT_PERIOD', '0.000'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RECEIVED_HEARTBEATS', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '0'),
('SORT_MERGE_PASSES', '0'),
('SORT_RANGE', '0'),
('SORT_ROWS', '0'),
('SORT_SCAN', '0'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '13499667'),
('TABLE_LOCKS_WAITED', '176'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '2'),
('THREADS_CONNECTED', '15'),
('THREADS_CREATED', '39664'),
('THREADS_RUNNING', '1'),
('UPTIME', '6533708'),
('UPTIME_SINCE_FLUSH_STATUS', '6533708');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_VARIABLES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `SESSION_VARIABLES`;
CREATE TEMPORARY TABLE `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_VARIABLES`
--

INSERT INTO `SESSION_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('INNODB_BUFFER_POOL_SIZE', '134217728'),
('HAVE_CRYPT', 'YES'),
('PERFORMANCE_SCHEMA_EVENTS_WAITS_HISTORY_LONG_SIZE', '10000'),
('INNODB_VERSION', '5.5.46'),
('QUERY_PREALLOC_SIZE', '8192'),
('DELAYED_QUEUE_SIZE', '1000'),
('PERFORMANCE_SCHEMA_MAX_COND_INSTANCES', '1000'),
('SSL_CIPHER', ''),
('COLLATION_SERVER', 'latin1_swedish_ci'),
('SECURE_FILE_PRIV', ''),
('TIMED_MUTEXES', 'OFF'),
('DELAYED_INSERT_TIMEOUT', '300'),
('PERFORMANCE_SCHEMA_MAX_MUTEX_INSTANCES', '1000000'),
('LC_TIME_NAMES', 'en_US'),
('PERFORMANCE_SCHEMA_MAX_RWLOCK_INSTANCES', '1000000'),
('TIME_FORMAT', '%H:%i:%s'),
('PERFORMANCE_SCHEMA_MAX_RWLOCK_CLASSES', '30'),
('BASEDIR', '/usr'),
('PERFORMANCE_SCHEMA_MAX_MUTEX_CLASSES', '200'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('BACK_LOG', '50'),
('SLOW_LAUNCH_TIME', '2'),
('EVENT_SCHEDULER', 'OFF'),
('MAX_SEEKS_FOR_KEY', '18446744073709551615'),
('PERFORMANCE_SCHEMA_MAX_THREAD_CLASSES', '50'),
('RELAY_LOG_INDEX', ''),
('FT_STOPWORD_FILE', '(built-in)'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('PERFORMANCE_SCHEMA', 'OFF'),
('QUERY_CACHE_SIZE', '16777216'),
('BINLOG_FORMAT', 'STATEMENT'),
('WAIT_TIMEOUT', '1800'),
('LONG_QUERY_TIME', '10.000000'),
('PERFORMANCE_SCHEMA_MAX_TABLE_HANDLES', '100000'),
('CHARACTER_SETS_DIR', '/usr/share/mysql/charsets/'),
('LOWER_CASE_TABLE_NAMES', '0'),
('BINLOG_CACHE_SIZE', '32768'),
('REPORT_HOST', ''),
('CHARACTER_SET_RESULTS', 'utf8'),
('MYISAM_SORT_BUFFER_SIZE', '8388608'),
('CHARACTER_SET_CONNECTION', 'utf8'),
('INNODB_ROLLBACK_SEGMENTS', '128'),
('PRELOAD_BUFFER_SIZE', '32768'),
('LARGE_FILES_SUPPORT', 'ON'),
('MAX_WRITE_LOCK_COUNT', '18446744073709551615'),
('SQL_SAFE_UPDATES', 'OFF'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('NET_BUFFER_LENGTH', '16384'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('SKIP_SHOW_DATABASE', 'OFF'),
('FT_MAX_WORD_LEN', '84'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('MAX_SP_RECURSION_DEPTH', '0'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('SYNC_RELAY_LOG', '0'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('HAVE_QUERY_CACHE', 'YES'),
('INNODB_LOG_FILE_SIZE', '5242880'),
('DELAY_KEY_WRITE', 'ON'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('INTERACTIVE_TIMEOUT', '1800'),
('MYISAM_RECOVER_OPTIONS', 'BACKUP'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('PROTOCOL_VERSION', '10'),
('DELAYED_INSERT_LIMIT', '100'),
('LOW_PRIORITY_UPDATES', 'OFF'),
('COMPLETION_TYPE', 'NO_CHAIN'),
('REPORT_PASSWORD', ''),
('BINLOG_DIRECT_NON_TRANSACTIONAL_UPDATES', 'OFF'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('VERSION_COMMENT', '(Ubuntu)'),
('SQL_BIG_SELECTS', 'ON'),
('AUTO_INCREMENT_OFFSET', '1'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('JOIN_BUFFER_SIZE', '131072'),
('THREAD_CACHE_SIZE', '8'),
('CONNECT_TIMEOUT', '10'),
('INNODB_DOUBLEWRITE', 'ON'),
('SQL_LOW_PRIORITY_UPDATES', 'OFF'),
('IGNORE_BUILTIN_INNODB', 'OFF'),
('INIT_FILE', ''),
('DEFAULT_WEEK_FORMAT', '0'),
('LARGE_PAGES', 'OFF'),
('LOG_OUTPUT', 'FILE'),
('LARGE_PAGE_SIZE', '0'),
('INNODB_IO_CAPACITY', '200'),
('INIT_SLAVE', ''),
('INNODB_USE_NATIVE_AIO', 'ON'),
('MAX_BINLOG_SIZE', '104857600'),
('HAVE_SYMLINK', 'YES'),
('MAX_ERROR_COUNT', '64'),
('TIME_ZONE', '+00:00'),
('MAX_CONNECTIONS', '200'),
('INNODB_TABLE_LOCKS', 'ON'),
('PROXY_USER', ''),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('READ_BUFFER_SIZE', '131072'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('PSEUDO_THREAD_ID', '4502794'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('SQL_AUTO_IS_NULL', 'OFF'),
('LOWER_CASE_FILE_SYSTEM', 'OFF'),
('SLAVE_TRANSACTION_RETRIES', '10'),
('SORT_BUFFER_SIZE', '2097152'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('MAX_HEAP_TABLE_SIZE', '16777216'),
('SYNC_RELAY_LOG_INFO', '0'),
('LOCK_WAIT_TIMEOUT', '31536000'),
('INNODB_REPLICATION_DELAY', '0'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('NET_RETRY_COUNT', '10'),
('INNODB_STATS_ON_METADATA', 'ON'),
('LOG_WARNINGS', '1'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('FLUSH', 'OFF'),
('PROFILING_HISTORY_SIZE', '15'),
('MAX_LONG_DATA_SIZE', '16777216'),
('INNODB_CHANGE_BUFFERING', 'all'),
('CHARACTER_SET_SERVER', 'latin1'),
('READ_RND_BUFFER_SIZE', '262144'),
('SLAVE_MAX_ALLOWED_PACKET', '1073741824'),
('INNODB_FILE_FORMAT', 'Antelope'),
('FLUSH_TIME', '0'),
('BIG_TABLES', 'OFF'),
('CHARACTER_SET_DATABASE', 'latin1'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('BULK_INSERT_BUFFER_SIZE', '8388608'),
('DATE_FORMAT', '%Y-%m-%d'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('READ_ONLY', 'OFF'),
('BINLOG_STMT_CACHE_SIZE', '32768'),
('RAND_SEED1', '0'),
('MAX_BINLOG_CACHE_SIZE', '18446744073709547520'),
('INNODB_DATA_FILE_PATH', 'ibdata1:10M:autoextend'),
('PERFORMANCE_SCHEMA_MAX_FILE_CLASSES', '50'),
('INNODB_PURGE_THREADS', '0'),
('MAX_SORT_LENGTH', '1024'),
('PROFILING', 'OFF'),
('PERFORMANCE_SCHEMA_EVENTS_WAITS_HISTORY_SIZE', '10'),
('INNODB_STRICT_MODE', 'OFF'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('OLD_PASSWORDS', 'OFF'),
('GENERAL_LOG_FILE', '/var/lib/mysql/ip-172-31-0-112.log'),
('NET_WRITE_TIMEOUT', '60'),
('PERFORMANCE_SCHEMA_MAX_COND_CLASSES', '80'),
('QUERY_CACHE_TYPE', 'ON'),
('AUTO_INCREMENT_INCREMENT', '1'),
('METADATA_LOCKS_CACHE_SIZE', '1024'),
('TMPDIR', '/tmp'),
('QUERY_CACHE_LIMIT', '1048576'),
('EXPIRE_LOGS_DAYS', '10'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('HAVE_PARTITIONING', 'YES'),
('LOG_ERROR', '/var/log/mysql/error.log'),
('FOREIGN_KEY_CHECKS', 'ON'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('THREAD_STACK', '196608'),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('NEW', 'OFF'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('SKIP_NAME_RESOLVE', 'OFF'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('PID_FILE', '/var/run/mysqld/mysqld.pid'),
('INNODB_PURGE_BATCH_SIZE', '20'),
('MAX_ALLOWED_PACKET', '16777216'),
('VERSION', '5.5.46-0ubuntu0.14.04.2'),
('CONCURRENT_INSERT', 'AUTO'),
('INNODB_SUPPORT_XA', 'ON'),
('TABLE_DEFINITION_CACHE', '400'),
('INNODB_SYNC_SPIN_LOOPS', '30'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('COLLATION_CONNECTION', 'utf8_general_ci'),
('MYISAM_REPAIR_THREADS', '1'),
('INNODB_ADAPTIVE_FLUSHING', 'ON'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('VERSION_COMPILE_MACHINE', 'x86_64'),
('SYSTEM_TIME_ZONE', 'UTC'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('DIV_PRECISION_INCREMENT', '4'),
('SYNC_FRM', 'ON'),
('STORED_PROGRAM_CACHE', '256'),
('TMP_TABLE_SIZE', '16777216'),
('INNODB_DATA_HOME_DIR', ''),
('PERFORMANCE_SCHEMA_MAX_THREAD_INSTANCES', '1000'),
('INNODB_READ_IO_THREADS', '4'),
('MULTI_RANGE_COUNT', '256'),
('INNODB_WRITE_IO_THREADS', '4'),
('SERVER_ID', '0'),
('INNODB_BUFFER_POOL_INSTANCES', '1'),
('SKIP_NETWORKING', 'OFF'),
('INNODB_FORCE_RECOVERY', '0'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('INIT_CONNECT', ''),
('ERROR_COUNT', '0'),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('AUTOCOMMIT', 'ON'),
('SYNC_BINLOG', '0'),
('SSL_CAPATH', ''),
('INNODB_PRINT_ALL_DEADLOCKS', 'OFF'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_OPEN_FILES', '300'),
('GENERAL_LOG', 'OFF'),
('INNODB_FILE_FORMAT_CHECK', 'ON'),
('LAST_INSERT_ID', '0'),
('INNODB_READ_AHEAD_THRESHOLD', '56'),
('HOSTNAME', 'ip-172-31-0-112'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('OLD', 'OFF'),
('KEY_BUFFER_SIZE', '16777216'),
('REPORT_PORT', '3306'),
('HAVE_NDBCLUSTER', 'NO'),
('SQL_LOG_BIN', 'ON'),
('PSEUDO_SLAVE_MODE', 'OFF'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('INNODB_STATS_METHOD', 'nulls_equal'),
('LOG_BIN', 'OFF'),
('INNODB_FAST_SHUTDOWN', '1'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SSL_CA', ''),
('MAX_USER_CONNECTIONS', '20'),
('INNODB_THREAD_CONCURRENCY', '0'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('SLAVE_NET_TIMEOUT', '3600'),
('TABLE_OPEN_CACHE', '400'),
('INNODB_STATS_SAMPLE_PAGES', '8'),
('SQL_BIG_TABLES', 'OFF'),
('LOCAL_INFILE', 'ON'),
('SQL_BUFFER_RESULT', 'OFF'),
('HAVE_RTREE_KEYS', 'YES'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('HAVE_PROFILING', 'YES'),
('LC_MESSAGES_DIR', '/usr/share/mysql/'),
('OLD_ALTER_TABLE', 'OFF'),
('HAVE_INNODB', 'YES'),
('MYISAM_MMAP_SIZE', '18446744073709551615'),
('SQL_MODE', ''),
('PERFORMANCE_SCHEMA_MAX_FILE_HANDLES', '32768'),
('TIMESTAMP', '1458462929'),
('RELAY_LOG_RECOVERY', 'OFF'),
('REPORT_USER', ''),
('MAX_DELAYED_THREADS', '20'),
('HAVE_GEOMETRY', 'YES'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('SLOW_QUERY_LOG', 'OFF'),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('LC_MESSAGES', 'en_US'),
('MAX_RELAY_LOG_SIZE', '0'),
('LOG', 'OFF'),
('INNODB_RANDOM_READ_AHEAD', 'OFF'),
('OPEN_FILES_LIMIT', '1024'),
('HAVE_CSV', 'YES'),
('DATADIR', '/var/lib/mysql/'),
('PORT', '3306'),
('FT_MIN_WORD_LEN', '4'),
('INNODB_CONCURRENCY_TICKETS', '500'),
('VERSION_COMPILE_OS', 'debian-linux-gnu'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('INNODB_FORCE_LOAD_CORRUPTED', 'OFF'),
('SQL_WARNINGS', 'OFF'),
('HAVE_OPENSSL', 'DISABLED'),
('RELAY_LOG', ''),
('MAX_BINLOG_STMT_CACHE_SIZE', '18446744073709547520'),
('PLUGIN_DIR', '/usr/lib/mysql/plugin/'),
('PERFORMANCE_SCHEMA_MAX_FILE_INSTANCES', '10000'),
('LOG_SLOW_QUERIES', 'OFF'),
('INNODB_SPIN_WAIT_DELAY', '6'),
('MAX_TMP_TABLES', '32'),
('INNODB_FILE_FORMAT_MAX', 'Antelope'),
('SQL_LOG_OFF', 'OFF'),
('DEFAULT_STORAGE_ENGINE', 'InnoDB'),
('SLOW_QUERY_LOG_FILE', '/var/lib/mysql/ip-172-31-0-112-slow.log'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('SQL_SLAVE_SKIP_COUNTER', '0'),
('INNODB_OLD_BLOCKS_TIME', '0'),
('SECURE_AUTH', 'OFF'),
('RPL_RECOVERY_RANK', '0'),
('NET_READ_TIMEOUT', '30'),
('WARNING_COUNT', '0'),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on,engine_condition_pushdown=on'),
('MAX_CONNECT_ERRORS', '10'),
('LOCKED_IN_MEMORY', 'OFF'),
('INNODB_FLUSH_METHOD', ''),
('EXTERNAL_USER', ''),
('INNODB_LARGE_PREFIX', 'OFF'),
('INNODB_CHECKSUMS', 'ON'),
('STORAGE_ENGINE', 'InnoDB'),
('SSL_KEY', ''),
('HAVE_SSL', 'DISABLED'),
('MYISAM_USE_MMAP', 'OFF'),
('RAND_SEED2', '0'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('INSERT_ID', '0'),
('LOG_SLAVE_UPDATES', 'OFF'),
('RELAY_LOG_PURGE', 'ON'),
('SYNC_MASTER_INFO', '0'),
('COLLATION_DATABASE', 'latin1_swedish_ci'),
('INNODB_FILE_PER_TABLE', 'OFF'),
('INNODB_LOG_GROUP_HOME_DIR', './'),
('SSL_CERT', ''),
('INNODB_LOG_BUFFER_SIZE', '8388608'),
('SOCKET', '/var/run/mysqld/mysqld.sock'),
('CHARACTER_SET_CLIENT', 'utf8'),
('IDENTITY', '0'),
('INNODB_MAX_PURGE_LAG', '0'),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('MYISAM_MAX_SORT_FILE_SIZE', '9223372036853727232'),
('SLAVE_LOAD_TMPDIR', '/tmp'),
('SLAVE_TYPE_CONVERSIONS', ''),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '8388608'),
('SQL_NOTES', 'ON'),
('INNODB_USE_SYS_MALLOC', 'ON'),
('LICENSE', 'GPL'),
('INNODB_MAX_DIRTY_PAGES_PCT', '75'),
('PERFORMANCE_SCHEMA_MAX_TABLE_INSTANCES', '50000'),
('THREAD_CONCURRENCY', '10'),
('UNIQUE_CHECKS', 'ON'),
('INNODB_OLD_BLOCKS_PCT', '37'),
('HAVE_COMPRESS', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `STATISTICS`;
CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `NON_UNIQUE` bigint(1) NOT NULL DEFAULT '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(64) NOT NULL DEFAULT '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL DEFAULT '0',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLLATION` varchar(1) DEFAULT NULL,
  `CARDINALITY` bigint(21) DEFAULT NULL,
  `SUB_PART` bigint(3) DEFAULT NULL,
  `PACKED` varchar(10) DEFAULT NULL,
  `NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `INDEX_TYPE` varchar(16) NOT NULL DEFAULT '',
  `COMMENT` varchar(16) DEFAULT NULL,
  `INDEX_COMMENT` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`, `INDEX_COMMENT`) VALUES
('def', 'sql6110519', 'MsAirBase', 0, 'sql6110519', 'PRIMARY', 1, 'AirBaseId', 'A', 5, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'MsCategory', 0, 'sql6110519', 'PRIMARY', 1, 'RowId', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'MsCategory', 0, 'sql6110519', 'CategoryCode', 1, 'CategoryCode', 'A', 4, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'MsRegPlane', 0, 'sql6110519', 'PRIMARY', 1, 'RowId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'MsRegPlane', 0, 'sql6110519', 'RegCode', 1, 'RegCode', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'MsStatus', 0, 'sql6110519', 'PRIMARY', 1, 'RowId', 'A', 2, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'MsStatus', 0, 'sql6110519', 'StatusCode', 1, 'StatusCode', 'A', 2, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'MsSystem', 0, 'sql6110519', 'PRIMARY', 1, 'RowId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'MsSystem', 0, 'sql6110519', 'SystemCode', 1, 'SystemCode', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'TxAirCraft', 0, 'sql6110519', 'PRIMARY', 1, 'RegCode', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'TxAirCraft', 0, 'sql6110519', 'RegCode', 1, 'RegCode', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'TxAirCraft', 0, 'sql6110519', 'RowId', 1, 'RowId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'TxAirCraftItem', 0, 'sql6110519', 'PRIMARY', 1, 'RowId', 'A', 0, NULL, NULL, '', 'BTREE', '', ''),
('def', 'sql6110519', 'TxCategory', 0, 'sql6110519', 'PRIMARY', 1, 'RowId', 'A', 0, NULL, NULL, '', 'BTREE', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `TABLES`;
CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `AUTO_INCREMENT` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `TABLE_COLLATION` varchar(32) DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `CREATE_OPTIONS` varchar(255) DEFAULT NULL,
  `TABLE_COMMENT` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
('def', 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 384, 0, 16434816, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=43690', ''),
('def', 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 231, 0, 16704765, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=72628', ''),
('def', 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 195, 0, 16357770, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=86037', ''),
('def', 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=2802', ''),
('def', 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2565, 0, 16757145, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6540', ''),
('def', 'information_schema', 'ENGINES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 490, 0, 16574250, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=34239', ''),
('def', 'information_schema', 'EVENTS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=618', ''),
('def', 'information_schema', 'FILES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2677, 0, 16758020, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6267', ''),
('def', 'information_schema', 'GLOBAL_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
('def', 'information_schema', 'GLOBAL_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
('def', 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4637, 0, 16762755, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3618', ''),
('def', 'information_schema', 'PARAMETERS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=6050', ''),
('def', 'information_schema', 'PARTITIONS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=5579', ''),
('def', 'information_schema', 'PLUGINS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=11328', ''),
('def', 'information_schema', 'PROCESSLIST', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=23899', ''),
('def', 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 308, 0, 16562084, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=54471', ''),
('def', 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4814, 0, 16767162, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3485', ''),
('def', 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=583', ''),
('def', 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3464, 0, 16738048, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4843', ''),
('def', 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2179, 0, 16736899, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7699', ''),
('def', 'information_schema', 'SESSION_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
('def', 'information_schema', 'SESSION_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
('def', 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 5753, 0, 16752736, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2916', ''),
('def', 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 9450, 0, 16764300, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=1775', ''),
('def', 'information_schema', 'TABLESPACES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 6951, 0, 16772763, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2413', ''),
('def', 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2504, 0, 16721712, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6700', ''),
('def', 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2372, 0, 16748692, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7073', ''),
('def', 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=569', ''),
('def', 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 1986, 0, 16726092, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=8447', ''),
('def', 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2016-03-20 08:35:32', '2016-03-20 08:35:32', NULL, 'utf8_general_ci', NULL, 'max_rows=6935', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 6852, 0, 16766844, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2448', ''),
('def', 'information_schema', 'INNODB_TRX', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4534, 0, 16766732, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3700', ''),
('def', 'information_schema', 'INNODB_BUFFER_POOL_STATS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 257, 0, 16332350, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=65280', ''),
('def', 'information_schema', 'INNODB_LOCK_WAITS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 599, 0, 16749238, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=28008', ''),
('def', 'information_schema', 'INNODB_CMPMEM', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 29, 0, 15204352, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=578524', ''),
('def', 'information_schema', 'INNODB_CMP', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 25, 0, 13107200, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=671088', ''),
('def', 'information_schema', 'INNODB_LOCKS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 31244, 0, 16746784, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=536', ''),
('def', 'information_schema', 'INNODB_CMPMEM_RESET', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 29, 0, 15204352, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=578524', ''),
('def', 'information_schema', 'INNODB_CMP_RESET', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 25, 0, 13107200, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=671088', ''),
('def', 'information_schema', 'INNODB_BUFFER_PAGE_LRU', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 6669, 0, 16765866, 0, 0, NULL, '2016-03-20 08:35:32', NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2515', ''),
('def', 'sql6110519', 'MsAirBase', 'BASE TABLE', 'InnoDB', 10, 'Compact', 5, 3276, 16384, 0, 0, 6291456, NULL, '2016-03-20 08:29:05', NULL, NULL, 'utf8_general_ci', NULL, '', ''),
('def', 'sql6110519', 'MsCategory', 'BASE TABLE', 'InnoDB', 10, 'Compact', 4, 4096, 16384, 0, 16384, 6291456, NULL, '2016-03-13 14:38:00', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', 'sql6110519', 'MsRegPlane', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 6291456, NULL, '2016-03-13 14:44:01', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', 'sql6110519', 'MsStatus', 'BASE TABLE', 'InnoDB', 10, 'Compact', 2, 8192, 16384, 0, 16384, 6291456, NULL, '2016-03-13 14:42:44', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', 'sql6110519', 'MsSystem', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 16384, 6291456, NULL, '2016-03-13 14:40:50', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', 'sql6110519', 'TxAirCraft', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 32768, 6291456, NULL, '2016-03-20 08:34:04', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', 'sql6110519', 'TxAirCraftItem', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 6291456, NULL, '2016-03-13 14:57:57', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
('def', 'sql6110519', 'TxCategory', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 6291456, NULL, '2016-03-20 08:31:49', NULL, NULL, 'latin1_swedish_ci', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLESPACES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `TABLESPACES`;
CREATE TEMPORARY TABLE `TABLESPACES` (
  `TABLESPACE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `TABLESPACE_TYPE` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `EXTENT_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `NODEGROUP_ID` bigint(21) unsigned DEFAULT NULL,
  `TABLESPACE_COMMENT` varchar(2048) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `TABLE_CONSTRAINTS`;
CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
('def', 'sql6110519', 'PRIMARY', 'sql6110519', 'MsAirBase', 'PRIMARY KEY'),
('def', 'sql6110519', 'PRIMARY', 'sql6110519', 'MsCategory', 'PRIMARY KEY'),
('def', 'sql6110519', 'CategoryCode', 'sql6110519', 'MsCategory', 'UNIQUE'),
('def', 'sql6110519', 'PRIMARY', 'sql6110519', 'MsRegPlane', 'PRIMARY KEY'),
('def', 'sql6110519', 'RegCode', 'sql6110519', 'MsRegPlane', 'UNIQUE'),
('def', 'sql6110519', 'PRIMARY', 'sql6110519', 'MsStatus', 'PRIMARY KEY'),
('def', 'sql6110519', 'StatusCode', 'sql6110519', 'MsStatus', 'UNIQUE'),
('def', 'sql6110519', 'PRIMARY', 'sql6110519', 'MsSystem', 'PRIMARY KEY'),
('def', 'sql6110519', 'SystemCode', 'sql6110519', 'MsSystem', 'UNIQUE'),
('def', 'sql6110519', 'PRIMARY', 'sql6110519', 'TxAirCraft', 'PRIMARY KEY'),
('def', 'sql6110519', 'RegCode', 'sql6110519', 'TxAirCraft', 'UNIQUE'),
('def', 'sql6110519', 'RowId', 'sql6110519', 'TxAirCraft', 'UNIQUE'),
('def', 'sql6110519', 'PRIMARY', 'sql6110519', 'TxAirCraftItem', 'PRIMARY KEY'),
('def', 'sql6110519', 'PRIMARY', 'sql6110519', 'TxCategory', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `TABLE_PRIVILEGES`;
CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
-- Last update: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `TRIGGERS`;
CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TRIGGER_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(64) NOT NULL DEFAULT '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL DEFAULT '',
  `EVENT_OBJECT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL DEFAULT '',
  `ACTION_ORDER` bigint(4) NOT NULL DEFAULT '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL DEFAULT '',
  `ACTION_TIMING` varchar(6) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL DEFAULT '',
  `CREATED` datetime DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `USER_PRIVILEGES`;
CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''sql6110519''@''%''', 'def', 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
-- Last update: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `VIEWS`;
CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL DEFAULT '',
  `IS_UPDATABLE` varchar(3) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_BUFFER_PAGE`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_BUFFER_PAGE`;
CREATE TEMPORARY TABLE `INNODB_BUFFER_PAGE` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `BLOCK_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_TYPE` varchar(64) DEFAULT NULL,
  `FLUSH_TYPE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FIX_COUNT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `IS_HASHED` varchar(3) DEFAULT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `ACCESS_TIME` bigint(21) unsigned NOT NULL DEFAULT '0',
  `TABLE_NAME` varchar(1024) DEFAULT NULL,
  `INDEX_NAME` varchar(1024) DEFAULT NULL,
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_STATE` varchar(64) DEFAULT NULL,
  `IO_FIX` varchar(64) DEFAULT NULL,
  `IS_OLD` varchar(3) DEFAULT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_TRX`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_TRX`;
CREATE TEMPORARY TABLE `INNODB_TRX` (
  `trx_id` varchar(18) NOT NULL DEFAULT '',
  `trx_state` varchar(13) NOT NULL DEFAULT '',
  `trx_started` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trx_requested_lock_id` varchar(81) DEFAULT NULL,
  `trx_wait_started` datetime DEFAULT NULL,
  `trx_weight` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_mysql_thread_id` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_query` varchar(1024) DEFAULT NULL,
  `trx_operation_state` varchar(64) DEFAULT NULL,
  `trx_tables_in_use` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_tables_locked` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_lock_structs` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_lock_memory_bytes` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_rows_locked` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_rows_modified` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_concurrency_tickets` bigint(21) unsigned NOT NULL DEFAULT '0',
  `trx_isolation_level` varchar(16) NOT NULL DEFAULT '',
  `trx_unique_checks` int(1) NOT NULL DEFAULT '0',
  `trx_foreign_key_checks` int(1) NOT NULL DEFAULT '0',
  `trx_last_foreign_key_error` varchar(256) DEFAULT NULL,
  `trx_adaptive_hash_latched` int(1) NOT NULL DEFAULT '0',
  `trx_adaptive_hash_timeout` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_BUFFER_POOL_STATS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_BUFFER_POOL_STATS`;
CREATE TEMPORARY TABLE `INNODB_BUFFER_POOL_STATS` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `POOL_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FREE_BUFFERS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLD_DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MODIFIED_DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_DECOMPRESS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_READS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_FLUSH_LRU` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PENDING_FLUSH_LIST` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_MADE_YOUNG` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_NOT_MADE_YOUNG` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_MADE_YOUNG_RATE` double NOT NULL DEFAULT '0',
  `PAGES_MADE_NOT_YOUNG_RATE` double NOT NULL DEFAULT '0',
  `NUMBER_PAGES_READ` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_CREATED` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_WRITTEN` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGES_READ_RATE` double NOT NULL DEFAULT '0',
  `PAGES_CREATE_RATE` double NOT NULL DEFAULT '0',
  `PAGES_WRITTEN_RATE` double NOT NULL DEFAULT '0',
  `NUMBER_PAGES_GET` bigint(21) unsigned NOT NULL DEFAULT '0',
  `HIT_RATE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NOT_YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_PAGES_READ_AHEAD` bigint(21) unsigned NOT NULL DEFAULT '0',
  `NUMBER_READ_AHEAD_EVICTED` bigint(21) unsigned NOT NULL DEFAULT '0',
  `READ_AHEAD_RATE` double NOT NULL DEFAULT '0',
  `READ_AHEAD_EVICTED_RATE` double NOT NULL DEFAULT '0',
  `LRU_IO_TOTAL` bigint(21) unsigned NOT NULL DEFAULT '0',
  `LRU_IO_CURRENT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `UNCOMPRESS_TOTAL` bigint(21) unsigned NOT NULL DEFAULT '0',
  `UNCOMPRESS_CURRENT` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_LOCK_WAITS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_LOCK_WAITS`;
CREATE TEMPORARY TABLE `INNODB_LOCK_WAITS` (
  `requesting_trx_id` varchar(18) NOT NULL DEFAULT '',
  `requested_lock_id` varchar(81) NOT NULL DEFAULT '',
  `blocking_trx_id` varchar(18) NOT NULL DEFAULT '',
  `blocking_lock_id` varchar(81) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_CMPMEM`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_CMPMEM`;
CREATE TEMPORARY TABLE `INNODB_CMPMEM` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `buffer_pool_instance` int(11) NOT NULL DEFAULT '0',
  `pages_used` int(11) NOT NULL DEFAULT '0',
  `pages_free` int(11) NOT NULL DEFAULT '0',
  `relocation_ops` bigint(21) NOT NULL DEFAULT '0',
  `relocation_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_CMP`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_CMP`;
CREATE TEMPORARY TABLE `INNODB_CMP` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `compress_ops` int(11) NOT NULL DEFAULT '0',
  `compress_ops_ok` int(11) NOT NULL DEFAULT '0',
  `compress_time` int(11) NOT NULL DEFAULT '0',
  `uncompress_ops` int(11) NOT NULL DEFAULT '0',
  `uncompress_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_LOCKS`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_LOCKS`;
CREATE TEMPORARY TABLE `INNODB_LOCKS` (
  `lock_id` varchar(81) NOT NULL DEFAULT '',
  `lock_trx_id` varchar(18) NOT NULL DEFAULT '',
  `lock_mode` varchar(32) NOT NULL DEFAULT '',
  `lock_type` varchar(32) NOT NULL DEFAULT '',
  `lock_table` varchar(1024) NOT NULL DEFAULT '',
  `lock_index` varchar(1024) DEFAULT NULL,
  `lock_space` bigint(21) unsigned DEFAULT NULL,
  `lock_page` bigint(21) unsigned DEFAULT NULL,
  `lock_rec` bigint(21) unsigned DEFAULT NULL,
  `lock_data` varchar(8192) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_CMPMEM_RESET`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_CMPMEM_RESET`;
CREATE TEMPORARY TABLE `INNODB_CMPMEM_RESET` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `buffer_pool_instance` int(11) NOT NULL DEFAULT '0',
  `pages_used` int(11) NOT NULL DEFAULT '0',
  `pages_free` int(11) NOT NULL DEFAULT '0',
  `relocation_ops` bigint(21) NOT NULL DEFAULT '0',
  `relocation_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_CMP_RESET`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_CMP_RESET`;
CREATE TEMPORARY TABLE `INNODB_CMP_RESET` (
  `page_size` int(5) NOT NULL DEFAULT '0',
  `compress_ops` int(11) NOT NULL DEFAULT '0',
  `compress_ops_ok` int(11) NOT NULL DEFAULT '0',
  `compress_time` int(11) NOT NULL DEFAULT '0',
  `uncompress_ops` int(11) NOT NULL DEFAULT '0',
  `uncompress_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `INNODB_BUFFER_PAGE_LRU`
--
-- Creation: Mar 20, 2016 at 08:35 AM
--

DROP TABLE IF EXISTS `INNODB_BUFFER_PAGE_LRU`;
CREATE TEMPORARY TABLE `INNODB_BUFFER_PAGE_LRU` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT '0',
  `LRU_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT '0',
  `PAGE_TYPE` varchar(64) DEFAULT NULL,
  `FLUSH_TYPE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `FIX_COUNT` bigint(21) unsigned NOT NULL DEFAULT '0',
  `IS_HASHED` varchar(3) DEFAULT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `ACCESS_TIME` bigint(21) unsigned NOT NULL DEFAULT '0',
  `TABLE_NAME` varchar(1024) DEFAULT NULL,
  `INDEX_NAME` varchar(1024) DEFAULT NULL,
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COMPRESSED` varchar(3) DEFAULT NULL,
  `IO_FIX` varchar(64) DEFAULT NULL,
  `IS_OLD` varchar(3) DEFAULT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- Error reading data: (#1227 - Access denied; you need (at least one of) the PROCESS privilege(s) for this operation)
--
-- Database: `sql6110519`
--
DROP DATABASE `sql6110519`;
CREATE DATABASE `sql6110519` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql6110519`;

-- --------------------------------------------------------

--
-- Table structure for table `MsAirBase`
--
-- Creation: Mar 20, 2016 at 08:29 AM
--

DROP TABLE IF EXISTS `MsAirBase`;
CREATE TABLE IF NOT EXISTS `MsAirBase` (
  `RowId` text NOT NULL,
  `AirBaseId` varchar(50) NOT NULL,
  `BaseName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  PRIMARY KEY (`AirBaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MsAirBase`
--

INSERT INTO `MsAirBase` (`RowId`, `AirBaseId`, `BaseName`, `latitude`, `Longitude`) VALUES
('d990f4bc-c93a-4a75-bd9c-15e2526d3a93', 'CGK', 'Soekarno Hatta AirPort', '-6.1274979', '106.5913319'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a94', 'DPS', 'Ngurah Rai AirPort', '-8.7467119', '115.1645983'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a93', 'PDG', 'Minangkabau AirPort', '-0.8709233', '100.3033497'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a96', 'PKY', 'Tjilik Riwut AirPort', '-2.2266616', '113.9419783'),
('d990f4bc-c93a-4a75-bd9c-15e2526d3a97', 'UPG', 'Sultan Hasanuddin AirPort', '-5.0777417', '119.5472957');

-- --------------------------------------------------------

--
-- Table structure for table `MsCategory`
--
-- Creation: Mar 13, 2016 at 02:38 PM
--

DROP TABLE IF EXISTS `MsCategory`;
CREATE TABLE IF NOT EXISTS `MsCategory` (
  `RowId` varchar(255) NOT NULL,
  `CategoryCode` varchar(2) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`RowId`),
  UNIQUE KEY `CategoryCode` (`CategoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MsCategory`
--

INSERT INTO `MsCategory` (`RowId`, `CategoryCode`, `Description`) VALUES
('8B9B1831-E745-499C-AE81-0BD40AD369D2', 'CD', 'D'),
('8B9B1831-E745-499C-AE81-0BD40AD369D7', 'CA', 'A'),
('8B9B1831-E745-499C-AE81-0BD40AD369D8', 'CB', 'B'),
('8B9B1831-E745-499C-AE81-0BD40AD369D9', 'CC', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `MsRegPlane`
--
-- Creation: Mar 13, 2016 at 02:44 PM
--

DROP TABLE IF EXISTS `MsRegPlane`;
CREATE TABLE IF NOT EXISTS `MsRegPlane` (
  `RowId` varchar(255) NOT NULL,
  `RegCode` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`RowId`),
  UNIQUE KEY `RegCode` (`RegCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MsStatus`
--
-- Creation: Mar 13, 2016 at 02:42 PM
--

DROP TABLE IF EXISTS `MsStatus`;
CREATE TABLE IF NOT EXISTS `MsStatus` (
  `RowId` varchar(255) NOT NULL,
  `StatusCode` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`RowId`),
  UNIQUE KEY `StatusCode` (`StatusCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MsStatus`
--

INSERT INTO `MsStatus` (`RowId`, `StatusCode`, `Description`) VALUES
('199e3f18-8cf4-4281-82e1-64f655bedc77', 'GO', 'GO'),
('199e3f18-8cf4-4281-82e1-64f655bedc78', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `MsSystem`
--
-- Creation: Mar 13, 2016 at 02:40 PM
--

DROP TABLE IF EXISTS `MsSystem`;
CREATE TABLE IF NOT EXISTS `MsSystem` (
  `RowId` varchar(255) NOT NULL,
  `SystemCode` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`RowId`),
  UNIQUE KEY `SystemCode` (`SystemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TxAirCraft`
--
-- Creation: Mar 20, 2016 at 08:34 AM
--

DROP TABLE IF EXISTS `TxAirCraft`;
CREATE TABLE IF NOT EXISTS `TxAirCraft` (
  `RowId` varchar(255) NOT NULL,
  `Enginner` varchar(50) NOT NULL,
  `Plane` varchar(20) NOT NULL,
  `RegCode` varchar(20) NOT NULL,
  `SystemCode` varchar(20) NOT NULL,
  `CategoryCode` varchar(20) NOT NULL,
  `StatusCode` varchar(20) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `AirBaseId` varchar(50) NOT NULL,
  `Remark` text NOT NULL,
  `ModifiedAt` datetime NOT NULL,
  PRIMARY KEY (`RegCode`),
  UNIQUE KEY `RegCode` (`RegCode`),
  UNIQUE KEY `RowId` (`RowId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TxAirCraftItem`
--
-- Creation: Mar 13, 2016 at 02:57 PM
--

DROP TABLE IF EXISTS `TxAirCraftItem`;
CREATE TABLE IF NOT EXISTS `TxAirCraftItem` (
  `RowId` varchar(255) NOT NULL,
  `AirCraftId` varchar(255) NOT NULL,
  `SystemCode` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`RowId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TxCategory`
--
-- Creation: Mar 20, 2016 at 08:31 AM
--

DROP TABLE IF EXISTS `TxCategory`;
CREATE TABLE IF NOT EXISTS `TxCategory` (
  `RowId` varchar(255) NOT NULL,
  `AirCraftId` varchar(255) NOT NULL,
  `CategoryCode` varchar(20) NOT NULL,
  PRIMARY KEY (`RowId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
