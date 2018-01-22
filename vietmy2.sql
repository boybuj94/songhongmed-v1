-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2017 at 02:51 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietmy2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idad` int(10) NOT NULL,
  `usad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idad`, `usad`, `passad`, `tenad`, `quyen`, `img`) VALUES
(10, 'boybuj94', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Trịnh Văn Quảng', '0', 'P70215-183306.jpg'),
(11, 'huutuong', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Nguyễn Hữu Tường', '0', '12705434_564009873764488_7071325203084046791_n.jpg'),
(12, 'vanhien', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Văn Hiến', '1', '15171166_1289628001058389_7021217732178112454_n.jpg'),
(13, 'hongviet', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Việt', '2', '16683872_341422206258202_3952894885930723492_n.jpg'),
(14, 'ewwe', 'bb2d91d0fbbebe8719509ed0f865c63f', 'sádasa', '1', '18033316_1944114202484968_6406421656522948889_n.jpg'),
(18, 'aaaa', 'f5bb0c8de146c67b44babbf4e6584cc0', 'ád', '0', '20170509165006-hoi-suc-cap-cuu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `idbl` int(10) NOT NULL,
  `tenkhach` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `thoigian` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idsp` int(10) NOT NULL,
  `idtin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`idbl`, `tenkhach`, `email`, `sdt`, `noidung`, `thoigian`, `idsp`, `idtin`) VALUES
(1, 'quảng', 'minhquang@gmail.com', '', 'đây là bình luận của tôi', '07/06/2017', 0, 2),
(2, 'quảng 2', ' minhquang2@gmail.com', '', 'binhf luận thứ 2', '07/06/2017', 0, 2),
(3, 'anh quảng', 'mail@gmail.com', '', 'bài viết hay quá', '08/06/2017', 0, 5),
(4, 'Anh Quảng', 'minhquang271094@gamil.com', '', 'Làm thử đã thành công!', '11/06/2017', 0, 5),
(5, 'Quảng Pro', 'minhquang271094@gmail.com', '', 'Bài viết hữu ích', '20/06/2017', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `iddm` int(10) NOT NULL,
  `tendm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngonngu` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`iddm`, `tendm`, `img`, `ngonngu`) VALUES
(2, 'Cận lâm sàng', '20170509060612-can_lam_sang.jpg', 0),
(3, 'Chẩn đoán hình ảnh', '20170509084252-xquang_han_quoc_day_du.jpg', 0),
(5, 'Chấn thương chỉnh hình', '20170509085840-chan-thuong-chinh-hinh.jpg', 0),
(6, 'Hồi sức cấp cứu', '20170509090437-hoi-suc-cap-cuu.jpg', 0),
(7, 'Máy dược', '20170509090506-may-duoc.jpg', 0),
(8, 'Máy laser', '20170509090542-may-laser.jpg', 0),
(9, 'Nha khoa', '20170509090559-nha-khoa.jpg', 0),
(10, 'Nhãn khoa', '20170509090629-nhan-khoa.jpg', 0),
(11, 'Phòng mổ', '20170509090650-phong-mo.jpg', 0),
(12, 'Sản phụ khoa - Nhi khoa', '20170509090734-khoa-san.jpg', 0),
(13, 'Tai mũi họng', '20170509090805-tai-mui-hong.jpg', 0),
(14, 'Thăm dò chức năng', '20170509090825-tham-do-chuc-nang.jpg', 0),
(15, 'Thiết bị nội soi', '20170509090908-may-noi-soi.jpg', 0),
(16, 'Thiết bị phòng thí nghiệm', '20170509091259-THI-NGHEM.jpg', 0),
(17, 'Thiết bị tiệt trùng', '20170509091325-tu-tiet-trung-ban-chai-danh-rang-HGS-DT924.jpg', 0),
(18, 'Vật lý trị liệu', '20170509091350-vat-ly-tri-lieu.jpg', 0),
(19, 'Subclinical', '20170509091602-can_lam_sang.jpg', 1),
(20, 'Orthopedic', '20170509091631-chan-thuong-chinh-hinh.jpg', 1),
(21, 'Image analysation', '20170509091804-x-quang-han-quoc-day-du.jpg', 1),
(22, 'Resuscitation', '20170509091837-hoi-suc-cap-cuu.jpg', 1),
(23, 'Hàng sản xuất', '20170617133323-catolo-1--sac-thuoc.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `iddon` int(2) NOT NULL,
  `idsp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhach` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `soluong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` int(3) DEFAULT NULL,
  `dongia` int(10) DEFAULT NULL,
  `ngaydat` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `hinhthuc` int(1) DEFAULT NULL,
  `madon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serialnumber` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `idimg` int(10) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `tieude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngonngu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `idlh` int(10) NOT NULL,
  `tenkh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci,
  `thoigian` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` int(1) DEFAULT NULL,
  `diachi` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `idloai` int(10) NOT NULL,
  `tenloai` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `iddm` int(10) NOT NULL,
  `ngonngu` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`idloai`, `tenloai`, `iddm`, `ngonngu`) VALUES
(3, 'Cân sức khỏe', 2, 0),
(4, 'Giường bệnh nhân', 2, 0),
(5, 'Giường hồi sức cấp cứu', 2, 0),
(6, ' Máy X-quang', 3, 0),
(7, ' Máy rửa phim', 3, 0),
(8, ' Máy siêu âm', 3, 0),
(9, ' Bàn chỉnh hình', 5, 0),
(13, 'Healthy weight', 19, 1),
(15, 'Khoan xương', 5, 0),
(16, 'Bộ hồi sức cấp cứu', 6, 0),
(17, 'Máy gây mê', 6, 0),
(18, ' Máy đo nồng độ', 6, 0),
(19, ' Máy tạo oxy', 6, 0),
(20, ' Máy thở', 6, 0),
(21, ' Máy tháo lồng ruột', 6, 0),
(22, ' Máy xông', 6, 0),
(24, 'Patient beds', 19, 1),
(25, 'Resuscitation bed', 19, 1),
(26, 'X-ray machine', 21, 1),
(27, 'X-ray film dryers', 21, 1),
(28, 'Ultrasound Machine', 21, 1),
(29, 'Medical Cannulated Drill', 20, 1),
(30, 'Orthopedic Operating Table', 20, 1),
(31, 'Emergency department resuscitation', 22, 1),
(32, 'Alcohol meter', 22, 1),
(33, 'Oxygen generator', 22, 1),
(34, 'Anesthesia machine', 22, 1),
(35, 'Breathing Machine', 22, 1),
(36, 'Intestinal detector', 22, 1),
(37, 'Máy sắc thuốc', 23, 0),
(38, 'Bồn rửa', 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(10) NOT NULL,
  `tensp` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `idloai` int(2) NOT NULL,
  `masp` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `img` text COLLATE utf32_unicode_ci NOT NULL,
  `hangsp` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `gia` varchar(50) COLLATE utf32_unicode_ci DEFAULT NULL,
  `tinhtrang` int(10) DEFAULT NULL,
  `khuyenmai` int(2) DEFAULT NULL,
  `thongtin` text COLLATE utf32_unicode_ci NOT NULL,
  `baiviet` text COLLATE utf32_unicode_ci,
  `tag` text COLLATE utf32_unicode_ci,
  `ngonngu` int(1) DEFAULT NULL,
  `soluong` int(10) DEFAULT NULL,
  `baohanh` int(10) DEFAULT NULL,
  `noibat` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `idloai`, `masp`, `img`, `hangsp`, `gia`, `tinhtrang`, `khuyenmai`, `thongtin`, `baiviet`, `tag`, `ngonngu`, `soluong`, `baohanh`, `noibat`) VALUES
