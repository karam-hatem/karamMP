-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 01:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karam_masterpiece`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `price`, `image`, `status`, `section_id`, `created_at`, `updated_at`) VALUES
(32, 'ساندويش شاورما دجاج', '4 شرائح خبز تورتيلا\r\n500غ دجاج شاورما إنتاج\r\n4 ملاعق صغيرة مايونيز\r\nكوب 1 من أوراق الخس المقطع\r\nبصلة حمراء مقطعة إلى شرائح رقيقة\r\nحبة طماطم مقطعة إلى شرائح رقيقة\r\n4 حبات مخلل خيار مقطعة طوليا إلى شرائح\r\nبقدونس طازج\r\nأوراق نعنع طازجة', 2.80, 'storage/images/items/kiwKYVrvf2oWwntaIA85LuAS5hQ1zBiYUhKsP2Me.jpg', 1, 36, '2023-04-03 10:06:51', '2023-04-03 10:06:51'),
(33, 'كلوب ساندويتش بالدجاج', '2 ملعقة طعام زيت زيتون\r\n4 شرائح خبز توست محمص\r\n2 صدر دجاج\r\n4 شرائح ديك حبش مدخن\r\n4 شرائح بندورة\r\n4 أوراق خس الرومين\r\n4 بيضات مسلوقة جيداً مقطعة إلى شرائح\r\n3 ملاعق طعام مايونيز حسب الرغبة\r\nفلفل أبيض حسب الرغبة\r\nملح حسب الرغبة', 3.00, 'storage/images/items/5nybLk7gDNl7KdU5gNDJLSgBtLahzHd3NqqO5ULe.jpg', 1, 36, '2023-04-03 10:09:43', '2023-04-03 10:09:43'),
(34, 'ساندويش تونة بالمايونيز', 'علبة تونة\r\n3 ملعقة طعام مايونيز\r\n2 ملعقة طعام ساق كرفس مفروم\r\n1 ملعقة صغيرة صلصة ورسيستيرشاير\r\n1 ملعقة صغيرة صلصة التاباسكو\r\n1 ملعقة طعام عصير ليمون\r\n1 بصلة خضراء مفرومة ناعماً\r\n2 خبز ساندويش\r\nخس مشكل', 2.50, 'storage/images/items/HkpUeqp5pYu6eLJk0Xqe7VImWJ2SdesuCTwvqYdB.jpg', 1, 36, '2023-04-03 10:11:18', '2023-04-03 10:11:18'),
(35, 'ساندويش الستيك مع البصل المحلّى', '1 ستيك لحم بقر\r\n1 ملعقة طعام زيت زيتون سيرجيلا بكر ممتاز + كمية إضافية للرش\r\n1 رغيف صغير خبز شياباتا\r\nكمشة ورق جرجير\r\nملح وفلفل أسود حسب الرغبة', 3.00, 'storage/images/items/K3vW8PHjO3l9mmCCIQfZrlmAwE071lwEVg0zklCc.jpg', 1, 36, '2023-04-03 10:13:22', '2023-04-03 10:13:22'),
(36, 'بانيني الدجاج بخبز الفوكاشيا', '2 قطعة خبز فوكاشيا بإكليل الجبل مشرحة إلى نصفين (انظري الوصفة)\r\n2 ملعقة طعام زيت زيتون سيرجيلا بكر ممتاز\r\n1 فص ثوم مهروس\r\n¼ ملعقة صغيرة فلفل أبيض\r\n¼ ملعقة صغيرة ملح\r\n½ ملعقة صغيرة إكليل الجبل (روزماري) طازج مفروم ناعماً\r\n1 صدر دجاج\r\n1 حبة بندورة، مفرومة تاعماً\r\n½ بصلة حمراء صغيرة مفرومة ناعماً\r\nملء اليد من أوراق الجرجير', 4.00, 'storage/images/items/JJX8A5zXB1bjM6oTIdt1glr2wJnDnB5uIZH1SJRU.jpg', 1, 36, '2023-04-03 10:15:05', '2023-04-03 10:15:05'),
(37, 'سلطة المعكرونة الايطالية', '200 غ معكرونة ايطالية حلزونية مسلوقة\r\n50 غ (⅓ كوب) ذرة حب\r\n50 غ زيتون أسود شرائح\r\n1 حبة فليفلة حمراء مقطعة الى مربعات بقياس 1سم\r\n1 حبة فليفلة خضراء مقطعة الى مربعات بقياس 1سم\r\nعصير ليمونة واحدة\r\n4 ملاعق طعام زيت زيتون السوسن\r\n1 ملعقة طعام أوريغانو معفليفلجاف\r\nملح حسب الرغبة', 3.00, 'storage/images/items/XzcfYYunsHS2GXXnQf8iY6M47J5T743TOEGC3huw.jpg', 1, 39, '2023-04-03 10:18:28', '2023-04-03 10:18:28'),
(38, 'سلطة فتوش الباذنجان', '2 حبة باذنجان مقشرة ومقطعىة الى مربعات بقياس 1سم ومقلية\r\n2 حبة فليفلة خضراء مقطعة الى مربعات بقياس 1سم\r\n1 حبة طماطم مقطعة الى مربعات الى مربعات بقياس 1 سم\r\n½ رغيف خبز لبناني مقطع الى مربعات بقياس 1 سم\r\n2 ملعقة طعام بقدونس مفروم بشكل ناعم\r\n20 عرق بقلة\r\n2 فص ثوم مهروس\r\n3 ملاعق طعام خل التفاح\r\n4 ملاعق طعام زيت زيتون السوسن\r\nرشة فلفل أبيض\r\nملح حسب الرغبة', 3.50, 'storage/images/items/d41ZHZyCi9xDQtFGbzbJY4vhZdECEP4zqGM54dRC.jpg', 1, 39, '2023-04-03 10:19:27', '2023-04-03 10:19:27'),
(39, 'سلطة الحمص و الزيتون بصلصة الليمون', '1 علبة حمص حب، مغسول ومصفى جيداً\r\n2 حبة بندورة منزوعة البذور والعصارة ومفرومة خشناً\r\n1 بصلة خضراء مفرومة بشكل ناعم\r\n150 غ زيتون أسود كامل أو منزوع البذور\r\n2 ملعقة طعام عصير ليمون\r\n3 ملاعق طعام زيت زيتون بكر ممتاز\r\n¼ ملعقة صغيرة كمون\r\n¼ ملعقة صغيرة فليفلة حمراء ناعمة\r\nفلفل أبيض حسب الرغبة\r\nملح حسب الرغبة\r\nكمشة حبق طازج مفروم بشكل خشن\r\nكمشة بقدونس طازج مفروم ناعماً', 4.50, 'storage/images/items/FFsgSLwO3LCQwG2c5n39hHIwR9fkpXuMhcuY43bS.jpg', 1, 39, '2023-04-03 10:20:46', '2023-04-03 10:20:46'),
(40, 'سلطة المعكرونة بالدجاج والبندورة المجففة بصلصة العسل', '400 غ معكرونة بينه\r\n3 صدور دجاج\r\n20 حبة بندورة كرزية مقطعة إلى أنصاف\r\n12 حبة طماطم مجففة مفرومة خشناً\r\nباقة حبق طازجمفروم خشناً\r\n1 ملعقة طعام عسل\r\n1 ملعقة طعام خل البلسمي\r\n9 ملعقة طعام زيت زيتون + 2 ملعقة طعام للطهو\r\n3 فص ثوم\r\nملح وفلفل حسب الرغبة', 4.50, 'storage/images/items/ZqRQuvPWLWSGqAt625NoGf5J3SKWaRyLjDuupTBv.jpg', 1, 39, '2023-04-03 10:22:08', '2023-04-03 10:22:08'),
(41, 'سلطة البروكلي', '2 بروكلي مقطع إلى زهيرات\r\n1 كوب مرتديلا مقطعة إلى مكعبات\r\n3 ملعقة طعام زيت زيتون سيرجيلا بكر ممتاز\r\n3 بندورة منزوعة البذور و مقطعة إلى انصاف ثم إلى شرائح رقيقة\r\n1 جرزة صغيرة ثوم معمر طازج مفروم ناعماً', 3.50, 'storage/images/items/e7YvQKQWikSkFNl3QKYK18H7ScWnH4c2n5sNIdEY.jpg', 1, 39, '2023-04-03 10:23:47', '2023-04-03 10:23:47'),
(42, 'سلطة سيزر', 'صدر دجاج (وزن 200غ) مشرح الى نصفين عرضيا\r\n2 ملعقة طعام زيت نباتي\r\nخسة رومين مفرومة خشنا\r\n2 قطعة خبز توست طري مقطع الى مربعات ومحمص\r\n4 ملاعق طعام جبنة بارميزان مبشورة\r\nشرائح برتقال للزينة', 4.50, 'storage/images/items/pwyP3ZCtKD7QubLkPWBgeTFbwOfsJaxPSsTPEKTY.jpg', 1, 39, '2023-04-03 11:07:20', '2023-04-03 11:07:20'),
(43, 'سلطة الفطر', '2 ملعقة طعام زيت زيتون\r\n1 ملعقة طعام زبدة\r\n400 غ فطر طازج مقطع شرائح رقيقة\r\n2 بصلة صغيرتان مفرومتان ناعماً\r\n½ حزمة بقدونس مفرومة ناعماً\r\n½ ملعقة طعام أوريغانو\r\nملح وفلفل حسب الرغبة\r\nفليفلة حمراء ناعمة حارة (بابريكا) حسب الرغبة', 5.00, 'storage/images/items/fjyTzwmAGzOujGRE3WvzKK02HROlSVWYAJn2VpTH.jpg', 1, 39, '2023-04-03 11:59:54', '2023-04-03 11:59:54'),
(44, 'بيتزا الدجاج', '2 صدر دجاج، مقطعين الى مربعات\r\n500 غ بندورة مبشورة\r\n2 قرن فليفلة خضراء مقطعان الى دوائر\r\nفص ثوم مقطعة الى شرائح\r\n6 ورقة حبق طازج', 5.00, 'storage/images/items/dhPaUngBSGBpe2T6ARUYXweK4xndbGVoR76eG223.jpg', 1, 38, '2023-04-03 12:04:23', '2023-04-03 12:04:23'),
(45, 'بيتزا الجرجير و الكبر', '8 ملعقة طعام صلصة البندورة\r\n20 حبة بندورة كرزية مقطعة إلى نصفين\r\n2 كمشة حبق طازج مفروم خشناً\r\n2 ملعقة طعام براعم الكبر الخضراء مغسول ومصفى\r\n300 غ جبنة موتزريلا مقطعة إلى قطع\r\n2 ملعقة طعام جبنة البارميزان مبروشة\r\nزيت زيتون\r\n2 كمشة ورق جرجير', 5.00, 'storage/images/items/NYNWImuwwOn4lXXk51FrDlHdTeQHAOI5f2FoxMca.jpg', 1, 38, '2023-04-03 12:06:00', '2023-04-03 12:06:00'),
(46, 'بيتزا هوت دوغ', '220 غ (2 كوب) جبنة موزاريلا مبشورة\r\n2 ملعقة طعام زيت زيتون\r\n600 غ هوت دوغ مقطع الى شرائح\r\n1 ملعقة صغيرة أوريغانو', 5.00, 'storage/images/items/uaFznHYSc7G7tYhgaEQsb0VZpkyrzh445nTosnUu.jpg', 1, 38, '2023-04-03 12:07:18', '2023-04-03 12:07:18'),
(47, 'بيتزا الروبيان', '5 ملعقة طعام زيت زيتون\r\n1 ملعقة صغيرة أوريغانو\r\n800غ روبيات\r\n½ لتر ماء\r\nقطعة زنجبيل\r\n4 حبات هال\r\n3 أوراق غار\r\n½ ليمونة مقطعة الى شرائح\r\n1 ½ ملعقة صغيرة ملح\r\nرشة بابريكا\r\nرشة كزبرة يابسة\r\nرشة زنجبيل ناعم\r\nرشة فلفل أبيض', 5.00, 'storage/images/items/oJUbgmP7zj6JCQTcsvjReyXhrw0Kquxn84H2bISO.jpg', 1, 38, '2023-04-03 12:09:09', '2023-04-03 12:09:09'),
(48, 'عصير البطيخ والفراولة', '200 غ فريز منزوع المركز الأبيض\r\n200 غ بطيخ مقطع إلى مكعبات\r\n1 ملعقة طعام نعناع طازج مفروم\r\n3-2 مكعبات ثلج', 3.50, 'storage/images/items/xmeMNcwWEeIwyPFzcSApK1uE93VDFM2w3ysnz6zj.jpg', 1, 37, '2023-04-03 12:11:09', '2023-04-03 12:11:09'),
(49, 'عصير الاناناس والموز', '4 مكعبات ثلج\r\n1 قرن موز\r\n125 مل (1 كوب) عصير الأناناس\r\n60 مل (1 كوب)  عصير الليمون الأخضر', 3.50, 'storage/images/items/ALhg3djRbERQC9teYTCq2ktAgtbGR2LYRZ81NuFu.jpg', 1, 37, '2023-04-03 12:12:00', '2023-04-03 12:12:00'),
(50, 'عصير الليمون', '250 مل (1 كوب) عصير الليمون الطازج\r\n1 كوب مليء بالثلج المكسر\r\n1 ل (4 كوب) ماء\r\n150-120 غ (⅔–¾ كوب) سكر كاستر أو حسب الرغبة\r\nنعنع للزينة\r\nمكعبات ثلج للتقديم', 3.50, 'storage/images/items/Q89opJ7xFT1EuI2Il4hRsg6SUjwXEgIpf7F2cLrD.jpg', 1, 37, '2023-04-03 12:13:04', '2023-04-03 12:13:04'),
(51, 'لاسي الكيوي', '2 حبة كيوي،مقشرتان ومقطعتان مكعبات صغيرة.\r\n160 مل (⅔ كوب) لبن رائب مصفى\r\nملء كأس من مكعبات ثلج\r\n2 ملعقة طعام من السكر (أو العسل', 4.00, 'storage/images/items/tUUIKd2UIYJP7nCOClZxTM6UPwk9id0K5QQ1PcMF.jpg', 1, 37, '2023-04-03 12:15:10', '2023-04-03 12:15:10'),
(52, 'حليب اللوز والفستق', 'ل (4 كوب) حليب كامل الدسم\r\n200 مل (¾ كوب) حليب مكثف محلى\r\n30 حبة لوز مقشر\r\n6 ملاعق طعام فستق غير مملح + 1ملعقة طعام للزينة\r\n½1 ملعقة صغيرة هال مطحون\r\n2 ملعقة طعام ماء الورد (اختياري)\r\n12 مكعب ثلج', 3.50, 'storage/images/items/LvEWUp0qIHziFVrNtHS9DTSmuyo6L2pQ83UrzVDk.jpg', 1, 37, '2023-04-03 12:17:28', '2023-04-03 12:17:28'),
(54, 'KALE & QUINOA SALAD', 'خليط من الكيل، البطاطا الحلوة، الكوسا المشوية والكينوا، يقدم مع صلصة اللبن بالليمون وقطع جبنة الفيتا', 7.00, 'storage/images/items/smJZtxBtaYJ7NcNx2UKHl0K97ylSxEYnzbmdZasL.webp', 1, 40, '2023-04-04 18:59:36', '2023-04-04 18:59:36'),
(55, 'POMEGRANATE TABOULEH', 'بقدونس، كينوا، بندورة، بصل أخضر، نعنع مع صوص الليمون والزنجبيل', 5.50, 'storage/images/items/3YBUVawDCSzn5iBoDKbUA73pN4dQ4CfqWG1EdJck.webp', 1, 40, '2023-04-04 19:15:01', '2023-04-04 19:15:01'),
(56, 'Caesar Salad', 'خس مشكل، خبز محمص ورقائق الباذنجان مع سيزر صوص', 5.50, 'storage/images/items/ATKstub54qjYOnzGtpWzZMSzULXE2gcIslue2pCN.webp', 1, 40, '2023-04-04 19:19:16', '2023-04-04 19:19:16'),
(57, 'Fattoush', 'خس, بندورة, خيار, ملفوف, نعنع, بصل أخضر, فجل مقدمة مع صوص الليمون والسماق مع خبز مقرمش ودبس الرمان', 5.00, 'storage/images/items/tIzYcZTmBUQ3ICuQgFVkSBp1wM2yfoCPdVgsxGzH.webp', 1, 40, '2023-04-04 19:21:24', '2023-04-04 19:21:24'),
(58, 'ORIENTAL PANZANELLA', 'خس مشكل, بندورة متبلة, زيتون, خبز محمص, زعتر بري, وحلوم', 6.50, 'storage/images/items/ZdA4g3giPXyWg8agOdRyaXp2TgzwzUKoHLNvoR7H.webp', 1, 40, '2023-04-04 19:23:27', '2023-04-04 19:23:27'),
(59, 'Lentil Salad', 'خليط عدس, شمندر, جزر, بقدونس, و بصل مع صوص الليمون مع البهارات الشرقية, يقدم  مع صلصة الطحينية والعسل على الوجه', 6.50, 'storage/images/items/C9k64gfyk0IAGnqT8tHJ5gs6atGe4AUNXVWe0QR8.webp', 1, 40, '2023-04-04 19:24:58', '2023-04-04 19:24:58'),
(60, 'STEAK SANDWICH', 'ستيك مشوي متبل مع الفطر وصلصة فيردي وصوص الفستق يقدم مع خبز الشوفان المصنوع منزلياً\r\nتقدم مع سلطة جانبية أو بطاطا مقلية+', 9.00, 'storage/images/items/7rDCLMn0vFojFGL1FTfNiDy9uKRRm7VDDWTYnxqf.webp', 1, 41, '2023-04-04 19:51:03', '2023-04-04 19:51:03'),
(61, 'Classic Burger', 'جبنة شيدر ذائبة، خس مقرمش ، طماطم ، خيار مخلل وصلصة أصلية تقدم على خبز طري\r\n+تقدم مع سلطة جانبية أو بطاطا مقلية', 7.50, 'storage/images/items/bql3Vq2RKQ83Vq9HBIpGcDQSdXu40dTzSOQBnLOk.webp', 1, 41, '2023-04-04 20:00:37', '2023-04-04 20:00:37'),
(62, 'Crispy Fried Chicken', 'صدر دجاج مقرمش يقدم مع جبنة شيدر ذائبة, خس مقرمش, طماطم, خيار مخلل, صلصة الخردل تقدم على خبز طري', 8.50, 'storage/images/items/0ZIv3AzTqwy5Gu3IheOvi2lD43iPitpCwVRzhfWN.jpg', 1, 41, '2023-04-04 20:02:26', '2023-04-04 20:02:26'),
(63, 'GRILLED SALMON SANDWICH', 'سمك السالمون المتبل، خضار مقطعة، فلفل مخلل وفجل مقدم مع صلصة الليمون والكمون في خبز الشوفان المصنوع منزلياً\r\n+تقدم مع سلطة جانبية أو بطاطا مقلية', 7.50, 'storage/images/items/zTcbwOc9jS2Paofb2Fc51Bi3Ltjsv0IIV2BmIoxj.webp', 1, 41, '2023-04-04 20:04:54', '2023-04-04 20:04:54'),
(64, 'Chicken Caesar', 'خس مشكل على خبز الشباتا المنزلي مع ورقائق الباذنجان\r\nالدجاج المتبل مع الخس ورقائق البذنجان', 7.50, 'storage/images/items/fuU37NxPYNYu92g9P82sMlrGuOERrLYW5iPcMFXH.webp', 1, 41, '2023-04-04 20:06:39', '2023-04-04 20:06:39'),
(65, 'PENNE AL PESTO', 'معكرونة بيني مع بيستو السبانخ والبندورة الكرزية مقدمة مع الجوز الأمريكي وجبنة بيكورينو', 7.00, 'storage/images/items/YZm1utynJJLjWvyrtty8sWfUp5hO6XsrBQuHy5AI.webp', 1, 42, '2023-04-04 20:09:28', '2023-04-04 20:09:28'),
(66, 'POMODORO PASTA', 'معكرونة بيني مع صوص البندورة منزلية الصنع مع الريحان وجبنة البارميزان والجوز الأمريكي', 6.50, 'storage/images/items/cRezYpjaCYLB4Cba3Gmq0xxGitIgDsxW6dJryPnS.webp', 1, 42, '2023-04-04 20:10:49', '2023-04-04 20:10:49'),
(67, 'TAGLIATELLE CON BESCIAMELLA', 'معكرونة تالياتيلي مع صوص الميرمية الكريمية والفطر تقدم مع البندق وجبنة البارميزان', 6.50, 'storage/images/items/gfUmQzlDbSsu8SeDoALXiSIZldvbgLmeSRqE1r2N.webp', 1, 42, '2023-04-04 20:16:15', '2023-04-04 20:16:15'),
(68, 'MARGHERITA', 'صوص البندورة والريحان مع جبنة الموزاريلا وأوراق الريحان والزعتر', 8.00, 'storage/images/items/UOtAlZgSmyiKXcTvsyFSDf92OT4yCpgETp2E93r8.webp', 1, 43, '2023-04-04 20:58:36', '2023-04-04 20:58:36'),
(69, 'PEPPERONI', 'صلصة البندورة والريحان تقدم مع جبنة الموزوريلا، شرائح البيبيروني المكرملة وأوراق الريحان', 7.00, 'storage/images/items/otZ6cuevS3bGcnOSaFSKeV7t6hyBCGftXenwiRCD.webp', 1, 43, '2023-04-04 20:59:30', '2023-04-04 20:59:30'),
(70, 'Lahm bi Ajeen', 'لحمة مفرومة بالبصل والبندوره بالعجين مع دبس الرمان و صنوبر\r\nتقدم مع لبنة بالشطة+', 5.50, 'storage/images/items/oGlpHkFVOaCVABCbxKqqWx6up4JmrzDnq6IJiKlx.webp', 1, 43, '2023-04-04 21:00:24', '2023-04-04 21:00:24'),
(71, 'CHEESE MAN\'OUSHEH', 'منقوشة جبنة بيضاء وجبنة الموزريلا، مع السمسم والريحان والطماطم الكرزي', 3.50, 'storage/images/items/g4YSI0aWIrLWKeon3Gf0BUJp5GauG8BxbS6norIq.webp', 1, 43, '2023-04-04 21:01:56', '2023-04-04 21:01:56'),
(72, 'ZAATAR & POMEGRANATE MAN\'OUSHEH', 'منقوشة زعتر مشكل مع دبس الرمان', 3.50, 'storage/images/items/zo3c5KweAybQ3yGifH9Ib0sQrFxmEsI7GUTMatI4.webp', 1, 43, '2023-04-04 21:02:43', '2023-04-04 21:02:43'),
(73, 'BLACK TEA', 'green and oolong teas, black tea comes from the Camellia sinensis plant. \r\nIts darker hue and stronger taste result from the greater level of oxidation it undergoes during processing.', 1.50, 'storage/images/items/HaWjbMuvjPNNNcuWDR95ldbfOYFf1mslEcycx8ME.jpg', 1, 44, '2023-04-04 21:20:34', '2023-04-04 21:20:34'),
(74, 'GREEN TEA', 'green tea comes from the plant Camellia sinensis. Green tea\'s delightfully delicate flavor is due to its minimal oxidation. It is processed to take a variety of forms, from finely ground powder to long, curling leaves.', 1.50, 'storage/images/items/J6D28XtHK3wG7jcHnSKKdHB2m9AsWBSW0XSTzz6I.jpg', 1, 44, '2023-04-04 21:24:13', '2023-04-04 21:24:13'),
(75, 'TEA LATTE', 'A delicious blend of freshly pulled shots of concentrated tea leaves combined with steamed milk and our French Deluxe™ vanilla powder', 1.50, 'storage/images/items/JWLuZyzCgsUBuW535d4uR2UrUFCUIPEmRGUXEwyO.jpg', 1, 44, '2023-04-04 21:28:25', '2023-04-04 21:28:25'),
(76, 'ICED TEA LATTE', 'A delicious blend of freshly pulled shots of concentrated tea leaves combined with our French Deluxe Vanilla powder over ice.', 2.00, 'storage/images/items/G7P8i61ZmqQOM1JikjRY2iYwkG5OMc00EiEjW30M.jpg', 1, 44, '2023-04-04 21:31:12', '2023-04-04 21:31:12'),
(77, 'COLD BREW TEAS', 'Steeped for 5 hours mixed with fruit flavors. Tea perfected by time.', 2.00, 'storage/images/items/6NjhHWeMu20m3xfeKx6o5NXrVhe0VgIMVCUjEBLx.jpg', 1, 44, '2023-04-04 21:33:59', '2023-04-04 21:33:59'),
(78, 'HIBISCUS BERRY SUNRISE', 'Iced Swedish Berries infused with hibiscus flowers layered over lemonade. It\'s a refreshing, caffeine-free beverage that will delight the tastebuds.', 2.00, 'storage/images/items/7SQVIbVktx5eKQf2PTe3S4jwLxe5jYpGva4gYcm5.jpg', 1, 44, '2023-04-04 21:39:20', '2023-04-04 21:39:20'),
(79, 'ICED COFFEE', 'Our specially brewed coffee served over ice for a refreshing and bold coffee taste.', 2.50, 'storage/images/items/KyoDUZELy685SSedY9xrhCVkkbnxgZ9Esi1aPtrc.jpg', 1, 44, '2023-04-04 21:51:40', '2023-04-04 21:51:40'),
(80, 'SPECIALTY COFFEE', 'Our perfectly roasted coffees are blended with our powders, steamed non-fat milk and topped with thick foam to create a delicious pick-me-up treat', 2.50, 'storage/images/items/bQfL18lGSPL0K35mLpmALlRiHYomgFXKtSg1kbXY.jpg', 1, 44, '2023-04-04 21:53:22', '2023-04-04 21:53:22'),
(81, 'BREWED COFFEE', 'One of our light, medium, dark, decaffeinated, or flavored brews of the day, brewed from only the top 1% of Arabica beans in the world.', 2.50, 'storage/images/items/20LaPBWBhiybbCfKUGI3HIFBo6xGmU3uYHH2m9kg.jpg', 1, 44, '2023-04-04 21:54:35', '2023-04-04 21:54:35'),
(82, 'CAFFEINE FREE', 'Our proprietary Special Dutc Chocolate or French Deluxe Vanilla is combined with steamed and frothy non-fat milk. Add whipped cream to create a caffeine-free cocoa treat.', 3.50, 'storage/images/items/6QuhASPvp7xKG1hxeHggUneLHLCZn7Smmvr5be8o.jpg', 1, 44, '2023-04-04 21:56:02', '2023-04-04 21:56:02'),
(83, 'VIETNAMESE COLD BREW COFFEE', 'This traditional treat, sometimes called “ca phe sua da”, combines sweetened condensed milk with our dark-roasted Cold Brew Coffee to create our spin on a wildly popular Vietnamese café staple', 3.50, 'storage/images/items/m0I1Tm2vgYH6ZkarEdKTy5drAfWScomqFEg07aqR.jpg', 1, 44, '2023-04-04 21:57:33', '2023-04-04 21:57:33'),
(84, 'ESPRESSO', 'Perfectly balanced with a golden crema, this intense espresso has a caramel like aroma, velvety body, earthy flavor and a bittersweet finish', 4.00, 'storage/images/items/7rSaJjDvNYI2UWa5fpwLdBkRQR5YGTxQgYdtOXta.jpg', 1, 44, '2023-04-04 21:59:54', '2023-04-04 21:59:54'),
(85, 'CAPPUCCINO', 'A freshly pulled shot of espresso layered with steamed whole milk and thick rich foam to offer a luxurious velvety texture and complex aroma.', 4.50, 'storage/images/items/RfpHdajg4JatmE0sgbagZqtQ2uwNdLNEPmbWILDH.jpg', 1, 44, '2023-04-04 22:00:56', '2023-04-04 22:00:56'),
(86, 'AMERICANO', 'Freshly pulled shots of espresso combined with hot water.', 4.50, 'storage/images/items/EEDzkVmbpgWcDduU3S7NviSdDNV6LfGDYSKgkFM5.jpg', 1, 44, '2023-04-04 22:02:47', '2023-04-04 22:02:47'),
(87, 'SALTED TOFFEE ICE BLENDED DRIN', 'Our signature espresso blended with rich, buttery toffee flavor and salty notes of our new Salted Toffee sauce to create a delicious indulgence.', 4.50, 'storage/images/items/CO0V5xjJP1Gqd2e7A77pP5k49ZZRfEAC1IIIpY8Y.jpg', 1, 44, '2023-04-04 22:06:56', '2023-04-04 22:06:56'),
(88, 'PURE ICE BLENDED® DRINKS', 'Non-fat milk blended with our signature powders and ice and then topped with whipped cream. A delicious non-caffeinated treat', 5.00, 'storage/images/items/4LO7oscHy1gXcIVfY5R4MdoumJTTMrfjTg0ehg2l.jpg', 1, 44, '2023-04-04 22:08:15', '2023-04-04 22:08:15'),
(89, 'ICE BLENDED DRINKS', 'A sweet treat made from our delicious fresh espresso, signature powders, and milk is blended with ice then topped with whipped cream.', 5.00, 'storage/images/items/PVBW4FlnTDOXXCTuPkBBslJpjTb2Smrk5GMCcNxL.jpg', 1, 44, '2023-04-04 22:09:41', '2023-04-04 22:09:41'),
(90, 'فطيرة التفاح', 'فطيرة التفاح الغنية بطعم القِرفة وحبيباتُ الزبيب والجوز\r\nيكفي 12 شخص', 19.00, 'storage/images/items/ojYBFR8arVP1XRDtcGouJcEIARMHcImPBjklRJLZ.jpg', 1, 45, '2023-04-05 17:19:40', '2023-04-05 17:19:40'),
(91, 'تارت الفواكة', 'طبقة من بسكوت السبلية محشوة بكريم الكسترد تعلوها تشكيلة من فواكه الاناناس والدراق والفراوله\r\n\r\nللكيك, شوكولاه, آيس كريم, المافن, روان كيك, CAKES, CHOCOLATE, ICE CREAM, MUFFIN, RAWANCAKE\r\nوسط يكفي 12 شخص', 18.00, 'storage/images/items/2YtZM9Y2ABh7EiU0mJpv2ZWffOPo7gVRi8YWiQV2.jpg', 1, 45, '2023-04-05 17:20:47', '2023-04-05 17:20:47'),
(92, 'تارت الفراولة', 'طبقة من بسكوت السبلية محشوة بكريم الكسترد تعلوها طبقة من الفراوله.\r\nوسط يكفي 12 شخص', 18.00, 'storage/images/items/H5RGicj3DJ7LT6xdvxSuY61vkmZQY5JxavumX479.jpg', 1, 45, '2023-04-05 17:25:51', '2023-04-05 17:25:51'),
(93, 'شوكوريزو كيك', 'ثلاث طبقات من كيك الشوكولاه مع طبقتين من النوتيلا الغنيه بالمقرمشات\r\nصغير يكفي 6 أشخاص\r\nوسط يكفي 12 شخص\r\nكبير يكفي 16 شخص\r\nأكبر يكفي 20 شخص', 11.00, 'storage/images/items/4FlfEjCqePsuzOwDKZgooEdgCXY6TwW02Qydva1o.jpg', 1, 45, '2023-04-05 17:27:28', '2023-04-05 17:27:28'),
(94, 'فواكه كيك', 'سبونج كيك فانيلا محشي طبقتين من الفواكه مع الكريمة ، ومُزين بطبقة من الفراولة ورقائق الشوكولاه البيضاء\r\nصغير يكفي 6 أشخاص\r\nوسط يكفي 12 شخ\r\nكبير يكفي 16 شخص\r\nأكبر يكفي 20 شخص', 11.00, 'storage/images/items/9uWMXKhE0EBADPEs31KesTtNMFluN84fZMLFTBdC.jpg', 1, 45, '2023-04-05 17:28:52', '2023-04-05 17:28:52'),
(95, 'كيندر كيك', 'شوكليت كيك مع طبقتين من الويفر الشهي محاط بحبات من الكيندر\r\nيكفي 6 اشخاص\r\nيكفي 12شخص', 27.00, 'storage/images/items/V0V0QfdWMYk4aHkimgrnusoySRAqyTYl7sGtpyqE.jpg', 1, 45, '2023-04-05 17:30:35', '2023-04-05 17:30:35'),
(96, 'كروكان كيك جديد', 'سبونج كيك فانيلا محشي طبقتين من الكروكان ، ومُزين بكروكان اللوز المقرمش\r\nصغير يكفي 6 أشخاص\r\nوسط يكفي 12 شخص', 11.00, 'storage/images/items/tSUgTn4Ten2vOoJrkTyjhmLzt2ruIlQ03I2pWVqU.jpg', 1, 45, '2023-04-05 17:32:12', '2023-04-05 17:32:12'),
(97, 'لوتس كيك', 'سبونج كيك شوكليت محشي طبقتين من كيك تشوكليت مع حبيبات بسكوت اللوتس\r\nصغير يكفي 6 أشخاص\r\nوسط يكفي 12 شخص', 11.00, 'storage/images/items/qJJ29mieyCS4O6khn7tEPiDNv3FFOFZK8JENr2jI.jpg', 1, 45, '2023-04-05 17:33:49', '2023-04-05 17:33:49'),
(98, 'فراولة كيك', 'سبونج كيك فانيلا محشي بطبقتين من الفراولة والكريمة ، ومُزين بحبات الفراولة الطازجة\r\nصغير يكفي 6 أشخاص\r\nوسط يكفي 12 شخص', 11.00, 'storage/images/items/sZKEGQrlJdh1fU85Nxs92ZWyy0VHe4ZZ7dTxTD9b.jpg', 1, 45, '2023-04-05 17:35:04', '2023-04-05 17:35:04'),
(99, 'بلاك و وايت موس', 'طبقتين شوكليت كيك تتخللهما طبقتين واحدة منها شوكليت موس والاخرى وايت موس مُغطاة بغلاف من الشوكلاتة\r\nوسط يكفي 6 الى 8 أشخاص\r\nكبير يكفي 10 الى 12 شخص', 17.00, 'storage/images/items/h8d8O3iuQ9WMKV0drnPrc8I5qAyoCqTnP1qPkS71.jpg', 1, 45, '2023-04-05 17:37:20', '2023-04-05 17:37:20'),
(100, 'توفي كراميل كيك', 'سبونج كيك فانيلا محشي طبقتين من اللوز المحمص والكراميل ، ومُزين بطبقة من الكراميل\r\nصغير يكفي 6 أشخاص\r\nوسط يكفي 12 شخص', 17.00, 'storage/images/items/7FXT0WZoBn6UjJIho6bjuuCL4veDQlC7CZa4FCVQ.jpg', 1, 45, '2023-04-05 17:38:42', '2023-04-05 17:38:42'),
(101, 'سنيكرز كيك', 'سبونج كيك شوكليت مشرب بالشوكولاه ومحشي طبقتين من حشوة السنيكرز (الفول السوداني والكراميل\r\nوالشوكلاته ومزين بغطاء من الشوكلاته وحبيبات الفول السوداني)\r\nصغير يكفي 6 أشخاص\r\nوسط يكفي 12 أشخاص', 17.00, 'storage/images/items/vk3t6oY0PTyWv8zmtjUrRXLa2RweAwLczmyR5tzh.jpg', 1, 45, '2023-04-05 17:40:02', '2023-04-05 17:40:02'),
(102, 'الفصول الأربعة شيز كيك', 'شيز كيك بأربع نكهات: بلو بيري شيز كيك، كرز شيز كيك، فراولة شيز كيك موس،لوتس شيز كيك يكفي 12 شخص', 26.00, 'storage/images/items/SI3dKYfdmi6CERwaQdMj0QNSwIUwofzyZjez6zTP.jpg', 1, 45, '2023-04-05 18:00:50', '2023-04-05 18:00:50'),
(103, 'بلاك فورست كرز', 'شوكليت كيك محشي بطبقتين من الكرز ،تعلوها كريمة الشوكليت ورقائق الشوكولاتة.', 2.00, 'storage/images/items/zfYqDpQyWG4tAhxKcsSFsIb3guJAaUAqwnQ7v7Wm.jpg', 1, 46, '2023-04-05 18:02:53', '2023-04-05 18:02:53'),
(104, 'بلاك فورست بالشوكلاتة قطع', 'سبونج كيك شوكليت محشي طبقتين من كريمه الشوكلاته وحبيبات الشوكليت ومُزين برقائق الشوكلاته', 1.50, 'storage/images/items/og3DthHtfUeBoGMtJg2t4hViBkvgGneaFClmLc32.jpg', 1, 46, '2023-04-05 18:04:45', '2023-04-05 18:04:45'),
(105, 'فراولة كيك قطع', 'سبونج كيك فانيلا محشي بالفراولة والكريمة، ومُزين بحبات الفراولة الطازجة', 1.50, 'storage/images/items/ZzeEByw3Dq6a7pMBUw1FQvukUQieSYYXVGbLlqYZ.jpg', 1, 46, '2023-04-05 18:06:30', '2023-04-05 18:06:30'),
(106, 'كروكان كيك قطع', 'سبونج كيك فانيلا محشي بالكروكان، ومُزين بكروكان اللوز المحمص', 1.50, 'storage/images/items/BrNVSGI5I4LRRMz7FSJwFWEs2ExfypjtaC2dAkpm.jpg', 1, 46, '2023-04-05 18:07:59', '2023-04-05 18:07:59'),
(107, 'شوكوريزو كيك قطع', 'ساتن كيك شوكليت مشرب بالشوكلاتة ومحشي بشوكلاتة النوتيلا مع حبات الرايس كرسبي الهشة، ومزين بغطاء من الشوكولاه الغامق', 1.80, 'storage/images/items/OgRZEgmySM28ie83OODDUns7j3OZu7zyLhPSxIBP.jpg', 1, 46, '2023-04-05 18:09:33', '2023-04-05 18:09:33'),
(108, 'بافيه موس كيك', 'رقائق من الشوكليت كيك مع كسر البندق الناعم يتخللها طبقات من توفي كراميل وجناش الشوكلاته.', 2.20, 'storage/images/items/9wbryvw5ShiLIbQOAVAVGIwKiQPTYEwON9ALtQxa.jpg', 1, 46, '2023-04-05 18:11:55', '2023-04-05 18:11:55'),
(109, 'كوفي كرانش كيك', 'طبقات من شوكليت كيك بحشوة الكرانش كوفي مغطاه بشوكليت الجناش.', 2.20, 'storage/images/items/tJWGWXveNUFk0cfMfJZnEmiTei0yW2ISKUvpV1tF.jpg', 1, 46, '2023-04-05 18:14:13', '2023-04-05 18:14:13'),
(110, 'كرامبي موس قطع', 'طبقات من الشوكلت موس والشوكلت كيك مع بسكوت اللوز ( كرمبي)', 2.20, 'storage/images/items/y0MiOPzzLoGvUTViPXsotghtkhaQBl3Emc2kKB8g.jpg', 1, 46, '2023-04-05 18:16:25', '2023-04-05 18:16:25'),
(111, 'كندر موس قطع', 'طبقة من الشوكليت كيك تعلوها طبقة من موس البندق, محشية بالويفر ومزينة بالكيندر.', 2.20, 'storage/images/items/fpKHl27Tt2IczjsHA2SNZ5NEDLQAsHTXDWhoQPCu.jpg', 1, 46, '2023-04-05 18:18:13', '2023-04-05 18:18:13'),
(112, 'سنيكرز موس قطع', 'طبقة من كيك الشوكولاه تعلوها طبقة من التوفي كراميل الممزوجة مع الفول السوداني المحمص وطبقة من الشوكلاته مغلفة بطبقة من موس الفول السوداني', 1.70, 'storage/images/items/FnfbNr5TrKqB9OlBXsY9d8Cds1DDoMnsihgazbeo.jpg', 1, 46, '2023-04-05 18:20:00', '2023-04-05 18:20:00'),
(113, 'كيك البوظة ~ عربية', 'فانيلا سبونج كيك بحشوة البوظة العربية\r\nصغير يكفي من 8 الى 10 أشخاص\r\nكبير يكفي من 14 الى 16 شخص', 16.00, 'storage/images/items/r0KaqYhKQxhXKdvEfXsqLKVZYk1Ulwjn513K3Why.jpg', 1, 47, '2023-04-05 18:23:24', '2023-04-05 18:23:24'),
(114, 'كيك البوظة ~~ ديسباسيتو', 'شوكليت سبونج كيك بحشوة بوظة الديسباسيتو\r\nصغير يكفي من 8 الى 10 شخص\r\nكبير يكفي من 14 الى 16 شخص', 16.00, 'storage/images/items/kySjhg0l0VjAvPHrGY5mX1Q5BpMerAw6LPgEye3i.jpg', 1, 47, '2023-04-05 18:25:02', '2023-04-05 18:25:02'),
(115, 'كيك البوظة ~ شيزكيك', 'فانيلا سبونج كيك بحشوة التشيزكيك.\r\nصغير يكفي من 8 الى 10 شخص\r\nكبير يكفي من 14 الى 16 شخص', 16.00, 'storage/images/items/ovzhBdJi5NcVqAN67j46saCVp9b1XWRFc4nPjyc5.jpg', 1, 47, '2023-04-05 18:26:45', '2023-04-05 18:26:45'),
(116, 'كيك البوظة ~ قهوة', 'شوكليت كيك بحشوة بوظة القهوة المميزه\r\nصغير يكفي 10 أشخاص\r\nكبير يكفي 16 شخص', 16.00, 'storage/images/items/QO9amPlbTFdWSC8T0MTy1AR5aC6k4ob5YjepMJqs.jpg', 1, 47, '2023-04-05 18:28:27', '2023-04-05 18:28:27'),
(117, 'كيك البوظة ~ مانجا', 'فانيلا سبونج كيك بحشوة بوظة مانجا\r\nصغير يكفي 10 أشخاص\r\nكبير يكفي 16 شخص', 17.00, 'storage/images/items/7ukZNk79NH22z9FvFad3BGsQNYwaNneu6705Izvh.jpg', 1, 47, '2023-04-05 18:30:28', '2023-04-05 18:30:28'),
(118, 'كيك البوظة ~ سنيكرز', 'شوكليت سبونج كيك بحشوة بوظة السنيكرز\r\nصغير يكفي 10 أشخاص\r\nكبير يكفي 16 شخص', 16.00, 'storage/images/items/FOElqx37XXvflEH45xlWJPL5pxAPER9by4MDCB2J.jpg', 1, 47, '2023-04-05 18:33:21', '2023-04-05 18:33:21'),
(119, 'كيك البوظة ~ نيوتيلا', 'شوكليت سبونج كيك بحشوة بوظة النيوتيلا\r\nصغير يكفي من 8 الى 10 شخص\r\nكبير يكفي من 14 الى 16 شخص', 16.00, 'storage/images/items/a6DimSjj6T26G7lAzXutTFuYU5wfgMxyA8KKtTH2.jpg', 1, 47, '2023-04-05 18:38:45', '2023-04-05 18:38:45'),
(120, 'كيك البوظة ~ ليزي كيك', 'شوكليت سبونج كيك بحشوة بوظة ليزي كيك\r\nصغير يكفي 10 أشخاص\r\nكبير يكفي 16 شخص', 16.00, 'storage/images/items/RmAgaMD3aoq9gP80BYeqJiKrSDiOsxQ88murTTE7.jpg', 1, 47, '2023-04-05 18:41:01', '2023-04-05 18:41:01'),
(121, 'هارت بنياتا', 'هارت بنياتا', 25.00, 'storage/images/items/AgtuRvb9W7tzscfl8HjTflLx4444i1QS6bBtSvzj.jpg', 1, 48, '2023-04-05 18:43:50', '2023-04-05 18:43:50'),
(122, 'كب ميكس', 'أكواب من الشوكلاته داخلها حشوات من: سنكرز - باونتي - كندر - فستق - لوتس - شوكوريزو', 15.00, 'storage/images/items/gTq6NNX8HEIkV7DjME7gzwSZJiiI2N8IicFVtOuf.jpg', 1, 48, '2023-04-05 18:45:57', '2023-04-05 18:45:57'),
(123, 'شوكولا روان نوتيلا ومانجا', 'علبة شوكولا روان تحتوي على 16 حبة متنوعه الحشوات نوتيلا ومانجا', 6.50, 'storage/images/items/jMDNzEE308AdXBeu3vFTc58pOxNSvWYbbZOCN6G0.jpg', 1, 48, '2023-04-05 18:48:32', '2023-04-05 18:48:32'),
(124, 'بنياتا بير', 'بنياتا بير', 25.00, 'storage/images/items/SPPTPusFh5OsJrOf1YnS6YRyOttopNnWhAVTtSvG.jpg', 1, 48, '2023-04-05 18:50:24', '2023-04-05 18:50:24'),
(125, 'فريروروشيه موس ~ سيميفريدو', 'خليط سيميفريدو (خلطة حلو ايطالية باردة قوامها ما بين الموس والايس كريم) من معجون البندق والكريست كريب وشوكلاتة النوتيلا.', 1.50, 'storage/images/items/aTJmjbD35cifwD8jmTGHAN899tmCZJ5rCiGqX78q.jpg', 1, 49, '2023-04-05 19:10:05', '2023-04-05 19:10:05'),
(126, 'لوتس موس ~ سيميفريدو', 'خليط سيميفريدو (خلطة حلو ايطالية باردة قوامها ما بين الموس والايس كريم) فانيلا مع معجون بسكوت اللوتس.', 1.30, 'storage/images/items/jIgLyEBuS7BBOEajWPFJI42cW4pHrZkRGmR7MvZs.jpg', 1, 49, '2023-04-05 19:11:58', '2023-04-05 19:11:58'),
(127, 'اوريو موس ~ سيميفريدو', 'خليط سيميفريدو (خلطة حلو ايطالية باردة قوامها ما بين الموس والايس كريم) فانيلا مع بسكوت الأوريو.', 1.50, 'storage/images/items/afOVAULT8YhulGQWKXGI88LNbcr8mwRJI3GGukDN.jpg', 1, 49, '2023-04-05 19:12:41', '2023-04-05 19:12:41'),
(128, 'تشيز ريد فلفيت ~ سيميفريدو', 'خليط سيميفريدو (خلطة حلو ايطالية باردة قوامها ما بين التشيز والايس كريم) .', 1.50, 'storage/images/items/IUJbaV14B33oF4FcUJA0LBJZwNm1FyAl5d6qSyE0.jpg', 1, 49, '2023-04-05 19:13:33', '2023-04-05 19:13:33'),
(129, 'بستاشيو موس ~ سيميفريدو', 'خليط سيميفريدو (خلطة حلو ايطالية باردة قوامها ما بين الموس والايس كريم) فانيلا مع معجون البستاشيو محشي بالشيريمانيا.', 1.75, 'storage/images/items/ufvtEAWjLI0Zqr5lGRkoYjMqNLIXCqjQOeyFtcdR.jpg', 1, 49, '2023-04-05 19:14:28', '2023-04-05 19:14:28'),
(131, 'تويكس موس ~ سيميفريدو', 'خليط سيميفريدو (خلطة حلو ايطالية باردة قوامها ما بين الموس والايس كريم) من الفانيلا بطعم شوكولاته التويكس﻿.', 1.50, 'storage/images/items/avvHD4HZSX7HF3M13gvVnIbCv5nksEdqyz9KVS9y.jpg', 1, 49, '2023-04-05 19:16:25', '2023-04-05 19:16:25'),
(132, 'كندر موس ~ سيميفريدو', 'خليط سيميفريدو (خلطة حلو ايطالية باردة قوامها ما بين الموس والايس كريم) من الشوكلاتة وحشوة الكيندر.', 1.30, 'storage/images/items/6MYQIfgy63TQ0yljb8FbcilI9yGd6NIoR4mm62BQ.jpg', 1, 49, '2023-04-05 19:17:44', '2023-04-05 19:17:44'),
(133, 'تشيز كيك ستروبري~ سيميفريدو', 'خليط سيميفريدو (خلطة حلو ايطالية باردة قوامها ما بين الموس والايس كريم) من الفانيلا بطعم ستروبري', 1.50, 'storage/images/items/P9v0wFmSDdfMTXrwX53COH0OrGNmLhYGkRwuX6cE.jpg', 1, 49, '2023-04-05 19:18:59', '2023-04-05 19:18:59'),
(134, 'بالونات هيليوم', 'بالونات هيليوم بعدة ألوان مختلفة.', 1.50, 'storage/images/items/LGxkZNVslrLV8H2G8RFAH8fjZISS1pkEjh6dlYhT.jpg', 1, 50, '2023-04-05 19:21:32', '2023-04-05 19:21:32'),
(135, 'بالونات مضيئة', 'بالونات مضيئة تضيء بالليل', 1.50, 'storage/images/items/wFOi5eNPYFmr0r3Tos7bJtd485hZEeu3Vrhqa3Bt.jpg', 1, 50, '2023-04-05 19:22:34', '2023-04-05 19:22:34'),
(136, 'بالونات حفلات مدورة', 'بالونات حفلات مدورة بألوان مختلفة.', 1.00, 'storage/images/items/GrJa4qMfmgmlVpHbR6UEgJO33uOtBoAxixkEsRGj.jpg', 1, 50, '2023-04-05 19:23:27', '2023-04-05 19:23:27'),
(137, 'شمع عيد ميلاد قلوب ذهبي', 'شموع عيد ميلاد على شكل قلب.', 1.75, 'storage/images/items/oxBjvvgOqKHLWM2w74eAdlaWGBV2CTiLTkdi5Sl0.jpg', 1, 50, '2023-04-05 19:24:38', '2023-04-05 19:24:38'),
(138, 'شمع هابي بيرثداي', 'شمع هابي بيرثداي بأشكال متعددة.', 1.50, 'storage/images/items/DdzOMcYAWWQWFlMCzMDvxmAVxYTNPQ2x7yFVrOeo.jpg', 1, 50, '2023-04-05 19:25:47', '2023-04-05 19:25:47'),
(139, 'شمع بقاعدة طويلة احمر', 'شمع بقاعدة طويلة احمر', 1.00, 'storage/images/items/Nh7IfV5aNDCbiW8eCBKLlO9MuIIVt0UVjwj90FwJ.jpg', 1, 50, '2023-04-05 19:26:30', '2023-04-05 19:26:30'),
(140, 'شمع شرار', 'شمع شرار اربع قطع', 1.50, 'storage/images/items/JhyjxamiQMlN0Ywv696MlNqWtbckkxItigumBxyb.jpg', 1, 50, '2023-04-05 19:27:17', '2023-04-05 19:27:17'),
(141, 'مدفع حفلات', 'مدفع بخاخ للحفلات\r\n2 قطعة', 2.00, 'storage/images/items/NYPCvSLJlpmPEUMVPCBWprjloxmqRfO4ilocHKWI.jpg', 1, 50, '2023-04-05 19:28:10', '2023-04-05 19:28:10'),
(142, 'شوك حفلات', 'شوك حفلات بألوان مختلفة عدد 24 شوك', 1.50, 'storage/images/items/4GMxnTeI3K1PbY0XZwmAUgkmZdvav1toHl0qA2xP.jpg', 1, 50, '2023-04-05 19:29:03', '2023-04-05 19:29:03'),
(143, 'تريليتشا كراميل', 'تريليشا حلوى تركية تتكون من طبقة من الكيك تعلوها طبقة من الكريمة و الكراميل', 1.50, 'storage/images/items/qQBUASceRmCcAAKUgnMa8vCCBR47XwlEvPVm2ST6.jpg', 1, 51, '2023-04-05 20:53:12', '2023-04-05 20:53:12'),
(144, 'تيراميسو', 'طبقة من البسكوت تعلوها طبقة من الشيز كيك الامريكي وعليها طبقة من خليط التراميسو الايطالية', 1.50, 'storage/images/items/ERIODtRgFZ4QEvhjx60ICVG5UY1aoCg01di4Ti10.jpg', 1, 51, '2023-04-05 20:54:00', '2023-04-05 20:54:00'),
(145, 'عيش السرايا', 'خبز التوست مع القشطة والفستق الحلبي.', 1.75, 'storage/images/items/2xQ7RTfmk31VtpMzRBIKIRSWHbfp0nOAzuaSs4Yl.jpg', 1, 51, '2023-04-05 20:54:53', '2023-04-05 20:54:53'),
(146, 'مهلبيه اللوتس', 'مهلبيه اللوتس', 1.50, 'storage/images/items/HuhpGWB4TiALLwUka3TGTutENok06kN7muEdR24t.jpg', 1, 51, '2023-04-05 20:55:49', '2023-04-05 20:55:49'),
(147, 'ديسباسيتو أم اند امز', 'خلطة من الموس المميز مع طبقة من الكيك المشرب تعلوها طبقة من النوتيلا والاند ام اند امز', 2.00, 'storage/images/items/2sv8tkYY1aikaHQrxCHEeTmAmcEz6I8lYoAV1aHo.jpg', 1, 51, '2023-04-05 20:56:42', '2023-04-05 20:56:42'),
(148, 'مهلبيه البستاشيو', 'مهلبيه البستاشيو', 2.00, 'storage/images/items/S2w0ps9yq8pZjT6tSF68H8DjEp5Uxq6Yzv9rO5JF.jpg', 1, 51, '2023-04-05 20:57:25', '2023-04-05 20:57:25'),
(149, 'ديسباسيتو الكندر', 'خلطة من الموس المميز على طبقة من الكيك المشرب تعلوها طبقة شوكولاه كيندر بوينو', 2.00, 'storage/images/items/dGTuJvo4DMJvFaRAYfL82AK0t1Hc51mHrlYBdh2H.jpg', 1, 51, '2023-04-05 20:58:13', '2023-04-05 20:58:13'),
(150, 'حلى الشعيريه', 'بسكويت مع الحليب والكريمه مغطاة بالشعيريه', 1.50, 'storage/images/items/aH3CEL5IvUcgfE5r6cpfEHFy8ZazqAiWpdzcko2m.jpg', 1, 51, '2023-04-05 20:59:18', '2023-04-05 20:59:18'),
(151, 'ترويقة', 'طبقه من القشطه والكيك ممزوجه بالعسل ومزينة بالفواكه الاستوائية', 2.50, 'storage/images/items/OhiTIW0iKpvi8wqstww1pYYSrs71hkDLa6GtNhHO.jpg', 1, 51, '2023-04-05 21:00:03', '2023-04-05 21:00:03'),
(152, 'مهلبيه كراميل بالموز', 'مهلبيه بطبقه من الموز والكراميل', 2.00, 'storage/images/items/2jdoliQe6VLydoVFHCDtPCvWixyUI75R3OGVkx43.jpg', 1, 51, '2023-04-05 21:00:55', '2023-04-05 21:00:55'),
(153, 'عيش السرايا', 'خبز التوست مع القشطه والفستق الحلبي متوفر بثلاث احجام\r\nصغير\r\nوسط\r\nكبير', 7.00, 'storage/images/items/GKQLicPY9ZUS94ADvh7tvMxikLJATh91NLPltTX9.jpg', 1, 52, '2023-04-05 21:45:30', '2023-04-05 21:45:30'),
(154, 'لوتس', 'طبقه من الكيك مع الكراميل و اللوتس\r\nصغير\r\nوسط\r\nكبير', 7.00, 'storage/images/items/JTmhaTVW5HQnVU0JEV2mnwAY7hvTAy5YkIqCHMcm.jpg', 1, 52, '2023-04-05 21:46:25', '2023-04-05 21:46:25'),
(155, 'فراجولينا', 'كيك مع صوص الفراوله مزين بحبات الفراوله متوفر بثلاث احجام\r\nصغير\r\nوسط\r\nكبير', 7.00, 'storage/images/items/g75rv2hg4hxYvKPGFKjfvpuMpGwDdyFYQPQ6lBaQ.jpg', 1, 52, '2023-04-05 21:47:46', '2023-04-05 21:47:46'),
(156, 'كهرمانه العسل', 'كيك جوز القلب مشبع بالعسل\r\nصغير\r\nوسط\r\nكبير', 7.00, 'storage/images/items/RUmGlUDr3DpLejorDjK8nS3pj89xRegDe80COFa5.jpg', 1, 52, '2023-04-05 21:48:33', '2023-04-05 21:48:33'),
(158, 'تريلتشي كراميل', 'تريليشا حلوى تركية تتكون من طبقة من الكيك تعلوها طبقة من الكريمة و الكراميل', 7.00, 'storage/images/items/IcAqD54lwlZuwdMnKyKGWmrk8YfnZT7e1exrBwru.jpg', 1, 52, '2023-04-05 21:52:16', '2023-04-05 21:52:16'),
(159, 'تيراميسو', 'طبقة من البسكوت تعلوها طبقة من الشيزكيك الامريكي وعليها طبقة من خليط التراميسو الايطالية\r\nالغنية بجبنة الماسكربوني\r\nصغير\r\nوسط\r\nكبير', 7.00, 'storage/images/items/F5JrLuXAxmXO7FQOsH5NkO6u45wNi7tnOoxluWT0.jpg', 1, 52, '2023-04-05 21:53:03', '2023-04-05 21:53:03'),
(160, 'إم علي', 'رقائق الملفية المنقوعة بالحليب المحلى وغنية بالمكسرات ,تُوضع بفخار.', 7.00, 'storage/images/items/IKVd8UpyKpwM5CXfWQnRVQUxeZqCUJwbIJMIoHRs.jpg', 1, 53, '2023-04-05 21:53:58', '2023-04-05 21:53:58'),
(161, 'فخاره اللوتس', 'طبقه من الكيك مع الكراميل و اللوتس', 7.00, 'storage/images/items/eOEZXz5h2mrXiR0pCJ1WAkjMUzb3enheAnIcL3au.jpg', 1, 53, '2023-04-05 21:54:43', '2023-04-05 21:54:43'),
(162, 'سوتلاش', 'رز بحليب مُزينة بالفستق الحلبي', 2.00, 'storage/images/items/mSVCqVO8lTdIqoLMceCwfpUF0WGm9eGJ0RQtlpjn.jpg', 1, 53, '2023-04-05 21:55:34', '2023-04-05 21:55:34'),
(163, 'فخارة فراجولينا', 'كيك مع صوص الفراوله مزين بحبات الفراوله', 3.00, 'storage/images/items/dCNqS1gawDKi2flUKnlBJzeN9CBBKHINGFstzngd.jpg', 1, 53, '2023-04-05 21:56:21', '2023-04-05 21:56:21'),
(164, 'ميني جار رمضان', 'تشكليه من ميني جار بنكهات\r\nلوتس\r\nبلوبري\r\nفراجولينا\r\nكهرمانه\r\nعيش السرايا\r\nتراميسو\r\nسلطانه\r\nيوغرت+عسل\r\nيوغرت+فواكه استوائيه\r\nتريليتشا', 16.00, 'storage/images/items/iw4StuPZe7jMBdtCyPuuNHzi5ivkV11J7SUu7xnr.jpg', 1, 54, '2023-04-05 21:57:25', '2023-04-05 21:57:25'),
(165, 'ترايفل', 'طبقة من البسكويت تعلوها طبقة كستر مع كرز احمر مزينة ب جلي فراولة', 1.50, 'storage/images/items/hyQrYg3ztuGjgNVAqJzhP44cZBlOC8Jz9piYdKxL.jpg', 1, 54, '2023-04-05 21:58:43', '2023-04-05 21:58:43'),
(166, 'موالح', 'رقائق هشه فرنسية بعدة نكهات : زعتر ، جبنة ، سُماق ،سمسم ، لوز\r\n1 كيلو', 11.00, 'storage/images/items/PGeA5f7Bn95vrHgTvW0vTxj5muN74V1HepGkKVe6.jpg', 1, 54, '2023-04-05 22:01:29', '2023-04-05 22:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `status`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(25, 'ArjouanCafe', 1, 32, '2023-04-03 10:04:01', '2023-04-03 10:04:12'),
(26, 'Segafredojo', 1, 33, '2023-04-04 17:29:30', '2023-04-04 18:19:45'),
(27, 'RawanCake', 0, 34, '2023-04-05 17:14:00', '2023-04-06 19:45:58'),
(28, 'حلويات رمضان', 1, 34, '2023-04-05 20:44:39', '2023-04-06 19:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2023_02_12_152949_create_restaurants_table', 1),
(10, '2023_02_12_153008_create_menus_table', 1),
(11, '2023_02_12_153028_create_items_table', 1),
(12, '2023_02_12_153042_create_sections_table', 1),
(13, '2023_02_12_165228_create_tables_relations', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `title`, `description`, `phone`, `email`, `address`, `image`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(32, 'ArjouanCafeshope', 'street Aqaba', '0799693830', 'arjouancafe@gmail.com', 'Aqaba', 'storage/images/restaurants/jznTZano0xuLvKF0bfNPKciMyIIRjNfyIUvDJeGG.jpg', 1, 11, '2023-04-03 09:50:42', '2023-04-03 09:50:42'),
(33, 'Segafredo', 'Segafredo Jordan, شارع. أريتريا، عمّان', '07 9130 3010', 'segafredojo@gmail.com', 'Amman', 'storage/images/restaurants/iRykmOSFYBnyCFHXEQy5rd4wN4NdmzlYaz6ZrYRm.png', 1, 12, '2023-04-04 17:25:44', '2023-04-04 18:19:02'),
(34, 'RawanCake', 'شويخ مول', '07 9640 0939', 'anabtawisweets@gmail.com', 'Aqaba', 'storage/images/restaurants/p3SowGsPr4TQOKq7eLBk9bOhLu2VG1BTZ4uJtQQl.png', 1, 13, '2023-04-05 17:04:41', '2023-04-05 20:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `menu_id`, `created_at`, `updated_at`) VALUES
(36, 'Food', 25, '2023-04-03 10:04:34', '2023-04-03 10:04:34'),
(37, 'Drink', 25, '2023-04-03 10:04:54', '2023-04-03 10:04:54'),
(38, 'Pizza', 25, '2023-04-03 10:05:08', '2023-04-03 10:05:08'),
(39, 'Salad', 25, '2023-04-03 10:17:29', '2023-04-03 10:17:29'),
(40, 'SALADS', 26, '2023-04-04 18:30:53', '2023-04-04 18:30:53'),
(41, 'SANDWICHES', 26, '2023-04-04 19:49:28', '2023-04-04 19:49:28'),
(42, 'PASTA', 26, '2023-04-04 20:07:50', '2023-04-04 20:07:50'),
(43, 'PIZZA', 26, '2023-04-04 20:43:44', '2023-04-04 20:43:44'),
(44, 'DRINKS', 26, '2023-04-04 21:03:41', '2023-04-04 21:03:41'),
(45, 'قوالب كيك', 27, '2023-04-05 17:15:58', '2023-04-05 17:15:58'),
(46, 'قطع كيك', 27, '2023-04-05 17:16:23', '2023-04-05 17:16:23'),
(47, 'ايس كريم', 27, '2023-04-05 17:16:59', '2023-04-05 17:16:59'),
(48, 'شوكولاته', 27, '2023-04-05 17:17:16', '2023-04-05 17:17:16'),
(49, 'سوارية ومكرون وسيميفريدو', 27, '2023-04-05 17:17:41', '2023-04-05 17:17:41'),
(50, 'إكسسوارت', 27, '2023-04-05 17:17:58', '2023-04-05 17:17:58'),
(51, 'مهلبيات', 28, '2023-04-05 20:50:46', '2023-04-05 20:50:46'),
(52, 'حلى البايركس', 28, '2023-04-05 20:51:08', '2023-04-05 20:51:08'),
(53, 'فخاريات رمضان', 28, '2023-04-05 20:51:27', '2023-04-05 20:51:27'),
(54, 'حلويات رمضانية', 28, '2023-04-05 20:51:50', '2023-04-05 20:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text NOT NULL DEFAULT 'icon.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Karam', 'karam@gmail.com', '1234567890', 'admin', NULL, '$2y$10$jHF98X/YFOHxiZWlDTUa1elKln1mCrS0fSddty94niLNgZ9UIfKvu', NULL, '2023-02-13 12:12:37', '2023-04-05 16:04:25', 'storage/images/users/V9gsMJnjHwnSr0EAtAKjaZV8M4qgBwpvxtdr0t1i.jpg'),
(6, 'Karam', 'karamdaneh97@gmail.com', '', '', NULL, '$2y$10$wr.n/ZrIN/6J32wqOwXSN.tFiEF0JBNZTNJxhWcBjhQtUEyU6NCvy', NULL, '2023-03-22 16:36:48', '2023-03-26 18:18:28', 'storage/images/users/BihHU5u90piEaEhmqpR3dFfzIJBNTN9SD0CWxi0h.jpg'),
(7, 'mohammad', 'mohammad@gmail.com', '', '', NULL, '$2y$10$EPeapgzl3Ho4JbkWyr0onO4NFek3urDJXB67b.dZV9rzfyeE88M62', NULL, '2023-03-23 08:16:40', '2023-03-23 08:16:40', 'karam.jpeg'),
(8, 'alaa', 'alaa@gmail.com', '1', '', NULL, '$2y$10$WvWfFYdfFdF4DynHZFeo9.gqnUfxeFv53s5rLAHfCUS.R4zFL7zGm', NULL, '2023-03-24 17:21:54', '2023-03-29 12:48:15', 'storage/images/users/afD2uu012nNpjHbOIsuvfSfeDJpUXGELhA14ZYDf.jpg'),
(9, 'Sara', 'sara@gmail.com', '123456789', '', NULL, '$2y$10$cx49YRHLFWZ5WEn24IMvnu8kM77Pps0yi87o.rqQEkhUEAYdZcu6q', NULL, '2023-03-26 19:29:54', '2023-03-30 11:25:38', 'storage/images/users/epUQVohtv6ITqSXZNlF0N6kfD5FreEOqopgGXvMd.jpg'),
(10, 'slamah', 'malik@gmail.com', '1234567890', 'user', NULL, '$2y$10$MvWhJ99gdk6FHq83SVqrr.zDFxtYEVxOBYbAfWW0vG7X9PxfSK4nu', NULL, '2023-04-02 19:37:15', '2023-04-02 19:38:20', 'storage/images/users/ezIvjCampR12uMVlcglC5Ti7laDBhxvFgkc7pG50.jpg'),
(11, 'Arjouan', 'arjouancafe@gmail.com', '0799693830', 'user', NULL, '$2y$10$hiDXpmOy87GTBlWk8zsPq.aqepBv1tMvwt5Jyg3uLX.nb8ORL341G', NULL, '2023-04-03 09:46:58', '2023-04-03 09:49:12', 'storage/images/users/ZPaRn85xijBedHhJXNBqxLUX0oOMKGwvp9YO5h6P.jpg'),
(12, 'segafredojo', 'segafredojo@gmail.com', '07 9130 3010', 'user', NULL, '$2y$10$6TROaigC9j1WyDWddJ9eFe8t1PkY4.EM.qodc3IB3QHgnxRoxoH5S', NULL, '2023-04-04 17:19:39', '2023-04-04 17:22:57', 'storage/images/users/pfqS0cXMDRQRSSXtCYYD15gY7tGdRY7o8wXNSuya.png'),
(13, 'SlamaYassen', 'anabtawisweets@gmail.com', '07 9640 0939', 'user', NULL, '$2y$10$zQVKdT2QoqkPJpCtn/HXdukFIUHiYjHlEH2Exu7L/BlB9nBt9xZjC', NULL, '2023-04-05 17:00:34', '2023-04-06 19:41:30', 'storage/images/users/yOpcwVFR8rbhCMif8hPzv4ktD0xRKBQHh5EPxXJe.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_section_id_foreign` (`section_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurants_user_id_foreign` (`user_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `sec_item` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `rest_menu` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
