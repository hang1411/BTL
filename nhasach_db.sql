-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2021 at 12:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhasach_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hoa_don`
--

CREATE TABLE `tbl_hoa_don` (
  `hoa_don_id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tong_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_hoa_don`
--

INSERT INTO `tbl_hoa_don` (`hoa_don_id`, `ten`, `dia_chi`, `dien_thoai`, `email`, `tong_tien`) VALUES
(1, 'Ngô Thành Đạt', 'xóm 2 xã Giao Lạc huyện Giao Thủy tỉnh Nam Định', '0988765987', 'dat@gmail.com', 200000),
(2, 'Hà Huy Hoàng', 'xóm 12 xã Giao An huyện Giao Thủy tỉnh Nam Định', '0966824345', 'hoang@gmail.com', 500000),
(3, 'Tạ Trung Kiên', 'xóm 2 xã Giao Phong huyện Giao Thủy tỉnh Nam Định', '0123456789', 'pp@gmail.com', 150000),
(4, 'Lại Thanh Hương', 'xóm 10 xã Giao Thiện huyện Giao Thủy tỉnh Nam Định', '0987654321', 'hh@gmai.com', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khoa`
--

CREATE TABLE `tbl_khoa` (
  `khoa_id` int(11) NOT NULL,
  `ten_khoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_khoa`
--

INSERT INTO `tbl_khoa` (`khoa_id`, `ten_khoa`) VALUES
(1, 'Khoa LLCT'),
(2, 'Khoa Ngân Hàng'),
(3, 'Khoa Luật '),
(4, 'Khoa Kế-Kiếm'),
(5, 'HTTTQL'),
(6, 'Khoa Tài chính'),
(7, 'Bộ môn Toán'),
(8, 'Khoa ngôn ngữ Anh'),
(9, 'Khoa QTKD'),
(10, 'Khoa Kinh tế'),
(11, 'Khoa KDQT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_san_pham`
--

CREATE TABLE `tbl_san_pham` (
  `san_pham_id` int(11) NOT NULL,
  `ten_san_pham` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tac_gia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia` decimal(19,3) NOT NULL,
  `khoa_id` int(11) NOT NULL,
  `so_luong` int(10) NOT NULL,
  `ngay_xuat_ban` datetime NOT NULL,
  `nha_xuat_ban` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_san_pham`
--

INSERT INTO `tbl_san_pham` (`san_pham_id`, `ten_san_pham`, `tac_gia`, `anh`, `gia`, `khoa_id`, `so_luong`, `ngay_xuat_ban`, `nha_xuat_ban`, `mo_ta`) VALUES
(1, 'Anh 1 (Internal use only)', 'Khoa Ngôn ngữ Anh - HVNH', 'Anh 1 (Internal use only).png', '40.000', 8, 10, '2019-10-26 11:03:44', 'Học viện Ngân Hàng', 'If you are looking for an effective English vocabulary learning book, then try Anh 1 (Internal use only). Anh 1 (Internal use only) is my indispensable companion in my English learning journey. This is also my favorite book. You will be immediately impressed with the eye-catching cover of the book. The book has smart methods of learning English, making it easier for the brain to memorize vocabulary. In addition, the book has many interesting images, the content of the book is also humorous and very close to daily life, so it won’t make you sleepy to read. This has also been the bestseller on Tiki for years, in the English book category. The book has helped me improve my English score in class and be able to understand many English songs and movies. This book is very useful and I recommend you buy one immediately if you want to improve your English vocabulary.'),
(2, 'Anh 2 (Internal use only)', 'Khoa Ngôn ngữ Anh - HVNH', 'Anh 2.png', '45.000', 8, 11, '2020-01-01 11:04:23', 'Học viện Ngân Hàng', 'If you are looking for an effective English vocabulary learning book, then try Anh 2 (Internal use only). Anh 2 (Internal use only) is my indispensable companion in my English learning journey. This is also my favorite book. You will be immediately impressed with the eye-catching cover of the book. The book has smart methods of learning English, making it easier for the brain to memorize vocabulary. In addition, the book has many interesting images, the content of the book is also humorous and very close to daily life, so it won’t make you sleepy to read. This has also been the bestseller on Tiki for years, in the English book category. The book has helped me improve my English score in class and be able to understand many English songs and movies. This book is very useful and I recommend you buy one immediately if you want to improve your English vocabulary.'),
(3, 'Anh 3 (Finance I)', 'Khoa Ngôn ngữ Anh - HVNH', 'Anh 3.png', '40.000', 8, 10, '2019-10-26 16:35:29', '', 'If you are looking for an effective English vocabulary learning book, then try Anh 3 (Finance 1). Anh 3 (Finance 1) is my indispensable companion in my English learning journey. This is also my favorite book. You will be immediately impressed with the eye-catching cover of the book. The book has smart methods of learning English, making it easier for the brain to memorize vocabulary. In addition, the book has many interesting images, the content of the book is also humorous and very close to daily life, so it won’t make you sleepy to read. This has also been the bestseller on Tiki for years, in the English book category. The book has helped me improve my English score in class and be able to understand many English songs and movies. This book is very useful and I recommend you buy one immediately if you want to improve your English vocabulary.'),
(4, 'Cấu trúc ngữ pháp tiếng Anh', 'Khoa Ngôn ngữ Anh - HVNH', 'cautrucnguphap.png', '15.000', 8, 10, '2020-08-05 16:37:01', '', 'The book is published by Banking Academy. In the past, I was very tired when learning English grammar. However, the Grammar Brain Hack has helped me find joy and motivation again. The book is full of basic English knowledge used in communication and exams. The book is full of colour, interesting pictures and very trendy examples. The two cartoon characters in the book, the dog Van-Gau and the Chairman cat, with funny English learning stories will make you not bored at all. After studying the book, my marks increased from 7 to 9 in school. It is so great, isn’t it? I have passed the book to my younger brother, hoping that he will find it useful as well.'),
(5, 'Kỹ năng giao tiếp và thuyết trình trong kinh doanh', 'Khoa Quản trị Kinh doanh - HVNH', '1.png', '50.000', 9, 10, '2017-09-08 17:12:54', 'Học viện Ngân Hàng', 'Cuốn sách này sẽ giúp bạn:\r\n\r\nXác định điểm mù trong giao tiếp (khoảng cách giữa điều bạn muốn được mọi người cảm nhận khi bạn nói và cách bạn thực sự thể hiện), điều này cản trở bạn đạt được mục tiêu của mình như thế nào?\r\nKhám phá những phương pháp sử dụng giọng nói nhằm thu hút người nghe.\r\nHọc cách điều chỉnh phong cách nói để bạn thể hiện được dáng vẻ lãnh đạo chân thực nhất khi tiếp cận với mọi đối tượng.\r\nVượt qua rào cản tinh thần để nói một cách tự tin và hấp dẫn trên sân khấu, trên máy ảnh hoặc thậm chí trên điện thoại.\r\nThực hành cách kể chuyện lôi cuốn, đưa dữ liệu cuộc sống của bạn vào các bài thuyết trình.\r\nTìm hiểu phương pháp kết hợp tất cả các phần này lại với nhau giúp phản chiếu hình ảnh lãnh đạo tốt nhất, tối đa hóa ảnh hưởng và tác động tích cực của bạn.'),
(6, 'Marketing căn bản', 'Khoa Quản trị Kinh doanh - HVNH', '2.png', '30.000', 9, 4, '2019-03-09 17:12:54', 'Học viện Ngân Hàng', 'Các nhà quản lý luôn là những người rất giỏi giang, khéo léo trong việc truyền đạt thông tin, khơi gợi cảm hứng làm việc từ nhân viên của mình. Tuy nhiên, không phải “ông sếp” nào cũng có khả năng dàn xếp những mối bất hoà mỗi khi có xung đột trong nội bộ công ty. Cuốn sách Nghệ thuật giải quyết các vấn đề trong giao tiếp sẽ giúp bạn đọc xử lý vấn đề trên một cách triệt để. Có một thống kê trên thế giới đã chỉ ra rằng 85% những người thành công là nhờ vào giao tiếp, chỉ có 15% là nhờ vào năng lực chuyên môn. Bởi vậy, cũng không quá ngạc nhiên khi khẳng định rằng “giao tiếp là cánh cửa quan trọng để dẫn tới thành công”.\r\n\r\nHiểu được tầm quan trọng của giao tiếp trong cuộc sống, Alpha Books đã xuất bản rất nhiều đầu sách cung cấp cho bạn đọc những phương pháp giao tiếp hiệu quả. Trong đó, cuốn sách mới nhất sắp được ra mắt là cuốn Nghệ thuật giải quyết các vấn đề trong giao tiếp – một cuốn sách thú vị tiếp tục cung cấp những giải pháp hữu ích và mới mẻ về giao tiếp cho tất cả mọi người, và đặc biệt là cho những người hoạt động trong lĩnh vực kinh doanh.\r\n\r\nVới lối viết dễ hiểu và hấp dẫn, cùng minh chứng của hàng loạt những nhà quản lý nổi tiếng thế giới, cuốn Nghệ thuật giải quyết các vấn đề trong giao tiếp của tác giả Nannette Carroll – một thành viên có năng lực hàng đầu trong Hiệp hội quản lý Hoa Kỳ – sẽ cung cấp cho bạn những giải pháp hiệu quả để bạn làm việc với đối tác và nhân viên của mình. Đó là những kinh nghiệm quý báu để giữ vững các mối quan hệ, trau dồi kĩ năng lắng nghe, cách đưa ra những phản hồi hữu ích để khuyến khích nhân viên hợp tác, phương pháp để hiệu quả hóa việc ủy nhiệm, và những cải tiến để nhanh chóng biến ý kiến thành hành động thực tế'),
(7, 'Kỹ năng giao tiếp và thuyết trình ', 'Khoa Quản trị Kinh doanh - HVNH', '4.png', '40.000', 9, 44, '2009-05-15 17:16:48', 'Học viện Ngân Hàng', 'Nghệ thuật giao tiếp để thành công hướng tới mọi đối tượng độc giả, dù là sinh viên, nhân viên bán hàng, doanh nhân, nhà quản lý, chính trị gia hay người nội trợ hoặc bất cứ ai muốn kiểm soát các mối quan hệ, thu nhập hay cuộc đời họ theo cách hiệu quả hơ\r\n\r\nHọ là người có công việc tốt nhất, có người bạn đời tuyệt vời nhất, có nhiều bạn bè tốt và có tài khoản thật lớn trong ngân hàng.\r\n\r\nVì sao họ đạt được những điều đó? Phải chăng họ có đôi tay của vua midas chạm vào bất cứ đâu mọi thứ đều biến thành vàng? Hay họ được ban tặng nhiều hơn? Không phải vậy. Nhiều người trong số họ không hề thông minh hơn, thậm chí cũng chẳng ưa nhìn hơn bạn! Sự thật những người thành đạt như vậy thường có khả năng giao tiếp, ứng xử khéo léo hơn người khác. Sự thật khác có thể khiến bạn ngạc nhiên là ai trong chúng ta cũng tiềm ẩn khả năng này, chỉ có điều là người có nhiều, người có ít mà thôi.\r\n\r\nTrong Nghệ thuật giao tiếp để thành công, với 92 thủ thuật đơn giản mà hiệu quả, Leil Lowndes sẽ giúp bạn khám phá và rèn luyện các kỹ năng để:\r\n\r\nTạo một khởi đầu ấn tượng và gặp được những người bạn muốn;\r\nHòa nhập linh hoạt vào bất cứ nhóm nào, dù giữa bạn và họ ít tương đồng đến đâu;\r\nSử dụng ngôn ngữ cơ thể để lôi cuốn người nghe;\r\nTrở thành nhân vật trung tâm tại mọi bữa tiệc;\r\nLuôn tự tin, đáng tin cậy và gây ảnh hưởng ở mọi nơi mà bạn đến.'),
(8, 'Quản trị học', 'Khoa Quản trị Kinh doanh - HVNH', '3.png', '30.000', 9, 8, '2017-09-08 17:16:48', 'Học viện Ngân Hàng', 'Trí thông minh xã hội là việc hòa nhập, thu hút mọi người và khiến sự giao tiếp xã hội đem lại lợi ích cho bạn, thay vì cản trở bạn đạt được những mục tiêu của mình. Nói cách khác, sở hữu trí thông minh xã hội sẽ giúp bạn được yêu mến hơn, tăng cường vị thế của bạn trong cộng đồng và tạo điều kiện thuận lợi để bạn vươn tới nhiều thành công trong cuộc sống.\r\n\r\nCuốn sách này cung cấp các chiến thuật đã được khoa học chứng minh để mỗi cá nhân tăng cường trí thông minh xã hội của mình. Hầu hết các phương pháp có trong sách sẽ liên quan ít nhiều tới những cách thức thời nguyên thủy - những phương pháp đầy bản năng mà con người đã tận dụng để thống trị thế giới.\r\n\r\nCuốn sách”Quản trị học” giúp độc giả:\r\n\r\nTrở nên dễ mến một cách chân thành, tạo dựng được ấn tượng tốt và không ngại ngần trong các tình huống giao tiếp xã hội.\r\nXây dựng nên những mối quan hệ tốt đẹp, lành mạnh và sâu sắc cho tất cả các bên, bất kể đó là các gắn kết giữa cộng sự, bạn bè, người thân hay người yêu.\r\nHiểu rõ những cảm xúc của bản thân, nắm bắt được những cảm nhận của mọi người để từ đó điều chỉnh hợp lý, tạo ra những tương tác giàu ý nghĩa.\r\nMở ra những cơ hội quý giá để hiện thực hóa các mục tiêu trong cuộc sống.'),
(9, '65 Tests - reading', 'Khoa Ngôn ngữ Anh - HVNH', '65 Tests - reading.png', '20.000', 8, 18, '2020-12-20 15:31:45', 'Nhà xuất bản Thanh niên', 'There is a super famous comic book series that I am sure most of people in all over the world know, and it is Doraemon. It started as a simple series for children which took a small part in the magazine. However, it had surprisingly created a big wave which even reached out to the whole world. The story is about a robot cat from the future who has to come back to the past to help a small boy to fix his miserable life. That boy is Nobita – a slow and clumsy boy. Together they been through a lot of interesting things in the daily life as well as thrilling adventures. Doraemon has a small pocket on his belly, but actually it is a magic pocket which can contain countless of things. That is where he stores all of his gadgets from the future, and they help Nobita to overcome the difficulties in his life. Besides the two main characters, Nobita has other friends such as Shizuka, Takeshi, Suneo, Doremi, Dekisugi and many more. Shizuka is Nobita’s crush, and lately she becomes his wife. Takeshi – or also known as Jaian – is the one who always bully Nobita for his silliness, but sometimes he also stands out to protect his friends and family. Suneo is a rich kid, and he is the best assistant of Jaian when bullying Nobita. They fight a lot, but they are kids after all. The comic is not just only a form of entertainment, but it also has many valuable lessons about life. We can learn how to treasure friendship, protect the environment, and stay away from bad things after reading it. Doraemon is my favorite book, and I think there are a lot of people out there also love it like me.'),
(10, '145 Tests', 'Khoa Ngôn ngữ Anh - HVNH', '145 Tests.png', '30.000', 8, 30, '2020-10-29 15:31:45', 'Nhà xuất bản Thanh niên', 'The book is about three delinquents who were running away from their wrongdoings then accidentally found an old house and hid there for the night. The house turned out to be an abandoned general store where people could seek advice for their troubles by leaving a letter in the mailbox. Miracle happened when the time line somehow switched and letters from 30 years ago were delivered to them. Although none of them ever seriously considered others’ problems, something from the inside urged them to write responses to the troubled people, on behalf of Namiya – the old owner. “Miraculous” is exactly how I want to describe this book. No need for dogmatic lessons, it presents the value of kindness and compassion through different short stories that are linked perfectly together and leaves me hopeful about human nature. The past, present and future are combined flexibly, which creates many a surprise to me. How did the letters change people’s lives? Could the delinquents - whose past was covered by darkness – be awoken and open their hearts to heal the grieving souls? The story presents an open ending but I have got the answer of my own. To any book lovers especially those who have interest in soothing and touching stories, “The miracle of the Namiya general store” by Higashino Keigo is the one that should not be missed.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hoa_don`
--
ALTER TABLE `tbl_hoa_don`
  ADD PRIMARY KEY (`hoa_don_id`);

--
-- Indexes for table `tbl_khoa`
--
ALTER TABLE `tbl_khoa`
  ADD PRIMARY KEY (`khoa_id`);

--
-- Indexes for table `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  ADD PRIMARY KEY (`san_pham_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hoa_don`
--
ALTER TABLE `tbl_hoa_don`
  MODIFY `hoa_don_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_khoa`
--
ALTER TABLE `tbl_khoa`
  MODIFY `khoa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_san_pham`
--
ALTER TABLE `tbl_san_pham`
  MODIFY `san_pham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
