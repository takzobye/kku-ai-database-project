CREATE DATABASE IF NOT EXISTS `kku_ai_project`;
USE `kku_ai_project`;

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `travel_id` int(11) DEFAULT NULL,
  `travel_type_id` int(11) DEFAULT NULL,
  `travel_region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `comment` (`id`, `content`, `travel_id`, `travel_type_id`, `travel_region_id`) VALUES
	(1, 'สวยและอลังการมาก เหมือนได้ย้อนเวลากลับไปยุคขอม แนะนำให้มาเที่ยวช่วงเช้าหรือเย็น อากาศจะไม่ร้อนเกินไป', 1, 4, 1),
	(2, 'ป็นสถานที่ศักดิ์สิทธิ์ที่ต้องมาสักครั้งในชีวิต บรรยากาศสงบ สวยงามมาก โดยเฉพาะช่วงเทศกาลบุญ', 2, 5, 1),
	(3, 'ดินขึ้นเหนื่อยแต่คุ้มสุดๆ! วิวสวย อากาศดี ธรรมชาติบริสุทธิ์สุดๆ ใครชอบเดินป่าต้องลองสักครั้ง', 3, 1, 1),
	(4, 'น้ำใส เย็นสบาย เหมาะกับการมาพักผ่อนในวันหยุด แต่ช่วงหน้าฝนน้ำแรงมาก ต้องระวังหน่อย', 4, 3, 1),
	(5, 'ของกินเยอะมาก ราคาน่ารัก บรรยากาศคึกคัก เหมาะกับการมาเดินเล่นยามค่ำคืน', 5, 5, 1),
	(6, 'พระมหาธาตุ 9 ชั้นสวยมาก ขึ้นไปชั้นบนสุดแล้วเห็นวิวเมืองขอนแก่นแบบ 360 องศา แนะนำเลย', 6, 5, 1),
	(7, 'ของกินอร่อย ราคาดี ล่องเรือชมหิ่งห้อยตอนกลางคืนโรแมนติกสุดๆ แต่คนค่อนข้างเยอะช่วงวันหยุด', 7, 5, 5),
	(8, 'งียบสงบกว่าหลายๆ เกาะ น้ำทะเลใส กิจกรรมแน่นทั้งดำน้ำ เล่นน้ำตก ปีนเขา แนะนำสำหรับสายธรรมชาติ', 8, 2, 4),
	(9, 'ะเลสวย น้ำใส เดินทางสะดวกจากกรุงเทพฯ เหมาะทั้งมาพักผ่อนและปาร์ตี้คืนวันศุกร์ สนุกสุดๆ', 9, 2, 3),
	(10, 'อากาศเย็นตลอดปี ยิ่งหน้าหนาวนี่สุดฟิน หมอกสวย วิวดี แวะเที่ยวพระมหาธาตุเจดีย์แล้วคุ้มค่ามาก', 10, 3, 2),
	(11, 'โบราณสถานขอมที่ใหญ่ที่สุดในไทย มีสถาปัตยกรรมงดงามและเป็นต้นแบบของนครวัดในกัมพูชา', 1, 4, 1),
	(12, 'พระธาตุเก่าแก่คู่บ้านคู่เมืองของนครพนม เชื่อกันว่ามีพระบรมสารีริกธาตุบรรจุอยู่ เป็นศูนย์รวมศรัทธาของชาวพุทธ', 2, 5, 1),
	(13, 'สถานที่ยอดนิยมของสายเดินป่า มีจุดชมวิวผาหล่มสัก น้ำตกสวยงาม และอากาศเย็นสบายตลอดปี', 3, 1, 1),
	(14, 'ตลาดน้ำชื่อดังที่มีบรรยากาศย้อนยุค อาหารทะเลสดๆ และกิจกรรมล่องเรือชมหิ่งห้อยยามค่ำคืน', 7, 5, 5),
	(15, 'เกาะขนาดใหญ่ในตราด มีชายหาดสวย น้ำทะเลใส และกิจกรรมมากมาย เช่น ดำน้ำ ดูปะการัง น้ำตก และเดินป่า', 8, 2, 4),
	(16, 'กาะยอดนิยมของระยอง ทะเลใส หาดทรายขาว เดินทางง่ายจากกรุงเทพฯ เหมาะทั้งพักผ่อนและปาร์ตี้ริมชายหาด', 9, 2, 3),
	(17, 'อดเขาที่สูงที่สุดในประเทศไทย อากาศเย็นตลอดปี มีจุดชมทะเลหมอกสวยงามและพระมหาธาตุเจดีย์คู่', 10, 3, 2);

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `region` (`id`, `name`) VALUES
	(1, 'อีสาน'),
	(2, 'เหนือ'),
	(3, 'ใต้'),
	(4, 'ตะวันออก'),
	(5, 'กลาง');

CREATE TABLE IF NOT EXISTS `travel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `descript` longtext DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `travel` (`id`, `name`, `price`, `location`, `image`, `descript`, `type_id`, `region_id`) VALUES
	(1, 'ปราสาทหินพิมาย', 1000.00, 'บุรีรัมย์', 'https://upload.wikimedia.org/wikipedia/commons/0/0c/Phimai_%28III%29.jpg', 'โบราณสถานขอมที่ใหญ่ที่สุดในไทย ตั้งอยู่ที่นครราชสีมา มีสถาปัตยกรรมแบบขอมโบราณคล้ายปราสาทหินพนมรุ้ง', 4, 1),
	(2, 'วัดพระธาตุพนม', 1000.00, 'นครพนม', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyM-yCOC2PAE9mlYLnNXkA0XkY7-cpYUQ3Ig&s', 'พระธาตุศักดิ์สิทธิ์แห่งนครพนม เป็นปูชนียสถานคู่บ้านคู่เมืองของชาวไทยและลาว เชื่อกันว่ามีพระบรมสารีริกธาตุของพระพุทธเจ้าบรรจุอยู่', 5, 1),
	(3, 'อุทยานแห่งชาติภูกระดึง', 2500.00, 'เลย', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlS0i0G42kuGH_eInVOyeRpI99C-8_W9T5qw&s', 'สวรรค์ของนักเดินป่าในจังหวัดเลย มีธรรมชาติอันอุดมสมบูรณ์ จุดชมวิวผาหล่มสักที่สวยงาม และอากาศเย็นสบายตลอดปี', 1, 1),
	(4, 'น้ำตกตาดโตน', 2000.00, 'ชัยภูมิ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQyRLdLn1jkF4AQ7Z2U3NNJQ0iXwTAd6vk7g&s', 'น้ำตกขนาดใหญ่ในชัยภูมิ โดดเด่นด้วยลานหินกว้างและสายน้ำที่ไหลแรงตลอดฤดูฝน เหมาะแก่การพักผ่อนและเล่นน้ำ', 3, 1),
	(5, 'ตลาดไนท์บาซาร์ ขอนแก่น', 1500.00, 'ขอนแก่น', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbTdo0iEPXBv_TRP68ZcTAlZn1kU5Hu_RERA&s', 'ตลาดกลางคืนยอดนิยมในขอนแก่น รวมของกิน ของฝาก และสินค้าพื้นเมือง บรรยากาศคึกคักทุกค่ำคืน', 5, 1),
	(6, 'วัดหนองแวง', 500.00, 'ขอนแก่น', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs_TsGNXDoRnaURZL7JQf5mp9ghuFRGmP92w&s', 'วัดสำคัญของขอนแก่น มีพระมหาธาตุแก่นนคร 9 ชั้น ที่มีสถาปัตยกรรมงดงามและเป็นจุดชมวิวเมืองขอนแก่น', 5, 1),
	(7, 'ตลาดน้ำอัมพวา', 3000.00, 'สมุทรสงคราม', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS-QCav8AdmRoFo2TvUeRrAj8v3HvnBZixtg&s', 'ตลาดน้ำชื่อดังในสมุทรสงคราม มีเรือขายอาหารริมคลอง บรรยากาศย้อนยุค และกิจกรรมล่องเรือชมหิ่งห้อยยามค่ำคืน', 5, 5),
	(8, 'เกาะช่าง', 15000.00, 'ตราด', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrk33O7nABbLE1FjWkbkDGOD_7YbuFOSxoqw&s', 'เกาะขนาดใหญ่ในตราด มีหาดทรายขาว น้ำทะเลใส และธรรมชาติอุดมสมบูรณ์ เหมาะสำหรับการดำน้ำและพักผ่อนแบบชิลๆ', 2, 4),
	(9, 'เกาะเสม็ด', 10000.00, 'ระยอง', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzFq-w53z6kHAp0t0mebhDVNFgUsi0dMBEuw&s', ' เกาะสวยของระยอง มีหาดทรายขาวละเอียด น้ำทะเลใส และเป็นจุดหมายยอดฮิตสำหรับการพักผ่อนและปาร์ตี้ริมทะเล', 2, 3),
	(10, 'ดอยอินทนนท์', 5000.00, 'เชียงใหม่', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjSLnkxPYCu_QNZdFJIzH_rj9ke4YDCcYfHQ&s', 'ยอดเขาสูงที่สุดในประเทศไทย อยู่ที่เชียงใหม่ มีอากาศเย็นตลอดปี จุดชมวิวพระอาทิตย์ขึ้นสวยงาม และเป็นที่ตั้งของพระมหาธาตุนภเมทนีดล-นภพลภูมิสิริ', 3, 2);

CREATE TABLE IF NOT EXISTS `travel_has_user` (
  `travel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `travel_has_user` (`travel_id`, `user_id`) VALUES
	(1, 1),
	(3, 1),
	(3, 5),
	(4, 1),
	(2, 2),
	(5, 2),
	(4, 3),
	(10, 4),
	(6, 5),
	(8, 7),
	(7, 8),
	(3, 9),
	(1, 10),
	(9, 10),
	(6, 6),
	(6, 9),
	(4, 7),
	(5, 3),
	(10, 9),
	(5, 6);

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `type` (`id`, `name`) VALUES
	(1, 'การผจญภัย'),
	(2, 'ชายหาด'),
	(3, 'ภูเขา'),
	(4, 'ประวัติศาสตร์'),
	(5, 'ทางวัฒนธรรม');

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `create_at`) VALUES
	(1, 'wawa', 'wawa@gmail.com', '0894123212', '2025-03-15'),
	(2, 'vee', 'vee@gmail.com', '0831562763', '2025-03-15'),
	(3, 'kong', 'kong@gmail.com', '0818873244', '2025-03-15'),
	(4, 'nice', 'nice@gmail.com', '0893215546', '2025-03-15'),
	(5, 'shi', 'shi@gmail.com', '0873452463', '2025-03-15'),
	(6, 'anda', 'anda@gmail.com', '0835643215', '2025-03-15'),
	(7, 'kwan', 'kwan@gmail.com', '0874563252', '2025-03-15'),
	(8, 'joy', 'joy@gmail.com', '0916754765', '2025-03-15'),
	(9, 'prang', 'prang@gmail.com', '0896354267', '2025-03-15'),
	(10, 'ying', 'ying@gmail.com', '0895467364', '2025-03-15');

CREATE TABLE `view_frequent_travelers` (
	`user_name` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`travel_count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `view_popular_regions` (
	`region_name` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`visitor_count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `view_popular_travel` (
	`travel_name` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`visitor_count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `view_popular_travel_types` (
	`type_name` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`visitor_count` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `view_travel_by_price` (
	`id` INT(11) NOT NULL,
	`name` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`price` DECIMAL(10,2) NULL,
	`location` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`image` LONGTEXT NULL COLLATE 'utf8mb4_general_ci',
	`descript` LONGTEXT NULL COLLATE 'utf8mb4_general_ci',
	`type_id` INT(11) NULL,
	`region_id` INT(11) NULL
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `view_frequent_travelers`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_frequent_travelers` AS SELECT u.name AS user_name, COUNT(thu.travel_id) AS travel_count 
FROM user u 
JOIN travel_has_user thu ON u.id = thu.user_id 
GROUP BY u.id, u.name 
ORDER BY travel_count DESC 
;

DROP TABLE IF EXISTS `view_popular_regions`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_popular_regions` AS SELECT r.name AS region_name, COUNT(thu.user_id) AS visitor_count 
FROM region r 
JOIN travel t ON r.id = t.region_id 
JOIN travel_has_user thu ON t.id = thu.travel_id 
GROUP BY r.id, r.name 
ORDER BY visitor_count DESC 
;

DROP TABLE IF EXISTS `view_popular_travel`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_popular_travel` AS SELECT t.name AS travel_name, COUNT(thu.user_id) AS visitor_count 
FROM travel t 
JOIN travel_has_user thu ON t.id = thu.travel_id 
GROUP BY t.id, t.name 
ORDER BY visitor_count DESC 
;

DROP TABLE IF EXISTS `view_popular_travel_types`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_popular_travel_types` AS SELECT ty.name AS type_name, COUNT(thu.user_id) AS visitor_count 
FROM type ty 
JOIN travel t ON ty.id = t.type_id 
JOIN travel_has_user thu ON t.id = thu.travel_id 
GROUP BY ty.id, ty.name 
ORDER BY visitor_count DESC 
;

DROP TABLE IF EXISTS `view_travel_by_price`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_travel_by_price` AS SELECT * FROM travel 
ORDER BY price ASC 
;