(1, 'GIƯỜNG BỆNH NHÂN', 4, 'AG-BMS101B', '20170510202818-20160601143153_ag-bms101a.jpg', 'Trung Quốc', 'Liên hệ', 0, 0, '<div><span style="font-family: Arial, Helvetica, sans-serif;"><span style="font-size: 12px;">readmore</span></span></div>\n<ul style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\n<li>K&iacute;ch thước: 2150 x 950 x 550mm</li>\n<li>Đầu giường bằng tấm ABS.</li>\n<li>Be giường bằng hợp kim nh&ocirc;m.</li>\n<li>D&aacute;t giường bằng th&eacute;p lưới.</li>\n<li>B&aacute;nh xe phanh h&atilde;m ch&eacute;o.</li>\n</ul>', '<ul style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n<li>K&iacute;ch thước: 2150 x 950 x 550mm</li>\r\n<li>Đầu giường bằng tấm ABS.</li>\r\n<li>Be giường bằng hợp kim nh&ocirc;m.</li>\r\n<li>D&aacute;t giường bằng th&eacute;p lưới.</li>\r\n<li>B&aacute;nh xe phanh h&atilde;m ch&eacute;o.</li>\r\n</ul>', '4', 0, 4, 2, NULL),
(2, 'Cân trọng lượng có thước đo chiều cao', 3, 'Tz-120', '20170510182823-can-suc-khoe-tz-120.jpg', ' Thượng Hải - Trung Quốc', ' 1.100.000 VNĐ', 0, 0, '<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">readmore</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Trọng lượng c&acirc;n tối đa: &nbsp; &nbsp;120 Kg</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Vạch chia nhỏ nhất: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0,5 Kg</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Đo chiều cao:</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Giới hạn đo: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 190 cm</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Vạch chia nhỏ nhất: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0,5 cm</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">K&iacute;ch thước b&agrave;n c&acirc;n: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 280 x 380 mm</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">K&iacute;ch thước tổng thể: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 950 x 300 x 290 mm</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Trọng lượng: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;15 Kg</p>', '<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Với ti&ecirc;u chuẩn đo chiều cao, c&acirc;n sức khoẻ loại n&agrave;y c&oacute; 2 chức năng, ta c&oacute; thể d&ugrave;ng n&oacute; như sau:</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">1. Với hai b&aacute;nh xe nhỏ, c&acirc;n c&oacute; thể đẩy di chuyển được.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">2. Bằng việc mở c&acirc;n, lật th&acirc;n dựng đứng l&ecirc;n 1800 chốt c&aacute;c chốt h&atilde;m v&agrave; đặt c&aacute;c dao c&acirc;n hợp l&yacute; ta đ&atilde; c&oacute; c&acirc;n sẵn s&agrave;ng hoạt động.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">3. Kim chỉ vạch c&acirc;n bắt đầu phải ở vị tr&iacute; số 0, nếu chưa được như vậy phải chỉnh v&iacute;t chỉnh ở ph&iacute;a dưới đồng hồ.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">4. Khi đo chiều cao thước đo được k&eacute;o ra ở ph&iacute;a b&ecirc;n phải, ống thang đo b&ecirc;n trong ghi từ 70 + 126 cm, gi&aacute; trị đọc bao gồm trị số chuẩn v&agrave; trị số của thang 126 cm, mức chiều cao vượt qu&aacute; 126 cm, r&uacute;t tiếp thang đo thứ 3.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">5. Khi dao treo c&acirc;n v&agrave; thớt (gi&aacute; đỡ dao) kh&ocirc;ng ăn v&agrave;o nhau, mở b&agrave;n c&acirc;n chỉnh cho 4 dao lu&ocirc;n ăn đ&uacute;ng khớp dao. C&oacute; 4 bộ dao v&agrave; thớt ở b&agrave;n c&acirc;n để treo c&acirc;n.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">6. Trong trường hợp kh&ocirc;ng chỉnh được vị tr&iacute; "0" của c&acirc;n bằng v&iacute;t chỉnh "0" ph&iacute;a dưới đồng hồ bắt buộc phải th&aacute;o mặt k&iacute;nh đồng hồ, th&aacute;o 2 v&iacute;t bắt mạch thang đo rồi xoay cả mặt thang đo n&agrave;y về vị tr&iacute; hợp l&yacute;. Phần vi chỉnh ta lại d&ugrave;ng v&iacute;t vi chỉnh ph&iacute;a dưới mặt đồng hồ để đạt vị tr&iacute; "0" chuẩn x&aacute;c.</p>', 'can suc khoe, cân sức khỏe, can trong luong, can trong luong co chieu cao, cân trọng lượng có chiều cao', 0, 10, 1, NULL),
(3, 'GIƯỜNG BỆNH NHÂN', 4, 'AG-BM101', '20170510185140-giuong-benh-nhan.jpg', 'Trung Quốc', 'Liên hệ', 0, 0, '<div><span style="font-family: Arial, Helvetica, sans-serif;"><span style="font-size: 12px;">readmore</span></span></div>\n<ul style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\n<li>K&iacute;ch thước: 2150 x 980 x (460-750)mm</li>\n<li>Đầu giường v&agrave; be giường bằng tấm ABS.</li>\n<li>D&aacute;t giường bằng th&eacute;p.</li>\n<li>3 chức năng.</li>\n<li>Động cơ: L&amp;K.</li>\n</ul>', '<ul style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n<li>K&iacute;ch thước: 2150 x 980 x (460-750)mm</li>\r\n<li>Đầu giường v&agrave; be giường bằng tấm ABS.</li>\r\n<li>D&aacute;t giường bằng th&eacute;p.</li>\r\n<li>3 chức năng.</li>\r\n<li>Động cơ: L&amp;K.</li>\r\n</ul>', 'giuong benh nhan, giường bệnh nhân', 0, 10, 2, NULL),
(4, 'GIƯỜNG BỆNH NHÂN', 3, 'AG-BMS002', '20170510185348-giuong-benh-nhan_ag-bms002.jpg', 'Trung Quốc', 'Liên hệ', 0, 0, '<div><span style="font-family: Arial, Helvetica, sans-serif;"><span style="font-size: 12px;">readmore</span></span></div>\n<ul style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\n<li>K&iacute;ch thước: 2150 x 950 x (460-750)mm</li>\n<li>Đầu giường bằng tấm ABS.</li>\n<li>Be giường bằng hợp kim nh&ocirc;m.</li>\n<li>D&aacute;t giường bằng th&eacute;p.</li>\n<li>B&aacute;nh xe phanh điều khiển trung t&acirc;m</li>\n</ul>', '<ul style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n<li>K&iacute;ch thước: 2150 x 950 x (460-750)mm</li>\r\n<li>Đầu giường bằng tấm ABS.</li>\r\n<li>Be giường bằng hợp kim nh&ocirc;m.</li>\r\n<li>D&aacute;t giường bằng th&eacute;p.</li>\r\n<li>B&aacute;nh xe phanh điều khiển trung t&acirc;m</li>\r\n</ul>', 'giuong benh nhan. giường bệnh nhân', 0, 20, 2, NULL),
(5, 'GIƯỜNG BỆNH NHÂN', 4, 'B-10', '20170510185533-20160601143401_b-10.jpg', 'Trung Quốc', ' 6.000.000 VNĐ', 0, 0, '<div><span style="font-family: Arial, Helvetica, sans-serif;"><span style="font-size: 12px;">readmore</span></span></div>\n<ul style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\n<li>K&iacute;ch thước: 2150 x 900 x 520-720mm (DxRxC)</li>\n<li>Giường Elit Semi-Fowler với dựa lưng v&agrave; tựa gối bằng cơ cấu tay quay uyển chuyển.</li>\n<li>Đầu giường v&agrave; ch&acirc;n giường bằng nhựa ABS chất lượng cao c&oacute; thể th&aacute;o rời &amp; ho&aacute;n đổi; đầu giường v&agrave; ch&acirc;n giường được trang bị kh&oacute;a an to&agrave;n v&agrave; cản lăn.</li>\n<li>Lan can b&ecirc;n c&oacute; thể gập lại. (Thanh ngang tr&ecirc;n bằng Aluminium, C&aacute;c thanh dọc SS v&agrave; ống dưới epoxy).</li>\n<li>Khung th&eacute;p nhẹ sơn phủ Epoxy v&agrave; 4 đầu được đục thủng.</li>\n<li>B&aacute;nh xe kh&ocirc;ng tiến ồn đường k&iacute;nh 125mm. (tất cả đều c&oacute; phanh ri&ecirc;ng).</li>\n<li>Chỗ cắm cho cọc truyền ở 2 b&ecirc;n giường.</li>\n<li>Cấu tr&uacute;c hỗ trợ sập giường.</li>\n</ul>', '<ul style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n<li>K&iacute;ch thước: 2150 x 900 x 520-720mm (DxRxC)</li>\r\n<li>Giường Elit Semi-Fowler với dựa lưng v&agrave; tựa gối bằng cơ cấu tay quay uyển chuyển.</li>\r\n<li>Đầu giường v&agrave; ch&acirc;n giường bằng nhựa ABS chất lượng cao c&oacute; thể th&aacute;o rời &amp; ho&aacute;n đổi; đầu giường v&agrave; ch&acirc;n giường được trang bị kh&oacute;a an to&agrave;n v&agrave; cản lăn.</li>\r\n<li>Lan can b&ecirc;n c&oacute; thể gập lại. (Thanh ngang tr&ecirc;n bằng Aluminium, C&aacute;c thanh dọc SS v&agrave; ống dưới epoxy).</li>\r\n<li>Khung th&eacute;p nhẹ sơn phủ Epoxy v&agrave; 4 đầu được đục thủng.</li>\r\n<li>B&aacute;nh xe kh&ocirc;ng tiến ồn đường k&iacute;nh 125mm. (tất cả đều c&oacute; phanh ri&ecirc;ng).</li>\r\n<li>Chỗ cắm cho cọc truyền ở 2 b&ecirc;n giường.</li>\r\n<li>Cấu tr&uacute;c hỗ trợ sập giường.</li>\r\n</ul>', 'giuong benh nhan, giuong benh nhan trung quoc', 0, 50, 2, NULL),
(6, 'GIƯỜNG HỒI SỨC CẤP CỨU', 5, 'M-700 plus', '20170510214205-giuong-benh-nhan.jpg', 'Malaysia', 'Liên hệ', 0, 0, '<p>readmore</p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">N&acirc;ng lưng: khoảng 0&deg;-76&deg;; n&acirc;ng ch&acirc;n: 0&deg;-40&deg;</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">N&acirc;ng hạ chiều cao: khoảng&nbsp; 460mm - 780mm</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Điều chỉnh nghi&ecirc;ng xu&ocirc;i đầu giường: khoảng 0&deg;-16&deg; v&agrave; nghi&ecirc;ng ngược phần ch&acirc;n giường 0&deg;-16&deg;</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">K&iacute;ch thước d&agrave;i x rộng của giường :&nbsp; khoảng&nbsp; 2165 mm&nbsp; x 1030 mm</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Độ d&agrave;y đệm: 125mm</span></p>', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">&nbsp; Seri giường bệnh nh&acirc;n Milenia l&agrave; sản phẩm của sự kết hợp ho&agrave;n hảo giữa nghi&ecirc;n cứu chuy&ecirc;n s&acirc;u về y học v&agrave; c&ocirc;ng nghệ hiện đại, đem lại thế hệ giường bệnh nh&acirc;n tiện lợi v&agrave; kinh tế.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">&nbsp; Thế hệ giường n&agrave;y sử dụng động cơ điện hiện đại gi&uacute;p điều khiển giường nhẹ nh&agrave;ng, tối thiểu h&oacute;a độ rung khi điều khiển &ndash; đ&aacute;p ứng ti&ecirc;u chuẩn y tế quốc tế.Mặc d&ugrave; được chế tạo với ti&ecirc;u ch&iacute; đem lại sự thoải m&aacute;i v&agrave; tiện dụng cho bệnh nh&acirc;n, giường cũng được thiết kế nhằm gi&uacute;p c&aacute;c điều dưỡng vi&ecirc;n sử dụng đơn giản.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">&nbsp; Thế hệ giường bệnh nh&acirc;n Milenia l&agrave; sự lựa chọn tối ưu cho c&aacute;c bệnh viện v&agrave; cho bệnh nh&acirc;n.Phần đầu giường v&agrave; ch&acirc;n giường được phủ ABS, với cơ chế kh&oacute;a m&oacute;c kh&ocirc;ng tạo gờ, c&oacute; thể th&aacute;o lắp dễ d&agrave;ng.C&oacute; thể điều chỉnh nghi&ecirc;ng xu&ocirc;i đầu giường, v&agrave; nghi&ecirc;ng ngược phần ch&acirc;n giường bằng l&ograve; xo kh&iacute;.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">&nbsp; To&agrave;n bộ giường được sơn phủ epoxy-polyester nhiệt h&oacute;a chống nứt v&agrave; chống trầy xước.Điện &aacute;p: 220V/50Hz.</span></p>', 'giuong hoi suc cap cuu', 0, 20, 3, 1),
(7, 'Emergency Hospital Bed', 31, 'M-700 plus', '20170510221422-giuong-benh-nhan.jpg', 'Malaysia', 'Liên Hệ', 0, 0, '<p>readmore</p>\n<p>Backrest: about 0 &deg; -76 &deg;; Foot lift: 0 &deg; -40 &deg;</p>\n<p>Lifting height: about 460mm - 780mm</p>\n<p>Tilting down the bed: about 0 &deg; -16 &deg; and tilt the bed legs 0 &deg; -16 &deg;L</p>\n<p>ength x width of the bed: about 2165 mm x 1030 mm</p>\n<p>Buffer thickness: 125mm</p>', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">The Milenia bed series is the product of a complete combination of in-depth medical and technological research that benefits bed and economy. This stars use the basic mechanism of the sterling light, the minimum is rms when the control - the standard standards.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Although built with standard mats and patient equipment, beds are also designed for simple use.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">The most bridge of the bridge Milenia is the choice of the privilege of the disease and for patients.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">The first wing and right knitted ABS, with non-padlocked lock, can be removed easily.Adjustable head, and torso with torso.All beds are epoxy-polyester coated with anti-cracking and anti-scratch.Voltage: 220V / 50Hz.</span></p>', 'Emergency Hospital Bed', 1, 20, 0, NULL),
(8, 'MÁY RỬA PHIM X-QUANG TỰ ĐỘNG', 7, 'XP-9000', '20170510221948-may-rua-phim-tuu-dong_xp9000.jpg', 'Nhật Bản', 'Liên hệ', 0, 0, '<div><span style="font-family: arial, helvetica, sans-serif; font-size: x-small;">readmore</span></div>\n<ul>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Truyền phim: Hệ thống truyền cuộn li&ecirc;n tục</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Tốc độ xử l&yacute; phim&nbsp;: 90 gi&acirc;y, 120 gi&acirc;y, 180 gi&acirc;y (c&oacute; thể chọn)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Xử l&yacute; phim : Phim tấm, 6.1/2&rdquo; x 8.1/2&rdquo;~14&rdquo;x17&rdquo;</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Khả năng xử l&yacute;: 100 phim/giờ (tốc độ xử l&yacute;: 90 gi&acirc;y 10&rdquo;x12&rdquo;)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">H&oacute;a chất :&nbsp;H&oacute;a chất cho m&aacute;y rửa phim X-quang tự động</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Thể t&iacute;ch th&ugrave;ng :Tr&aacute;ng (3.7L), H&atilde;m(2.4L), Rửa(2.3L)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Nhiệt độ xử l&yacute; ti&ecirc;u chuẩn Tr&aacute;ng: 350C, 330C, 310C (c&oacute; thể chọn)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Sấy: 600C&plusmn;50C (chế độ chờ: 450C)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Kiểm so&aacute;t nhiệt độ Tr&aacute;ng: kiểm so&aacute;t nhiệt độ kh&ocirc;ng đổi bằng điện trở nhiệt</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Sấy: kiểm so&aacute;t nhiệt độ kh&ocirc;ng đổi bằng điện trở nhiệt</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Hệ thống bổ sung h&oacute;a chất: Hệ thống tự động bổ sung bằng cảm ứng phim</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Hệ thống trộn tr&aacute;ng: Bằng đĩa trộn xoay</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Hệ thống rửa&nbsp;: Hệ thống nước chảy (Hệ thống nước dự trữ c&oacute; thể chọn th&ecirc;m)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Thiết bị an to&agrave;n: Hệ thống chống qu&aacute; nhiệt, M&aacute;y điều nhiệt an to&agrave;n c&agrave;i đặt lại bằng tay (Tr&aacute;ng/H&atilde;m/Sấy), Ngắt mạch</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Chế độ chờ: Tiết kiệm điện, chống m&ograve;n con lăn, duy tr&igrave; nhiệt độ sấy thấp, vận h&agrave;nh li&ecirc;n tiếp m&ocirc; tơ, bổ sung li&ecirc;n tiếp h&oacute;a chất.</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">M&ocirc;i trường&nbsp;: Nhiệt độ: 200C&plusmn;100C</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Độ ẩm: 30% ~ 80%</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Nhiệt độ nước: 50C hoặc hơn</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Nguồn: 1 pha, AC 220V/240V, 4.5A(110/120V, 9A), 50/60Hz</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">K&iacute;ch thước&nbsp;: 565 x 723 x 463mm (RxDxC)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Trọng lượng tịnh: Khoảng 27.5kg</span></li>\n</ul>', '<ul>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Cho ph&eacute;p sử dụng phim v&agrave; h&oacute;a chất th&ocirc;ng thường cho việc xử l&yacute; trong 90 gi&acirc;y, kh&aacute;c biệt cho với c&aacute;c m&aacute;y rửa phim kh&aacute;c cần loại đặc biệt.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&oacute; khả năng xử l&yacute; phim cao trong chế độ 90 gi&acirc;y.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&oacute; khả năng thu h&igrave;nh ảnh phim tối ưu trong 90 gi&acirc;y, 120 gi&acirc;y hoặc 180 gi&acirc;y.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Khả năng Tr&aacute;ng phim cao hơn, cho thời gian sử dụng li&ecirc;n tục d&agrave;i hơn.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Bổ sung li&ecirc;n tiếp từng hồi h&oacute;a chất.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Bổ sung giảm hiểu tối đa tiết kiệm h&oacute;a chất.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Hộp đựng khu&ocirc;n đ&uacute;c nhựa &aacute;p lực v&agrave; hộp cho phim.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&ocirc;ng tắc ăn khớp để tắt tất cả c&aacute;c mạch khi th&aacute;o hộp cho phim.</span></li>\r\n</ul>', 'may rua phim, máy rửa phim, máy rửa phim XP-9000, máy rửa phim nhật', 0, 6, 3, NULL),
(9, 'MÁY RỬA PHIM X-QUANG TỰ ĐỘNG', 7, 'YP-33', '20170510222138-heejmay-rua-phim_yp33.jpg', 'Trung Quốc', 'Liên hệ', 0, 0, '<div>readmore</div>\n<ul>\n<li>Cỡ phim rửa&nbsp;&nbsp;&nbsp;&nbsp; 3&rdquo; x 6&rdquo; ~ 4&rdquo; x 17&rdquo;</li>\n<li>Độ rộng phim lớn nhất&nbsp;&nbsp;&nbsp; 14&rdquo;</li>\n<li>Dung t&iacute;ch khay&nbsp; Khay hiện 6L, khay h&atilde;m 6L, khay nước rửa 6L</li>\n<li>Tốc độ rửa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 180 gi&acirc;y, 140 gi&acirc;y, 180 gi&acirc;y theo chọn th&ecirc;m (b&ecirc;n trong l&agrave; 80-360 gi&acirc;y)</li>\n<li>Nhiệt độ rửa&nbsp;&nbsp;&nbsp;&nbsp; 200C &ndash; 400C</li>\n<li>C&ocirc;ng suất rửa&nbsp;&nbsp; 80p/giờ, 120p/giờ</li>\n<li>C&ocirc;ng suất&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.8kW</li>\n<li>Nguồn điện&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AC220V, 50/60Hz</li>\n<li>Trọng lượng m&aacute;y&nbsp;&nbsp; 40kg</li>\n</ul>', '<ul>\r\n<li>Ứng dụng c&ocirc;ng nghệ Đức</li>\r\n<li>C&ocirc;ng nghệ sản phẩm: Vỏ m&aacute;y được l&agrave;m bằng nhựa nhựa chắc, bền, chống m&ograve;n.</li>\r\n<li>H&igrave;nh d&aacute;ng: nhỏ gọn, mẫu m&atilde; đẹp. Lấy phim thuận tiện</li>\r\n<li>Lắp đặt v&agrave; điều chỉnh: Chiếm &iacute;t diện t&iacute;ch, lắp đặt dễ d&agrave;ng, c&oacute; thể đặt trực tiếp tr&ecirc;n b&agrave;n.</li>\r\n<li>Khung đưa phim v&agrave;o: hệ thống đưa phim v&agrave;o thiết kế liền 1 khối, kh&ocirc;ng bị tắt, giắc film.</li>\r\n<li>S&acirc;y kh&ocirc; hiệu qủa cao: Hệ thống đường gi&oacute; c&oacute; thể thổi kh&ocirc; từng đi điểm nước tr&ecirc;n phim.</li>\r\n<li>Khay đưa phim v&agrave;o c&oacute; nắp: khay đưa phim v&agrave;o nhẹ v&agrave; c&oacute; thể đ&oacute;ng được, người sử dụng c&oacute; thể bật đ&egrave;n sau khi cho phim v&agrave;o. Thiết kế n&agrave;y gi&uacute;p l&agrave;m việc thuận tiện v&agrave; hiệu quả.</li>\r\n<li>Con lăn c&oacute; thể chịu được nhiệt cao, kh&ocirc;ng bị biến dạng v&agrave; sử dụng trong thời gian d&agrave;i.</li>\r\n<li>Mạch điều khiển: hệ thống l&agrave;m n&oacute;ng được điều khiển vi xử l&yacute;, tự động kiểm tra v&agrave; ph&aacute;t hiện phim, tự động b&ugrave; ho&aacute; chất</li>\r\n<li>Tiết kiệm năng lượng: Tự động chuyển về chế độ tiết kiệm năng lượng sau một thời gian khong hoạt động.</li>\r\n</ul>', 'may rua phim tu dong, máy rửa phim tự động, máy rửa phim yp-33', 0, 3, 5, NULL),
(10, 'MÁY X-QUANG THƯỜNG QUY', 6, 'YZ-200C', '20170510222608-x-quang_yz-200b.jpg', 'Trung Quốc', 'Liên hệ', 0, 0, '<p>readmore</p>\n<table border="0" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<th><span style="font-size: small; font-family: arial, helvetica, sans-serif;">MỤC</span></th>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;"><strong>NỘI DUNG</strong></span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;"><strong>CH&Uacute; TH&Iacute;CH</strong></span></td>\n</tr>\n<tr>\n<th rowspan="3"><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Y&ecirc;u cầu nguồn điện</span></th>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Dung lượng</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">32KVA, 2 pha</span></td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Điện &aacute;p tần số</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">380V/220V&plusmn;10%, 50Hz&plusmn;0.5Hz</span></td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Điện trở b&ecirc;n trong</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">0.75W(Khi 380 V)&nbsp; 0.25W(Khi 220 V).</span></td>\n</tr>\n<tr>\n<th><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Nguồn</span></th>\n<td>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Phạm vi điều chỉnh</span></p>\n</td>\n<td>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Khi 380V, 380+/-10%.</span></p>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Khi 220V 220V+/-10%.</span></p>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">C&oacute; thể điều chỉnh li&ecirc;n tục.</span></p>\n</td>\n</tr>\n<tr>\n<th rowspan="3"><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Chụp phim</span></th>\n<td>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Điện &aacute;p</span></p>\n</td>\n<td>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">50-100KV&nbsp;<strong>(YZ &ndash; 200B),</strong>&nbsp;50-125KV&nbsp;<strong>(YZ- 300)</strong>, c&oacute; thể điều chỉnh&nbsp;li&ecirc;n tục.</span></p>\n</td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">D&ograve;ng điện</span></td>\n<td>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Ti&ecirc;u cự nhỏ&nbsp;: 50mA 100mA.</span></p>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Ti&ecirc;u cự lớn: 50mA, 100mA, 200mA<strong>(YZ-200B),</strong></span></p>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">300mA&nbsp;<strong>(YZ-300).</strong></span></p>\n</td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Thời gian</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">0,04 &ndash;6,3 gi&acirc;y gồm 23 mức.</span></td>\n</tr>\n<tr>\n<th rowspan="2"><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Biến &aacute;p cao nhất</span></th>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Điện &aacute;p ra DC lớn nhất</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">100KV&nbsp;<strong>(YZ &ndash; 200B)</strong>, 125KV&nbsp;<strong>(YZ -300).</strong></span></td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">D&ograve;ng điện ra DC lớn nhất</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">200mA&nbsp;<strong>(YZ &ndash; 200B)</strong>, 300mA&nbsp;<strong>(YZ -300)</strong>.</span></td>\n</tr>\n<tr>\n<th><span style="font-size: small; font-family: arial, helvetica, sans-serif;">B&oacute;ng ph&aacute;t tia X</span></th>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Ti&ecirc;u điểm</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Ti&ecirc;u điểm nhỏ: 1 x 1mm; Ti&ecirc;u điểm lớn: 2 x 2 mm.</span></td>\n</tr>\n<tr>\n<th rowspan="3"><span style="font-size: small; font-family: arial, helvetica, sans-serif;">B&agrave;n chụp</span></th>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Mặt b&agrave;n</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">2000 x 710 x 700 mm (D&agrave;i x Rộng x Cao).</span></td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Phạm vi di chuyển mặt b&agrave;n</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Dọc: 680mm, Ngang: 200mm.</span></td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">S&agrave;ng tia</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- H&agrave;nh tr&igrave;nh hướng dọc: &gt;= 500 mm.</span><br /><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- Mật độ s&agrave;ng: N28.</span><br /><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- Khoảng c&aacute;ch hội tụ: 100 cm.</span><br /><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- Tỉ lệ Grid: r8.</span></td>\n</tr>\n<tr>\n<th rowspan="4"><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Cột b&oacute;ng X-quang</span></th>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Chuyển động hướng dọc</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">1800 mm hay 1600 mm.</span></td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Chuyển động l&ecirc;n xuống</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">650mm &ndash; 1800mm so với mặt đất.</span></td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Chuyển động trung t&acirc;m</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">quay tr&ograve;n quanh c&aacute;nh tay ngang: +/- 1800</span></td>\n</tr>\n<tr>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">Chuyển động quay tr&ograve;n đường trục b&oacute;ng đ&egrave;n tia X-quang</span></td>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- 100 ~ 600 ~ +1200</span></td>\n</tr>\n<tr>\n<th><span style="font-size: small; font-family: arial, helvetica, sans-serif;">K&iacute;ch thước hộp Cassette đựng phim lớn nhất</span></th>\n<td><span style="font-size: small; font-family: arial, helvetica, sans-serif;">356x432mm(14&rsquo;&rsquo;x17&rsquo;&rsquo;).</span></td>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>', '<ul>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">B&oacute;ng đ&egrave;n X-quang Anode quay.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Biến &aacute;p cao thế 1 pha, cả s&oacute;ng.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&oacute; cơ cấu điều chỉnh li&ecirc;n tục điện &aacute;p nguồn V, Kv chụp.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&oacute; thiết bị ổn &aacute;p sợi t&oacute;c b&oacute;ng đ&egrave;n, thiết bị b&ugrave; điện đảm bảo đầu ra ổn định, ch&iacute;nh x&aacute;c.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&ocirc;ng suất KV, mA, S ph&acirc;n th&agrave;nh nhiều mức, c&oacute; thiết bị bảo vệ kho&aacute; li&ecirc;n động.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&oacute; thiết bị định thời d&ograve;ng điện kỹ thuật số, ph&acirc;n mức theo hệ số ưu ti&ecirc;n R10, khống chế thời gian ch&iacute;nh x&aacute;c.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">B&agrave;n chụp, cột b&oacute;ng , s&agrave;ng rung lắp đặt th&agrave;nh một khối, kh&ocirc;ng c&oacute; đường ray tr&ecirc;n dưới.</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Điều chỉnh l&ecirc;n cao, xuống thấp, sang ngang.</span></li>\r\n</ul>', 'may x-quang thuong quy, máy x-quang yz-200c', 0, 2, 6, NULL),
(11, 'MÁY X-QUANG KỸ THUẬT SỐ', 6, 'PEDS 600', '20170510222856-x-quang-tu-dong_peds600.png', 'Đức', 'Liên hệ', 0, 0, '<div><span style="font-family: arial, helvetica, sans-serif; font-size: x-small;">readmore</span></div>\n<ul>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Hệ thống kĩ thuật sẵn s&agrave;ng tương th&iacute;ch ho&agrave;n to&agrave;n với DICOM.</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&oacute; thể sử dụng nhiều loại tấm cảm biến phẳng phi&ecirc;n bản kh&aacute;c nhau với định dạng ảnh 43x43 cm.</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">T&ugrave;y thuộc v&agrave;o c&aacute;c phi&ecirc;n bản tấm cảm biến phẳng, với thiết kế tương ứng, DR-Bucky l&agrave; một phần của hệ thống.</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Do thiết kế đặt biệt của PEDS 600, một tấm cảm biến phẳng sử dụng cho nhiều hướng, do vậy chỉ sử dụng một cột đỡ cho việc chụp theo chiều ngang v&agrave; chiều dọc.</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">B&oacute;ng X-quang v&agrave; tấm cảm biến phẳng được lắp tr&ecirc;n c&ugrave;ng hệ thống</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">H&igrave;nh ảnh chất lượng cao với liều lượng bức xạ l&agrave; tối thiểu.</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">&nbsp;Điều chỉnh li&ecirc;n tục li&ecirc;n tục khoản c&aacute;ch từ ti&ecirc;u điểm đến tấm cảm biến phẳng (FDA) tới 200 cm</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&aacute;nh tay đỡ b&oacute;ng c&oacute; thẻ xoay &plusmn;180&nbsp;v&agrave; di chuyển theo chiều dọc</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Chiều cao điều chỉnh từ 40 đến 220 cm</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">M&agrave;n h&igrave;nh cảm ứng d&ugrave;ng phần mềm CONAXX bao gồm c&aacute;c t&ugrave;y chọn n&acirc;ng cao m&ocirc;-đun</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Độ ch&eacute;o ch&ugrave;m tia X-ray +/- 350</span></li>\n</ul>', '<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- Thế hệ m&aacute;y PROVOTEC PEDS 600 ho&agrave;n to&agrave;n l&agrave; hệ thống chụp X-quang kỹ thuật số bao gồm bộ vi xử l&yacute; điều khiển nguồn cao PROVARIO 50/50 kW cũng như điều khiển c&aacute;nh tay đỡ lắp đặt tấm cảm biến phẳng &ndash; DR PROTEC RAPIXX 4343MDR. Bằng việc sử dụng phần mềm h&igrave;nh ảnh CONAXX được ph&aacute;t triển bới PROTEC, &aacute;p dụng tất cả c&aacute;c ứng dụng mới nhất của c&ocirc;ng nghệ kĩ thuật số, đ&atilde; tạo ra sự tối ưu trong việc chụp X-quang với chất lượng vượt trội trong v&ograve;ng v&agrave;i gi&acirc;y.</span></p>\r\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- Do c&oacute; thiết kế nhỏ gọn, hệ thống trở n&ecirc;n l&iacute; tưởng trong việc chỉnh h&igrave;nh, phẫu thuật, chấn thương tại những nơi m&agrave; y&ecirc;u cầu về mặt kh&ocirc;ng gian trở n&ecirc;n quan trọng. Để đảm bảo một qui trinh l&agrave;m việc một c&aacute;ch nhanh ch&oacute;ng, điều khiển chụp tự động kỹ thuật số ( AEC) v&agrave; lập tr&igrave;nh giải phẫu l&agrave; một phần của chương trinh. Hệ thống lu&ocirc;n sẵn sang với c&aacute;c thế hệ tấm cảm biến phẳng PROTEC RAPIXX kh&aacute;c nhau, đồng thời cũng c&oacute; thể n&acirc;ng cấp ri&ecirc;ng rẽ l&ecirc;n tới phần mềm PACS ( phần mềm h&igrave;nh ảnh của PROPAXX).</span></p>', 'x-quang ky thuat so, x-quang ký thuật số PEDS 600', 0, 3, 5, NULL),
(12, ' X-ray Digital', 6, 'PEDS 600', '20170510223807-x-quang-tu-dong_peds600.png', 'PROTEC - Đức', 'Liên hệ', 0, 0, '<p>readmore</p>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">The PEDS 600 is a state-of-the-art radiography system including a microprocessor controlled inverter generator from our PROVARIO HF series. Due to the compact design the system is ideal for any kind of examination techniques in orthopedic, surgical and traumatology applications where minimum space required is of vital importance. To ensure a fast workflow the digital automatic exposure control (AEC in classic and TOUCH version) and anatomical programmer (APR) are part of the package.</span></p>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">According to individual user requirements, the PEDS 600 can be customized as an analog cassette-based system or a fully digital DR-unit. In case of a DR-configuration, the U-arm stand will be equipped with a PROTEC RAPIXX flatpanel detector. By using the CONAXX 2 image acquisition software from PROTEC, all advantages of latest digital technology are realized to full extend: Optimal workflow along with centralized control of the X-ray generator and the detector by CONAXX 2 provide diagnosable x-ray exposures of outstanding quality within a few seconds.</span></p>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">The system is available with different PROTEC RAPIXXflatpanel versions and can, due to its modular set-up, also be upgraded individually with additional software options up to a PACS (e.g. PROPAXX<a href="http://www.protec-med.com/en/product/26-propaxx_software.html">&nbsp;</a>).</span></p>\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">As a recommendable accessory, we suggest any version of mobile PROGNOST XP series X-ray tables</span></p>', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">The PEDS 600 is a state-of-the-art radiography system including a microprocessor controlled inverter generator from our PROVARIO HF series. Due to the compact design the system is ideal for any kind of examination techniques in orthopedic, surgical and traumatology applications where minimum space required is of vital importance. To ensure a fast workflow the digital automatic exposure control (AEC in classic and TOUCH version) and anatomical programmer (APR) are part of the package.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">According to individual user requirements, the PEDS 600 can be customized as an analog cassette-based system or a fully digital DR-unit. In case of a DR-configuration, the U-arm stand will be equipped with a PROTEC RAPIXX flatpanel detector. By using the CONAXX 2 image acquisition software from PROTEC, all advantages of latest digital technology are realized to full extend: Optimal workflow along with centralized control of the X-ray generator and the detector by CONAXX 2 provide diagnosable x-ray exposures of outstanding quality within a few seconds.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">The system is available with different PROTEC RAPIXXflatpanel versions and can, due to its modular set-up, also be upgraded individually with additional software options up to a PACS (e.g. PROPAXX<a href="http://www.protec-med.com/en/product/26-propaxx_software.html">&nbsp;</a>).</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">As a recommendable accessory, we suggest any version of mobile PROGNOST XP series X-ray tables.</span></p>', ' X-ray Digital,  X-ray Digital PEDS 600', 0, 5, 5, NULL),
(14, 'Máy sắc thuốc 24 ấm', 37, 'MST2400', '20171123015128-MAY-SAC-THUOC.png', 'Việt Nam', 'Liên hệ', 0, 0, '<p>readmore</p>\r\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- Hệ thống tủ điện 3 chế độ</span></p>\r\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- Nguồn điện 220v</span></p>\r\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- K&iacute;ch thước 2.5x0.6xx1.2</span></p>\r\n<p><span style="font-size: small; font-family: arial, helvetica, sans-serif;">- 24 ấm</span></p>', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Cấu tạo</strong></span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- Hệ thống c&oacute; nắp đậy k&iacute;n với 3 lớp gi&uacute;p m&aacute;y giữ nhiệt nhanh s&ocirc;i, tiết kiệm điện v&agrave; giảm thời gian hoạt động</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- Thiết bị c&oacute; 3 lớp, 2 lớp vỏ trong v&agrave; ngo&agrave;i bằng inox, lớp giữa bảo &ocirc;n dầy, đảm bảo kh&ocirc;ng mất nhiệt trong qu&aacute; tr&igrave;nh s&ocirc;i, tr&aacute;nh g&acirc;y bỏng trong qu&aacute; tr&igrave;nh sử dụng</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- Thiết bị được chế tạo ho&agrave;n to&agrave;n bằng inox chuy&ecirc;n d&ugrave;ng c&oacute; độ bền v&agrave; sức chịu đựng cao, đảm bảo an to&agrave;n v&agrave; tuổi thọ cao.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- Hệ thống c&oacute; nắp đậy k&iacute;n</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Nguy&ecirc;n l&yacute; hoạt động</strong>:</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- M&aacute;y sắc thuốc theo nguy&ecirc;n l&yacute; d&ugrave;ng dầu truyền nhiệt để đun thuốc , thanh sợi đốt kh&ocirc;ng tiếp x&uacute;c trực tiếp với thuốc, nhiệt độ s&ocirc;i c&agrave;i đặt được. V&igrave; vậy chất lượng thuốc đảm bảo kh&ocirc;ng bị ch&aacute;y</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Cơ chế vận h&agrave;nh :</strong></span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- Kiểm tra nguồn điện v&agrave;o m&aacute;y</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- Cho thuốc v&agrave; nước v&agrave;o ấm, c&agrave;i đặt nhiệt độ v&agrave; thời gian sắc, bật c&ocirc;ng tắc chạy m&aacute;y</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- C&oacute; thể lựa chọn hoạt động theo thời gian c&agrave;i đặt hoặc li&ecirc;n tục</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- C&oacute; đ&egrave;n b&aacute;o theo d&otilde;i qu&aacute; tr&igrave;nh m&aacute;y đang chạy, tăng c&ocirc;ng suất bằng điều khiển cảm biến</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- Thời gian l&agrave;m việc c&oacute; thể c&agrave;i đặt đến 99h đ&aacute;p ứng đầy đủ c&aacute;c nhu cầu</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- Hệ thống l&agrave;m việc tự động m&aacute;y sẽ tự động đốt v&agrave; khống chế nhiệt độ trong phạm vi cho ph&eacute;p, m&aacute;y sẽ tự dừng khi hết thời gian c&agrave;i đặt.</span></p>', 'may san thuoc, máy sắc thuốc, 24 ấm', 0, 3, 1, 1),
(15, 'Bồn rửa tay vô trùng', 38, 'BRC-200', '20171121030736-BON-RUA-TAY.png', 'Việt Nam', 'Liên hệ', 0, 0, '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Bồn rửa tay hai v&ograve;i được đ&uacute;c nguy&ecirc;n khối bằng th&eacute;p kh&ocirc;ng rỉ. Bồn được l&agrave;m bằng polyester cường lực với lớp phủ gelcoat đạt ti&ecirc;u chuẩn vệ sinh (Iso NPG). Vật liệu bọc v&agrave; h&igrave;nh th&aacute;i trơn tru gi&uacute;p việc vệ sinh cực dễ d&agrave;ng</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">readmore</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Cấu h&igrave;nh ti&ecirc;u chuẩn:</strong></span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Bồn rửa ch&iacute;nh: 01 chiếc</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> V&ograve;i nước h&igrave;nh cổ vịt: 02 chiếc</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Bộ khung gắn bằng th&eacute;p kh&ocirc;ng rỉ: 01 chiếc</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Cảm biến hồng ngoại t&iacute;ch hợp v&agrave;o bồn rửa: 02 chiếc</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Valve điện tử trong hộp điều khiển: 02 chiếc</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> V&ograve;i kết nối nước bằng vật liệu HDPE (chống chlorine): 02 chiếc</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Siphon đường k&iacute;nh 40mm: 01 chiếc</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Bộ tiền lọc v&agrave; l&otilde;i lọc: 01 bộ</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Bộ xử l&yacute; nước bằng tia cực t&iacute;m: 01 bộ</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Bộ lọc cuối (lắp ở v&ograve;i nước, d&ugrave;ng để lọc vi sinh vật, vi khuẩn trong nước): 01 bộ</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Th&ocirc;ng số kỹ thuật:</strong></span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">K&iacute;ch thước: d&agrave;i 1500mm, s&acirc;u 570mm, cao 745mm</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> V&ograve;i nước tự động mở khi cảm biến nhận dạng tay đưa v&agrave;o gần.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Hệ thống c&oacute; thể tự đ&ocirc;ng xả thải sau 6/12 giờ hoặc kh&ocirc;ng xả sau lần sử dụng cuối.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Tự động xả, d&ograve; khoảng c&aacute;ch v&agrave; chu tr&igrave;nh xả được dễ d&agrave;ng c&agrave;i đặt bằng điều khiển tự xa.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Hộp solenoid dễ d&agrave;ng gỡ ra để bảo tr&igrave;.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> Trọng lượng: 19Kg</span></p>', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><span style="white-space: pre;"> </span>Bồn rửa tay hai v&ograve;i được đ&uacute;ng nguy&ecirc;n khối m&agrave; kh&ocirc;ng c&oacute; c&aacute;c g&oacute;c cạnh sắc như c&aacute;c bồn rửa th&ocirc;ng thường bằng th&eacute;p kh&ocirc;ng rỉ. Vật liệu bọc v&agrave; h&igrave;nh th&aacute;i trơn tru gi&uacute;p việc vệ sinh cực dễ d&agrave;ng.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><span style="white-space: pre;"> </span>Được l&agrave;m bằng polyester cường lực với lớp phủ gelcoat đạt ti&ecirc;u chuẩn vệ sinh (Iso NPG), lớp phủ n&agrave;y của ch&uacute;ng t&ocirc;i đảm bảo hạn chế mảng b&aacute;m v&agrave; nước đọng tr&ecirc;n bề mặt. Qua đ&oacute;, bồn rửa chống sự sinh s&ocirc;i của vi khuẩn v&agrave; sự nhiễm khuẩn với thiết kế s&aacute;ng trắng.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><span style="white-space: pre;"> </span>Ba ưu điểm ngắn gọn:</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> - Dễ d&agrave;ng vệ sinh</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> - Bền bỉ</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"> - Thiết kế kh&ocirc;ng chạm đến s&agrave;n, gi&uacute;p dễ d&agrave;ng lau s&agrave;n</span></p>\r\n<ul>\r\n</ul>', 'bon rua tay, bồn rửa tay, bồn rửa tay phẫu thuật', 0, 2, 1, 1);
INSERT INTO `sanpham` (`idsp`, `tensp`, `idloai`, `masp`, `img`, `hangsp`, `gia`, `tinhtrang`, `khuyenmai`, `thongtin`, `baiviet`, `tag`, `ngonngu`, `soluong`, `baohanh`, `noibat`) VALUES
(18, 'MÁY SIÊU ÂM ĐEN TRẮNG DI ĐỘNG', 8, 'DP-8500', '20170625090048-20160128100344_dp-8500.jpg', 'Trung Quốc', 'Liên hệ', 0, 0, '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>C&ocirc;ng nghệ kỹ thuật số</strong><strong>:</strong><strong>&nbsp;</strong></span></p>\n<ul>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">H&igrave;nh ảnh h&ograve;a &acirc;m m&ocirc; (THI)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">H&igrave;nh ảnh m&ocirc; đặc biệt (TSI)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Định dạng ch&ugrave;m kỹ thuật số (DBF)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Ti&ecirc;u cự động (DRF)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Qu&eacute;t tần số động (DFS)</span></li>\n</ul>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Độ s&acirc;u thăm kh&aacute;m</strong><strong>:</strong>tới 302mm (phụ thuộc đầu d&ograve;)</span></p>\n<p>readmore</p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Chế độ h&igrave;nh ảnh</strong><strong>:</strong><strong> </strong>B, 2B, 4B, M, B+M</span></p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Thang x&aacute;m</strong><strong>:</strong><strong> </strong>256</span></p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Tần số đầu d&ograve;</strong><strong>:</strong><strong> </strong>2- 10MHz, tới 6 tần số</span></p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Kết nối đầu đ&ograve;</strong><strong>:</strong><strong> </strong>2 (ti&ecirc;u chuẩn)</span></p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>C&ocirc;ng nghệ kỹ thuật số</strong><strong>:</strong><strong> </strong></span></p>\n<ul style="list-style-type: square;">\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">H&igrave;nh ảnh h&ograve;a &acirc;m m&ocirc; (THI)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">H&igrave;nh ảnh m&ocirc; đặc biệt (TSI)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Định dạng ch&ugrave;m kỹ thuật số (DBF)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Ti&ecirc;u cự động (DRF)</span></li>\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Qu&eacute;t tần số động (DFS)</span></li>\n</ul>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Độ s&acirc;u thăm kh&aacute;m</strong><strong>:</strong>tới 302mm (phụ thuộc đầu d&ograve;)</span></p>\n<p>&nbsp;</p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Cổng ngoại vi</strong><strong>: </strong>Video, S-video, VGA, cổng USB, c&ocirc;ng tắc đạp ch&acirc;n, cổng Ethernet cho DICOM 3.0 (chọn th&ecirc;m)</span></p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Nguồn</strong><strong>:</strong><strong> </strong>100 ~ 240AC&plusmn;10%, 50/60Hz</span></p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>K&iacute;ch thước</strong><strong>:</strong><strong> </strong>1225 x 705 x 500mm&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Trọng lượng tịnh</strong><strong>:</strong><strong> </strong>~ 42kg</span></p>', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Xử l&yacute; h&igrave;nh ảnh</strong><strong>&nbsp;</strong></span></p>\r\n<table border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Tiền xử l&yacute; h&igrave;nh ảnh</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="427">\r\n<ul>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">TGC 8 dải</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Xử l&yacute; h&igrave;nh ảnh (IP)</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Dải động</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">L&agrave;m nổi đường bi&ecirc;n</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Tương quan khung</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Lựa chọn g&oacute;c qu&eacute;t</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Độ ph&acirc;n giải cao/   tốc độ khung cao</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&ocirc;ng suất &acirc;m</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Hậu xử l&yacute; h&igrave;nh ảnh</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="427">\r\n<ul>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Thang x&aacute;m</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Đổi trắng/đen</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Quay h&igrave;nh tr&aacute;i/   phải</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Lật h&igrave;nh l&ecirc;n/xuống</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Cine   loop</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">bộ nhớ 1500 khung   h&igrave;nh</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Bộ nhớ   media</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Bộ nhớ ti&ecirc;u chuẩn   400M, c&oacute; thể chọn ổ lưu trữ 320G, DVD-RW</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Zoom</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Ph&oacute;ng h&igrave;nh to&agrave;n   cảnh thời gian thực hoặc dừng h&igrave;nh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Chế độ   B</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Khoảng c&aacute;ch, chu   vi, diện t&iacute;ch, thể t&iacute;ch, g&oacute;c, NT, đường cong tăng trưởng của b&agrave;o thai, thể   t&iacute;ch b&agrave;ng quang, khối lượng tuyến tiền liệt, thể t&iacute;ch tử cung v.v&hellip;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Chế độ   M</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Khoảng c&aacute;ch, thời   gian, tốc độ, nhịp tim v.v&hellip;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Phần   mềm</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Ổ bụng, phụ khoa,   sản khoa, tim mạch, c&aacute;c bộ phận nhỏ, tiết niệu, mạch m&aacute;u ngoại vi, chỉnh h&igrave;nh   v.v&hellip; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Cổng   ngoại vi</strong><strong>&nbsp;</strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Video, S-video,   VGA, cổng USB, c&ocirc;ng tắc đạp ch&acirc;n, cổng Ethernet cho DICOM 3.0 (chọn th&ecirc;m)</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Nguồn</strong><strong></strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">100 ~ 240AC&plusmn;10%,   50/60Hz</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>K&iacute;ch   thước</strong><strong></strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">1225 x 705 x   500mm&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="151">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>Trọng   lượng tịnh</strong><strong></strong></span></p>\r\n</td>\r\n<td width="425">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">~ 42kg</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'may sieu am', 0, 10, 5, NULL),
(20, 'BỒN TẮM TRẺ SƠ SINH', 38, 'BTS-01', '20171121025640-BON-TAM.png', 'Việt Nam', 'Liên Hệ', 0, 0, '<table border="0" cellspacing="0" cellpadding="0" width="451">\r\n<tbody>\r\n<tr height="50">\r\n<td class="xl83" width="451" height="50"><span style="font-size: small;">- Bồn   tắm trẻ sơ sinh đ&uacute;c nguy&ecirc;n khối bằng vật liệu polyester khung gi&aacute; đỡ bằng   th&eacute;p kh&ocirc;ng rỉ. K&iacute;ch thước&nbsp; d&agrave;i 2100mm,   rộng 800mm, cao 1200mm</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p><span style="font-size: large;">Bồn&nbsp;tắm trẻ sơ sinh d&ugrave;ng cho bệnh viện ph&ograve;ng kh&aacute;m đa khoa</span></p>\r\n<p><span><span> </span>Được l&agrave;m bằng polyester cường lực với lớp phủ gelcoat đạt ti&ecirc;u chuẩn vệ sinh (Iso 9001-2015), lớp phủ n&agrave;y của ch&uacute;ng t&ocirc;i đảm bảo hạn chế mảng b&aacute;m v&agrave; nước đọng tr&ecirc;n bề mặt. Qua đ&oacute;, bồn rửa chống sự sinh s&ocirc;i của vi khuẩn v&agrave; sự nhiễm khuẩn với thiết kế s&aacute;ng trắng.</span></p>\r\n<p><span><span> </span>Ba ưu điểm ngắn gọn:</span></p>\r\n<p><span>- Dễ d&agrave;ng vệ sinh</span></p>\r\n<p><span>- Bền bỉ</span></p>\r\n<p><span>- Thiết kế kh&ocirc;ng chạm đến s&agrave;n, gi&uacute;p dễ d&agrave;ng lau s&agrave;n</span></p>\r\n<table border="0" cellspacing="0" cellpadding="0" width="451">\r\n<tbody>\r\n<tr height="50">\r\n<td class="xl83" width="451" height="50"><span>- Bồn tắm trẻ sơ sinh đ&uacute;c nguy&ecirc;n khối bằng vật liệu polyester khung gi&aacute; đỡ bằng th&eacute;p kh&ocirc;ng rỉ. K&iacute;ch thước&nbsp; d&agrave;i 2100mm, rộng 800mm, cao 1200mm</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span><br /></span></p>', '', 0, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `idsl` int(10) NOT NULL,
  `tieude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `tags` text COLLATE utf8_unicode_ci,
  `ngonngu` int(1) NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`idsl`, `tieude`, `link`, `tags`, `ngonngu`, `img`) VALUES
(5, '', 'index.php?manage=Introduce', '', 0, 'public/img/anh/20170511094153-133954421-mz4.jpg'),
(6, '', 'index.php?manage=Introduce', 'thiet bi y tế', 0, 'public/img/anh/20170511094452-bannervietmy-2017.jpg'),
(7, 'Máy sắc thuốc 24 ấm', '', ' máy sắc thuốc, may sac thuoc, may sắc thuốc 16 ấm, 24 ấm, 8 ấm, 18 ấm', 0, 'public/img/anh/20170511095027-catolo-1--sac-thuoc.jpg'),
(8, 'Bồn rửa tay phẫu thuật', 'http://localhost/Duan/ThangLong/index.php?manage=Product&v=vde&id=15', 'bồn rửa tay', 0, 'public/img/anh/20170617112301-bon-rua-tay.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `idtags` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `idtin` int(10) NOT NULL,
  `tags` varchar(2555) COLLATE utf8_unicode_ci NOT NULL,
  `ngonngu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(10) NOT NULL,
  `cauhoi` text COLLATE utf8_unicode_ci NOT NULL,
  `a` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dapan` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x` int(5) DEFAULT NULL,
  `s` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `idtin` int(10) NOT NULL,
  `tieude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci,
  `tags` text COLLATE utf8_unicode_ci,
  `ngonngu` int(1) DEFAULT NULL,
  `thoigian` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idtin`, `tieude`, `tomtat`, `noidung`, `img`, `tags`, `ngonngu`, `thoigian`) VALUES
(2, 'Thay đổi lối sống có thể cứu mạng bạn', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Nhiều người biết m&igrave;nh bị bệnh tăng huyết &aacute;p nhưng do kh&ocirc;ng thấy biểu hiện kh&aacute;c thường n&ecirc;n chủ quan, bỏ qua việc điều trị, dẫn tới những tai biến kh&oacute; lường.</span></p>', '<div class="text-conent">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Tăng huyết &aacute;p l&agrave; nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y tai biến mạch m&aacute;u n&atilde;o, nhồi m&aacute;u cơ tim, suy tim khiến h&agrave;ng trăm ngh&igrave;n người tử vong hoặc bị t&agrave;n phế&hellip;</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-05-10/1494409551-149377670778804-1.jpg" alt="Thay đổi lối sống c&oacute; thể cứu mạng bạn - 1" /></span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Theo TS.Trương Đ&igrave;nh Bắc, Ph&oacute; Cục trưởng Cục Y tế dự ph&ograve;ng (Bộ Y tế), nước ta hiện c&oacute; khoảng 12 triệu người bị tăng huyết &aacute;p. Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y tai biến mạch m&aacute;u n&atilde;o, nhồi m&aacute;u cơ tim, suy tim, trong đ&oacute;, nam giới chiếm tỷ lệ cao hơn so với nữ. Điều đ&aacute;ng lo ngại l&agrave; trong số người mắc bệnh tăng huyết &aacute;p, c&oacute; tới 60% chưa ph&aacute;t hiện được bệnh v&agrave; hơn 80% chưa được điều trị.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Tại Viện Tim mạch Việt Nam, BS.Dương Ngọc Long cho biết, khảo s&aacute;t mới nhất của Viện tại 1.179 x&atilde;, ph&aacute;t hiện 1/3 số bệnh nh&acirc;n tăng huyết &aacute;p trong số hơn 2,2 triệu người kh&aacute;m s&agrave;ng lọc. Trong đ&oacute;, số người mới ph&aacute;t hiện lần đầu chiếm 50%. Đ&acirc;y l&agrave; con số đ&aacute;ng b&aacute;o động v&igrave; người d&acirc;n c&ograve;n thiếu kiến thức về bệnh tăng huyết &aacute;p.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Theo c&aacute;c chuy&ecirc;n gia, tăng huyết &aacute;p l&agrave; 1 bệnh l&yacute; tiến triển &acirc;m thầm, c&oacute; thể g&acirc;y rất nhiều biến chứng kh&aacute;c nhau, khiến người bệnh trở n&ecirc;n t&agrave;n phế, thậm ch&iacute; tử vong. C&aacute;c biến chứng thường gặp nhất l&agrave; về tim như cơn đau thắt ngực, nhồi m&aacute;u cơ tim, suy tim,&hellip; ở n&atilde;o như xuất huyết n&atilde;o, nhũn n&atilde;o&hellip; ở thận như ph&ugrave;, suy thận v&agrave; một số biến chứng kh&aacute;c về mắt, mạch m&aacute;u.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Tuy nhi&ecirc;n, điều đ&aacute;ng ch&uacute; &yacute; l&agrave; c&oacute; khoảng 90% bệnh nh&acirc;n bị tăng huyết &aacute;p kh&ocirc;ng r&otilde; nguy&ecirc;n nh&acirc;n. Chỉ một số &iacute;t bệnh nh&acirc;n c&oacute; một v&agrave;i triệu chứng như đau đầu, ch&oacute;ng mặt, &ugrave; tai, mặt đỏ bừng.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Đa số c&aacute;c bệnh nh&acirc;n bị tăng huyết &aacute;p thường kh&ocirc;ng c&oacute; c&aacute;c dấu hiệu cảnh b&aacute;o trước. Do đ&oacute;, những dấu hiệu l&acirc;m s&agrave;ng thể hiện bệnh tăng huyết &aacute;p thường kh&ocirc;ng đặc hiệu v&agrave; người bệnh c&oacute; thể kh&ocirc;ng thấy biểu hiện g&igrave; kh&aacute;c biệt so với người b&igrave;nh thường. Đ&acirc;y cũng ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n khiến người mắc bệnh tăng huyết &aacute;p kh&ocirc;ng biết m&igrave;nh bị bệnh, hoặc biết nhưng do kh&ocirc;ng thấy biểu hiện kh&aacute;c thường n&ecirc;n chủ quan, bỏ qua việc điều trị, dẫn tới những tai biến kh&oacute; lường.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Để ph&ograve;ng ngừa c&aacute;c biến chứng do bệnh tăng huyết &aacute;p g&acirc;y ra, c&aacute;c chuy&ecirc;n gia khuyến c&aacute;o, việc kiểm tra huyết &aacute;p thường xuy&ecirc;n l&agrave; rất quan trọng. Người bị tăng huyết &aacute;p n&ecirc;n thường xuy&ecirc;n đo &iacute;t nhất l&agrave; 3 lần/tuần.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Mọi người n&ecirc;n thay đổi lối sống, điều n&agrave;y được v&iacute; như điều trị kh&ocirc;ng d&ugrave;ng thuốc nhưng đạt nhiều mục ti&ecirc;u như ph&ograve;ng ngừa bệnh tăng, hạ huyết &aacute;p v&agrave; giảm c&aacute;c yếu tố nguy cơ tim mạch kh&aacute;c.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">C&aacute;c biện ph&aacute;p thay đổi lối sống như giảm c&acirc;n, tập thể dục h&agrave;ng ng&agrave;y, hạn chế rượu, muối, nước mắm khi nấu ăn, kh&ocirc;ng h&uacute;t thuốc l&aacute;&hellip;</span></p>\r\n</div>\r\n<div class="nguontin"><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Theo Diệu Thu (D&acirc;n Việt)</span></div>\r\n<p>&nbsp;</p>', 'public/img/anh/20170511005530-1494409551-149377670778804-1.jpg', 'thay doi loi song', 0, NULL),
(3, '5 loại thảo mộc giúp hạ huyết áp an toàn và nhanh chóng', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Nhiều người bận rộn nghĩ đơn giản rằng nếu huyết &aacute;p tăng th&igrave; chỉ cần uống thuốc l&agrave; đủ. Tuy nhi&ecirc;n, uống thuốc l&acirc;u d&agrave;i cũng kh&ocirc;ng phải l&agrave; điều tốt, bạn n&ecirc;n t&igrave;m đến những c&aacute;ch điều trị tự nhi&ecirc;n an to&agrave;n hơn.</span></p>', '<div class="text-conent">\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>1. H&uacute;ng quế:</strong>&nbsp;L&agrave; loại thảo dược d&ugrave;ng l&agrave;m gia vị kh&aacute; phổ biến. Chiết xuất h&uacute;ng quế c&oacute; khả năng tạm thời hạ huyết &aacute;p. Nhiều nghi&ecirc;n cứu cho thấy h&uacute;ng quế đ&atilde; l&agrave;m giảm lượng endothelins l&agrave; loại protein g&acirc;y co mạch m&aacute;u. H&uacute;ng quế cũng rất dễ d&ugrave;ng trong thức ăn hằng ng&agrave;y.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><img class="news-image" src="http://image.24h.com.vn/upload/1-2017/images/2017-03-04/1488592989-hung-que.jpg" alt="5 loại thảo mộc gi&uacute;p hạ huyết &aacute;p an to&agrave;n v&agrave; nhanh ch&oacute;ng - 1" /></span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>2. Quế:</strong>&nbsp;D&ugrave;ng quế c&oacute; thể gi&uacute;p hạ huyết &aacute;p ở những người bị tiểu đường. Quế c&oacute; thể được d&ugrave;ng với c&aacute;c m&oacute;n ăn thường ng&agrave;y như c&agrave; ri, c&aacute;c m&oacute;n chi&ecirc;n x&agrave;o, ngũ cốc&hellip;</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><img class="news-image" src="http://image.24h.com.vn/upload/1-2017/images/2017-03-04/1488592989-que.jpg" alt="5 loại thảo mộc gi&uacute;p hạ huyết &aacute;p an to&agrave;n v&agrave; nhanh ch&oacute;ng - 2" /></span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>3. Thảo quả:&nbsp;</strong>Ăn thảo quả hằng ng&agrave;y c&oacute; thể l&agrave;m giảm huyết &aacute;p đ&aacute;ng kể. Bột v&agrave; hạt thảo quả cũng c&oacute; thể d&ugrave;ng trong bữa ăn thường ng&agrave;y như nấu s&uacute;p, n&ecirc;m v&agrave;o c&aacute;c m&oacute;n hầm. Thảo quả chứa nhiều chất ngăn m&aacute;u đ&ocirc;ng cục, do đ&oacute; c&oacute; t&aacute;c dụng gi&uacute;p l&agrave;m hạ huyết &aacute;p.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><img class="news-image" src="http://image.24h.com.vn/upload/1-2017/images/2017-03-04/1488592989-thao-qua.jpg" alt="5 loại thảo mộc gi&uacute;p hạ huyết &aacute;p an to&agrave;n v&agrave; nhanh ch&oacute;ng - 3" /></span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>4. Tỏi:&nbsp;</strong>Tỏi c&oacute; khả năng rất tốt trong việc l&agrave;m gi&atilde;n mạch m&aacute;u, gi&uacute;p giảm huyết &aacute;p. Hầu hết cư d&acirc;n sống quanh v&ugrave;ng biển Địa Trung Hải c&oacute;&nbsp;<a class="TextlinkBaiviet" title="sức khỏe" href="http://www.24h.com.vn/suc-khoe-doi-song-c62.html">sức khỏe</a>&nbsp;tim mạch tốt v&igrave; tỏi l&agrave; thực phẩm rất quen thuộc trong bữa ăn hằng ng&agrave;y của họ. Th&agrave;nh phần hoạt chất allicin trong tỏi cũng gi&uacute;p giảm huyết &aacute;p.</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><img class="news-image" src="http://image.24h.com.vn/upload/1-2017/images/2017-03-04/1488592989-toi.jpg" alt="5 loại thảo mộc gi&uacute;p hạ huyết &aacute;p an to&agrave;n v&agrave; nhanh ch&oacute;ng - 4" /></span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><strong>5. Cần t&acirc;y:&nbsp;</strong>Cần t&acirc;y l&agrave;m thư gi&atilde;n m&ocirc; cơ trong th&agrave;nh động mạch, tăng cường tuần ho&agrave;n do c&oacute; chất phytochemicals. Hạt cần t&acirc;y l&agrave; chất lợi tiểu gi&uacute;p hạ huyết &aacute;p, đ&atilde; được d&ugrave;ng l&acirc;u d&agrave;i ở Trung Quốc. Cần t&acirc;y c&oacute; thể được d&ugrave;ng rộng r&atilde;i trong m&oacute;n canh, hầm, s&uacute;p&hellip;</span></p>\r\n<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;"><img class="news-image" src="http://image.24h.com.vn/upload/1-2017/images/2017-03-04/1488592989-can-tay.jpg" alt="5 loại thảo mộc gi&uacute;p hạ huyết &aacute;p an to&agrave;n v&agrave; nhanh ch&oacute;ng - 5" /></span></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class="nguontin"><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Theo Thảo My (Ph&aacute;p luật TP.HCM)</span></div>', 'public/img/anh/20170511010131-x-quang-tu-dong_peds600.png', 'thao moc tot', 0, NULL),
(4, '5 famous remedies for sores, sore throat from sour acidity', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">In addition to fruits rich in vitamins C and A, sour apples are also effective remedies for ulcers, sore throat, mouth heat.</span></p>', '<p><span style="font-family: arial, helvetica, sans-serif; font-size: small;">According to oriental medicine, the fruit is sour and sweet, calculated average; Has the effect of inflammation, diuretic, sputum and saliva. The sour taste of sour, calculated average; Effect of low rheumatism, pain. The body and leaves are sour and sour, calculating average; The effect of inflammation, diuretic. Sweet taste, average. So long ago, acupuncture was used for healing and is a medicine for the following diseases.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Oral remedy</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">You crush 2-3 fresh carrots, then pour in water and boil for a while, wait for the cold to chew and swallow. Juice is both effective in treating oral heat and also supports weight loss.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">To increase efficiency, you have to suck several times a day. When preparing the material you should choose as sour as possible. Acid helps to dissolve more and more and it has an effective heat pump effect.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">5 famous remedies for sores, sore throat from sour acne - 1</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Remedies for sores, aches and pains</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Take 1 - 2 ripe sour fruit, buried in hot ash to warm and then put on the pain.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Remedy for urinary retention</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">7 acorns, each of which only one third of the stem. Cook with 600ml of water, 300ml of color, drink hot.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Also take a fruit and a garlic crushed crushed, put on the navel. Use continuously 3-5 days.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">5 famous remedies for sores, sore throat from sour acne - 2</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">A remedy for flu, aches and pains</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Pick three fruits, grilled ripe, squeezed juice, mixed with 50ml of white wine, drink once or divided into two, do not drink at full or too hungry. You should drink immediately 3 days.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Remedy cough cough, cough with phlegm</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Flower tea (star with ginger juice) 8-12g, male licorice 12g, perilla 8-10g, marjoram 8- 10g. Cook with 750ml of water, 300ml of color, divide 2 times before a meal.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">5 famous remedies for sores, sore throat from sour acne - 3</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">Tip:</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- People with kidney disease need to avoid eating because they have oxalic acid. Oxalic acid is more likely to cause kidney stones.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- This acid also interfere with the absorption of calcium in the body so the rickets, bone problems, children under the age of five should limit eating.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">- People with stomach or hunger should not eat, especially acid.</span><br /><span style="font-family: arial, helvetica, sans-serif; font-size: small;">According to Minh Anh (Nguoi Dua Tin)</span></p>', 'public/img/anh/20170511012940-1477641068-qua-khe-3.jpg', '5 famous remedies for sores, sore throat from sour acidity', 1, NULL),
(5, 'Chỉ với vài động tác này cho ngón tay, bạn sẽ thấy điều kỳ diệu xảy ra', '<p><span>Chỉ bằng một v&agrave;i thao t&aacute;c đơn giản với những ng&oacute;n tay, bạn c&oacute; thể lấy lại năng lượng cho cơ thể v&agrave; t&acirc;m tr&iacute;.</span></p>', '<p><strong>1. Ng&oacute;n c&aacute;i</strong></p>\r\n<p><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-06-07/1496809743-149680395952542-anh-1.jpg" alt="Chỉ với v&agrave;i động t&aacute;c n&agrave;y cho ng&oacute;n tay, bạn sẽ thấy điều kỳ diệu xảy ra - 1" width="500" /></p>\r\n<p>Ng&oacute;n tay c&aacute;i chịu tr&aacute;ch nhiệm cho chứng lo lắng v&agrave; nhức đầu. Nếu bạn đang bị đau đầu do căng thẳng thần kinh, h&atilde;y nhẹ nh&agrave;ng vuốt ng&oacute;n tay c&aacute;i trong khoảng 5 ph&uacute;t. N&oacute; sẽ gi&uacute;p giảm đau đ&aacute;ng kể.</p>\r\n<p><strong>2. Ng&oacute;n trỏ</strong></p>\r\n<p><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-06-07/1496809745-149680395939715-anh-2.jpg" alt="Chỉ với v&agrave;i động t&aacute;c n&agrave;y cho ng&oacute;n tay, bạn sẽ thấy điều kỳ diệu xảy ra - 2" width="500" /></p>\r\n<p>Ng&oacute;n tay n&agrave;y kiểm so&aacute;t những cơn đau cơ cũng như cảm gi&aacute;c thất vọng, sợ h&atilde;i v&agrave; bối rối. Theo nghi&ecirc;n cứu tại Đại học Minnesota, c&aacute;c bệnh nh&acirc;n bị đau lưng v&agrave; đau cơ sẽ cảm thấy tốt hơn sau một liệu ph&aacute;p phản xạ đơn giản: nắm chặt ng&oacute;n trỏ bằng b&agrave;n tay c&ograve;n lại trong 5 ph&uacute;t.</p>\r\n<p><strong>3. Ng&oacute;n giữa</strong></p>\r\n<p><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-06-07/1496809745-149680395925259-anh-3.jpg" alt="Chỉ với v&agrave;i động t&aacute;c n&agrave;y cho ng&oacute;n tay, bạn sẽ thấy điều kỳ diệu xảy ra - 3" width="500" /></p>\r\n<p>Xoa b&oacute;p ng&oacute;n tay giữa nếu bạn đang cảm thấy bực bội, tức giận hoặc mệt mỏi. C&aacute;c nghi&ecirc;n cứu đ&atilde; chứng minh b&agrave;i tập đơn giản n&agrave;y c&oacute; thể l&agrave;m giảm huyết &aacute;p v&agrave; l&agrave;m dịu tinh thần.</p>\r\n<p><strong>4. Ng&oacute;n đeo nhẫn</strong></p>\r\n<p><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-06-07/1496809746-149680395996365-anh-4.jpg" alt="Chỉ với v&agrave;i động t&aacute;c n&agrave;y cho ng&oacute;n tay, bạn sẽ thấy điều kỳ diệu xảy ra - 4" width="500" /></p>\r\n<p>Cảm x&uacute;c ti&ecirc;u cực v&agrave; buồn b&atilde; sẽ biến mất nếu bạn nhẹ nh&agrave;ng vuốt ng&oacute;n &aacute;p &uacute;t trong v&ograve;ng 5 ph&uacute;t. Đừng qu&ecirc;n giữ b&igrave;nh tĩnh v&agrave; kiểm so&aacute;t hơi thở của bạn.</p>\r\n<p><strong>5. Ng&oacute;n &uacute;t</strong></p>\r\n<p><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-06-07/1496809746-149680395926767-anh-5.jpg" alt="Chỉ với v&agrave;i động t&aacute;c n&agrave;y cho ng&oacute;n tay, bạn sẽ thấy điều kỳ diệu xảy ra - 5" width="500" /></p>\r\n<p>Ng&oacute;n tay &uacute;t c&oacute; li&ecirc;n quan tới l&ograve;ng tự trọng, sự căng thẳng v&agrave; lo lắng. Nếu bạn c&oacute; xu hướng tự ti về bản th&acirc;n, bạn n&ecirc;n&nbsp; nghĩ đến việc xoa b&oacute;p n&oacute; trong 5 ph&uacute;t v&agrave; cố gắng nghĩ về điều g&igrave; đ&oacute; tốt đẹp trong khi l&agrave;m việc đ&oacute;.</p>\r\n<p><strong>6. L&ograve;ng b&agrave;n tay</strong></p>\r\n<p><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-06-07/1496809746-14968039594062-anh-6.jpg" alt="Chỉ với v&agrave;i động t&aacute;c n&agrave;y cho ng&oacute;n tay, bạn sẽ thấy điều kỳ diệu xảy ra - 6" width="500" /></p>\r\n<p>Ấn c&aacute;c ng&oacute;n tay của b&agrave;n tay n&agrave;y v&agrave;o giữa l&ograve;ng b&agrave;n tay b&ecirc;n kia, từ từ massage theo v&ograve;ng tr&ograve;n, kết hợp h&iacute;t s&acirc;u v&agrave; thở ra ba lần. C&aacute;c b&aacute;c sĩ n&oacute;i rằng, l&ograve;ng b&agrave;n tay l&agrave; trung t&acirc;m của cảm gi&aacute;c v&agrave; cảm x&uacute;c của bạn. Nghi&ecirc;n cứu cho thấy việc xoa b&oacute;p thường xuy&ecirc;n gan b&agrave;n tay gi&uacute;p ngăn ngừa chứng buồn n&ocirc;n, căng thẳng, ti&ecirc;u chảy v&agrave; t&aacute;o b&oacute;n.</p>\r\n<p><strong>7. &Eacute;p 2 b&agrave;n tay v&agrave;o nhau</strong></p>\r\n<p><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-06-07/1496809746-149680395995423-anh-7.jpg" alt="Chỉ với v&agrave;i động t&aacute;c n&agrave;y cho ng&oacute;n tay, bạn sẽ thấy điều kỳ diệu xảy ra - 7" width="500" /></p>\r\n<p>Vị tr&iacute; n&agrave;y thường được sử dụng trong thiền định. N&oacute; gi&uacute;p bạn tập trung v&agrave; kiểm so&aacute;t suy nghĩ. &Eacute;p 2 l&ograve;ng b&agrave;n tay v&agrave;o với nhau c&oacute; thể cải thiện lưu th&ocirc;ng m&aacute;u.</p>\r\n<p><strong>8. Thủ ấn Surya Mudra</strong></p>\r\n<p><img class="news-image" src="http://image.24h.com.vn/upload/2-2017/images/2017-06-07/1496809746-149680395955311-anh-8.jpg" alt="Chỉ với v&agrave;i động t&aacute;c n&agrave;y cho ng&oacute;n tay, bạn sẽ thấy điều kỳ diệu xảy ra - 8" width="500" /></p>\r\n<p>C&aacute;ch n&agrave;y sẽ gi&uacute;p bạn cải thiện qu&aacute; tr&igrave;nh ti&ecirc;u h&oacute;a v&agrave; trao đổi chất, đồng thời gi&uacute;p &iacute;ch khi bạn đang bị giảm th&acirc;n nhiệt hay ăn kh&ocirc;ng ngon miệng.</p>', 'public/img/anh/20170607182039-1496809743-149680395952542-anh-1.jpg', 'ngon tay', 0, '2017/06/07'),
(8, 'sd', '<p>sad</p>', '<p>sd</p>', 'public/img/anh/20171002123309-logo-1.jpg', 'sds', 0, '2017/10/02'),
(9, 'sd', '<p>sad</p>', '<p>sd</p>', 'public/img/anh/20171002123309-logo-1.jpg', 'sds', 0, '2017/10/02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idus` int(10) NOT NULL,
  `unus` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tenus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydk` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idus`, `unus`, `passus`, `tenus`, `diachi`, `email`, `sdt`, `ngaydk`) VALUES
(2, 'minhquang1110@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Trịnh Văn Quảng', NULL, 'minhquang1110@gmail.com', '0964622242', '2017/05/12'),
(15, 'minhquang271094@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Quảng Pro', 'cổ nhuế 2, hà nội', 'minhquang271094@gmail.com', '0123123123', '2017/06/11'),
(16, 'huutuong.tbyt@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Hữu Tường', 'Hoàng Mai - Hà Nội', 'huutuong.tbyt@gmail.com', '0977222844', '2017/06/11'),
(18, 'ngothithuthuy1811@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Ngô Thu Thủy', 'Điêp nông, Hưng Hà, Thái Bình', 'ngothithuthuy1811@gmail.com', '01692512395', '2017/06/18'),
(19, 'ngothuthuy181195@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Thúy', 'Hà Nội', 'ngothuthuy181195@gmail.com', '096532425', '2017/06/18'),
(20, 'trinhvanquang2710@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Bùi Thị Linh', 'Hà Nội', 'trinhvanquang2710@gmail.com', '0123123321', '2017/06/22'),
(21, 'tranvanb@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Trần Văn B', 'Thái Bình', 'tranvanb@gmail.com', '0123321321', '2017/06/22'),
(22, 'nguyenvanduong94@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Nguyễn Văn Dược', 'Thái Bình', 'nguyenvanduong94@gmail.com', '0123696369', '2017/06/22'),
(23, 'maitrongminh@hotmail.com', 'eb82820b6a50c3a8a17a8baa51cc85fa', 'Mai Trọng Minh', 'Bắc Ninh', 'maitrongminh@hotmail.com', '0963145624', '2017/06/22'),
(24, 'duongthinga94@yahoo.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 'Dương Thị Nga', 'Nam Định', 'duongthinga94@yahoo.com', '0967524152', '2017/06/22'),
(25, 'dogiatung93@outlock.com', '2405ea77f6cf0fab8589cd6a38e0c1fc', 'Đỗ Gia Tùng', 'Vĩnh Phúc', 'dogiatung93@outlock.com', '096427485', '2017/06/22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idad`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idbl`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`iddm`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`iddon`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`idimg`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`idlh`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`idloai`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`idsl`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`idtags`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtin`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idbl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `iddm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddon` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `idimg` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `idlh` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `idloai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `idsl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `idtags` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idus` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
