-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2021 lúc 10:08 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopcaycanhmvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Cây cảnh vườn', 'cay-canh-vuon', 2, 3, '0', '2019-05-22 16:15:39', '4', '2021-11-30 10:15:24', '1', 1, 1),
(2, 'Cây cảnh nghệ thuật', 'cay-canh-nghe-thuat', 2, 3, '0', '2019-05-22 16:13:24', '4', '2021-11-30 10:15:38', '1', 1, 1),
(3, 'Cây cảnh ngoại thất', 'cay-canh-ngoai-that', 1, 0, '0', '2019-05-22 16:09:41', '4', '2021-11-30 10:12:28', '1', 1, 1),
(4, 'Cây cảnh nội thất', 'cay-canh-noi-that', 1, 0, '1', '2019-05-23 21:33:25', '1', '2021-11-30 10:12:05', '1', 1, 1),
(6, 'Cây cảnh để bàn', 'cay-canh-de-ban', 2, 4, '1', '2019-06-03 21:38:28', '1', '2021-11-30 10:14:02', '1', 1, 1),
(9, 'Ưa chuộng trong nhà', 'ua-chuong-trong-nha', 2, 4, '0', '2019-06-03 21:40:38', '1', '2021-11-30 10:13:33', '1', 1, 1),
(10, 'Cây giống', 'cay-giong', 1, 0, '2', '2019-06-03 22:19:53', '1', '2021-11-30 10:14:35', '1', 1, 1),
(11, 'Cây cảnh văn phòng', 'cay-canh-van-phong', 2, 4, '1', '2019-06-03 22:37:59', '1', '2021-11-30 10:13:00', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'n2ftechnology@gmail.com', '@n2ftech', 'n2ftechnology@gmail.com', '30000', 'Shop cây cảnh', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(11, 'gặp sự cố', '0394073759', 'khach@gmail.com', 'tôi vừa mua đth hôm qua.......', '2021/8/15', 1, 1, 'Khách');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(4, 'Chọn cây cảnh chịu nắng', 'chon-cay-canh-chiu-nang', '', '<h1>Những c&acirc;y cảnh chịu nắng tốt hiện nay đang được ưa chuộng</h1>\r\n\r\n<p>Bancaycanhdep.com xin chia sẻ Những c&acirc;y cảnh chịu nắng tốt hiện nay đang được kh&aacute;ch h&agrave;ng ưa chuộng trồng ở ban c&ocirc;ng hoặc tr&ecirc;n s&acirc;n thượng t&ograve;a nh&agrave; c&oacute; nắng lớn</p>\r\n\r\n<p><img alt=\"Cây Đa Búp Đỏ\" src=\"https://bancaycanhdep.com/uploads/news/cay-da-bup-do.jpg\" style=\"width:460px\" /></p>\r\n\r\n<p>C&acirc;y Đa B&uacute;p Đỏ</p>\r\n\r\n<p>Thời tiết m&ugrave;a h&egrave; đang đến gần m&agrave; ng&ocirc;i nh&agrave; của qu&yacute; kh&aacute;ch c&oacute; vẻ rất đơn điệu thiếu kh&ocirc;ng gian xanh muốn mua 1 c&acirc;y xanh trồng cho m&aacute;t ban c&ocirc;ng hoặc s&acirc;n thượng nhưng kh&ocirc;ng biết chọn loại c&acirc;y n&agrave;o. H&ocirc;m nay bancaycanhdep.com xin chia sẻ một số loại c&acirc;y c&oacute; khả năng chịu nắng v&agrave; chịu hạn tốt cho qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>Đầu ti&ecirc;n Banhcaycanhdep.com sẽ b&agrave;n về những loại c&acirc;y cảnh chịu nắng&nbsp;hướng t&acirc;y tốt nhất v&igrave; th&ocirc;ng thường nắng s&aacute;ng hướng đ&ocirc;ng sẽ kh&ocirc;ng ảnh hưởng nhiều c&ograve;n bắt đầu từ 11h trưa chở đi đến chiều l&agrave; nắng chuyển dần sang hướng t&acirc;y nắng cực gắt th&ocirc;ng thường đối với thời tiết miền nam về mua kh&ocirc; v&agrave; miền bắc về m&ugrave;a h&egrave; ảnh hưởng rất lớn đến c&acirc;y c&oacute; thể 1-2 ng&agrave;y qu&ecirc;n tưới nước l&agrave; c&acirc;y th&agrave;nh que củi kh&ocirc; rồi.</p>\r\n\r\n<h3>Những c&acirc;y cảnh chịu nắng&nbsp;hướng t&acirc;y tốt</h3>\r\n\r\n<h4>&nbsp;<a href=\"https://bancaycanhdep.com/noi-that/cay-cau-vang-19.html\" target=\"_blank\">C&acirc;y cau v&agrave;ng</a></h4>\r\n\r\n<p>C&acirc;y Cau V&agrave;ng T&ecirc;n gọi kh&aacute;c:&nbsp;cau bụi, cau cọ, cau tre. T&ecirc;n khoa học của cau v&agrave;ng l&agrave; Chrysalidocarpus lutescen. Th&acirc;n, t&aacute;n , l&aacute;: c&acirc;y bụi, th&acirc;n cột, ngắn. L&aacute; cong h&igrave;nh cung, chia th&ugrave;y, c&oacute; đến 50 cặp th&ugrave;y l&ocirc;ng chim rộng khoảng 2-3 cm gần như đối nhau, m&agrave;u xanh lục dịu, c&oacute; g&acirc;n giữa khỏe. Cuống l&aacute; mảnh v&agrave; c&oacute; bẹ, d&agrave;i cỡ 60 cm, m&agrave;u v&agrave;ng lục ở gốc v&agrave; c&oacute; những rạch n&acirc;u ở ph&iacute;a nửa dưới. Hoa, quả, hạt: Cụm hoa ch&ugrave;m ở th&acirc;n c&acirc;y gi&agrave;, mo m&agrave;u v&agrave;ng v&agrave; lớn. Quả dạng tr&aacute;i xoan, m&agrave;u v&agrave;ng.<br />\r\n<br />\r\nCau v&agrave;ng l&agrave; giống c&acirc;y c&oacute; tốc độ sinh trưởng trung b&igrave;nh, giữ d&aacute;ng l&acirc;u v&agrave; c&oacute; sức sống rất mạnh mẽ. C&acirc;y c&oacute; thể sống tốt trong điều kiện thiếu &aacute;nh s&aacute;ng hoặc ngo&agrave;i trời, &iacute;t s&acirc;u bệnh v&agrave; kh&ocirc;ng cần qu&aacute; nhiều nước.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cau vang dep\" src=\"https://bancaycanhdep.com/uploads/news/cau-vang-dep.jpg\" style=\"height:465px; width:660px\" /></p>\r\n\r\n<p>C&acirc;y Cau V&agrave;ng</p>\r\n\r\n<h4><a href=\"https://bancaycanhdep.com/noi-that/cay-luoi-ho-7.html\" target=\"_blank\">C&acirc;y lưỡi hổ</a></h4>\r\n\r\n<p>C&acirc;y lưỡi hổ l&agrave; một trong số lo&agrave;i c&acirc;y khỏe mạnh c&oacute; sức sống bền bỉ nhất. C&acirc;y lưỡi hổ l&agrave; một trong số &iacute;t c&acirc;y chịu n&oacute;ng, chịu kh&ocirc; hạn tốt, cũng như c&oacute; thể sống trong điều kiện thiếu &aacute;nh s&aacute;ng trong thời gian d&agrave;i.<br />\r\n<br />\r\n&Aacute;nh s&aacute;ng th&iacute;ch hợp với c&acirc;y lưỡi hổ: Lưỡi hổ ưa kh&iacute; hậu kh&ocirc; n&oacute;ng, chịu r&eacute;t kh&aacute; k&eacute;m. C&acirc;y chịu được &aacute;nh nắng trực tiếp, nhưng vẫn sống khỏe mạnh trong nh&agrave; ho&agrave;n to&agrave;n hoặc b&oacute;ng r&acirc;m.</p>\r\n\r\n<p><img alt=\"cây lưỡi hổ vằn\" src=\"https://bancaycanhdep.com/uploads/news/cay-luoi-hovan.jpg\" style=\"height:500px; width:600px\" /></p>\r\n\r\n<p>c&acirc;y lưỡi hổ&nbsp;</p>\r\n\r\n<h4><a href=\"https://bancaycanhdep.com/cong-trinh/cay-da-bup-do-34.html\" target=\"_blank\">C&acirc;y Đa B&uacute;p Đỏ</a></h4>\r\n\r\n<p>C&acirc;y đa b&uacute;p đỏ khỏe mạnh, &iacute;t s&acirc;u bệnh, th&iacute;ch hợp trồng trến s&acirc;n thượng hoặc ban c&ocirc;ng . C&acirc;y cực dễ chăm s&oacute;c, c&oacute; sức sống bền bỉ Khi chăm c&acirc;y cần cắt tỉa để c&oacute; d&aacute;ng đẹp.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Cây Đa Búp Đỏ\" src=\"https://bancaycanhdep.com/uploads/news/cay-da-bup-do.jpg\" style=\"height:550px; width:550px\" /></p>\r\n\r\n<p><a href=\"https://bancaycanhdep.com/cong-trinh/cay-da-bup-do-34.html\" target=\"_blank\">C&acirc;y Đa B&uacute;p Đỏ</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>c&acirc;y&nbsp;leo&nbsp;chịu nắng</h3>\r\n\r\n<p>Những Mẫu c&acirc;y d&acirc;y leo chịu nắng tốt c&oacute; thể trồng ban c&ocirc;ng hoặc tr&ecirc;n s&acirc;n thượng</p>\r\n\r\n<h4>C&uacute;c tần ấn độ</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&acirc;y&nbsp;c&uacute;c tần Ấn Độ&nbsp;c&oacute; tốc độ ph&aacute;t triển mạnh mẽ với l&aacute; xanh quanh năm. C&acirc;y mọc th&agrave;nh chuỗi d&agrave;i liền nhau tạo th&agrave;nh một chiếc m&agrave;nh thi&ecirc;n nhi&ecirc;n tuyệt đẹp. Nh&igrave;n từ xa, bạn sẽ c&oacute; cảm gi&aacute;c d&agrave;n c&uacute;c tần ấn độ n&agrave;y như một dải lụa xanh che đi c&aacute;i nắng m&ugrave;a h&egrave;.</p>\r\n\r\n<p><img alt=\"Cây cúc tần ấn độ\" src=\"https://bancaycanhdep.com/uploads/news/cay-cuc-tan-an-do.jpg\" style=\"height:528px; width:660px\" /></p>\r\n\r\n<p>C&acirc;y c&uacute;c tần ấn độ</p>\r\n\r\n<h4>C&acirc;y trang leo hay gọi l&agrave; Sử qu&acirc;n tử:</h4>\r\n\r\n<p>C&acirc;y hoa sử qu&acirc;n tử (Quisqualisindica) c&ograve;n được gọi l&agrave; c&acirc;y trang d&acirc;y, d&acirc;y giun, quả giun, quả nấc v&agrave; c&acirc;y trang leo,&nbsp;Đ&acirc;y l&agrave; lo&agrave;i c&acirc;y leo, hoa c&oacute; c&aacute;nh&nbsp; nhỏ xinh, m&agrave;u hồng phơn phớt trắng hoặc m&agrave;u đỏ tươi mọc th&agrave;nh từng ch&ugrave;m khoe sắc trong nắng sớm, rung rinh&nbsp; khi cơn gi&oacute; thổi nhẹ qua. Hoa Sử qu&acirc;n tử to&aacute;t l&ecirc;n vẻ đẹp giản dị, nhẹ nh&agrave;ng.&nbsp; lo&agrave;i hoa n&agrave;y l&agrave; c&acirc;y leo th&acirc;n gỗ, ph&acirc;n c&agrave;nh nh&aacute;nh nhiều, c&agrave;nh non mềm mảnh. L&aacute; đơn mọc đối dạng tr&aacute;i xoan. Hoa trắng, phớt hồng&nbsp; hay đỏ xen lẫn nhau, mọc th&agrave;nh ch&ugrave;m ở đầu c&agrave;nh. L&uacute;c mới nở hoa m&agrave;u trắng, chuyển dần sang hồng, khi đủ nắng c&aacute;nh hoa lại mang m&agrave;u đỏ thắm, khi tới c&oacute; m&agrave;u phớt t&iacute;m, c&oacute; m&ugrave;i thơm&nbsp; dễ chịu.</p>\r\n\r\n<p><img alt=\"cay trang leo gia re\" src=\"https://bancaycanhdep.com/uploads/news/cay-trang-leo-gia-re.jpg\" style=\"height:495px; width:660px\" /></p>\r\n\r\n<h4>Những loại hoa chịu nắng tốt<br />\r\n&nbsp;</h4>\r\n\r\n<p><img alt=\"dừa cạn\" src=\"https://bancaycanhdep.com/uploads/news/dua-can.png\" style=\"height:528px; width:660px\" /></p>\r\n\r\n<p>dừa cạn</p>\r\n\r\n<p><img alt=\"dạ yến thảo\" src=\"https://bancaycanhdep.com/uploads/news/da-yen-thao.jpg\" style=\"height:437px; width:660px\" /></p>\r\n\r\n<p>Dạ yến thảo</p>\r\n\r\n<p>V&agrave; c&ograve;n rất nhiều loại c&acirc;y c&oacute; thể trồng ngo&agrave;i nắng qu&yacute; kh&aacute;ch n&agrave;o biết c&oacute; thể bổ sung gi&uacute;p Bancaycanhdep.com ở phần b&igrave;nh luận để cho nhiều kh&aacute;ch h&agrave;ng biết th&ecirc;m về c&aacute;c loai c&acirc;y c&oacute; khả năng chịu nắng tốt trồng ở ban c&ocirc;ng v&agrave; s&acirc;n thượng</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'cay-da-bup-do.jpg', '2019-05-26 23:18:02', '1', '2021-11-30 09:24:02', '1', 1, 1),
(6, 'Chọn cây để cạnh ông thần tài', 'chon-cay-de-canh-ong-than-tai', '', '<h1>Những C&acirc;y Đặt B&agrave;n Thờ Thần T&agrave;i Mang Nhiều T&agrave;i Lộc Đến Cho Gia Chủ</h1>\r\n\r\n<p>Những C&acirc;y xanh Đặt B&agrave;n Thờ Thần T&agrave;i, thổ địa m&agrave; nhiều đại gia v&agrave; c&aacute;c c&ocirc;ng ty lớn đang trưng v&agrave; Mang Nhiều T&agrave;i Lộc cho họ như kim ng&acirc;n, kim tiền, ph&aacute;t t&agrave;i, vạn lộc, ph&uacute; qu&yacute;, ngọc ng&acirc;n...</p>\r\n\r\n<p><img alt=\"Chậu kim ngân ông thần tài\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-chau-ong-phat.jpg\" style=\"width:460px\" /></p>\r\n\r\n<p>Chậu kim ng&acirc;n &ocirc;ng thần t&agrave;i</p>\r\n\r\n<h2>B&agrave;n thờ thần t&agrave;i n&ecirc;n đặt c&acirc;y g&igrave;?&nbsp;</h2>\r\n\r\n<p>Ban thờ Thần t&agrave;i - &Ocirc;ng địa l&agrave; một vật phẩm phong thủy quan trọng kh&ocirc;ng thể thiểu trong c&aacute;c cửa h&agrave;ng, c&ocirc;ng ty, những khu vực kinh doanh bu&ocirc;n b&aacute;n. V&igrave; n&oacute; mang lại sự may mắn trong tiền bạc, kinh doanh, sự thăng tiến trong c&ocirc;ng danh sự nghiệp Nếu ban thờ thần t&agrave;i &ocirc;ng địa c&oacute; th&ecirc;m c&acirc;y ph&ugrave; trợ th&igrave; c&ocirc;ng việc kinh doanh c&agrave;ng tốt hơn<br />\r\n&nbsp;</p>\r\n\r\n<h3>Những c&acirc;y cảnh, c&acirc;y xanh m&agrave; c&aacute;c đại gia hoặc c&aacute;c chủ nh&agrave; h&agrave;ng kh&aacute;ch sạn thường chọn để trưng cạnh thần t&agrave;i thổ địa</h3>\r\n\r\n<p>Th&ocirc;ng thường mọi người sẽ chọn những c&acirc;y mang lại hưng thịnh t&agrave;i lộc cho gia chủ như Kim ng&acirc;n, kim tiền, ph&aacute;t t&agrave;i ph&aacute;t lộc, thần t&agrave;i để đặt cạnh &ocirc;ng thần t&agrave;i gi&uacute;p ph&ugrave; trợ l&agrave;m ăn c&agrave;ng ph&aacute;t đạt.</p>\r\n\r\n<h4>C&acirc;y kim ng&acirc;n đặt cạnh ban thần t&agrave;i thổ địa mang lại may mắn v&agrave; t&agrave;i lộc sinh s&ocirc;i</h4>\r\n\r\n<p>C&acirc;y kim ng&acirc;n&nbsp;th&acirc;n d&aacute;ng h&igrave;nh trụ vững tr&atilde;i, l&aacute; xanh mượt số lẻ c&oacute; &yacute; nghĩa sinh s&ocirc;i nảy nở trong phủy. Người ta tin rằng nếu bạn đặt một c&acirc;y c&acirc;y kim ng&acirc;n ở nơi tiếp x&uacute;c với c&aacute;c khu vực li&ecirc;n quan đến tiền, th&igrave; c&acirc;y n&agrave;y sẽ mang lại may mắn v&agrave; sinh s&ocirc;i cho chủ sở hữu.<br />\r\n&nbsp;</p>\r\n\r\n<p>Về bản chất, c&acirc;y kim ng&acirc;n l&agrave; c&acirc;y gỗ n&ecirc;n thuộc mệnh Mộc. Trong phong thủy th&igrave; người ph&ugrave; hợp nhất với c&acirc;y kim ng&acirc;n l&agrave; người c&oacute; mệnh Thủy, mệnh Hoả, mệnh Mộc v&igrave; Thủy sinh Mộc (tương hợp), Mộc sinh Hỏa (tương sinh).<br />\r\n<br />\r\n<br />\r\nTuy vậy, c&acirc;y kim ng&acirc;n l&agrave; c&acirc;y c&oacute; phong thủy tốt c&oacute; thể ai cũng ph&ugrave; hợp nếu biết c&aacute;ch c&acirc;n bằng &acirc;m dương ngũ h&agrave;nh bằng c&aacute;ch phối hợp m&agrave;u sắc theo mệnh.<br />\r\n<br />\r\nNgười mệnh Thổ: Thổ l&agrave; đất nu&ocirc;i dưỡng c&acirc;y để ph&aacute;t triển, nhưng ch&iacute;nh v&igrave; đ&oacute; c&acirc;y h&uacute;t dinh dưỡng, đ&acirc;m s&acirc;u v&agrave;o trong đất n&ecirc;n sẽ tương khắc (Mộc khắc Thổ), để c&acirc;n bằng, người mệnh Thổ sử dụng chậu c&acirc;y m&agrave;u đỏ lửa, hoặc m&agrave;u cam của mệnh Hỏa sẽ c&acirc;n bằng &acirc;m dương (Hỏa sinh Thổ).<br />\r\n<br />\r\nNgười mệnh Kim: Đối với người mệnh Kim, n&ecirc;n trồng kim ng&acirc;n trong b&igrave;nh thủy sinh. Kim sinh Thủy để bổ trợ &acirc;m dương h&ograve;a hợp.<br />\r\n<br />\r\nKim ng&acirc;n th&ocirc;ng thường kh&aacute;ch h&agrave;ng đặt cạnh b&agrave;n thờ thần t&agrave;i c&oacute; 3 k&iacute;ch cỡ cỡ lớn, cỡ vừa v&agrave; cỡ trung phụ thuộc v&agrave;o chiều cao v&agrave; độ rộng của ban thờ m&agrave; qu&yacute; kh&aacute;ch c&oacute; thể để c&aacute;c k&iacute;ch cỡ kh&aacute;c nhau&nbsp;</p>\r\n\r\n<h5>Những mẫu kim ng&acirc;n cỡ nhỏ đặt cạnh b&agrave;n thờ thần t&agrave;i&nbsp;</h5>\r\n\r\n<p><img alt=\"kim ngân ông thần tài\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-chau-ong-phat.jpg\" style=\"height:495px; width:660px\" /></p>\r\n\r\n<p><img alt=\"kim ngan 3 than than de ban chau dat nung\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-3-than-than-de-ban-chau-dat-nung.jpg\" style=\"height:495px; width:660px\" /></p>\r\n\r\n<p><img alt=\"kim ngan 1 than de ban\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-1-than-de-ban.jpg\" style=\"height:495px; width:660px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"kim ngan thuy sinh\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-thuy-sinh.jpg\" style=\"height:495px; width:660px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"kim ngan 1 than mini\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-1-than-mini.jpg\" style=\"height:495px; width:660px\" /></p>\r\n\r\n<p><img alt=\"kim ngan bim 5 gia re\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-bim-5-gia-re.jpg\" style=\"height:880px; width:660px\" /></p>\r\n\r\n<h5>Mẫu kim ng&acirc;n cỡ trung đặt cạnh b&agrave;n thờ thần t&agrave;i&nbsp;</h5>\r\n\r\n<p><img alt=\"kim ngan trung ong than tai\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-trung-ong-than-tai.jpg\" style=\"height:1079px; width:660px\" /></p>\r\n\r\n<h5>C&acirc;y kim ng&acirc;n để cạnh b&agrave;n thờ thổ địa thần t&agrave;i cỡ lớn</h5>\r\n\r\n<p><img alt=\"kim ngan trung ong than tai co lon\" src=\"https://bancaycanhdep.com/uploads/news/kim-ngan-trung-ong-than-tai-co-lon.jpg\" style=\"height:1079px; width:660px\" /></p>\r\n\r\n<h4>C&acirc;y kim tiền cạnh ban b&agrave;n thờ thổ địa thần t&agrave;i mang đến cho gia chủ nhiều may mắn t&agrave;i lộc, n&oacute; mang đến nhiều vượng kh&iacute;</h4>\r\n\r\n<p><br />\r\nC&acirc;y kim tiền l&agrave; loại c&acirc;y phong thủy mang đến t&agrave;i lộc, may mắn, ph&uacute; qu&yacute;, lịch l&atilde;m, gi&agrave;u sang, tiền bạc cho gia chủ.Theo phong thủy, kim tiền l&agrave; c&acirc;y &ndash; mộc, nơi c&acirc;y tồn tại v&agrave; ph&aacute;t triển l&agrave; Thổ, dinh dưỡng, nước tưới hoặc dung dịch thủy sinh l&agrave; Thủy, c&acirc;y trồng chậu hoặc b&igrave;nh thủy tinh l&agrave; Kim. Một c&acirc;y đ&atilde; kết hợp của c&aacute;c yếu tố phong thủy n&ecirc;n c&agrave;ng được ưa chuộng.<br />\r\n<br />\r\nL&aacute; kim tiền c&oacute; viền tr&ograve;n mang t&iacute;nh &acirc;m ph&ugrave; hợp với trang tr&iacute; hiện đại ( từ kiến tr&uacute;c đến đồ vật đều vu&ocirc;ng th&agrave;nh, sắc cạnh) &ndash; theo phong thủy đ&oacute; l&agrave; t&iacute;nh dương. Để c&acirc;n bằng, điều h&ograve;a cần c&aacute;c h&igrave;nh thức tr&ograve;n trịa, &acirc;m t&iacute;nh, căng mọng v&agrave; kim tiền đ&aacute;p ứng được y&ecirc;u cầu đ&oacute;.<br />\r\n<br />\r\nĐặc biệt khi c&acirc;y kim tiền đ&acirc;m chồi nảy lộc, nở hoa sẽ đem lại nhiều may mắn, tiền t&agrave;i đến cho gia chủ.</p>\r\n\r\n<h5>Những mẫu c&acirc;y kim tiền để cạnh ban b&agrave;n thờ thổ địa thần t&agrave;i được ưa chuộng.</h5>\r\n\r\n<p><img alt=\"mẫu cây kim tiền mini\" src=\"https://bancaycanhdep.com/uploads/news/mau-cay-kim-tien-mini.jpg\" style=\"height:415px; width:660px\" /></p>\r\n\r\n<p><img alt=\"cay kim tien trung ban tho ong dia\" src=\"https://bancaycanhdep.com/uploads/news/cay-kim-tien-trung-ban-tho-ong-dia.jpg\" style=\"height:1031px; width:660px\" /></p>\r\n\r\n<h4>Trồng C&acirc;y Ph&aacute;t t&agrave;i cạnh ban thờ &ocirc;ng thổ địa thần t&agrave;i gi&uacute;p gia chủ ng&agrave;y c&agrave;ng ph&aacute;t t&agrave;i.</h4>\r\n\r\n<p>C&acirc;y Ph&aacute;t t&agrave;i&nbsp;mang đến may mắn, t&agrave;i lộc, thịnh vượng cho gia chủ, được ưa chuộng trồng trang tr&iacute; trong nh&agrave;, văn ph&ograve;ng, hoặc qu&agrave; tặng.C&acirc;y Ph&aacute;t t&agrave;i&nbsp;&nbsp;Loại c&acirc;y n&agrave;y mang lại may mắn, cho kh&ocirc;ng gian b&igrave;nh y&ecirc;n, đem tiền t&agrave;i, ph&uacute;c lộc đến với gia chủ. Gi&uacute;p tinh thần của gia chủ lu&ocirc;n thư th&aacute;i, thoải m&aacute;i, năng lượng dồi d&agrave;o. V&agrave;&nbsp; c&acirc;y n&agrave;y gi&uacute;p cuộc sống, c&ocirc;ng việc gặp nhiều may mắn, su&ocirc;n sẻ, thuận lợi.&nbsp;&nbsp;<br />\r\n<br />\r\nC&aacute;c mẫu ph&aacute;t t&agrave;i để cạnh ban b&agrave;n thờ thần t&agrave;i thổ địa</p>\r\n\r\n<p><img alt=\"phát tài thái mini\" src=\"https://bancaycanhdep.com/uploads/news/phat-tai-thai-mini.jpg\" style=\"height:495px; width:660px\" /></p>\r\n\r\n<p><img alt=\"mau phat tai dep\" src=\"https://bancaycanhdep.com/uploads/news/mau-phat-tai-dep.jpg\" style=\"height:1167px; width:660px\" /></p>\r\n\r\n<p><img alt=\"phat tai soc\" src=\"https://bancaycanhdep.com/uploads/news/phat-tai-soc.jpg\" style=\"height:1173px; width:660px\" /></p>\r\n\r\n<p><img alt=\"cây phát tài thiết mộc lan\" src=\"https://bancaycanhdep.com/uploads/news/cay-phat-tai-thiet-moc-lan.jpg\" style=\"height:371px; width:660px\" /></p>\r\n\r\n<p><img alt=\"cay phat tai bup sen dep\" src=\"https://bancaycanhdep.com/uploads/news/cay-phat-tai-bup-sen-dep.jpg\" style=\"height:891px; width:660px\" /></p>\r\n\r\n<h4>C&acirc;y Vạn Lộc&nbsp;hay c&ograve;n gọi l&agrave; c&acirc;y Thi&ecirc;n Ph&uacute; c&acirc;y c&oacute; &yacute; nghĩa phong thủy mang đến t&agrave;i lộc v&agrave; may mắn cho gia chủ</h4>\r\n\r\n<p><br />\r\n&nbsp;Vạn Lộc l&agrave; c&acirc;y tượng trưng cho sự may mắn tr&agrave;n đầy, mang nhiều t&agrave;i lộc. C&acirc;y được y&ecirc;u th&iacute;ch v&igrave; sự tinh tế, sang trọng khi bạn v&ocirc; t&igrave;nh bắt gặp n&oacute; ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cay van loc thuy sinh\" src=\"https://bancaycanhdep.com/uploads/news/cay-van-loc-thuy-sinh.jpg\" style=\"height:1173px; width:660px\" /></p>\r\n\r\n<p><br />\r\nVạn lộc trồng trong nh&agrave; sẽ l&agrave; điểm tựa chắc chắn cho may mắn vạn lộc về t&agrave;i ch&iacute;nh, kinh tế gia đ&igrave;nh .<br />\r\n<br />\r\nC&acirc;y Vạn lộc&nbsp;quả thực l&agrave; một lo&agrave;i c&acirc;y phong thủy mang lại nhiều may mắn, tại lộc cho gia chủ. Người xưa thường n&oacute;i trồng vạn lộc m&agrave; ra hoa th&igrave; may mắn kh&ocirc;ng c&ograve;n g&igrave; bằng.&nbsp;</p>\r\n\r\n<h4>C&acirc;y Ph&uacute; Qu&yacute; mang đến cho gia chủ sự may mắn, gi&agrave;u sang v&agrave; ph&uacute; qu&yacute; cho gia chủ.</h4>\r\n\r\n<p><img alt=\"phu quy\" src=\"https://bancaycanhdep.com/uploads/news/phu-quy.jpg\" style=\"height:715px; width:660px\" /></p>\r\n\r\n<p><br />\r\nM&agrave;u đỏ l&agrave; m&agrave;u của may mắn, do đ&oacute; c&acirc;y Ph&uacute; Qu&yacute; trong phong thủy l&agrave; c&acirc;y biểu tượng cho những điều tốt l&agrave;nh. Đồng thời, giống như t&ecirc;n gọi m&agrave; người ta đặt cho c&acirc;y, Ph&uacute; Qu&yacute; mang &nbsp;đến sự gi&agrave;u sang, t&agrave;i lộc, ph&uacute; qu&yacute; cho người trồng. Nếu bạn tặng cho ai đ&oacute; hoặc được người kh&aacute;c tặng c&acirc;y Ph&uacute; Qu&yacute; th&igrave; c&oacute; nghĩa l&agrave; cầu ch&uacute;c những điều tốt đẹp, mong muốn một cuộc sống thịnh vượng, ph&aacute;t t&agrave;i.</p>\r\n', 'kim-ngan-chau-ong-phat.jpg', '2019-06-26 17:22:04', '1', '2021-11-30 09:23:06', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(76, 'Nguyên', 'nguyennguyen', '66c6883a896b36c3734abccad05d84e1', '', '0394073751', 'nguyencaonguyencmu@gmail.com', '2021-11-30 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(13, 'CAOTHANG', 150000, 200, 0, '2021-07-26', 100000, 'Giảm 150k', '2019-07-06', 1, 1, 1),
(19, 'CAONGUYEN', 50000000, 100, 1, '2021-05-01', 50000000, 'hi', '2021-04-25', 1, 1, 1),
(21, 'TESTGG', 500000, 1, 1, '2021-05-27', 10000000, 'giảm giá test', '2021-05-25', 1, 1, 1),
(26, 'Q03GRFBAKEAG', 100000, 1, 0, '2021-12-30', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2021-11-30', 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(83, 'tzRd1Om4', 76, '2021-11-30 15:52:00', 'Nguyên', '0394073751', 430000, 30000, 0, 95, 957, 'xa Dien Bich huyen Dien Chau Nghe An', 1, 0),
(84, '9Mibk5Gu', 76, '2021-11-30 15:58:26', 'Nguyên', '0394073751', 210000, 30000, 0, 24, 222, 'xa Dien Bich huyen Dien Chau Nghe An', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(110, 83, 46, 2, 200000, 1, 1),
(111, 84, 44, 1, 180000, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Digiworld', 'DIGIWORLD', 'caycanh', '2019-05-22 16:08:31', 4, '2021-11-30 09:28:32', 1, 1, 1),
(2, 'Nhà cung cấp cây cảnh Hà Nội', 'GOVAPPRODUCER', 'caycanh', '2019-06-12 23:30:37', 1, '2021-11-30 09:28:15', 1, 1, 1),
(3, 'Cây cảnh Sài Gòn', 'TGDDCODE', 'caycanh', '2019-05-22 16:06:31', 4, '2021-11-30 09:28:57', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(37, 10, 'Cây Sala giống', 'cay-sala-giong', 'f4efbfffc455b4295783f9b9224a35bd.jpg', '62ea0c64f7770d607ca322b091956a3d.jpg#a70197b87108a2d73ba86e8aaa3f51a5.jpg#53282876b7894eb8b7aa76a05fc51d20.jpg', 'Bán Sala giống tại Hồ Chí Minh giá 30.000/cây cao 30-50cm', '<p>Hiện tại m&igrave;nh c&ograve;n 1 L&ocirc; c&acirc;y Sala giống cao từ 30-50 Cm để gi&aacute; b&aacute;n lẻ l&agrave; 30.000/c&acirc;y. C&acirc;y trong bầu đảm bảo sống 100% khi trồng</p>\r\n\r\n<p><img alt=\"Cây Sala giống\" src=\"https://bancaycanhdep.com/uploads/news/cay-sala-giong.jpg\" style=\"width:460px\" /></p>\r\n\r\n<p>C&acirc;y Sala giống</p>\r\n\r\n<h2>Bảng gi&aacute; c&acirc;y Sala giống: C&acirc;y Sala gi&aacute; bao nhi&ecirc;u tiền một c&acirc;y?</h2>\r\n\r\n<p>Gi&aacute; c&acirc;y Sala, ngọc kỳ l&acirc;n, đang được bancaycanhdep.com &aacute;p dụng b&aacute;n tr&ecirc;n website v&agrave; cửa h&agrave;ng l&agrave; :</p>\r\n\r\n<ul>\r\n	<li>&hArr; Gi&aacute; c&acirc;y sala cao từ 20-30cm gi&aacute; 30.000 VNĐ&nbsp;</li>\r\n	<li>&hArr; Gi&aacute; c&acirc;y sala&nbsp;cao từ 40-50cm gi&aacute; 50.000 VNĐ</li>\r\n	<li>&hArr; Gi&aacute; c&acirc;y sala&nbsp;cao từ 60-70cm gi&aacute; 60.000 VNĐ</li>\r\n	<li>&hArr; Gi&aacute; c&acirc;y sala cao từ 80cm -1,2m gi&aacute; 80.000 VNĐ&nbsp;</li>\r\n	<li>&hArr; Gi&aacute; c&acirc;y Sala đường k&iacute;nh 5-7cm gi&aacute;&nbsp; 1.000.000 VNĐ</li>\r\n	<li>&hArr; Gi&aacute; c&acirc;y Sala đường k&iacute;nh 10cm gi&aacute;&nbsp; 2.500.000 VNĐ</li>\r\n</ul>\r\n\r\n<p>C&acirc;y Sala thường được dịch l&agrave; c&acirc;y V&ocirc; Ưu. C&acirc;y hoa n&agrave;y c&oacute; kh&aacute; nhiều t&ecirc;n gọi kh&aacute;c: Sal, Shorea Robusta, Tha la, hoa đầu l&acirc;n, c&acirc;y Ngọc Kỳ L&acirc;n hay H&agrave;m Rồng&hellip;<br />\r\n&nbsp;</p>\r\n\r\n<h3>C&acirc;y sala&nbsp;l&agrave; được trồng trong c&aacute;c c&ocirc;ng tr&igrave;nh Phật Gi&aacute;o</h3>\r\n\r\n<p><br />\r\nNếu như trong Phật Gi&aacute;o Đại Thừa, c&acirc;y Bồ đề giữ vị tr&iacute; hết sức quan trọng th&igrave;, Sala mang &yacute; nghĩa thi&ecirc;ng li&ecirc;ng đối với Phật gi&aacute;o nguy&ecirc;n thủy (Nam t&ocirc;ng), gắn liền với những sự kiện quan trọng trong cuộc đời của Đức Phật Th&iacute;ch Ca.&nbsp;</p>\r\n\r\n<p><img alt=\"Cây sala có hoa\" src=\"https://bancaycanhdep.com/uploads/news/cay-sala-co-hoa.jpg\" style=\"height:371px; width:660px\" /></p>\r\n\r\n<p>C&acirc;y sala c&oacute; hoa</p>\r\n\r\n<p>Trước kia, Sala thường trồng trong c&aacute;c s&acirc;n ch&ugrave;a Nam t&ocirc;ng ở Sri Lanka, Myanmar, Th&aacute;i Lan, Campuchia, L&agrave;o v&agrave; một số ch&ugrave;a Khmer Nam bộ của Việt Nam. Ng&agrave;y nay, trong c&aacute;c ng&ocirc;i ch&ugrave;a Mật t&ocirc;ng cũng trồng loại c&acirc;y n&agrave;y.<br />\r\n<br />\r\nC&acirc;y Thala (Sala, Ngọc Kỳ L&acirc;n) l&agrave; một loại c&acirc;y th&acirc;n gỗ, c&acirc;y c&oacute; thể cao tới 30-35m, t&aacute;n rất rộng, l&aacute; d&agrave;y, Hoa Thala&nbsp;ra từ gốc đến ngọn v&agrave; nở suốt từ th&aacute;ng 3 đến th&aacute;ng 9 &acirc;m lịch, ch&ugrave;m hoa d&agrave;i c&oacute; thể tới 2m đến 3m, hoa c&oacute; m&agrave;u đỏ, rất thơm thường được nhắc tới trong kinh Phật. C&oacute; t&aacute;c giả nghi&ecirc;n cứu Phật gi&aacute;o c&ograve;n gọi hoa Thala l&agrave; hoa V&ocirc; Ưu.<br />\r\n<br />\r\nQuả Thala lớn tr&ograve;n to đường k&iacute;nh quả 15-24cm, c&oacute; 200-300 hạt trong một quả. Quả c&acirc;y Thala&nbsp;c&oacute; t&iacute;nh kh&aacute;ng sinh, kh&aacute;ng nấm, s&aacute;t khuẩn v&agrave; c&oacute; t&aacute;c dụng giảm đau. C&acirc;y được sử dụng để chữa bệnh cảm lạnh v&agrave; đau dạ d&agrave;y. Nước uống l&agrave;m từ c&aacute;c l&aacute; được sử dụng để chữa bệnh da. B&ecirc;n trong quả c&oacute; thể khử tr&ugrave;ng vết thương v&agrave; l&aacute; non chữa đau răng&hellip;</p>\r\n\r\n<p><img alt=\"cây sala có quả\" src=\"https://bancaycanhdep.com/uploads/news/cay-sala-co-qua.jpg\" style=\"height:431px; width:660px\" /></p>\r\n\r\n<p>c&acirc;y sala c&oacute; quả</p>\r\n\r\n<p><br />\r\nTrong kinh Phật, c&oacute; hai loại c&acirc;y được xem l&agrave; linh thi&ecirc;ng v&agrave; thường được nhắc đến nhiều l&agrave; c&acirc;y Bồ đề v&agrave; c&acirc;y Sala. Dưới gốc c&acirc;y Bồ đề, th&aacute;i tử Tất Đạt Đa gi&aacute;c ngộ th&agrave;nh Phật sau 49 ng&agrave;y đ&ecirc;m thiền định. Dưới c&acirc;y Sala ở vườn L&acirc;m T&igrave; Ni (Lumbini), Đức Phật Đản sinh v&agrave; Ng&agrave;i cũng nhập diệt giữa 2 c&acirc;y Sala tại khu rừng Usinara đầy c&acirc;y sala.</p>\r\n', 2, 10, 0, 0, 50000, 50000, '2021-11-30 10:24:09', '1', '2021-11-30 10:24:09', '1', 1, 1),
(38, 10, 'Cây lộc vừng giống', 'cay-loc-vung-giong', 'b316c7ef1d55fc4f3d1174eff94cabf1.jpg', 'f31fb0951ccb1e9ec24eb383e9ef62ab.jpg#f9f06b5e0545123d2aeec5ad1a1a72cc.jpg', 'Bán Lộc Vừng giống tại Hồ Chí Minh giá 90.000/cây cao 1m-1.2m', '<p>Hiện tại Bancaycanhdep.com c&ograve;n 1 L&ocirc; c&acirc;y Lộc Vừng giống cao từ 1m-1.2m để gi&aacute; b&aacute;n lẻ l&agrave; 90.000/c&acirc;y. C&acirc;y trong bầu đảm bảo sống 100% khi trồng</p>\r\n\r\n<p><img alt=\"Cây lộc vừng giống\" src=\"https://bancaycanhdep.com/uploads/news/cay-loc-vung-giong.jpg\" style=\"width:460px\" /></p>\r\n\r\n<p>C&acirc;y lộc vừng giống</p>\r\n\r\n<h2>Bảng gi&aacute; c&acirc;y Lộc Vừng giống: C&acirc;y Lộc Vừng gi&aacute; bao nhi&ecirc;u tiền một c&acirc;y?</h2>\r\n\r\n<p>Gi&aacute; c&acirc;y Lộc Vừng, C&acirc;y Mưng, đang được bancaycanhdep.com &aacute;p dụng b&aacute;n tr&ecirc;n website v&agrave; cửa h&agrave;ng l&agrave; :</p>\r\n\r\n<ul>\r\n	<li>&hArr; Gi&aacute; c&acirc;y Lộc Vừng cao từ 1m-1.2m&nbsp;&nbsp;gi&aacute; 90.000 VNĐ&nbsp;</li>\r\n	<li>&hArr; Gi&aacute; c&acirc;y Lộc Vừng c&ocirc;ng tr&igrave;nh cao từ 2m trở l&ecirc;n&nbsp; Li&ecirc;n Hệ 0888834538&nbsp;</li>\r\n</ul>\r\n\r\n<p><br />\r\nLộc vừng, c&ograve;n gọi l&agrave; chiếc hay lộc mưng l&agrave; một lo&agrave;i thuộc chi Lộc vừng, l&agrave; lo&agrave;i c&acirc;y bản địa của c&aacute;c v&ugrave;ng đất ẩm ven biển Nam &Aacute; v&agrave; Bắc &Uacute;c, từ Afghanistan đến Philippin v&agrave; Queensland.<br />\r\n&nbsp;</p>\r\n\r\n<h3>C&acirc;y Lộc Vừng&nbsp;l&agrave; được trồng mang lại t&agrave;i lộc v&agrave; may mắn</h3>\r\n\r\n<p><br />\r\nXưa kia ở c&aacute;c đ&igrave;nh l&agrave;ng, dinh thự hay nh&agrave; quan hay trồng c&acirc;y Lộc Vừng với mong muốn mang lại sự may mắn v&agrave; t&agrave;i lộc. T&ecirc;n Lộc Vừng được cho l&agrave; lộc ứng với ph&aacute;t lộc như vừng m&egrave; tuy hạt nhỏ nhưng nhiều, dồi d&agrave;o v&agrave; c&oacute; khả năng sinh sản v&ocirc; định.<br />\r\n<br />\r\nTheo quan niệm dan gian gốc c&acirc;y Lộc Vừng to vững chắc tượng trưng cho &yacute; ch&iacute; ki&ecirc;n định kh&oacute; di chuyển. Tuổi thọ cao của Lộc Vừng mang &yacute; nghĩa trường thọ b&aacute;ch ni&ecirc;n giai l&atilde;o.&nbsp;</p>\r\n\r\n<p><img alt=\"cây lộc vừng ra hoa\" src=\"https://bancaycanhdep.com/uploads/news/cay-loc-vung-ra-hoa.jpg\" style=\"height:440px; width:660px\" /></p>\r\n\r\n<p>C&acirc;y Lộc Vừng c&oacute; hoa</p>\r\n\r\n<p>Trước kia, Lộc Vừng thường trồng trong c&aacute;c s&acirc;n ch&ugrave;a Nam t&ocirc;ng ở Sri Lanka, Myanmar, Th&aacute;i Lan, Campuchia, L&agrave;o v&agrave; một số ch&ugrave;a Khmer Nam bộ của Việt Nam. Ng&agrave;y nay, trong c&aacute;c ng&ocirc;i ch&ugrave;a Mật t&ocirc;ng cũng trồng loại c&acirc;y n&agrave;y.<br />\r\n<br />\r\n<br />\r\nLộc vừng l&agrave; lo&agrave;i c&acirc;y được ưa chuộng trong khu&ocirc;n vi&ecirc;n của mỗi gia đ&igrave;nh Việt, c&acirc;y lộc vừng mang &yacute; nghĩa phong thủy tốt l&agrave;nh cho gia chủ. Những ch&ugrave;m hoa m&agrave;u đỏ mềm mại v&agrave; thơ mộng tượng trưng cho hỷ sự, gắn liền với ngụ &yacute; ph&aacute;t lộc. V&igrave; thế trồng c&acirc;y lộc vừng trong khu&ocirc;n vi&ecirc;n nh&agrave; mang lại nhiều t&agrave;i lộc v&agrave; may mắn cho gia chủ. Chữ Lộc ứng với T&agrave;i lộc, c&ograve;n Vừng mang h&agrave;m &yacute; nhỏ nhưng nhiều.</p>\r\n\r\n<p><img alt=\"Lộc vừng ra quả\" src=\"https://bancaycanhdep.com/uploads/news/loc-vung-ra-qua.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>c&acirc;y Lộc Vừng c&oacute; quả</p>\r\n\r\n<p><br />\r\nTheo cha &ocirc;ng xưa th&igrave; &ldquo;lộc&rdquo; ứng với t&agrave;i lộc &ndash; &ldquo;vừng&rdquo; ngụ &yacute; l&agrave; nhỏ nhặt nhưng nhiều, th&ecirc;m hoa của c&acirc;y m&agrave;u đỏ&nbsp;rất đẹp mang lại &yacute; nghĩa l&agrave; sự thịnh vượng, ph&aacute;t lộc. D&acirc;n chơi c&acirc;y cảnh miền T&acirc;y thường&nbsp;truyền nhau c&acirc;u n&oacute;i &ldquo;vừng ơi! mở ra cho lộc v&agrave;o&rdquo; c&oacute;&nbsp;nghĩa l&agrave; c&acirc;y lộc vừng mang lại may mắn cho gia chủ, mang lại t&agrave;i lộc cho chủ nh&acirc;n của n&oacute; v&agrave; cảm gi&aacute;c b&igrave;nh y&ecirc;n, an to&agrave;n.</p>\r\n', 3, 10, 0, 0, 90000, 90000, '2021-11-30 10:26:35', '1', '2021-11-30 10:26:35', '1', 1, 1),
(40, 2, 'Hoa Lan Hồ Điệp', 'hoa-lan-ho-diep', '95c89a3e88b3f3a8af2c1b6016a34670.jpg', '18c9d19b7b58d2edf961f76939ea39d7.jpg#085edd6dada2e39145454ec0cb52fc98.jpg', 'Bán Cây Cảnh Đẹp chuyên bán Hoa Lan Hồ Điệp vàng với mẫu 04 cực đẹp phù hợp cho tặng khai trương, bạn bè cha mẹ, và các dịp lễ', '<h3>Th&ocirc;ng tin về Hoa Lan Hồ Điệp v&agrave;ng mẫu 05</h3>\r\n\r\n<p><strong>Hoa Lan Hồ Điệp v&agrave;ng mẫu&nbsp;05 bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>&rArr; 1 Chậu sứ trắng</li>\r\n	<li>&rArr; 6 c&agrave;nh Hoa lan Hồ điệp v&agrave;ng</li>\r\n	<li>&rArr; 1 nơ&nbsp;</li>\r\n	<li>&rArr; c&agrave;nh c&acirc;y trang tr&iacute;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<h3>Mua Hoa Lan Hồ Điệp v&agrave;ng mẫu 05 ở đ&acirc;u Hồ Ch&iacute; Minh</h3>\r\n\r\n<p><br />\r\nNếu qu&yacute; kh&aacute;ch c&oacute; nhu cầu mua Hoa Lan Hồ Điệp v&agrave;ng mẫu 05 c&oacute; thể qua c&ocirc;ng ty ch&uacute;ng t&ocirc;i tại<strong>&nbsp;Vườn C&acirc;y địa Chỉ số&nbsp; 63, Dương B&aacute; Trạc, Phường 1, Quận 8, Hồ Ch&iacute; Minh&nbsp;</strong>&nbsp;hoặc li&ecirc;n hệ theo số điện thoại sau để nh&acirc;n vi&ecirc;n c&ocirc;ng ty tư vấn v&agrave; giao h&agrave;ng cho qu&yacute; kh&aacute;ch<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Li&ecirc;n hệ đặt mua Hoa Lan Hồ Điệp v&agrave;ng mẫu 05:&nbsp;<a href=\"tel:0981036448\">0981.036.448</a></strong><br />\r\nhoặc qua zalo</p>\r\n\r\n<p><img alt=\"zalo bán Hoa Lan Hồ Điệp vàng mẫu 05\" src=\"https://bancaycanhdep.com/uploads/news/zalo.jpg\" /><br />\r\nQu&yacute; kh&aacute;ch c&oacute; thể kết bạn qua zalo bằng c&aacute;ch qu&eacute;t m&atilde; để kết bạn với m&igrave;nh v&agrave; mua Hoa Lan Hồ Điệp v&agrave;ng mẫu 05</p>\r\n', 1, 10, 0, 0, 900000, 900000, '2021-11-30 15:19:05', '1', '2021-11-30 15:19:05', '1', 1, 1),
(42, 1, 'Cây Tùng Sơn', 'cay-tung-son', '5c7256c9af65cf89fc28d6f71b936c59.jpg', '78a0394270da2f088b21846e20bb3606.jpg#eefc1150f41a9218cb739e6205c19f81.jpg', 'Cây Tùng Sơn mang lại may mắn, an lành, hạnh phúc cho gia chủ, là cây được trồng trang trí trong dịp Giáng sinh.', '<p><strong>Giới thiệu c&acirc;y T&ugrave;ng Sơn</strong></p>\r\n\r\n<ul>\r\n	<li>T&ecirc;n kh&aacute;c: Sơn T&ugrave;ng, T&ugrave;ng B&uacute;p, T&ugrave;ng N&uacute;i</li>\r\n	<li>T&ecirc;n khoa học: Pemphis Acidula</li>\r\n	<li>Họ: c&acirc;y l&aacute; Kim</li>\r\n	<li>Xuất xứ: Ch&acirc;u &Aacute;.</li>\r\n</ul>\r\n\r\n<p><strong>Đặc điểm</strong></p>\r\n\r\n<ul>\r\n	<li>L&agrave; c&acirc;y th&acirc;n gỗ nhỏ, c&agrave;nh l&aacute; um t&ugrave;m, tổng thể c&oacute; dạng h&igrave;nh th&aacute;p giống c&acirc;y th&ocirc;ng.</li>\r\n	<li>L&agrave; c&acirc;y sống l&acirc;u năm, ph&aacute;t triển chậm, chịu nắng tốt, c&acirc;y cao trung b&igrave;nh khoảng 30cm-80cm.</li>\r\n	<li>Th&acirc;n c&acirc;y rất chắc, dẻo v&agrave; kh&oacute; g&atilde;y, b&ecirc;n ngo&agrave;i c&oacute; lớp vỏ xanh.</li>\r\n	<li>L&aacute; mọc th&agrave;nh từng lớp d&agrave;y bao quanh c&agrave;nh nh&aacute;nh, l&aacute; nhỏ, nhọn, c&oacute; m&agrave;u xanh đậm, ở phần tr&ecirc;n l&aacute; hơi ng&atilde; sang m&agrave;u trắng bạc.</li>\r\n</ul>\r\n\r\n<p><strong>&Yacute; nghĩa phong thủy</strong></p>\r\n\r\n<ul>\r\n	<li>C&acirc;y mang lại may mắn, an l&agrave;nh, hạnh ph&uacute;c cho gia chủ</li>\r\n</ul>\r\n\r\n<p><strong>C&ocirc;ng dụng</strong></p>\r\n\r\n<ul>\r\n	<li>Được trồng phổ biến tại c&aacute;c c&ocirc;ng tr&igrave;nh c&acirc;y xanh, thường được trồng kết hợp hoặc xen kẻ với một số loại c&acirc;y kh&aacute;c.</li>\r\n	<li>Được trồng v&agrave;o chậu, chưng trong nh&agrave; ở, văn ph&ograve;ng l&agrave;m việc, hoặc đặt tại ban c&ocirc;ng nh&agrave;.</li>\r\n	<li>L&agrave;m c&acirc;y bonsai, nhờ th&acirc;n chắc dẻo dai, n&ecirc;n được uốn n&eacute;n tạo những h&igrave;nh d&aacute;ng bắt mắt.</li>\r\n	<li>L&agrave;m c&acirc;y trang tr&iacute; dịp Gi&aacute;ng sinh</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch trồng</strong></p>\r\n\r\n<ul>\r\n	<li>&Aacute;nh s&aacute;ng: c&acirc;y cần c&oacute; &aacute;nh s&aacute;ng trực tiếp hoặc trồng ở ngo&agrave;i trời nơi kh&ocirc;ng c&oacute; b&oacute;ng r&acirc;m, nếu trồng trong nh&agrave; th&igrave; thường xuy&ecirc;n mang ra ngo&agrave;i nắng khoảng 2 tiếng.</li>\r\n	<li>Nước: c&acirc;y kh&ocirc;ng chịu nước nhiều, n&ecirc;n kh&ocirc;ng cần tưới thường xuy&ecirc;n, mỗi ng&agrave;y tưới một lần nhưng tưới &iacute;t, chỉ cần tưới tr&ecirc;n c&agrave;nh l&aacute; l&agrave; đủ, kh&ocirc;ng để c&acirc;y ngập &uacute;ng.</li>\r\n	<li>Đất: đất tốt, tơi xốp v&agrave; m&agrave;u mỡ, hằng th&aacute;ng b&oacute;n th&ecirc;m ph&acirc;n hữu cơ hoặc ph&acirc;n h&oacute;a học cho c&acirc;y.</li>\r\n	<li>Thường xuy&ecirc;n cắt tỉa để tạo h&igrave;nh d&aacute;ng đẹp nhất cho c&acirc;y</li>\r\n</ul>\r\n', 3, 10, 0, 0, 190000, 190000, '2021-11-30 15:24:22', '1', '2021-11-30 15:24:22', '1', 1, 1),
(43, 9, 'Cây Sung Mỹ', 'cay-sung-my', '8ebaaca93a417421f706aee593203ea1.jpg', '39a2eae91a1d5578b4d05904af4e477a.jpg#244103abf9c2a2cf55e015cef41e222f.jpg', ' Cây Sung Mỹ ra trái quanh năm, trái ngọt. Cây có sức sống tốt tượng trưng cho sự sung túc và tiền tài.', '<p><strong>Giới thiệu c&acirc;y Sung Mỹ</strong></p>\r\n\r\n<ul>\r\n	<li>T&ecirc;n thường gọi: Sung Mỹ</li>\r\n	<li>T&ecirc;n kh&aacute;c: Sung Ngọt</li>\r\n	<li>Xuất xứ: Trung &Aacute;</li>\r\n</ul>\r\n\r\n<p><strong>Đặc điểm:</strong></p>\r\n\r\n<ul>\r\n	<li>C&acirc;y cho ra quả quanh năm v&agrave; cho thu hoạch chỉ sau 6-8 th&aacute;ng trồng</li>\r\n	<li>Quả sung Mỹ mọc th&agrave;nh ch&ugrave;m v&agrave; r&atilde;i đều quanh th&acirc;n, quả khi ch&iacute;n c&oacute; m&agrave;u v&agrave;ng sẫm cho đến t&iacute;m thẫm.</li>\r\n	<li>Quả sung Mỹ thơm c&oacute; vị ngọt</li>\r\n	<li>L&aacute; chia th&agrave;nh 3 đến 5 th&ugrave;y</li>\r\n</ul>\r\n\r\n<p><strong>&Yacute; nghĩa phong thủy</strong></p>\r\n\r\n<ul>\r\n	<li>Tượng trưng cho sự sung t&uacute;c, vi&ecirc;n m&atilde;n, tr&ograve;n đầy</li>\r\n	<li>Thu h&uacute;t tiền t&agrave;i, mang lại sự sung t&uacute;c.</li>\r\n</ul>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Th&iacute;ch hợp với trồng bonsai, l&agrave;m c&acirc;y cảnh, trưng b&agrave;y trong vườn,&hellip;</li>\r\n	<li>Quả Sung Mỹ c&oacute; gi&aacute; trị dinh dưỡng cao gi&uacute;p bổ sung dưỡng chất cho cơ thể.</li>\r\n	<li>Quả Sung Mỹ c&ograve;n được d&ugrave;ng l&agrave;m thuốc chữa bệnh: gi&uacute;p giảm chứng cao huyết &aacute;p, tăng h&agrave;m lượng canxi, gi&uacute;p sinh tinh ở nam giới.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch chăm s&oacute;c:</strong></p>\r\n\r\n<ul>\r\n	<li>Nước: Thường xuy&ecirc;n tưới nước cho c&acirc;y, nhưng tr&aacute;nh để đất qu&aacute; ẩm ướt.</li>\r\n	<li>&Aacute;nh s&aacute;ng: C&acirc;y Sung Mỹ ưa s&aacute;ng vừa, kh&ocirc;ng qu&aacute; gay gắt. C&oacute; thể trồng ở dưới t&aacute;n c&acirc;y kh&aacute;c.</li>\r\n	<li>B&oacute;n ph&acirc;n: Sau khi trồng 2 th&aacute;ng sẽ tiến h&agrave;nh bổ sung dinh dưỡng cho c&acirc;y ph&aacute;t triển. C&oacute; thể d&ugrave;ng ph&acirc;n hữu cơ hoặc c&aacute;c loại ph&acirc;n chuy&ecirc;n dụng cho c&acirc;y để gi&uacute;p c&acirc;y sinh trưởng tốt.</li>\r\n</ul>\r\n', 2, 10, 0, 0, 250000, 250000, '2021-11-30 15:26:19', '1', '2021-11-30 15:26:19', '1', 1, 1),
(44, 6, 'Cây Trường Sinh', 'cay-truong-sinh', '24835a1478d9438960a46492ab77ea45.jpg', 'd2b15c69f28fbf7a6dd37197af300ff4.jpg#73bf2fc09149834b79751b7098208f0a.jpg', 'Cây Trường Sinh là loại cây phong thủy mang đến may mắn và tài lộc cho gia chủ. Cây cũng đồng thời có ý nghĩa cầu chúc sức khỏe dồi dào, bình an', '<p><strong>Giới thiệu</strong></p>\r\n\r\n<ul>\r\n	<li>T&ecirc;n gọi kh&aacute;c: Diệp Sinh Căn, Thi&ecirc;n Cảnh Tạp Giao</li>\r\n	<li>T&ecirc;n khoa học: Peperomia obtusifolia</li>\r\n	<li>T&ecirc;n tiếng Anh: Baby Rubber Plant</li>\r\n	<li>Họ: Crassulaceae (thuốc Bỏng)</li>\r\n	<li>Xuất xứ: Florida, Mexico v&agrave; v&ugrave;ng Caribbean</li>\r\n</ul>\r\n\r\n<p><strong>Đặc điểm</strong></p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n thảo,&nbsp;nhẵn b&oacute;ng, tr&ograve;n, mọng nước, trồng chậu cao khoảng&nbsp;10-60cm</li>\r\n	<li>L&aacute; c&oacute; m&agrave;u xanh lục đậm, b&oacute;ng, với h&igrave;nh tr&ograve;n xinh vi&ecirc;n m&atilde;n.</li>\r\n	<li>L&aacute; mọc từ gốc hoặc th&acirc;n, dạng đối, mọc khỏe khoắn, xum xu&ecirc;</li>\r\n	<li>Hoa m&agrave;u trắng, dạng chuỗi, nở k&eacute;o d&agrave;i từ th&aacute;ng 12 đến th&aacute;ng 4 năm sau</li>\r\n</ul>\r\n\r\n<p><strong>&Yacute; nghĩa phong thủy</strong></p>\r\n\r\n<ul>\r\n	<li>Đ&uacute;ng như t&ecirc;n gọi, chỉ sự trường tồn, m&atilde;i m&atilde;i, ngụ &yacute; về một mối quan hệ bền l&acirc;u</li>\r\n	<li>Tượng trưng cho t&agrave;i lộc, may mắn được vững bền</li>\r\n	<li>Gi&uacute;p gia chủ th&ecirc;m vượng kh&iacute;, sức khỏe dồi d&agrave;o</li>\r\n	<li>C&acirc;y ph&ugrave; hợp với người mệnh Mộc, mang đến niềm tin, hy vọng v&agrave; sự hợp t&aacute;c l&acirc;u d&agrave;i, bền vững.</li>\r\n</ul>\r\n\r\n<p><strong>C&ocirc;ng dụng</strong></p>\r\n\r\n<ul>\r\n	<li>Trồng chậu trang tr&iacute; trong nh&agrave;, cơ quan, đặt b&agrave;n l&agrave;m việc, tạo kh&ocirc;ng gian tươi m&aacute;t, dễ chịu</li>\r\n	<li>C&oacute; thể h&uacute;t bớt kh&iacute; độc v&agrave; giảm ảnh hưởng xấu từ tia tử ngoại, tia bức xạ của đồ điện tử</li>\r\n	<li>Th&iacute;ch hợp l&agrave;m qu&agrave; tặng trong lễ mừng thọ, mừng sinh nhật&hellip;</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch trồng v&agrave; chăm s&oacute;c</strong></p>\r\n\r\n<ul>\r\n	<li><em>Đất trồng</em>:&nbsp;gi&agrave;u dinh dưỡng v&agrave; tho&aacute;t nước tốt.&nbsp;Tạo hỗn hợp bao gồm: đất&nbsp;+ tro trấu + xơ dừa + v&ocirc;i bột +&nbsp;đ&aacute; perlite.</li>\r\n	<li><em>Nước</em>: c&acirc;y đặt trong nh&agrave; tưới 1 lần/tuần. C&acirc;y trồng ngo&agrave;i trời tưới 2 lần/tuần. Lượng nước tưới &iacute;t, đủ ẩm</li>\r\n	<li><em>&Aacute;nh s&aacute;ng</em>: tr&aacute;nh &aacute;nh nắng gay gắt, c&oacute; thể sống dưới &aacute;nh đ&egrave;n huỳnh quang, phơi nắng nhẹ buổi s&aacute;ng 3 lần/tuần</li>\r\n	<li><em>Nhiệt độ</em>: th&iacute;ch hợp nhất l&agrave; 18-30 độ C. Nhiệt độ qu&aacute; thấp hoặc qu&aacute; cao sẽ rụng l&aacute;, dễ chết</li>\r\n	<li><em>Độ ẩm</em>: khoảng 80%</li>\r\n	<li><em>Tỉa c&acirc;y</em>: bấm ngọn&nbsp;bằng c&aacute;ch ngắt bỏ 2 &ndash; 3cm tr&ecirc;n ngọn của th&acirc;n ch&iacute;nh sẽ gi&uacute;p c&acirc;y ph&aacute;t triển tốt hơn. Thường xuy&ecirc;n sử dụng khăn lau sạch l&aacute;, cắt bỏ l&aacute; gi&agrave; để loại bỏ mầm bệnh s&acirc;u cuốn l&aacute;</li>\r\n	<li><em>B&oacute;n ph&acirc;n</em>: b&oacute;n điều độ h&agrave;ng th&aacute;ng bằng c&aacute;ch 1 - 2 ch&eacute;n ph&acirc;n chuồng hoại mục hoặc NPK bằng c&aacute;ch v&ugrave;i xuống gốc c&aacute;ch giữa gốc v&agrave; chậu</li>\r\n</ul>\r\n', 3, 10, 0, 10, 200000, 180000, '2021-11-30 15:28:29', '1', '2021-11-30 15:28:29', '1', 1, 1),
(45, 11, 'Cây Sống Đời (Lá Bỏng)', 'cay-song-doi-la-bong', '17c571a8bfd7c932fe3995ae19fd50f6.jpg', 'c388bf5bde3918cbf5de53623c26e1b7.jpg#28089de2556a2bbb19e95bb9e7cac945.jpg', 'Cây Sống Đời có hoa nhiều màu sặc sỡ mang ý nghĩa của một tình yêu bất diệt.', '<p><strong>Giới thiệu</strong></p>\r\n\r\n<ul>\r\n	<li>T&ecirc;n thường gọi: Sống đời</li>\r\n	<li>T&ecirc;n kh&aacute;c: C&acirc;y l&aacute; bỏng</li>\r\n	<li>T&ecirc;n khoa học: Kalanchoe pinnata</li>\r\n	<li>Họ: Crassulaceae (thuốc bỏng)</li>\r\n	<li>Nguồn gốc: từ Madagascar</li>\r\n</ul>\r\n\r\n<p><strong>Đặc điểm</strong></p>\r\n\r\n<ul>\r\n	<li>L&agrave; c&acirc;y th&acirc;n thảo, th&acirc;n mềm c&oacute; m&agrave;u xanh v&agrave; ph&acirc;n nh&aacute;nh nhiều từ gốc, c&oacute; chiều cao khoảng từ 20-30cm.</li>\r\n	<li>L&aacute; d&agrave;y, phiến l&aacute; c&oacute; h&igrave;nh bầu dục, nhọn ở phần đầu</li>\r\n	<li>L&aacute; mọng nước c&oacute; m&agrave;u xanh thẫm, r&igrave;a l&aacute; c&oacute; răng cưa mọc đối xứng.</li>\r\n	<li>C&oacute; 2 dạng l&agrave; hoa sống đời đơn v&agrave; hoa sống đời k&eacute;p. Hoa nhiều m&agrave;u sắc như hồng, đỏ, v&agrave;ng, cam, trắng&hellip; mọc tập trung ở đầu c&agrave;nh, hoa nhỏ nhưng rất say hoa.</li>\r\n</ul>\r\n\r\n<p><strong>&Yacute; nghĩa v&agrave; t&aacute;c dụng</strong></p>\r\n\r\n<ul>\r\n	<li>Trồng trong chậu cảnh để trang tr&iacute; nh&agrave; hay văn ph&ograve;ng... l&agrave;m cho kh&ocirc;ng gian bừng s&aacute;ng hơn.</li>\r\n	<li>Với gia đ&igrave;nh, nếu trồng sống đời trong nh&agrave; th&igrave; cả gia đ&igrave;nh sẽ dồi d&agrave;o sức khỏe, thể hiện t&igrave;nh đo&agrave;n kết giữa c&aacute;c th&agrave;nh vi&ecirc;n.</li>\r\n	<li>Với bạn b&egrave;, thể hiện t&igrave;nh bạn gắn b&oacute; theo thời gian, hoa nở một c&aacute;ch chậm r&atilde;i cũng như t&igrave;nh bạn ch&acirc;n th&agrave;nh, giản dị.</li>\r\n	<li>Trong c&ocirc;ng việc, tượng trưng cho sự su&ocirc;n sẻ, nhẹ nh&agrave;ng, mọi c&ocirc;ng việc gian khổ sẽ nhanh ch&oacute;ng qua đi.</li>\r\n	<li>V&igrave; mang nhiều &yacute; nghĩa n&ecirc;n được nhiều người y&ecirc;u th&iacute;ch v&agrave; sử dụng như qu&agrave; tặng những ng&agrave;y lễ, tết, hay dịp kỷ niệm.</li>\r\n	<li>C&acirc;y hợp với c&aacute;c mệnh, kh&ocirc;ng kỵ mệnh n&agrave;o.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch trồng v&agrave; chăm s&oacute;c</strong></p>\r\n\r\n<ul>\r\n	<li>Trồng rất đơn giản, c&oacute; thể trồng bằng c&aacute;ch t&aacute;ch c&acirc;y con từ c&acirc;y trưởng th&agrave;nh hay trồng bằng l&aacute; c&acirc;y.</li>\r\n	<li>Đất trồng phải l&agrave; đất tơi xốp, tho&aacute;t nước tốt, c&oacute; thể trồng bằng đất thịt, đất c&aacute;t c&oacute; pha m&ugrave;n để tạo độ tơi xốp.&nbsp;</li>\r\n	<li>Tưới nước h&agrave;ng ng&agrave;y nhưng kh&ocirc;ng được tưới qu&aacute; nhiều, bản chất của th&acirc;n v&agrave; l&aacute; hoa sống đời mọng nước n&ecirc;n nếu tưới thừa nước dễ dẫn đến thối gốc v&agrave; l&aacute;.</li>\r\n	<li>Lưu &yacute; &aacute;nh s&aacute;ng khi trồng, c&oacute; thể trồng trong nh&agrave; nhưng lưu &yacute; cung cấp đủ &aacute;nh s&aacute;ng cho c&acirc;y. N&ecirc;n cho ra ngo&agrave;i tắm nắng từ 1-2 tiếng l&uacute;c s&aacute;ng hoặc chiều, kh&ocirc;ng ra l&uacute;c giữa trưa.</li>\r\n</ul>\r\n', 2, 10, 0, 10, 300000, 170000, '2021-11-30 15:30:19', '1', '2021-11-30 15:30:19', '1', 1, 1),
(46, 2, 'Cây Lan Hạt Dưa', 'cay-lan-hat-dua', '04b35242e76c59058016fdafd371b72f.jpg', '5cec8fa477c2a25b241ab797e9c3d58b.jpg#2fc3a4b21eaded393f5db352ba89190a.jpg', 'Cây Lan Hạt Dưa là cây chậu treo khá phù hợp với ban công, vừa tô điểm không gian', '<p><strong>Giới thiệu c&acirc;y Lan hạt dưa</strong></p>\r\n\r\n<ul>\r\n	<li>T&ecirc;n thường gọi: C&acirc;y Lan hạt dưa, c&acirc;y lan dollar&nbsp;</li>\r\n	<li>T&ecirc;n khoa học: Dischidia sp</li>\r\n	<li>Họ: Asclepiadaceae</li>\r\n</ul>\r\n\r\n<p><strong>Đặc điểm</strong></p>\r\n\r\n<ul>\r\n	<li>L&agrave; c&acirc;y d&acirc;y leo, th&acirc;n thảo, mọc th&agrave;nh bụi, leo l&ecirc;n cao v&agrave; t&igrave;m nơi b&aacute;m trụ.</li>\r\n	<li>L&aacute; nhỏ h&igrave;nh bầu dục tr&ocirc;ng giống như đồng tiền $ n&ecirc;n được gọi l&agrave; Dollar.&nbsp;</li>\r\n	<li>M&eacute;p l&aacute; nguy&ecirc;n, g&acirc;n ch&iacute;nh nổi chia l&agrave;m hai phần r&otilde; rệt, l&aacute; cong v&agrave; mọc đối xứng.</li>\r\n	<li>L&aacute; d&agrave;y v&agrave; mọng, hai mặt l&aacute; nhẵn xanh, l&aacute; c&agrave;ng gần ngọn m&agrave;u xanh c&agrave;ng nhạt.</li>\r\n	<li>C&oacute; tốc độ sinh trưởng nhanh, chịu b&oacute;ng b&aacute;n phần v&agrave; nh&acirc;n giống chủ yếu từ t&aacute;ch bụi.</li>\r\n</ul>\r\n\r\n<p><strong>C&ocirc;ng dụng</strong></p>\r\n\r\n<ul>\r\n	<li>Trồng trong c&aacute;c chậu treo trang tr&iacute; qu&aacute;n cafe, nh&agrave; h&agrave;ng, s&acirc;n vườn, trang tr&iacute; ban c&ocirc;ng&hellip;</li>\r\n	<li>Ph&ugrave; hợp l&agrave;m chậu treo hơn</li>\r\n</ul>\r\n\r\n<p><strong>&Yacute; nghĩa phong thuỷ</strong></p>\r\n\r\n<ul>\r\n	<li>Đặt tr&ecirc;n b&agrave;n l&agrave;m việc, b&agrave;n họp, ph&ograve;ng kh&aacute;ch, nh&agrave; bếp,&hellip;g&oacute;p phần t&ocirc; điểm cho kh&ocirc;ng gian sống v&agrave; mang lại may mắn, tiền t&agrave;i</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;ch chăm s&oacute;c</strong></p>\r\n\r\n<ul>\r\n	<li>Nước: ng&agrave;y tưới 1 lần hoặc 2 ng&agrave;y tưới 1 lần.</li>\r\n	<li>Đất: tơi xốp, h&uacute;t nước v&agrave; tho&aacute;t ẩm nhanh ch&oacute;ng.</li>\r\n</ul>\r\n', 2, 10, 0, 20, 250000, 200000, '2021-11-30 15:32:22', '1', '2021-11-30 15:32:22', '1', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 'Banner1', 'banner-1', '2.jpg', '2019-06-13 21:27:24', '1', '2019-06-13 23:42:42', '', 0, 1),
(2, 'Banner 2', 'Banner-2', 'default.png', '2019-06-13 23:45:04', '1', '2019-06-13 23:45:44', '', 0, 1),
(3, 'trang chu 1', 'trang-chu', 'unnamed.jpg', '2019-07-03 17:05:52', '1', '2021-11-30 10:00:38', '', 1, 1),
(4, 'slider trang chu 2', 'slider-trang-chu-2', 'banner-cay-canh-van-phong-1.jpg', '2019-07-03 17:06:38', '1', '2021-11-30 10:00:30', '', 1, 1),
(5, 'slider trang chu 3', 'slider-trang-chu-3', 'cay-canh-san-vuon.jpg', '2019-07-03 17:06:58', '1', '2021-11-30 10:00:21', '', 1, 1),
(6, 'ss', 'ss', 'icon_142e7.png', '2019-07-03 17:08:07', '1', '2019-07-03 17:08:07', '1', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Gò vấp', 'user-group.png', '2019-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Gò vấp', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1),
(3, 'Nhân viên', 'nhanvien', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '09990990', 'Gò vấp', 'b78af1dc3e1098f71e7cd607c49f5d51.png', '2019-04-23 09:20:41', 1, 1),
(4, 'Nguyễn Văn A', 'nhanviena', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '0985657410', 'Gò vấp 1', '403ceb0ed6fdb72494bbd2ac39182b04.png', '2019-04-25 22:08:18', 1, 1),
(6, 'Nguyễn Văn B', 'nhanvienb', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 0, '09876543532', 'Gò vấp', 'user.png', '2019-04-23 09:18:18', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
