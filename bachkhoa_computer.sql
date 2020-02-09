-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2019 at 04:35 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bachkhoa_computer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminName` varchar(30) DEFAULT NULL,
  `adminEmail` varchar(30) DEFAULT NULL,
  `adminDob` tinytext DEFAULT NULL,
  `admminPassword` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminName`, `adminEmail`, `adminDob`, `admminPassword`) VALUES
(1, 'Admin', 'Admin@hcmut.edu.vn', '26-03-1995', 'admin'),
(7, 'Thach', 'lequangthachbk@gmail.com', '26-03-1995', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `passwordreset`
--

CREATE TABLE `passwordreset` (
  `pwResetID` int(11) NOT NULL,
  `pwResetEmail` text NOT NULL,
  `pwResetSelector` text NOT NULL,
  `pwResetToken` longtext NOT NULL,
  `pwResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Name` varchar(1000) NOT NULL,
  `Images` varchar(200) NOT NULL,
  `Price` varchar(11) NOT NULL,
  `Start` int(2) NOT NULL,
  `Branch` varchar(20) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Monitor` varchar(500) DEFAULT NULL,
  `Cpu` varchar(500) DEFAULT NULL,
  `Ram` varchar(100) DEFAULT NULL,
  `Pin` varchar(500) DEFAULT NULL,
  `Descr` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Type`, `Name`, `Images`, `Price`, `Start`, `Branch`, `Status`, `Monitor`, `Cpu`, `Ram`, `Pin`, `Descr`) VALUES
(1, 'ssd', 'SSD Crucial BX500 3D NAND SATA III 2.5 inch 120GB', 'ssd1.jpg', '449.000', 5, 'Crucial', 'Còn Hàng', 'Chuẩn SSD: 2.5 inches', 'Tốc độ đọc: 540 MB/s', 'Tốc độ ghi: 500 MB/s', 'Bảo hành chính hãng 3 năm 1 đổi 1', ''),
(2, 'ssd', 'SSD Samsung M.2 PCIe NAVAX 20 Gen3 x4 128GB', 'ssd2.jpg', '790.000', 5, 'Sam Sung', 'Còn Hàng', 'Chuẩn SSD: M.2 NVMe Gen3 x4', 'Tốc độ đọc: 2800 MB/s', 'Tốc độ ghi: 600 MB/s', 'Bảo hành 3 năm 1 đổi 1', ''),
(3, 'ssd', 'SSD Kingston 3D-NAND mSATA SATA III 240GB', 'ssd3.jpg', '1.050.000', 4, 'Kingston', 'Còn Hàng', 'Chuẩn SSD: mSATA', 'Tốc độ đọc: 520 MB/s', 'Tốc độ ghi: 500 MB/s', 'Bảo hành chính hãng 5 năm 1 đổi 1', ''),
(4, 'ssd', 'SSD Crucial BX500 3D NAND SATA III 2.5 inch 480GB', 'ssd4.jpg', '1.290.000', 4, 'Crucial ', 'Còn Hàng', 'Chuẩn SSD: 2.5 inches', 'Tốc độ đọc: 540 MB/s', 'Tốc độ ghi: 500 MB/s', 'Bảo hành chính hãng 3 năm 1 đổi 1', ''),
(5, 'ssd', 'SSD Crucial BX500 3D NAND SATA III 2.5 inch 240GB', 'ssd5.jpg', '690.000', 5, 'Crucial', 'Còn Hàng', 'Chuẩn SSD: 2.5 inches', 'Tốc độ đọc: 540 MB/s', 'Tốc độ ghi: 500 MB/s', 'Bảo hành chính hãng 3 năm 1 đổi 1', ''),
(6, 'ssd', 'SSD Crucial MX500 3D NAND SATA III 2.5 inch 250GB', 'ssd6.jpg', '1.050.000', 5, 'Crucial', 'Còn Hàng', 'Chuẩn SSD: 2.5 inches', 'Tốc độ đọc: 560 MB/s', 'Tốc độ ghi: 510 MB/s', 'Bảo hành chính hãng 5 năm 1 đổi 1', ''),
(7, 'ssd', 'SSD Samsung 860 Evo X5 250GB 2.5-Inch SATA III', 'ssd7.jpg', '1.080.000', 4, 'Sam Sung', 'Còn Hàng', 'Chuẩn SSD: 2.5 inches', 'Tốc độ đọc: 550 MB/s', 'Tốc độ ghi: 520 MB/s', 'Bảo hành 5 năm 1 đổi 1 ', ''),
(8, 'ssd', 'SSD Crucial MX500 3D NAND SATA III 2.5 inch 500GB', 'ssd8.jpg', '1.550.000', 5, 'Crucial ', 'Còn Hàng', 'Chuẩn SSD: 2.5 inches', 'Tốc độ đọc: 560 MB/s', 'Tốc độ ghi: 510 MB/s', 'Bảo hành chính hãng 5 năm 1 đổi 1', ''),
(9, 'hdd', 'Ổ cứng di động Seagate Backup WT32NT3 Plus Slim 1TB', 'hdd1.jpg', '1.390.000', 5, 'Seagate ', 'Còn Hàng', 'Loại: Ổ cứng di động gắn ngoài. Dung lượng: 1 TB', 'Kích thước: 114.8 x 78 x 11.7 mm', 'Tốc độ đọc: USB 3.0 5 Gbps', 'Bảo hành: 3 năm', ''),
(10, 'hdd', 'Ổ cứng di động Western Digital My Passport 1TB WDB 32', 'hdd2.jpg', '1.390.000', 5, 'Western Digital', 'Còn Hàng', 'Loại: Ổ cứng di động gắn ngoài', 'Dung lượng: 1 TB', 'Tốc độ đọc: USB 3.0 5 Gbps', 'Bảo hành: 3 năm', ''),
(11, 'hdd', 'Ổ cứng di động 2TB chống Sock Apacer AC631  USB 3.1 Gen', 'hdd3.jpg', '1.850.000', 5, 'Apacer', 'Còn Hàng', 'Loại: Ổ cứng di động gắn ngoài', 'Dung lượng: 2 TB', 'Tốc độ đọc: USB 3.1 Gen 1', 'Bảo hành: 3 năm', ''),
(12, 'hdd', 'Ổ cứng di động Transcend Store Jet Slim 25M 3S 2TB', 'hdd4.jpg', '2.190.000', 5, 'Transcend  ', 'Còn Hàng', 'Loại: Ổ cứng di động gắn ngoài. Dung lượng: 2 TB', 'Kích thước: 129.5 x 80.8 x 16.1 mm', 'Tốc độ đọc: USB 3.0 5 Gbp', 'Bảo hành: 2 năm', ''),
(13, 'hdd', 'Ổ cứng di động 250GB External SSD Samsung T5 USB 3.1', 'hdd5.jpg', '1.900.000', 4, 'Sam Sung', 'Còn Hàng', 'Loại: SSD Ổ cứng di động gắn ngoài. Dung lượng: 250 GB', 'Kích thước: 74 x 57.3 mm', 'Tốc độ đọc: 540 MB/s. Tốc độ ghi: 515 MB/s', 'Bảo hành 3 năm 1 đổi 1.', ''),
(14, 'hdd', 'Ổ cứng di động 500GB External SSD Samsung T5 USB 3.1 Gen 2 ', 'hdd6.jpg', '2.050.000', 5, 'Sam Sung', 'Còn Hàng', 'Loại: SSD Ổ cứng di động gắn ngoài', 'Kích thước: 74 x 57.3 mm\r\n\r\n\r\n', 'Tốc độ đọc: 540 MB/s', 'Bảo hành 3 năm 1 đổi 1.', ''),
(15, 'hdd', 'Ổ cứng di động 1TB External SSD Samsung T5 USB 3.1 Gen 2', 'hdd7.jpg', '3.650.000', 5, 'Sam Sung', 'Còn Hàng', 'Loại: SSD Ổ cứng di động gắn ngoài', 'Kích thước: 74 x 57.3 mm', 'Tốc độ đọc: 540 MB/s', 'Bảo hành 3 năm 1 đổi 1.', ''),
(16, 'hdd', 'Ổ cứng di động 2TB External SSD Samsung T5 USB 3.1 Gen 2', 'hdd8.jpg', '7.750.000', 5, 'Sam Sung', 'Còn Hàng', 'Loại: SSD Ổ cứng di động gắn ngoài', 'Kích thước: 74 x 57.3 mm', 'Tốc độ đọc: 540 MB/s', 'Bảo hành 3 năm 1 đổi 1', ''),
(17, 'disk', 'Thẻ Nhớ Micro SDHC SanDisk  V30 A1 667x 32GB 100MB/s', 'disk1.jpg', '210.000', 5, 'Sandisk', 'Còn Hàng', 'Loại sản phẩm: microSD', 'Tốc độ đọc: 100 MB/s', 'Tốc độ Ghi: 60 MB/s', 'Bảo hành: 5 năm', ''),
(18, 'disk', 'Thẻ Nhớ Micro SDHC Samsung EVO Plus U1 32GB 95MB/s\r\n', 'disk2.jpg', '120.000', 5, 'Sam Sung', 'Còn Hàng', 'Loại sản phẩm: microSD', 'Tốc độ đọc: 95 MB/s', 'Tốc độ Ghi: 20 MB/s', 'Bảo hành: 5 năm', ''),
(19, 'disk', 'Thẻ nhớ SDHC SanDisk Extreme U3 600X 32GB 90MB', 'disk3.jpg', '200.000', 5, 'SanDisk', 'Còn Hàng', 'Loại sản phẩm: SD Card', 'Tốc độ đọc: 90 MB/s', 'Tốc độ Ghi: 40 MB/s', 'Bảo hành: 5 năm', ''),
(20, 'disk', 'Thẻ Nhớ Micro SDXC SanDisk Extreme V30 A2 128GB 160MB/s', 'disk4.jpg', '590.000', 5, 'SanDisk', 'Còn Hàng', 'Loại sản phẩm: microSD', 'Tốc độ đọc: 160 MB/s', 'Tốc độ Ghi: 90 MB/s', 'Bảo hành: 5 năm', ''),
(21, 'usb', 'USB 3.0 Kingston DataTraverler 100 G3 16GB 100MB/s', 'usb1.jpg', '75.000', 5, 'Kingston', 'Còn Hàng', 'Loại sản phẩm: USB 3.0', 'Chất liệu: Nhựa', 'Tốc độ đọc: 100 MB/s', 'Bảo hành: 5 năm', ''),
(22, 'usb', 'USB 3.0 SanDisk Ultra Flair CZ73 16GB 130MB/s', 'usb2.jpg', '105.000', 5, 'SanDisk', 'Còn Hàng', 'Loại sản phẩm: USB 3.0', 'Chất liệu: Kim loại', 'Tốc độ đọc: 130 MB/s', 'Bảo hành: 5 năm', ''),
(23, 'usb', 'USB 3.0 SanDisk Ultra Flair CZ73 32GB 150MB/s', 'usb3.jpg', '155.000', 5, 'SanDisk', 'Còn Hàng', 'Loại sản phẩm: USB 3.0', 'Chất liệu: Kim loại', 'Tốc độ đọc: 150 MB/s', 'Bảo hành: 5 năm', ''),
(24, 'usb', 'USB 3.0 Kingston DataTraverler 100 G3 32GB 100MB/s', 'usb4.jpg', '95.000', 5, 'Kingston', 'Còn Hàng', 'Loại sản phẩm: USB 3.0', 'Chất liệu: Nhựa', 'Tốc độ đọc: 100 MB/s', 'Bảo hành: 5 năm', ''),
(25, 'usb', 'USB 3.0 Kingston DataTraveler SE9 G2 16GB DTSE9 G2', 'usb5.jpg', '140.000', 5, 'Kingston', 'Còn Hàng', 'Loại sản phẩm: USB 3.0', 'Chất liệu: Kim loại', 'Tốc độ đọc: 100 MB/s', 'Bảo hành 5 năm chính hãng', ''),
(26, 'usb', 'USB Sandisk Ultra Dual OTG Type-C USB 3.1 DDC2 32GB\r\n', 'usb6.jpg', '230.000', 5, 'SanDisk', 'Còn Hàng', 'Chuẩn kết nối: USB Type-C,USB 3.1', 'Chất liệu: Kim loại', 'Tốc độ đọc: 150 MB/s', 'Bảo hành: 5 năm', ''),
(27, 'laptop', 'Laptop HP Pavilion 14-ce204', 'lap1.jpg', '14.999.000', 5, 'HP', 'Còn Hàng', 'Màn hình: 14\" IPS ( 1920 x 1080 ) , không cảm ứng', 'Đồ họa: Intel UHD Graphics 620. Lưu trữ: 1TB HDD 5400RPM', 'RAM: 1 x 4GB DDR4 2400MHz', 'Pin: 3 cell Pin liền , khối lượng: 1.6 kg', ''),
(28, 'laptop', 'Laptop Dell Inspiron 5584', 'lap2.jpg', '16.990.000', 5, ' Dell', 'Còn Hàng', 'Màn hình: 15.6\" ( 1920 x 1080 ) , không cảm ứng', 'CPU: Intel Core i5-8265U ( 1.6 GHz - 3.9 GHz / 6MB / 4 nhân, 8 luồng )', 'RAM: 1 x 4GB DDR4 2666MHz. Đồ họa: Intel UHD Graphics 620 - NVIDIA GeForce MX130 2GB GDDR5', 'Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.9 kg', ''),
(29, 'laptop', 'Laptop Acer Aspire 3 A315-', 'lap3.jpg', '9.490.000', 4, 'Acer ', 'Còn Hàng', 'Màn hình: 15.6\" ( 1920 x 1080 ) , không cảm ứng', 'CPU: Intel Core i3-7020U ( 2.3 GHz / 3MB / 2 nhân, 4 luồng )', 'RAM: 1 x 4GB Onboard DDR4 2133MHz - Đồ họa: Intel HD Graphics 620', 'Pin: 2 cell 37 Wh , khối lượng: 1.7 kg', ''),
(30, 'laptop', 'Laptop ASUS VivoBook X4', 'lap4.jpg', '6.090.000', 4, 'ASUS', 'Còn Hàng', 'Màn hình: 14\" ( 1366 x 768 ) , không cảm ứng', 'CPU: Intel Celeron N4000 ( 1.1 GHz - 2.6 GHz / 4MB / 2 nhân, 2 luồng )', 'RAM: 1 x 4GB DDR4 2400MHz - Đồ họa: Intel UHD Graphics 600', 'Pin: 3 cell 33 Wh Pin liền , khối lượng: 1.5 kg', ''),
(31, 'laptop', 'Laptop Acer Swift 3 SF31', 'lap5.jpg', '11.490.000', 5, 'ACER', 'Còn Hàng', 'Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng', 'CPU: Intel Core i3-8130U ( 2.2 GHz - 3.4 GHz / 4MB / 2 nhân, 4 luồng )', 'RAM: 1 x 4GB DDR4 2666MHz - Đồ họa: Intel UHD Graphics 620', 'Pin: 4 cell 48 Wh Pin liền , khối lượng: 1.6 kg', ''),
(32, 'laptop', 'Laptop Acer Nitro 5 AN515', 'lap6.jpg', '19.790.000', 5, 'ACER', 'Còn Hàng', 'Màn hình: 15.6\" IPS (1920 x 1080), không cảm ứng', 'CPU: Intel Core i5 9300H (2.4 GHz - 4.1 GHz/8MB/4 nhân, 8 luồng)', 'RAM: 1 x 8GB DDR4 2400MHz (2 Khe cắm, Hỗ trợ tối đa 32GB). Đồ họa: Intel UHD Graphics 630/ NVIDIA Ge', 'Pin: 4 cell 55 Wh Pin liền, Khối lượng: 2.3 kg', ''),
(33, 'laptop', 'Laptop Acer Aspire 5 A515', 'lap7.jpg', '15.590.000', 5, 'ACER', 'Còn Hàng', 'Màn hình: 15.6\" (1920 x 1080), không cảm ứng', 'CPU: Intel Core i5-10210U (1.6 GHz - 4.2 GHz/6MB/4 nhân, 8 luồng)', 'RAM: 1 x 8GB DDR4 2133MHz (1 Khe cắm, Hỗ trợ tối đa 16GB). Intel UHD Graphics 620', 'Pin: 4 cell 48 WhKhối lượng: 1.7 kg', ''),
(34, 'laptop', 'Laptop HP Pavilion 14-ce203', 'lap8.jpg', '12.490.00', 4, 'HP', 'Còn Hàng', 'Màn hình: 14\" IPS (1920 x 1080), không cảm ứng', 'CPU: Intel Core i3-8145U (2.1 GHz - 3.9 GHz/4MB/2 nhân, 4 luồng)', 'RAM: 1 x 4GB DDR4 2400MHz (1 Khe cắm, Hỗ trợ tối đa 16GB). Intel UHD Graphics 620', 'Pin: 3 cell 41 WhKhối lượng: 1.4 kg', ''),
(35, 'laptop', 'Laptop ASUS ROG Strix G', 'lap9.jpg', '22.290.000', 5, 'ASUS', 'Còn Hàng', 'Màn hình: 15.6\" IPS (1920 x 1080), không cảm ứng', 'CPU: Intel Core i5 9300H (2.4 GHz - 4.1 GHz/8MB/4 nhân, 8 luồng)', 'RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB). Intel UHD Graphics 630', 'Pin: 4 cell 48 Wh Pin liền, Khối lượng: 2.4 kg', ''),
(36, 'laptop', 'Laptop Acer Nitro 5 AN', 'lap10.jpg', '20.039.000', 4, 'ACER', 'Còn Hàng', 'Màn hình: 15.6\" IPS (1920 x 1080), không cảm ứng', 'CPU: Intel Core i5 9300H (2.4 GHz - 4.1 GHz/8MB/4 nhân, 8 luồng)', 'RAM: 1 x 8GB DDR4 2400MHz (2 Khe cắm, Hỗ trợ tối đa 32GB). Intel UHD Graphics 630', 'Pin: 4 cell 55 Wh Pin liền, Khối lượng: 2.3 kg', ''),
(37, 'laptop', 'Laptop Acer Swift 3 SF3', 'lap11.jpg', '13.890.000', 4, 'ACER', 'Còn Hàng', 'Màn hình: 14\" IPS ( 1920 x 1080 ) , không cảm ứng', 'CPU: Intel Core i3-8145U ( 2.1 GHz - 3.9 GHz / 4MB / 2 nhân, 4 luồng )', 'RAM: 1 x 4GB Onboard DDR4. ntel UHD Graphics 620', 'Pin: 4 cell 45 Wh Pin liền , khối lượng: 1.5 kg', ''),
(38, 'laptop', 'Laptop HP 14s 7VH - 2TG', 'lap12.jpg', '8.990.000', 4, 'HP', 'Còn Hàng', 'Màn hình: 14\" SVA (1366 x 768), không cảm ứng', 'CPU: AMD Ryzen 3 3200U (2.6 GHz - 3.5 GHz/4MB/2 nhân, 4 luồng)', 'RAM: 1 x 4GB DDR4 2400MHz (2 Khe cắm, Hỗ trợ tối đa 32GB). AMD Radeon', 'Pin: 3 cell 45 Wh Pin liền, Khối lượng: 1.5 kg', ''),
(39, 'laptop', 'Laptop Dell Vostro 3480', 'lap13.jpg', '14.890.000', 4, 'DELL', 'Còn Hàng', 'Màn hình: 14\" ( 1366 x 768 ) , không cảm ứng', 'CPU: Intel Core i5-8265U ( 1.6 GHz - 3.9 GHz / 6MB / 4 nhân, 8 luồng )', 'RAM: 1 x 4GB DDR4 2666MHz. Intel UHD Graphics 620 / AMD Radeon 520 2GB GDDR5', 'Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.8 kg', ''),
(40, 'laptop', 'Laptop ASUS VivoBook 15 A5', 'lap14.jpg', '15.390.000', 5, 'ASUS', 'Còn Hàng', 'Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng', 'CPU: Intel Core i5-8265U ( 1.6 GHz - 3.9 GHz / 6MB / 4 nhân, 8 luồng )', 'RAM: 8GB (4GB + 4GB Onboard) DDR4 2400MHz. Intel UHD Graphics 620', 'Pin: 2 cell 37 Wh Pin liền , khối lượng: 1.7 kg', ''),
(41, 'laptop', 'Laptop Acer Swift 3 SF3', 'lap15.jpg', '15.990.000', 5, 'ACER', 'Còn Hàng', 'Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng', 'CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng )', 'RAM: 1 x 4GB DDR4 2666MHz. Intel UHD Graphics 620', 'Pin: 4 cell 48 Wh Pin liền , khối lượng: 1.6 kg', ''),
(42, 'laptop', 'Laptop Dell Inspiron 3480', 'lap16.jpg', '11.690.000', 4, 'DELL', 'Còn Hàng', 'Màn hình: 14\" ( 1366 x 768 ) , không cảm ứng', 'CPU: Intel Core i3-8145U ( 2.1 GHz - 3.9 GHz / 4MB / 2 nhân, 4 luồng )', 'RAM: 1 x 4GB DDR4 2666MHz. Intel UHD Graphics 620 / Shared memory', 'Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.7 kg', ''),
(43, 'laptop', 'Laptop ASUS TUF Gaming', 'lap17.jpg', '18.290.000', 5, 'ASUS', 'Còn Hàng', 'Màn hình: 15.6\" IPS ( 1920 x 1080 ) , không cảm ứng', 'CPU: AMD Ryzen 5 3550H ( 2.1 GHz - 3.7 GHz / 4MB / 4 nhân, 8 luồng )', 'RAM: 1 x 8GB DDR4 2666MHz. NVIDIA GeForce GTX', 'Pin: 3 cell 48 Wh Pin liền , khối lượng: 2.2 kg', ''),
(44, 'laptop', 'Laptop HP Pavilion 15-cs2031', 'lap18.jpg', '12.690.000', 4, 'HP', 'Còn Hàng', 'Màn hình: 15.6\" (1920 x 1080), không cảm ứng', 'CPU: Intel Core i3-8145U (2.1 GHz - 3.9 GHz/4MB/2 nhân, 4 luồng)', 'RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 16GB). Intel UHD Graphics 620', 'Pin: 3 cell 42 Wh Pin liền, Khối lượng: 1.8 kg', ''),
(45, 'laptop', 'Laptop HP ENVY X360 ', 'lap19.jpg', '22.890.000', 5, 'HP', 'Còn Hàng', 'Màn hình: 13.3\" IPS (1920 x 1080), cảm ứng', 'CPU: AMD Ryzen 5 3500U (2.1 GHz - 3.7 GHz/4MB/4 nhân, 8 luồng)', 'RAM: 1 x 8GB Onboard DDR4 2400MHz , Không nâng cấp được).  AMD Radeon Vega 8 Graphics', 'Pin: 4 cell Pin liền, Khối lượng: 1.3 kg', ''),
(46, 'laptop', 'Laptop ASUS VivoBook 15 A51', 'lap20.jpg', '11.490.000', 4, 'ASUS', 'Còn Hàng', 'Màn hình: 15.6\" ( 1920 x 1080 ) , không cảm ứng', 'CPU: Intel Core i3-8145U ( 2.1 GHz - 3.9 GHz / 4MB / 2 nhân, 4 luồng )', 'RAM: 1 x 4GB Onboard DDR4. Intel UHD Graphics 620 ', 'Pin: 2 cell 37 Wh Pin liền , khối lượng: 1.7 kg', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` tinytext NOT NULL,
  `userPhone` tinytext DEFAULT NULL,
  `userDoB` tinytext DEFAULT NULL,
  `userAvartar` tinytext DEFAULT NULL,
  `userPass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `userName`, `userEmail`, `userPhone`, `userDoB`, `userAvartar`, `userPass`) VALUES
(1, 'Thach', 'lequangthachbk@gmail.com', '0978866489', '26-03-1995', '3.png', '$2y$10$Az9lZICBH9qVWxd.WfADXO6vRyGehDAuGwTI1/3qUmIif6w2PYuQ2'),
(5, 'Admin', 'Admin@hcmut.edu.vn', NULL, NULL, NULL, '$2y$10$BylYU3r/qFpJylrFX460R.BxOLlUIbzm.WeaSECRtRk4/WjXjOLdu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passwordreset`
--
ALTER TABLE `passwordreset`
  ADD PRIMARY KEY (`pwResetID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `passwordreset`
--
ALTER TABLE `passwordreset`
  MODIFY `pwResetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
