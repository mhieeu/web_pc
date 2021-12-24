-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 23, 2021 lúc 12:50 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_pc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activity_history`
--

CREATE TABLE `activity_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activity_history`
--

INSERT INTO `activity_history` (`id`, `user_id`, `action`, `created_at`, `updated_at`) VALUES
(1, 1, 'Thêm danh mục ID: 1', '2021-12-22 10:12:00', '2021-12-22 10:12:00'),
(2, 1, 'Thêm sản phẩm ID: 1', '2021-12-22 10:14:16', '2021-12-22 10:14:16'),
(3, 1, 'Chỉnh sửa sản phẩm ID: 1', '2021-12-22 10:18:11', '2021-12-22 10:18:11'),
(4, 1, 'Chỉnh sửa sản phẩm ID: 1', '2021-12-22 10:19:32', '2021-12-22 10:19:32'),
(5, 1, 'Chỉnh sửa sản phẩm ID: 1', '2021-12-22 10:21:43', '2021-12-22 10:21:43'),
(6, 1, 'Chỉnh sửa sản phẩm ID: 1', '2021-12-22 10:59:04', '2021-12-22 10:59:04'),
(7, 1, 'Chỉnh sửa sản phẩm ID: 1', '2021-12-22 12:08:18', '2021-12-22 12:08:18'),
(8, 1, 'Cập nhật trạng thái hóa đơn ID: MHDb323c9ac9f thành: Đang xử lí', '2021-12-22 13:01:06', '2021-12-22 13:01:06'),
(9, 1, 'Cập nhật trạng thái hóa đơn ID: MHDb323c9ac9f thành: Hủy', '2021-12-22 13:01:11', '2021-12-22 13:01:11'),
(10, 1, 'Cập nhật trạng thái hóa đơn ID: MHDb323c9ac9f thành: Hoàn thành', '2021-12-22 13:01:15', '2021-12-22 13:01:15'),
(11, 1, 'Cập nhật trạng thái hóa đơn ID: MHDb323c9ac9f thành: Hủy', '2021-12-22 13:02:12', '2021-12-22 13:02:12'),
(12, 1, 'Cập nhật trạng thái hóa đơn ID: MHDb323c9ac9f thành: Chờ xử lí', '2021-12-22 13:02:25', '2021-12-22 13:02:25'),
(13, 1, 'Cập nhật trạng thái hóa đơn ID: MHDb323c9ac9f thành: Đang xử lí', '2021-12-22 13:02:35', '2021-12-22 13:02:35'),
(14, 1, 'Thêm sản phẩm ID: 2', '2021-12-23 02:33:48', '2021-12-23 02:33:48'),
(15, 1, 'Cập nhật trạng thái sản phẩm ID: 2', '2021-12-23 02:37:13', '2021-12-23 02:37:13'),
(16, 1, 'Cập nhật trạng thái sản phẩm ID: 2', '2021-12-23 02:37:13', '2021-12-23 02:37:13'),
(17, 1, 'Cập nhật trạng thái bán chạy ID: 2', '2021-12-23 02:37:47', '2021-12-23 02:37:47'),
(18, 1, 'Cập nhật trạng thái bán chạy ID: 2', '2021-12-23 02:37:57', '2021-12-23 02:37:57'),
(19, 1, 'Thêm sản phẩm ID: 3', '2021-12-23 02:46:48', '2021-12-23 02:46:48'),
(20, 1, 'Chỉnh sửa sản phẩm ID: 3', '2021-12-23 02:47:23', '2021-12-23 02:47:23'),
(21, 1, 'Thêm sản phẩm ID: 4', '2021-12-23 03:01:01', '2021-12-23 03:01:01'),
(22, 1, 'Thêm sản phẩm ID: 5', '2021-12-23 03:26:08', '2021-12-23 03:26:08'),
(23, 1, 'Thêm danh mục ID: 2', '2021-12-23 03:38:18', '2021-12-23 03:38:18'),
(24, 1, 'Thêm sản phẩm ID: 6', '2021-12-23 03:41:33', '2021-12-23 03:41:33'),
(25, 1, 'Chỉnh sửa sản phẩm ID: 6', '2021-12-23 03:42:24', '2021-12-23 03:42:24'),
(26, 1, 'Chỉnh sửa sản phẩm ID: 6', '2021-12-23 03:48:06', '2021-12-23 03:48:06'),
(27, 1, 'Thêm sản phẩm ID: 7', '2021-12-23 03:53:55', '2021-12-23 03:53:55'),
(28, 1, 'Thêm sản phẩm ID: 8', '2021-12-23 03:57:59', '2021-12-23 03:57:59'),
(29, 1, 'Chỉnh sửa sản phẩm ID: 8', '2021-12-23 03:58:13', '2021-12-23 03:58:13'),
(30, 1, 'Cho sản phẩm ngừng kinh doanh ID: 5', '2021-12-23 03:59:35', '2021-12-23 03:59:35'),
(31, 1, 'Khôi phục sản phẩm ID: 5', '2021-12-23 04:00:52', '2021-12-23 04:00:52'),
(32, 1, 'Thêm sản phẩm ID: 9', '2021-12-23 04:06:38', '2021-12-23 04:06:38'),
(33, 1, 'Chỉnh sửa sản phẩm ID: 9', '2021-12-23 04:06:54', '2021-12-23 04:06:54'),
(34, 1, 'Chỉnh sửa sản phẩm ID: 9', '2021-12-23 04:07:30', '2021-12-23 04:07:30'),
(35, 1, 'Thêm danh mục ID: 3', '2021-12-23 04:28:30', '2021-12-23 04:28:30'),
(36, 1, 'Chỉnh sửa danh mục ID: 3', '2021-12-23 04:28:48', '2021-12-23 04:28:48'),
(37, 1, 'Chỉnh sửa sản phẩm ID: 5', '2021-12-23 04:32:43', '2021-12-23 04:32:43'),
(38, 1, 'Thêm sản phẩm ID: 10', '2021-12-23 04:36:12', '2021-12-23 04:36:12'),
(39, 1, 'Thêm sản phẩm ID: 11', '2021-12-23 04:41:07', '2021-12-23 04:41:07'),
(40, 1, 'Chỉnh sửa sản phẩm ID: 10', '2021-12-23 04:41:44', '2021-12-23 04:41:44'),
(41, 1, 'Chỉnh sửa sản phẩm ID: 11', '2021-12-23 04:42:07', '2021-12-23 04:42:07'),
(42, 1, 'Thêm danh mục ID: 4', '2021-12-23 04:43:49', '2021-12-23 04:43:49'),
(43, 1, 'Thêm sản phẩm ID: 12', '2021-12-23 04:47:32', '2021-12-23 04:47:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'laptop', NULL, 1, '2021-12-22 10:12:00', '2021-12-22 10:12:00'),
(2, 'PC', 'pc', NULL, 1, '2021-12-23 03:38:18', '2021-12-23 03:38:18'),
(3, 'Màn hình máy tính', 'man-hinh-may-tinh', NULL, 1, '2021-12-23 04:28:30', '2021-12-23 04:28:48'),
(4, 'Bàn phím, chuột', 'ban-phim-chuot', NULL, 1, '2021-12-23 04:43:49', '2021-12-23 04:43:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_07_062822_create_category', 1),
(6, '2021_12_07_063029_create_product', 1),
(7, '2021_12_07_063545_create_image', 1),
(8, '2021_12_10_031628_create_order', 1),
(9, '2021_12_10_031953_create_order_detail', 1),
(10, '2021_12_10_032259_create_voucher', 1),
(11, '2021_12_11_022811_add_column_user', 1),
(12, '2021_12_11_061106_create_comments', 1),
(13, '2021_12_11_133600_create_activity_history', 1),
(14, '2021_12_12_082044_add_soft_deletes_to_product', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `voucher_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantily` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `remains` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `selling` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `category_id`, `remains`, `sold`, `options`, `desc`, `content`, `image1`, `image2`, `image3`, `image4`, `price`, `status`, `selling`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Laptop Asus ZenBook UX325EA-KG363T (i5 1135G7/8GB RAM/512GB SSD/13.3 FHD/Win10/Cáp USB to LAN,USB C-Audio/Xám)', 'laptop-asus-zenbook-ux325ea-kg363t-i5-1135g78gb-ram512gb-ssd133-fhdwin10cap-usb-to-lanusb-c-audioxam', 1, 20, 0, '[[\"CPU\",\"Intel Core i5 1135G7\"],[\"RAM\",\"8GB\"],[\"\\u1ed4 c\\u1ee9ng\",\"512GB SSD\"],[\"VGA\",\"Onboard\"],[\"M\\u00e0n h\\u00ecnh\",\"13.3 FHD\"],[\"B\\u00e0n ph\\u00edm\",\"c\\u00f3 \\u0111\\u00e8n led\"]]', NULL, '<h3><strong>Nâng cao hiệu suất công việc với bộ vi xử lý vượt trội</strong></h3>\r\n\r\n<p><br />\r\nLaptop được trang bị chip Intel Core i thế hệ 11 giúp bạn hoàn thành công việc nhanh chóng, từ các tác vụ văn phòng như word, excel,... đến các công việc sáng tạo, đồ họa khác với tốc độ đạt tối đa lên đến 4.2 GHz nhờ Turbo Boost.</p>\r\n\r\n<p>Đem đến khả năng xử lý hình ảnh sắc nét lên đến chuẩn 8K nhờ card đồ họa tích hợp Intel Iris Xe Graphics, đáp ứng mọi nhu cầu của người dùng với những trải nghiệm chân thật cùng các tựa game hấp dẫn hay thỏa sức sáng tạo với các ứng dụng đồ họa như Photoshop, Ai, Lightroom,...</p>\r\n\r\n<p>RAM (On board) với tốc độ bus cao 4267 MHz cho bạn sự đa nhiệm khi có thể mở nhiều ứng dụng cùng lúc và chuyển đổi qua lại một cách mượt mà.</p>\r\n\r\n<p>Thoải mái lưu trữ hàng loạt dữ liệu bạn muốn nhờ ổ cứng SSD NVMe PCle, đồng thời giúp tiết kiệm tối đa thời gian khởi động máy và vận hành phần mềm. Thêm vào đó, máy được hỗ trợ tháo lắp ổ cứng, cho phép bạn thay thế bằng thanh khác tối đa 1 TB, đáp ứng mọi yêu cầu của bạn.</p>\r\n\r\n<h3><strong>Gọn nhẹ và thanh lịch, thu hút mọi ánh nhìn</strong></h3>\r\n\r\n<h3><br />\r\nPhiên bản laptop Asus này được chế tác từ kim loại nguyên khối, sở hữu trọng lượng nhẹ chỉ 1.14 kg và mỏng 13.9 mm, trở thành người bạn đồng hành lý tưởng, cùng đồng hành với bạn trên mọi chuyến đi, phục vụ tốt mọi nhu cầu của bạn.</h3>\r\n\r\n<p>Ấn tượng hơn với tính bền chắc của chiếc Asus Zenbook này trước những va chạm trong quá trình di chuyển hằng ngày, khi vượt qua hàng loạt bài kiểm tra khắt khe để đáp ứng tiêu chuẩn MIL STD 810G của quân đội Hoa Kỳ về tính bền bỉ và ổn định.</p>\r\n\r\n<p>Đèn nền được trang bị ở bàn phím với thiết kế tràn viền mới, tiện hơn cùng các phím chức năng ở hàng trên và bên phải hỗ trợ bạn dễ dàng thao tác nhanh như chụp màn hình, truy cập ứng dụng MyAsus,...</p>\r\n\r\n<p>Khi mở laptop lên làm việc thì nắp lưng của laptop được nâng lên 2.5 độ nhờ bản lề ErgoLift, đem đến cảm giác thoải mái khi gõ phím, đồng thời chất lượng âm thanh và khả năng làm mát cũng được nâng cấp đáng kể.&nbsp;</p>\r\n\r\n<p>Hai bên laptop được trang bị các cổng kết nối phổ biến, đem đến sự linh hoạt hơn như 2 cổng Thunderbolt 4 USB-C, cổng USB 3.2, HDMI cùng đầu đọc thẻ Micro SD giúp bạn liên kết dễ dàng với nhiều thiết bị ngoại vi khác nhau.</p>\r\n\r\n<p>Kết nối không dây Wi-Fi 6 (802.11ax) cùng Bluetooth 5.0 hỗ trợ người dùng làm việc hay truy xuất dữ liệu ở bất kỳ đâu mà không lo mất kết nối, giá đoạn công việc.</p>\r\n\r\n<h3><strong>Hình ảnh sắc nét cùng âm thanh chuyên nghiệp</strong></h3>\r\n\r\n<p><br />\r\nChiếc máy này sở hữu màn hình OLED 13.3 inch viền mỏng, được hỗ trợ gam màu rộng 100% DCI-P3 với độ phân giải Full HD (1920 x 1080), đem đến hình ảnh chân thật và rõ nét với màu sắc sống động như thật, cho phép người dùng giải trí và làm việc với hình ảnh sắc nét ở điều kiện ánh sáng không quá gắt nhờ độ sáng màn hình 400 nits.</p>\r\n\r\n<p>Đăng nhập máy nhanh chóng với camera hồng ngoại (IR) tích hợp trên máy, giúp bạn mở khóa bằng khuôn mặt nhanh chóng với Windows Hello.</p>\r\n\r\n<p>Hệ thống âm thanh được chứng nhận bởi Audio by Harman/Kardon, đem đến âm thanh lớn, trong trẻo cùng âm trầm mạnh mẽ, cho bạn tận hưởng trọn vẹn những bản nhạc hay bộ phim yêu thích.</p>\r\n\r\n<p>Đàm thoại tốt hơn nhờ công nghệ khử nhiễu âm thanh tích hợp AI với khả năng tách tiếng ồn không mong muốn từ ngoại cảnh ra khỏi giọng nói con người, đem đến âm thanh trong trẻo, nâng cao hiệu suất công việc.</p>', '0a12badc7c.png', 'c9979b65ed.png', '966ee33f9d.png', '8135926252.png', 23999000, 1, 1, '2021-12-22 10:14:16', '2021-12-22 13:02:35', NULL),
(2, 'Laptop Asus ZenBook UX425EA-KI429T (i5 1135G7/8GB RAM/512GB SSD/14 FHD/Win10/Xám)', 'laptop-asus-zenbook-ux425ea-ki429t-i5-1135g78gb-ram512gb-ssd14-fhdwin10xam', 1, 20, 0, '[[\"CPU\",\"Intel Core i5 1135G7\"],[\"RAM\",\"8GB\"],[\"\\u1ed4 c\\u1ee9ng\",\"512GB SSD\"],[\"VGA\",\"Onboard\"],[\"M\\u00e0n h\\u00ecnh\",\"14 inch FHD\"],[\"H\\u0110H\",\"Win 10\"],[\"M\\u00e0u s\\u1eafc\",\"Pine Grey\"],[\"B\\u1ea3o m\\u1eadt, C\\u00f4ng ngh\\u1ec7\",\"IR webcam with Windows Hello support Trusted Platform Module (Firmware TPM)\"]]', NULL, '<p>Chiếc ZenBook 14&nbsp;mới tuyệt đẹp trở nên gọn nhẹ hơn bao giờ hết. Chiếc ZenBook 14 mỏng hơn, nhẹ hơn và gọn gàng khó tin nhưng vẫn gồm cổng HDMI, USB-C® Thunderbolt™ 3, USB Type-A và đầu đọc thẻ MicroSD giúp mang lại độ linh hoạt tuyệt đối. Được thiết kế để mang lại hiệu năng mạnh mẽ, ZenBook 14 chính là lựa chọn hoàn hảo phù hợp với phong cách bận rộn thường xuyên di chuyển.</p>\r\n\r\n<h3><strong>CƠ ĐỘNG</strong></h3>\r\n\r\n<h3><strong>Gọn nhẹ và di chuyển dễ dàng</strong></h3>\r\n\r\n<p><br />\r\nThiết kế hoàn toàn bằng kim loại, siêu nhẹ, mỏng và gọn gàng của ZenBook 14 khiến nó trở thành người bạn đồng hành lý tưởng trong những chuyến công tác. Đó cũng là chiếc laptop 14-inch mỏng nhất thế giới với đầy đủ các cổng kết nối1 — bao gồm HDMI và USB Type-A — để bạn có thể tận hưởng tính năng kết nối linh hoạt dù ở bất kỳ đâu.</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX425-2\" src=\"https://hanoicomputercdn.com/media/lib/54756_UX4252.png\" /></p>\r\n\r\n<h3><strong>PIN</strong></h3>\r\n\r\n<p><strong>Bạn không mang thiết bị sạc? Đừng lo!</strong></p>\r\n\r\n<p><br />\r\nVới thời lượng pin 22 giờ4 tuyệt vời của&nbsp;<strong>ZenBook 14</strong>, việc di chuyển mà không mang theo sạc không phải vấn đề gì nghiêm trọng. Khi bạn cần sạc pin, tính năng sạc nhanh có thể khôi phục mức pin tới 60% chỉ trong 49 phút, vì vậy bạn sẽ sẵn sàng lên đường trong chớp mắt.</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX425-3\" src=\"https://hanoicomputercdn.com/media/lib/54756_UX4253.png\" /></p>\r\n\r\n<h3><strong>THIẾT KẾ</strong></h3>\r\n\r\n<p><strong>Người bạn đồng hành trên mọi nẻo đường</strong></p>\r\n\r\n<p><br />\r\nHoàn thành mọi việc trong lúc đang di chuyển một cách tiện lợi và phong cách với chiếc ZenBook 14 gọn nhẹ. Kích thước nhỏ gọn cùng khả năng mạnh mẽ của sản phẩm này khiến đây chính là một thiết bị phải có giúp mang lại hiệu năng và cảm hứng cho dù bạn ở nhà hay bên ngoài, đang làm việc hay giải trí, làm việc một mình hay cùng cả nhóm.</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX425-4\" src=\"https://hanoicomputercdn.com/media/lib/54756_UX4254.png\" /></p>\r\n\r\n<h3><strong>MÀU SẮC</strong></h3>\r\n\r\n<p><span style=\"color:#9b59b6\"><strong>Bạc ánh tím</strong></span></p>\r\n\r\n<p><br />\r\nBạc ánh tím thể hiện sự sang trọng tinh tế. Thanh lịch và hiện đại, quyến rũ và độc đáo, màu sắc tuyệt đẹp này kết hợp với chất liệu kim loại đẳng cấp tạo nên vẻ đẹp trứ danh cho dòng ZenBook cổ điển.</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX425-5\" src=\"https://hanoicomputercdn.com/media/lib/54756_UX4255.png\" /></p>\r\n\r\n<h3><strong>MÀN HÌNH</strong></h3>\r\n\r\n<p><strong>Màn hình tiết kiệm điện, sáng và rõ</strong></p>\r\n\r\n<p><br />\r\nZenBook 14 có màn hình NanoEdge sáng và rõ nét với bốn viền màn hình mỏng cho tỷ lệ màn hình trên thân máy 90% giúp mang lại trải nghiệm xem chìm đắm hơn. Màn hình công suất thấp 1-watt6 cho độ sáng 400nit (*cấu hình này tùy chọn ở một số quốc gia) đáng kinh ngạc đồng thời tối đa hóa thời lượng pin.</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX425-6\" src=\"https://hanoicomputercdn.com/media/lib/54756_UX4257.png\" /></p>\r\n\r\n<h3><strong>KHẢ NĂNG KẾT NỐI</strong></h3>\r\n\r\n<p><strong>Kết nối nhanh, ở bất kỳ đâu</strong></p>\r\n\r\n<p><br />\r\nZenBook 14 tái định nghĩa những gì có thể trang bị trên một chiếc laptop siêu mỏng để mang lại cho bạn toàn bộ các cổng I/O bao gồm cổng HDMI kích thước đầy đủ và cổng USB Type-A. Bạn cũng được hưởng sức mạnh của Thunderbolt™ 3, với hai cổng USB-C® Thunderbolt™ 3 hỗ trợ sạc siêu nhanh, màn hình bên ngoài UHD 4K và tốc độ truyền dữ liệu lên đến 40Gbps. Để truyền dữ liệu dễ dàng từ thiết bị di động, máy còn trang bị đầu đọc thẻ microSD. Đầu đọc thẻ MicroSDHDMIUSB 3.2 thế hệ 1 Type-AThunderbolt™ 3 USB-C®</p>\r\n\r\n<p><img src=\"https://hanoicomputercdn.com/media/lib/54756_UX4258.png\" /></p>\r\n\r\n<h3><strong>TRẢI NGHIỆM NGƯỜI DÙNG</strong></h3>\r\n\r\n<p><strong>Thiết kế để mang đến sự thoải mái và thuận tiện</strong></p>\r\n\r\n<p><br />\r\nZenBook 14 có thiết kế bàn phím công thái học gần như không viền mới giúp làm tăng kích thước bàn phím để gõ thoải mái hơn. Và trông cũng đẹp mắt hơn nữa! Để nhập liệu dễ dàng, máy còn trang bị bàn phím số ảo ASUS NumberPad 2.0 tích hợp vùng phím số kích thước đầy đủ được chiếu sáng bằng đèn LED vào bàn di chuột. Camera hồng ngoại (IR) tích hợp trên ZenBook 14 cho phép đăng nhập bằng khuôn mặt nhanh và dễ dàng với Windows Hello. Thiết bị này thậm chí còn hoạt động trong điều kiện ánh sáng yếu, vì vậy không cần nhập mật khẩu.</p>\r\n\r\n<h3><br />\r\n<strong>NUMBERPAD9 BÀN PHÍM TRÀN VIỀN PHÍM CHỨC NĂNG CAMERA IR</strong></h3>\r\n\r\n<p>ZenBook 14 được trang bị sẵn ASUS NumberPad 2.0 đột phá, bàn di chuột chức năng kép với vùng phím số ảo được chiếu sáng bằng đèn LED tích hợp. Kể cả khi bật NumberPad, bàn di chuột vẫn có thể được dùng để điều khiển con trỏ nhờ phần mềm thông minh.</p>\r\n\r\n<p><img src=\"https://hanoicomputercdn.com/media/lib/54756_UX4259.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>ERGOLIFT</strong></h3>\r\n\r\n<p><strong>Bản lề ErgoLift được chế tạo chính xác</strong></p>\r\n\r\n<p><br />\r\nZenBook 14 có bản lề ErgoLift được chế tạo chính xác giúp tự động nâng phần sau của laptop một cách từ từ khi mở nắp máy, nghiêng bàn phím tới góc gõ tối ưu. Thao tác này cũng nâng khung máy cho chất lượng âm thanh nâng cao và khả năng làm mát tối ưu.<br />\r\nCải thiện vị trí gõ phím&nbsp;<br />\r\nlàm mát tối ưu&nbsp;<br />\r\ntăng cường chất lượng âm thanh</p>\r\n\r\n<p><img src=\"https://hanoicomputercdn.com/media/lib/54756_UX42510.png\" /></p>\r\n\r\n<h3><strong>HIỆU NĂNG TUYỆT VỜI</strong></h3>\r\n\r\n<p><strong>Thêm sức mạnh khi di chuyển</strong></p>\r\n\r\n<p><br />\r\nBộ vi xử lý Intel® Core™ thế hệ thứ 11 trên ZenBook 14 mang lại hiệu suất nâng cao khiến các tác vụ đa nhiệm, đòi hỏi hiệu suất và giải trí trở nên nhẹ nhàng. ZenBook 14 cũng được trang bị ổ SSD PCIe® 3.0 và Intel WiFi 6 với Gig+ (802.11ax) cho hiệu suất toàn diện siêu việt.</p>\r\n\r\n<h3><br />\r\n<strong>PHẦN MỀM</strong></h3>\r\n\r\n<p><strong>MyASUS: ứng dụng độc quyền dành cho bạn</strong></p>\r\n\r\n<p><br />\r\nZenBook 14 gồm phiên bản MyASUS mới nhất, một bộ sưu tập những ứng dụng và công cụ hữu ích của ASUS sẽ giúp bạn tận dụng tối đa chiếc ZenBook 14 của mình. Hãy dùng kho ứng dụng này để kết nối điện thoại iOS hoặc Android với laptop của bạn nhằm tối ưu hóa hiệu suất làm việc của laptop hoặc để liên hệ với bộ phận dịch vụ và hỗ trợ sau bán hàng. Ngoài ra còn có rất nhiều ứng dụng phổ biến để tải xuống và những ưu đãi độc quyền dành riêng cho bạn!</p>\r\n\r\n<p><img src=\"https://hanoicomputercdn.com/media/lib/54756_UX42511.png\" /></p>\r\n\r\n<h3><strong>ÂM THANH</strong></h3>\r\n\r\n<p><strong>Chất lượng âm thanh đã được chứng nhận</strong></p>\r\n\r\n<p><br />\r\nHệ thống âm thanh của ZenBook 14 đã được các chuyên gia âm thanh của Harman Kardon chứng nhận nhằm mang lại âm thanh trong trẻo tuyệt đối, đắm chìm trong các hoạt động giao tiếp và giải trí.</p>\r\n\r\n<p><img src=\"https://hanoicomputercdn.com/media/lib/54756_UX42512.png\" /></p>\r\n\r\n<h3><strong>ĐẠT CHUẨN QUÂN ĐỘI</strong></h3>\r\n\r\n<p>✔ Sự bền bỉ mà bạn có thể tin cậy</p>\r\n\r\n<p>ZenBook 14 đã được kiểm tra nhằm đáp ứng tiêu chuẩn MIL-STD-810G đầy khắt khe của quân đội Hoa Kỳ về tính bền bỉ và ổn định. Các bài kiểm tra gồm có một loạt các thử nghiệm nhằm đảm bảo khả năng hoạt động trong những môi trường khắc nghiệt, gồm thử nghiệm thả rơi khi máy đang bật và hoạt động tại những điều kiện khắc nghiệt về nhiệt độ và độ cao. ZenBook 14 cũng đã vượt qua các bài thử nghiệm máy tính xách tay nội bộ của ASUS cao hơn nhiều so với các tiêu chuẩn do ngành đặt ra.</p>\r\n\r\n<p>✔ Thử nghiệm độ cao</p>\r\n\r\n<p>Khả năng hoạt động bình thường ở áp suất trong cabin tương đương với 15.000 feet<br />\r\n&nbsp;<br />\r\n✔ Thử nghiệm thả rơi</p>\r\n\r\n<p>Rơi tự do từ độ cao 100mm khi máy đang hoạt động, 4 lần cho mỗi cạnh/bề mặt<br />\r\n&nbsp;<br />\r\n✔ Thử nghiệm nhiệt độ thấp</p>\r\n\r\n<p>-25 ° C tới -33 ° C trong 7 x chu kỳ không hoạt động 24 giờ</p>\r\n\r\n<p><img src=\"https://hanoicomputercdn.com/media/lib/54756_UX42513.png\" /></p>', '19580a9f25.png', 'a0985ac9e1.png', '1b655151b4.png', '98aedbf86f.png', 23999000, 1, 1, '2021-12-23 02:33:48', '2021-12-23 02:37:57', NULL),
(3, 'Laptop Asus Gaming ROG Zephyrus GA503QM-HQ158T (R9 5900HS/16GB RAM/512GB SSD/15.6 WQHD 165hz/RTX 3060 6GB/Win10/Balo/Xám)', 'laptop-asus-gaming-rog-zephyrus-ga503qm-hq158t-r9-5900hs16gb-ram512gb-ssd156-wqhd-165hzrtx-3060-6gbwin10baloxam', 1, 20, 0, '[[\"CPU\",\"AMD R9 5900HS\"],[\"RAM\",\"16GB (2*8)\"],[\"\\u1ed4 c\\u1ee9ng\",\"512GB SSD\"],[\"VGA\",\"NVIDIA RTX 3060 6GB\"],[\"M\\u00e0n h\\u00ecnh\",\"15.6 inch WQHD 2k 165hz\"],[\"B\\u00e0n ph\\u00edm\",\"c\\u00f3 \\u0111\\u00e8n led\"],[\"Pin\",\"90WHrs, 4S1P, 4-cell Li-ion\"],[\"K\\u00edch th\\u01b0\\u1edbc (r\\u1ed9ng x d\\u00e0i x cao)\",\"35.5 x 24.3 x 1.99 ~ 1.99 cm\"],[\"C\\u00e2n n\\u1eb7ng\",\"1.90 Kg\"]]', NULL, '<p>ROG Zephyrus G15 (GA503) là laptop 15.6 inch mỏng nhẹ với cấu hình tối đa lên tới CPU AMD Ryzen9, RTX 3000 series siêu khủng, nhanh và yên tĩnh nhờ khả năng làm mát sáng tạo với keo tản nhiệt kim loại lỏng nâng tầm trải nghiệm gaming. Màn hình 2K 165Hz/3ms siêu nhanh với độ phủ màu cao, Pantone Validated cho hình ảnh chi tiết với độ chuẩn xác màu sắc cao. Năm nay, G15 được trang bị hệ thống 6 loa cùng với sạc chuẩn type-C và bản lề ErgoLift trong khung máy nhỏ gọn giúp bạn linh động và thoải mái làm việc ở mọi nơi.</p>\r\n\r\n<p><img alt=\"ROG Zephyrus G15\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-1.jpg\" style=\"height:724px; width:798px\" /></p>\r\n\r\n<h3>Hiệu năng tuyệt vời nâng tầm trải nghiệm</h3>\r\n\r\n<p>Chơi game, sáng tạo nội dung và thực hiện nhiều viêc hơn nữa một cách nhanh chóng với CPU AMD Ryzen9, RTX 3000 series. Thực hiện tác vụ nhanh hơn với thời gian tải ngắn hơn với 2 ổ SSD lên tới NVMe PCIe® và RAM lên đến 2TB. &nbsp;(Tùy chọn cấu hình)</p>\r\n\r\n<p><img alt=\"Hiệu năng tuyệt vời\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-2.jpg\" style=\"height:687px; width:806px\" /></p>\r\n\r\n<h3>Đắm chìm với chi tiết phong phú và tốc độ màn hình nhanh</h3>\r\n\r\n<p>Màn hình 2K 165Hz/ 3ms với Adaptive-Sync cho chất lượng hình ảnh mượt mà, chi tiết, đạt chuẩn Pantone® validation về độ chính xác màu sắc và độ phủ màu cao đảm bảo màu sắc phong phú và chuẩn xác</p>\r\n\r\n<p><img alt=\"Màn hình 2K 165Hz/ 3ms với Adaptive-Sync\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-3.jpg\" style=\"height:806px; width:800px\" /></p>\r\n\r\n<h3>Chìm đắm vào âm thanh cao cấp</h3>\r\n\r\n<p>Sáu loa với loa force-canceling kép mang đến âm thanh vòm chất lượng được hỗ trợ bởi Dolby Atmos®, đồng thời micrô array 3D ghi lại âm thanh rõ ràng để chơi game và hơn thế nữa.</p>\r\n\r\n<p><img alt=\"Sáu loa với loa force-canceling kép\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-4.jpg\" style=\"height:720px; width:806px\" /></p>\r\n\r\n<p>Với Zephyrus G15, keo tản nhiệt kim loại lỏng giữ cho CPU luôn mát mẻ. Mô-đun tản nhiệt tự làm sạch vệ sinh bụi bẩn để tăng độ ổn định lâu dài, trong khi đó hai quạt Arc Flow quay các cánh quạt được thiết kế lại để tạo ra luồng khí lưu thông ấn tượng với tiếng ồn phát ra tối thiểu. Phần mềm ROG Armoury Crate chuyển đổi liền mạch giữa các chế độ vận hành để tối ưu hóa hiệu năng và độ ồn theo từng tác vụ.</p>\r\n\r\n<p><img alt=\"keo tản nhiệt kim loại lỏng giữ cho CPU luôn mát mẻ\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-5.jpg\" style=\"height:723px; width:805px\" /></p>\r\n\r\n<h3>Cơ động khắp nơi</h3>\r\n\r\n<p>Sáng tạo và kết nối khi đang di chuyển với thời lượng pin cả ngày làm việc, sạc chuẩn Type-C và Wi-Fi 6 (802.11ax) trong một khung máy siêu mỏng, nhẹ hơn và nhỏ hơn.</p>\r\n\r\n<p><img alt=\"Thời lượng pin cả ngày làm việc, sạc chuẩn Type-C và Wi-Fi 6 (802.11ax)\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-6.jpg\" style=\"height:720px; width:799px\" /></p>\r\n\r\n<h3>Dễ dàng sử dụng hơn bao giờ hết</h3>\r\n\r\n<p>Bản lề ErgoLift 180° giúp nghiêng bàn phím Stealth Type lên một góc để sử dụng thoải mái, đồng thời, bàn di chuột lớn hơn và nhạy hơn giúp nhập nhanh hơn và di chuyển dễ dàng hơn.</p>\r\n\r\n<p><img alt=\"Bản lề ErgoLift 180°\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-7.jpg\" style=\"height:721px; width:805px\" /></p>\r\n\r\n<h3>Mở rộng bảo hành dễ dàng</h3>\r\n\r\n<p>Với dịch vụ ASUS Premium Care, người dùng có thể dễ dàng mua thêm một năm bảo hành chỉ với giá $100 thông qua công cụ MYASUS được cài đặt sẵn trên thiết bị</p>\r\n\r\n<h3>Trải nghiệm game</h3>\r\n\r\n<p>*Thông số chỉ mang tính chất tham khảo và test trong điều kiện tiêu chuẩn. Thiết lập đồ họa tối đa trên tùy chọn cấu hình Ryzen 9, RTX 3080 và độ phân giải 2K</p>\r\n\r\n<p><img alt=\"Test Final Fantasy XV\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-8.jpg\" style=\"height:767px; width:1361px\" /></p>\r\n\r\n<p>(Final Fantasy)</p>\r\n\r\n<p><img alt=\"Test Horizon Zero Dawn\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-9.jpg\" style=\"height:766px; width:1441px\" /></p>\r\n\r\n<p>(Horizon Zero Dawn)</p>\r\n\r\n<p><img alt=\"Cyberpunk 2077\" src=\"https://hanoicomputercdn.com/media/lib/20-04-2021/laptop-asus-gaming-rog-zephyrus-ga503qm-hq097t-xam-mota-10.jpg\" style=\"height:763px; width:1362px\" /></p>\r\n\r\n<p>(Cyberpunk 2077)</p>', '7bb4b6dae6.jpg', '9ee8e5a33b.jpg', '0daacef118.jpg', '7323ce.jpg', 43999000, 1, 1, '2021-12-23 02:46:48', '2021-12-23 02:47:23', NULL),
(4, 'Laptop Asus ZenBook UX363EA-HP532T (i5 1135G7/8GB RAM/512GB SSD/13.3 FHD Cảm ứng/Win10/Cáp/Bút/Túi/Xám)', 'laptop-asus-zenbook-ux363ea-hp532t-i5-1135g78gb-ram512gb-ssd133-fhd-cam-ungwin10capbuttuixam', 1, 20, 0, '[[\"CPU\",\"Intel Core i5 1135G7\"],[\"RAM\",\"8GB\"],[\"\\u1ed4 c\\u1ee9ng\",\"512GB SSD\"],[\"VGA\",\"Onboard\"],[\"M\\u00e0n h\\u00ecnh\",\"13.3 FHD C\\u1ea3m \\u1ee9ng\"],[\"H\\u0110H\",\"Win 10\"],[\"M\\u00e0u s\\u1eafc\",\"Pine Grey\"],[\"Dung l\\u01b0\\u1ee3ng t\\u1ed1i \\u0111a\",\"32GB\"],[\"AC Adapter\",\"TYPE-C, 65W AC Adapter, Output: 20V DC, 3.25A, 65W, Input: 100-240V AC 50\\/60GHz universal\"]]', NULL, '<h3>Linh hoạt đa phong cách</h3>\r\n\r\n<p><br />\r\nBản lề ErgoLift 360° linh hoạt trên ZenBook Flip 13 mang lại chuyển động êm mượt và giữ màn hình chắc chắn ở mọi góc lật. Thiết kế mang tới sự linh hoạt, cho phép bạn làm việc hoặc thư giãn ở mọi chế độ mong muốn: máy tính xách tay, màn hình kiểu mái lều, gập đứng hoặc máy tính bảng. Bản lề ErgoLift còn được thử nghiệm khắt khe để đảm bảo độ bền bỉ tối đa, để người dùng có thể yên tâm tuyệt đối.</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX363-1\" src=\"https://hanoicomputercdn.com/media/lib/57224_UX363EA-HP130T1.jpg\" style=\"height:796px; width:1200px\" /></p>\r\n\r\n<h3>Mỏng, nhẹ và khả năng kết nối toàn diện</h3>\r\n\r\n<p>ZenBook Flip 13 được thiết kế để mang tới sự linh hoạt tiện lợi. Trọng lượng nhẹ đáng ngạc nhiên — chỉ 1,3 kg — và mỏng 13,9mm khiến đây trở thành lựa chọn hoàn hảo cho các tác vụ sáng tạo và hiệu suất trong lúc di chuyển. Dù có thiết kế siêu mỏng, ZenBook Flip 13 được trang bị các tùy chọn cổng I/O: có HDMI, USB Type-A và hai cổng Thunderbolt™ 4 USB-C®, đây là chiếc máy tính xách tay xoay lật mỏng nhất thế giới tích hợp số lượng cổng kết nối đầy ấn tượng!</p>\r\n\r\n<h3><img alt=\"Laptop Asus ZenBook UX363-2\" src=\"https://hanoicomputercdn.com/media/lib/57224_UX363EA-HP130T2.jpg\" style=\"height:280px; width:1200px\" /></h3>\r\n\r\n<h3>Thời lượng pin khủng</h3>\r\n\r\n<p><br />\r\nZenBook Flip 13 sử dụng viên pin dung lượng lớn sẽ không làm bạn thất vọng, cho dù ngày làm việc của bạn dài và có đòi hỏi khắt khe như thế nào đi chăng nữa. Công nghệ sạc nhanh cho phép bạn sạc 60% dung lượng pin chỉ trong 49 phút, nhờ đó bạn có thể làm việc năng suất hơn bao giờ hết. Công nghệ USB-C Easy Charge của ASUS cho phép bạn sử dụng nhiều bộ sạc USB-C tiêu chuẩn khác nhau để có thể sạc trong lúc di chuyển một cách tiện lợi.</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX363-3\" src=\"https://hanoicomputercdn.com/media/lib/57224_UX363EA-HP130T3.jpg\" style=\"height:919px; width:1200px\" /></p>\r\n\r\n<h3>Màn hình có độ chính xác tối đa</h3>\r\n\r\n<p><br />\r\nGiới nghệ sĩ, nhiếp ảnh gia và nhà thiết kế sẽ thích sự kết hợp giữa màn hình NanoEdge và bút ASUS Pen tùy chọn. Màn hình cảm ứng mượt như lụa hỗ trợ 4096 cấp độ nhạy áp lực của bút ASUS Pen, mang tới trải nghiệm nâng cấp khiến ZenBook Flip 13 trở thành lựa chọn hoàn hảo cho nhu cầu biên tập trực quan, ghi chú và sáng tạo thông thường trong bất kỳ ứng dụng được hỗ trợ nào.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX363-4\" src=\"https://hanoicomputercdn.com/media/lib/57224_UX363EA-HP130T4.jpg\" style=\"height:645px; width:1200px\" /></p>\r\n\r\n<h3>Hiệu suất siêu mượt</h3>\r\n\r\n<p><br />\r\nMáy tính ZenBook Flip 13 linh hoạt mang tới hiệu năng vô song. Từng linh kiện đều được tuyển chọn và tinh chỉnh để mang lại hiệu năng xuất sắc nhất có thể. Kết quả cuối cùng là một cỗ máy siêu gọn nhẹ, linh hoạt và nhanh hơn bao giờ hết. Sức mạnh xử lý thế hệ mới luôn mang lại trải nghiệm mượt mà nhất, cho dù tác vụ phức tạp tới mức nào.</p>\r\n\r\n<h3><img alt=\"Laptop Asus ZenBook UX363-5\" src=\"https://hanoicomputercdn.com/media/lib/57224_UX363EA-HP130T5.jpg\" style=\"height:775px; width:1200px\" /><br />\r\n&nbsp;<br />\r\nKhả năng kết nối tiện lợi</h3>\r\n\r\n<p><br />\r\nMột tập hợp đầy đủ các cổng kết nối I/O hiệu năng cao mang đến cho ZenBook Flip 13 khả năng kết nối cần thiết để mang đến độ linh hoạt cao cho dù bạn đang ở văn phòng hay di chuyển trên đường. Thậm chí máy còn được trang bị cổng HDMI và USB Type-A — một tính năng trang bị ấn tượng trong khung máy mảnh dẻ — cùng với hai cổng Thunderbolt 4 USB-C được hỗ trợ chuẩn Power Delivery và DisplayPort cho phép kết nối linh hoạt và siêu nhanh.<br />\r\nUSB 3.2 thế hệ thứ 1HDMIThunderbolt™ 4 USB-C®</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX363-6\" src=\"https://hanoicomputercdn.com/media/lib/57224_UX363EA-HP130T6.jpg\" style=\"height:169px; width:1200px\" /></p>\r\n\r\n<h3><br />\r\nĐược tinh chỉnh với ASUS WiFi Master Premium</h3>\r\n\r\n<p><br />\r\nASUS cung cấp đa dạng các giải pháp kết nối không dây toàn diện. WiFi 6 trên ZenBook Flip 13 cho phép bạn tải nội dung trực tuyến chỉ trong nháy mắt và điều này thậm chí còn được cải tiến hơn nhờ công nghệ ASUS WiFi Master Premium bao gồm ASUS WiFi Stabilizer và ASUS WiFi SmartConnect. Để cho kết nối WiFi ổn định, WiFi Stabilizer lọc ra hiện tượng nhiễu sóng không dây để bạn luôn có thể tận hưởng tốc độ kết nối nhanh nhất có thể. WiFi SmartConnect tự động chọn ra nguồn WiFi mạnh nhất, để máy tính xách tay của bạn có thể kết nối mượt mà với sóng WiFi và các điểm phát hotspot di động mạnh nhất.</p>\r\n\r\n<h3><img alt=\"Laptop Asus ZenBook UX363-7\" src=\"https://hanoicomputercdn.com/media/lib/57224_UX363EA-HP130T7.jpg\" style=\"height:591px; width:1200px\" /></h3>\r\n\r\n<h3><br />\r\nCông nghệ âm thanh khử tiếng ồn trang bị AI thế hệ mới</h3>\r\n\r\n<p><br />\r\nVới xu hướng các cuộc hội thảo video và làm việc từ xa ngày một phổ biến, chúng tôi đã nghiên cứu công nghệ ASUS AI khử tiếng ồn nhằm mang lại trải nghiệm tốt nhất. Công nghệ khử nhiễu âm thanh tích hợp AI của ASUS có khả năng lọc các âm thanh không mong muốn trong nội dung hội thoại của con người. Tính năng ClearVoice Mic trong ứng dụng MyASUS có thể lọc ra tiếng ồn môi trường và chuẩn hóa mọi giọng nói của con người trong chế độ Multi-presenter từ các vị trí khác nhau để có chất lượng cuộc gọi tối ưu trong hội thảo nhóm. Tính năng ClearVoice Speaker lọc ra tất cả các tiếng ồn môi trường khỏi nội dung hội thoại— để bạn sẽ chỉ nghe những gì người khác đang nói. Hãy nghe thử để cảm nhận sự khác biệt tuyệt vời trong môi trường khác nhau mà công nghệ khử tiếng ồn trang bị AI của ASUS có thể tạo ra.</p>\r\n\r\n<h3><br />\r\nÂm thanh Harman Kardon</h3>\r\n\r\n<p><br />\r\nĐể trang bị cho ZenBook Flip 13 các tính năng âm thanh vượt trội, đội ngũ ASUS Golden Ear đã kết hợp với các chuyên gia âm thanh của Harman Kardon để tạo ra trải nghiệm loa âm thanh nổi chất lượng cao và hiệu ứng âm thanh vòm mang lại cho bạn chất lượng âm thanh chuẩn điện ảnh. Bộ khuếch đại thông minh đặc biệt đảm bảo âm lượng tối đa với độ méo tiếng tối thiểu cho âm thanh trong trẻo, mạnh mẽ. ZenBook Flip 13 mang đến âm thanh tuyệt vời nhất từ mọi góc độ!<br />\r\nđã chứng nhận</p>\r\n\r\n<p><img alt=\"Laptop Asus ZenBook UX363-8\" src=\"https://hanoicomputercdn.com/media/lib/57224_UX363EA-HP130T8.jpg\" /></p>', '966512b2b6.jpg', '93f3a0ba8c.png', 'ae5f92e9d6.png', 'bf456f85e3.png', 26999000, 1, 1, '2021-12-23 03:01:01', '2021-12-23 03:01:01', NULL),
(5, 'Apple Macbook Air 13 (MGN63SA/A) (Apple M1/8GB RAM/256GB SSD/13.3 inch IPS/Mac OS/Xám)', 'apple-macbook-air-13-mgn63saa-apple-m18gb-ram256gb-ssd133-inch-ipsmac-osxam', 1, 20, 0, '[[\"CPU\",\"Apple M1\"],[\"RAM\",\"8GB\"],[\"\\u1ed4 c\\u1ee9ng\",\"256GB SSD\"],[\"VGA\",\"Onboard\"],[\"M\\u00e0n h\\u00ecnh\",\"13.3 inch Retina IPS\"],[\"H\\u0110H\",\"Mac OS\"],[\"B\\u1ea3o m\\u1eadt, C\\u00f4ng ngh\\u1ec7\",\"Backlit Magic Keyboard; TouchID\"],[\"Webcam\",\"720p HD\"],[\"Audio\",\"Stereo speakers\"]]', NULL, '<h3><strong>Thiết kế cao cấp, mỏng nhẹ</strong></h3>\r\n\r\n<p><a href=\"https://www.hanoicomputer.vn/apple-macbook-air-13-mgn63sa-a-xam-new\">Laptop Apple Macbook Air 13 (MGN63SA/A)&nbsp;</a>toát lên vẻ cá tính, sang trọng, laptop được bọc bởi một lớp kim loại nguyên khối cùng với những đường nét trang nhã, tinh tế. Bên cạnh đó, với trọng lượng khá nhẹ, chỉ 1.29 kg, độ mỏng từ 4.1 mm đến 16.1 mm có thể dễ dàng mang theo, chiếc&nbsp;<a href=\"https://www.hanoicomputer.vn/laptop\">laptop</a>&nbsp;này sẽ là người bạn đồng hành của bạn mọi lúc mọi nơi.</p>\r\n\r\n<p>Công nghệ cảm biến vân tay được MacBook tích hợp gọn gàng, chỉ với một chạm bạn sẽ dễ dàng đăng nhập vào màn hình, đồng thời có thể bảo mật được dữ liệu quan trọng trong máy, tránh người lạ xâm nhập.</p>\r\n\r\n<p>Ngoài ra, Macbook M1 còn được tích hợp đèn bàn phím giúp người dùng dễ dàng sử dụng ngay cả trong điều kiện thiếu sáng.</p>\r\n\r\n<p>Tuy mỏng nhẹ nhưng MacBook Air vẫn được trang bị 2 cổng Thunderbolt 3 (USB-C), Wi-Fi 6-802.11ax, Bluetooth v5.0 cho phép bạn kết nối dễ dàng với các thiết bị ngoại vi, màn hình và máy chiếu.</p>\r\n\r\n<p><img alt=\"Apple Macbook Air 13 với thiết kế cao cấp mỏng nhẹ\" src=\"https://hanoicomputercdn.com/media/lib/53016_1.jpg\" style=\"height:366px; width:650px\" /></p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ gấp 3.5 lần thế hệ trước đó</strong></h3>\r\n\r\n<p>Sở hữu loại chip đầu tiên được trang bị dành riêng cho MAC dựa trên cấu trúc ARM là Apple M1, với bộ vi xử lý 8 lõi và kiến trúc 5 nm, M1 mang đến hiệu suất CPU nhanh hơn 3.5 lần, 7/8 nhân GPU nhanh hơn 5 lần so với thế hệ trước. 8 lõi CPU của M1 có 4 lõi hiệu suất cao và 4 lõi tiết kiệm điện, nhờ vậy laptop được kéo dài thời lượng pin lên đến 10 giờ đồng hồ.</p>\r\n\r\n<p>RAM 8/16 GB giúp cho khả năng đa nhiệm được nâng cao. Bạn có thể vừa lướt web vừa nghe nhạc, mở nhiều ứng dụng hay nhiều tab Chrome mà không sợ bị giật lag.</p>\r\n\r\n<p>Ngoài ra, với ổ cứng SSD 256/512 GB, bạn có thể yên tâm về không gian lưu trữ để lưu các tệp tin như phim ảnh, tài liệu, psd,... và đạt được tốc độ làm việc, phản hồi nhanh chóng chỉ trong vài giây.</p>\r\n\r\n<p>Kho ứng dụng trên macOS đã tiếp tục được nâng cấp với số lượng càng lớn hơn, bạn có thể tham khảo thêm: Danh sách ứng dụng chạy được trên Macbook chip Apple M1.</p>\r\n\r\n<p><img alt=\"Apple Macbook Air 13 M1 có hiệu năng mạnh mẽ gấp 3 lần trước đó\" src=\"https://hanoicomputercdn.com/media/lib/53016_4.jpg\" style=\"height:366px; width:650px\" /></p>\r\n\r\n<h3><strong>Hình ảnh chân thực, sống động</strong></h3>\r\n\r\n<p>Được trang bị màn hình Retina 13.3 inch,&nbsp;<a href=\"https://www.hanoicomputer.vn/laptop-apple-macbook-air\">MacBook Air</a>&nbsp;đem đến cho bạn một trải nghiệm tuyệt vời với chất lượng hình ảnh sắc nét, màu sắc rực rỡ, sinh động.</p>\r\n\r\n<p>Tấm nền IPS giúp góc nhìn trở nên rộng hơn, không còn hiện tượng hình ảnh bị thay đổi khi nhìn từ góc độ khác. Bên cạnh đó, với sự kết hợp công nghệ True Tone, màn hình sẽ tự động điều chỉnh nhiệt độ màu của máy dựa trên ánh sáng của môi trường.</p>\r\n\r\n<p>Đặc biệt Face Time Camera được trang bị vào<a href=\"https://www.hanoicomputer.vn/laptop-apple\">&nbsp;MacBook&nbsp;</a>giúp bạn ghi hình với chất lượng hình ảnh cao, đem lại cảm giác chân thật khi gọi video cho người thân, bạn bè.</p>\r\n\r\n<p>Bên cạnh chất lượng hình ảnh, công nghệ âm thanh của laptop cũng không kém phần nổi bật với loa kép (2 kênh) mang đến sự cảm nhận âm thanh rõ rệt, sống động cho người dùng.</p>\r\n\r\n<p>Laptop Apple MacBook Air M1 2020 với thiết kế cao cấp, sang trọng nhưng không kém phần năng động, cá tính sẽ là một sự lựa chọn hoàn hảo dành cho những người di chuyển nhiều và cần hiệu năng xử lý tốt cho các tác vụ học tập, văn phòng.</p>\r\n\r\n<p><img alt=\"Apple Macbook Air 13 M1 mang lại hình ảnh chân thực sống động\" src=\"https://hanoicomputercdn.com/media/lib/53016_2.jpg\" style=\"height:366px; width:650px\" /></p>', '46dba37bc2.png', '5d8c268704.png', '53a21e1775.png', '35bcf6.png', 25999000, 1, 1, '2021-12-23 03:26:08', '2021-12-23 04:32:43', NULL),
(6, 'PC GAMING HACOM AMD 003 (R7 5800X/B550/32GB RAM/1TB SSD/RX 6600 SAPPHIRE/750W)', 'pc-gaming-hacom-amd-003-r7-5800xb55032gb-ram1tb-ssdrx-6600-sapphire750w', 2, 5, 0, '[[\"CPU\",\"AMD Ryzen 5 5800X\"],[\"Mainboard\",\"B550\"],[\"RAM\",\"32GB\"],[\"SSD\",\"1TB\"],[\"VGA\",\"RX 6600\"],[\"PSU\",\"750W\"]]', NULL, '<p>Đang cập nhật ...</p>', '659e11f910.jpg', NULL, NULL, NULL, 47999000, 1, 0, '2021-12-23 03:41:33', '2021-12-23 03:48:06', NULL),
(7, 'PC GAMING HACOM 020 (I3 10105F/H510/8GB RAM/240GB SSD/GTX 1650/550W)', 'pc-gaming-hacom-020-i3-10105fh5108gb-ram240gb-ssdgtx-1650550w', 2, 10, 0, '[[\"CPU\",\"Intel Core i3-10105F\"],[\"Mainboar\",\"H510\"],[\"RAM\",\"8Gb 3200Mhz\"],[\"SSD\",\"240Gb\"],[\"VGA\",\"GTX 1650\"],[\"Ngu\\u1ed3n\",\"550W\"]]', NULL, '<p>Đang cập nhật ...</p>', '2075f62b6c.jpg', NULL, NULL, NULL, 14999000, 1, 1, '2021-12-23 03:53:55', '2021-12-23 03:53:55', NULL),
(8, 'PC GAMING AMD 004 (R9 5950X/X570/64GB RAM/2TB SSD/RX 6800/1200W)', 'pc-gaming-amd-004-r9-5950xx57064gb-ram2tb-ssdrx-68001200w', 2, 2, 0, '[[\"CPU\",\"AMD Ryzen 9 5950X\"],[\"Mainboard\",\"X570\"],[\"RAM\",\"64GB\"],[\"SSD\",\"2TB\"],[\"VGA\",\"RX 6800\"],[\"Ngu\\u1ed3n\",\"1200W\"]]', NULL, '<p>Đang cập nhật ...</p>', '4e3c6fb788.jpg', NULL, NULL, NULL, 127999000, 1, 1, '2021-12-23 03:57:59', '2021-12-23 03:58:13', NULL),
(9, 'PC GAMING EAGLE 004 (R9 5950X/X570/64GB RAM/1TB SSD/6800XT/850W/TẢN MSI MAG)', 'pc-gaming-eagle-004-r9-5950xx57064gb-ram1tb-ssd6800xt850wtan-msi-mag', 2, 10, 0, '[[\"Main\",\"X570\"],[\"CPU\",\"Ryzen 9 5950X\"],[\"RAM\",\"64GB RAM\"],[\"\\u1ed4 c\\u1ee9ng\",\"1TB SSD\"],[\"VGA\",\"AMD RX 6800XT\"],[\"Ngu\\u1ed3n\",\"850W\"]]', NULL, '<p>Đang cập nhật ...</p>', 'f470ddb28a.jpg', NULL, NULL, NULL, 90999000, 1, 1, '2021-12-23 04:06:38', '2021-12-23 04:07:30', NULL),
(10, 'Màn hình Acer XZ272S (27inch/ FHD/ VA/ 165Hz/ 2ms/ 400nits/ HDMI+DP+Audio/ Freesync/ Loa)', 'man-hinh-acer-xz272s-27inch-fhd-va-165hz-2ms-400nits-hdmidpaudio-freesync-loa', 3, 10, 0, '[[\"K\\u00edch th\\u01b0\\u1edbc\",\"27 inch\"],[\"T\\u1ea5m n\\u1ec1n\",\"VA\"],[\"\\u0110\\u1ed9 ph\\u00e2n gi\\u1ea3i\",\"Full HD (1920x1080)\"],[\"T\\u1ed1c \\u0111\\u1ed9 l\\u00e0m m\\u1edbi\",\"165Hz\"],[\"Th\\u1eddi gian \\u0111\\u00e1p \\u1ee9ng\",\"1ms (VRB)\"],[\"\\u0110\\u1ed9 s\\u00e1ng\",\"400 cd\\/m\\u00b2\"],[\"Nh\\u00e0 s\\u1ea3n xu\\u1ea5t\",\"ACER\"],[\"T\\u00ean s\\u1ea3n ph\\u1ea9m\",\"XZ272S\"],[\"M\\u00e0u s\\u1eafc m\\u00e0n h\\u00ecnh\",\"95% sRGB\"]]', NULL, '<h3>THIẾT KẾ CHUẨN GAMING</h3>\r\n\r\n<p>Màn hình thiết kế 27 inch FullHD tràn viền tối ưu không gian. cùng độ tương phản tĩnh lên đến 3000:1 (gấp 3 lần màn hình thường) và độ sáng lên đến 400 nits (gấp đôi màn hình thường) mang lại chất lượng hình ảnh sống động, sắc nét ở mọi góc nhìn (178 độ).</p>\r\n\r\n<p><img alt=\"THIẾT KẾ CHUẨN GAMING\" src=\"https://hanoicomputercdn.com/media/lib/21-06-2021/man-hinh-acer-xz272s-7.jpg\" style=\"height:850px; width:1511px\" /></p>\r\n\r\n<h3>CHIẾN GAME CHUẨN ESPORT</h3>\r\n\r\n<p>Màn hình XZ272 S với tốc độ làm mới lên đến 165Hz và thời gian phản hồi 1ms cực nhanh được thiết kế dành riêng cho game thủ chuyên nghiệp cùng công nghệ AMD® Freesync™ chống xé hình ảnh, loại bỏ hiện tượng bóng mờ mang lại trải nghiệm chơi game mượt và mượt.</p>\r\n\r\n<p><img alt=\"CHIẾN GAME CHUẨN ESPORT\" src=\"https://hanoicomputercdn.com/media/lib/21-06-2021/man-hinh-acer-xz272s-9.jpg\" style=\"height:850px; width:1511px\" /></p>\r\n\r\n<h3>CÔNG NGHỆ TỐI ƯU HÓA</h3>\r\n\r\n<p>Công nghệ Black Boost làm sáng vùng tối trong game mà không gây cháy sáng giúp nhìn thấy nhiều chi tiết hơn. Công nghệ khử nhấp nháy Flicker-less và công nghệ Bluelight Shield lọc tối đa 80% ánh sáng xanh gây hại giúp người dùng hạn chế mỏi mắt, tăng cường trải nghiệm thoải mái khi đắm chìm trong các tựa game đường trường. Công nghệ Low dimming bảo vệ mắt trong môi trường tối.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"CÔNG NGHỆ TỐI ƯU HÓA\" src=\"https://hanoicomputercdn.com/media/lib/21-06-2021/man-hinh-acer-xz272s-8.jpg\" style=\"height:850px; width:1511px\" /></p>\r\n\r\n<h3>DỊCH VỤ BẢO HÀNH VIP 3S1</h3>\r\n\r\n<p>3S1 là chính sách bảo hành nhanh dành cho khách hàng của Acer.<br />\r\nVới chính sách này, các sản phẩm gaming cao cấp như XZ272 S sẽ được kiểm tra, bảo hành và gửi lại khách chỉ trong thời gian ngắn: 03 ngày (72 giờ) bao gồm cả thứ 7, Chủ nhật. Đặc biệt hơn nữa, khách hàng sẽ được nhận sản phẩm mới cùng loại hoặc tương đương (1 đổi 1) cho các trường hợp không hoàn thành bảo hành trong 03 ngày tính từ lúc nhận sản phẩm.</p>', 'b109cfced7.png', '3898435c0a.png', '0c894c9a29.png', 'c1e51f4a15.png', 7669000, 1, 1, '2021-12-23 04:36:12', '2021-12-23 04:41:44', NULL),
(11, 'Màn hình Asus Pro Art PA278QV (27inch/ WQHD/ IPS/ 75Hz/ 5ms/ 350nits/ HDMI+DP+MiniDP+DVI+USB+Audio)', 'man-hinh-asus-pro-art-pa278qv-27inch-wqhd-ips-75hz-5ms-350nits-hdmidpminidpdviusbaudio', 3, 10, 0, '[[\"K\\u00edch th\\u01b0\\u1edbc\",\"27\\u2033\"],[\"T\\u1ec9 l\\u1ec7\",\"16:9 FHD (2560 x 1440) IPS\"],[\"Chu\\u1ea9n m\\u00e0u\",\"100% sRGB, 100% Rec. 709 wide color gamut\"],[\"\\u0110\\u1ed9 sai m\\u00e0u\",\"\\u0394E < 2\"],[\"Nh\\u00e0 s\\u1ea3n xu\\u1ea5t\",\"Asus\"],[\"T\\u00ean s\\u1ea3n ph\\u1ea9m\",\"PA278QV\"],[\"T\\u1ea7n s\\u1ed1 qu\\u00e9t\",\"75Hz\"],[\"Th\\u1eddi gian ph\\u1ea3n h\\u1ed3i\",\"5ms\"],[\"\\u0110\\u1ed9 t\\u01b0\\u01a1ng ph\\u1ea3n\",\"10000:1\"],[\"\\u0110\\u1ed9 s\\u00e1ng\",\"400nits\"]]', NULL, '<h3><img alt=\"bảo vệ mắt\" src=\"https://hanoicomputercdn.com/media/product/58238_man_hinh_asus_proart_pa278cv_1.png\" style=\"height:850px; width:850px\" /></h3>\r\n\r\n<h3><strong>&nbsp;</strong></h3>\r\n\r\n<h3><strong>Thiết kế</strong></h3>\r\n\r\n<p>Là chiếc màn hình phẳng mới đến từ ASUS với thiết kế hiện đại, được thiết kế để đáp ứng nhu cầu của các chuyên gia sáng tạo, từ chỉnh sửa ảnh và video cho đến thiết kế đồ họa.</p>\r\n\r\n<p>Thiết kế khớp xoay tiện lợi với khả năng điều chỉnh chiều cao, trục xoay, độ nghiêng giúp bạn làm việc sáng tạo và dễ dàng hơn.</p>\r\n\r\n<p><img alt=\"Màn hình Asus ProArt PA278QV xoay\" src=\"https://hanoicomputercdn.com/media/lib/53211_PA278QV1.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<h3><strong>Đa dạng màu sắc, tái hiện sinh động</strong></h3>\r\n\r\n<p>Màn hình ProArt cung cấp 100% sRGB tiêu chuẩn công nghiệp và 100% Rec.</p>\r\n\r\n<p>Gam màu 709 cho khả năng tái tạo phong phú, đảm bảo mọi chi tiết đều được tái hiện sắc nét, rực rỡ.</p>\r\n\r\n<p><img alt=\"Màn hình Asus ProArt PA278QV mau\" src=\"https://hanoicomputercdn.com/media/lib/53211_PA278QV2.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<h3><strong>Độ trung thực màu cao</strong></h3>\r\n\r\n<p>Đạt được ∆E vì vậy hình ảnh của bạn được tái tạo chính xác trên màn hình - cho phép bạn xem chính xác công việc của bạn sẽ như thế nào khi kết thúc.</p>\r\n\r\n<p><img alt=\"Màn hình Asus ProArt PA278QV delta e\" src=\"https://hanoicomputercdn.com/media/lib/53211_PA278QV3.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<h3><strong>Độ chuẩn màu được cam kết</strong></h3>\r\n\r\n<p><a href=\"https://www.hanoicomputer.vn/man-hinh-asus-proart-pa278qv\">ProArt Display PA278QV</a>&nbsp;được đạt chứng nhận Calman để đảm bảo độ chính xác màu hàng đầu. Mỗi màn hình ProArt đều trải qua quá trình kiểm tra nghiêm ngặt, tỉ mỉ để đảm bảo sự chuyển màu mượt mà hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>ASUS ProArt Palette</strong></h3>\r\n\r\n<p>Cho phép bạn tùy chỉnh&nbsp;<a href=\"https://www.hanoicomputer.vn/man-hinh-may-tinh\" rel=\"noopener\" target=\"_blank\">màn hình</a>&nbsp;của mình thông qua một loạt các thông số, bao gồm màu sắc, điều chỉnh nhiệt độ và gamma &nbsp;thông qua các menu trên màn hình trực quan.</p>\r\n\r\n<p><img alt=\"Màn hình Asus ProArt PA278QV pallete\" src=\"https://hanoicomputercdn.com/media/lib/53211_PA278QV5.jpg\" style=\"width:1000px\" /></p>\r\n\r\n<h3><strong>Kết nối phong phú</strong></h3>\r\n\r\n<p>Trang bị các cổng kết nối đa dạng như DisplayPort 1.2, HDMI (v1.4), cổng D-Sub và bộ chia USB tích hợp dễ dàng kết nối với nhiều loại thiết bị và tận hưởng tốc độ truyền cực nhanh với bộ nhớ ngoài.</p>\r\n\r\n<p><img alt=\"Màn hình Asus ProArt PA278QV io\" src=\"https://hanoicomputercdn.com/media/lib/53211_PA278QV6.jpg\" style=\"width:1000px\" /></p>', 'ebc0501e04.jpg', '320cc227ea.jpg', '217546e10e.jpg', 'a355d1abf7.jpg', 9699000, 1, 1, '2021-12-23 04:41:07', '2021-12-23 04:42:07', NULL),
(12, 'Chuột chơi game Logitech G402 Hyperion Fury USB Black', 'chuot-choi-game-logitech-g402-hyperion-fury-usb-black', 4, 20, 0, '[[\"H\\u00e3ng s\\u1ea3n xu\\u1ea5t\",\"Logitech\"],[\"Ch\\u1ee7ng lo\\u1ea1i\",\"G402 USB Black\"],[\"Chu\\u1ea9n Chu\\u1ed9t\",\"Chu\\u1ed9t Quang\"],[\"Chu\\u1ea9n giao ti\\u1ebfp\",\"USB\"],[\"\\u0110\\u1ed9 ph\\u00e2n gi\\u1ea3i\",\"240DPI - 4000DPI\"],[\"M\\u00e0u\",\"\\u0110en\"],[\"\\u0110\\u00e8n Chu\\u1ed9t\",\"Xanh da tr\\u1eddi\"],[\"C\\u00e1c ch\\u1ee9ng n\\u0103ng \\u0111\\u1eb7c bi\\u1ec7t\",\"Chu\\u1ed9t ch\\u01a1i game cao c\\u1ea5p c\\u1ee7a Logitech  M\\u1eaft \\u0111\\u1ecdc AM010 c\\u1ee7a Logitech, cho ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ef1c t\\u1ed1t  H\\u1ee3p v\\u1edbi game th\\u1ee7 thu\\u1eadn tay ph\\u1ea3i  H\\u1ee3p v\\u1edbi c\\u00e1c d\\u00f2ng game FPS nh\\u01b0 CF ho\\u1eb7c CSGO  Chu\\u1ed9t c\\u00f3 gi\\u00e1 th\\u00e0nh c\\u1ef1c t\\u1ed1t m\\u00e0 ch\\u1ea5t l\\u01b0\\u1ee3ng r\\u1ea5t cao. \\u0110\\u00e1ng mua trong ph\\u00e2n kh\\u00fac 1 tri\\u1ec7u \\u0111\\u1ed3ng  N\\u00fat cu\\u1ed9n \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf ki\\u1ec3u Optical cho c\\u1ea3m gi\\u00e1c cu\\u1ed9n \\u0111\\u1ed9c \\u0111\\u00e1o v\\u00e0 ch\\u00ednh x\\u00e1c\"]]', NULL, '<p><strong>Chuột chơi game Logitech G402</strong></p>\r\n\r\n<p><img alt=\"Giới thiệu Chuột chơi game Logitech G402\" src=\"https://hanoicomputercdn.com/media/lib/29034_gioi-thieu-mouse-logitech-g402-usb-black.png\" style=\"width:450px\" /></p>\r\n\r\n<h3>TRACKING TỐC ĐỘ CAO VỚI FUSION ENGINE</h3>\r\n\r\n<p><a href=\"https://www.hanoicomputer.vn/chuot-choi-game-logitech-g402-hyperion-fury-usb-black\">Chuột chơi game Logitech G402&nbsp;</a>với công nghệ cảm biến tinh vi để chơi game siêu nhanh. Hyperion Fury tích hợp với&nbsp;cảm biến quang học sử dụng công nghệ Logitech Delta Zero™ với cảm biến lai Fusion Engine™ độc quyền cho phép tốc độ&nbsp;tracking vượt quá 500 IPS.</p>\r\n\r\n<p><img alt=\"Công nghệ Fusion Engine của Chuột chơi game Logitech G402 cho tracking tốc độ cao\" src=\"https://hanoicomputercdn.com/media/lib/29034_cong-nghe-fusion-engine-cua-mouse-logitech-g402-usb-black.jpeg\" style=\"width:450px\" /></p>\r\n\r\n<h3>CHUYỂN ĐỔI DPI TỨC THÌ</h3>\r\n\r\n<p><a href=\"https://www.hanoicomputer.vn/collection/chuot-logitech\">Chuột có dây logitech</a>&nbsp;với 4 cài đặt để điều khiển cách chơi tốt hơn có khả năng&nbsp;chuyển đổi tức thì giữa bốn cài đặt DPI. Có thể&nbsp;bắn tỉa kẻ địch trên khắp bản đồ (250 DPI) trước khi rút lui trong nháy mắt (4000 DPI). Với chuyển đổi DPI tức thì này, bạn có thể ứng biến được&nbsp;sự hỗn loạn của trận chiến một cách linh hoạt với độ chính xác cao.</p>\r\n\r\n<p><img alt=\"Chuột chơi game Logitech G402 cho phép chỉnh DPI nhanh ngay trên chuột \" src=\"https://hanoicomputercdn.com/media/lib/29034_chinh-dpi-nhanh-tren-mouse-logitech-g402-usb-black.jpg\" style=\"width:450px\" /></p>\r\n\r\n<h3>BỘ XỬ LÝ ARM 32-BIT</h3>\r\n\r\n<p>Sở hữu bộ xử lý ARM 32 BIT thông minh hơn bao giờ hết. Bộ xử lý ARM tích hợp trong Hyperion Fury đem đến cho Fusion Engine tốc độ theo dõi đáng kinh ngạc trong khi vẫn cho phép bạn lưu và xem lại các macro ưa thích. Với các&nbsp;phần mềm chơi game Logitech (Logitech Gaming Software), việc thiết kế và gán các macro có thể được thực hiện từ Hyperion Fury dễ dàng.</p>\r\n\r\n<p><img alt=\"Bộ nhớ của Chuột chơi game Logitech G402 cho phép lưu trữ tuỳ chỉnh cá nhân qua phần mềm\" src=\"https://hanoicomputercdn.com/media/lib/29034_bo-vi-xu-ly-32-bit-arm-cua-mouse-logitech-g402-usb-black.jpg\" style=\"width:450px\" /></p>\r\n\r\n<h3>TỐC ĐỘ CHỈ 1MS</h3>\r\n\r\n<p>Giao tiếp tức thì với tốc độ 1 mili giây,&nbsp;chuyển động của bạn sẽ được giao tiếp qua USB ở tốc độ cao mà không bị lag.</p>\r\n\r\n<p><img alt=\"Chuột chơi game Logitech G402 có tốc độ phản hồi nhanh chỉ 1ms\" src=\"https://hanoicomputercdn.com/media/lib/29034_thiet-ke-mouse-logitech-g402-usb-black.jpg\" style=\"width:450px\" /></p>\r\n\r\n<h3>THIẾT KẾ TẠO SỰ THOẢI MÁI</h3>\r\n\r\n<p>Thoải mái tối đa để bạn có thể chơi game và làm việc&nbsp;trong thời gian lâu nhất, và là&nbsp;sự đổi mới cho hình dáng G400s cổ điển nhằm nâng cao chức năng và sự thoải mái trong quá trình sử dụng.&nbsp;Chuột chơi game Logitech G402&nbsp;là&nbsp;Sự kết hợp giữa các vật liệu nhẹ và tay cầm cao su sẽ giúp những ván game&nbsp;của bạn diễn ra lâu nhất có thể.</p>\r\n\r\n<p><img alt=\"Chuột chơi game Logitech G402 có thiết kế cầm nắm thoải mái\" src=\"https://hanoicomputercdn.com/media/lib/29034_form-cam-cua-mouse-logitech-g402-usb-black.jpg\" style=\"width:450px\" /></p>', 'bc3d5a27ba.jpg', '50df5a7770.jpg', '2ef432c245.jpg', 'e6b4b281d8.jpg', 726000, 1, 1, '2021-12-23 04:47:32', '2021-12-23 04:47:32', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `level`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$myW.p/PHK.9UAeyBZ0t9fepCaD0MOK5j4ICyIYM9Ms9knJbCqQT/G', NULL, NULL, 1, 1, NULL, NULL),
(2, 'Le Hieu', 'hieulm72@wru.vn', '$2y$10$gKor7XmNPiNlxIYcfZUu8eg78Y/9.D5fv7/a4SJhH7lN0i4eKs6SK', NULL, NULL, 2, 1, '2021-12-22 10:06:42', '2021-12-22 10:07:28'),
(3, 'user1', 'user@gmail.com', '$2y$10$qOoVRF2VwDADs5hTXac.rO5jObmPu5xfTlrn1TPEcX2WBaibT.HPu', 'HN', '0123456788', 3, 1, '2021-12-22 12:51:18', '2021-12-22 12:51:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `used` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activity_history`
--
ALTER TABLE `activity_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activity_history`
--
ALTER TABLE `activity_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
