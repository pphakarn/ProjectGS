-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 04:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cartTotal` double NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `orderedById` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(3, 'เครื่องสำอาง', '2025-01-08 02:10:14.844', '2025-01-08 02:10:14.844'),
(4, 'บำรุงผิว', '2025-01-08 02:10:20.925', '2025-01-08 02:10:20.925'),
(5, 'บำรุงผิวหน้า', '2025-01-08 02:10:26.286', '2025-01-08 02:10:26.286'),
(6, 'อาหารเสริม', '2025-01-08 02:10:32.727', '2025-01-08 02:10:32.727');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `asset_id` varchar(191) NOT NULL,
  `public_id` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `secure_url` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `asset_id`, `public_id`, `url`, `secure_url`, `createdAt`, `updatedAt`, `productId`) VALUES
(1, 'bc864ec28c8a6d1d024877d64b830df8', 'Ecom2024/Roitai-1736320803171', 'http://res.cloudinary.com/dhy1xla8v/image/upload/v1736320806/Ecom2024/Roitai-1736320803171.jpg', 'https://res.cloudinary.com/dhy1xla8v/image/upload/v1736320806/Ecom2024/Roitai-1736320803171.jpg', '2025-01-08 07:20:18.428', '2025-01-08 07:20:18.428', 8),
(2, '1902048f41cae8ddbbb7e87df835bc37', 'Ecom2024/Roitai-1736403997538', 'http://res.cloudinary.com/dhy1xla8v/image/upload/v1736403999/Ecom2024/Roitai-1736403997538.jpg', 'https://res.cloudinary.com/dhy1xla8v/image/upload/v1736403999/Ecom2024/Roitai-1736403997538.jpg', '2025-01-09 06:26:42.627', '2025-01-09 06:26:42.627', 9),
(3, '21cd90000a125804e0f4406358500c31', 'Ecom2024/Roitai-1736404165151', 'http://res.cloudinary.com/dhy1xla8v/image/upload/v1736404167/Ecom2024/Roitai-1736404165151.jpg', 'https://res.cloudinary.com/dhy1xla8v/image/upload/v1736404167/Ecom2024/Roitai-1736404165151.jpg', '2025-01-09 06:29:30.166', '2025-01-09 06:29:30.166', 10),
(4, 'f2dfe0c1f002fb7e98a6668417e5ac09', 'Ecom2024/Roitai-1736924111075', 'http://res.cloudinary.com/dhy1xla8v/image/upload/v1736924113/Ecom2024/Roitai-1736924111075.jpg', 'https://res.cloudinary.com/dhy1xla8v/image/upload/v1736924113/Ecom2024/Roitai-1736924111075.jpg', '2025-01-15 06:55:20.115', '2025-01-15 06:55:20.115', 12),
(5, 'a7c026255510e1c71426c6b4361b1b7a', 'Ecom2024/Roitai-1736924139534', 'http://res.cloudinary.com/dhy1xla8v/image/upload/v1736924143/Ecom2024/Roitai-1736924139534.jpg', 'https://res.cloudinary.com/dhy1xla8v/image/upload/v1736924143/Ecom2024/Roitai-1736924139534.jpg', '2025-01-15 07:02:32.484', '2025-01-15 07:02:32.484', 13);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `cartTotal` double NOT NULL,
  `orderStatus` varchar(191) NOT NULL DEFAULT 'Not Process',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `orderedById` int(11) NOT NULL,
  `stripePaymentId` varchar(191) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `currentcy` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `cartTotal`, `orderStatus`, `createdAt`, `updatedAt`, `orderedById`, `stripePaymentId`, `amount`, `status`, `currentcy`) VALUES
(1, 89, 'Completed', '2025-01-13 05:37:30.352', '2025-01-15 07:02:45.128', 3, 'pi_3QggK6IDzrqM77Q61jd6UI5F', 89, 'succeeded', 'thb'),
(2, 490, 'Not Process', '2025-01-16 04:11:36.034', '2025-01-16 04:11:36.034', 3, 'pi_3QhkPsIDzrqM77Q618gmpMUC', 490, 'succeeded', 'thb'),
(3, 100, 'Not Process', '2025-01-21 03:32:51.599', '2025-01-21 03:32:51.599', 2, 'pi_3QjYCWIDzrqM77Q60b4NEDvy', 100, 'succeeded', 'thb');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `price` double NOT NULL,
  `sold` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `categoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `price`, `sold`, `quantity`, `createdAt`, `updatedAt`, `categoryId`) VALUES
(8, 'MizuMi Peptide Acne Gel', 'เจลแต้มสิวเปปไทด์ สูตรเร่งด่วน แรงและเร็ว!', 95, 0, 10, '2025-01-08 07:15:16.036', '2025-01-08 07:20:18.428', 5),
(9, 'Sasi Acne Sol Comfort Powder', 'แป้งอัดแข็ง ศศิ แอคเน่ โซล คอมฟอร์ท พาวเดอร์', 89, 1, 9, '2025-01-09 06:26:42.627', '2025-01-13 05:37:30.390', 3),
(10, 'WINK WHITE XS PROTEIN', 'เวย์โปรตีน ISOLATE CONCENTRATE 100% PREMIUM FROM USA โปรตีนสูง 23 G.', 490, 1, 9, '2025-01-09 06:29:17.552', '2025-01-16 04:11:36.041', 6),
(12, 'VASELINE HEALTHY BRIGHT UV E', 'วาสลีน เฮลธี ไบรท์ ยูวี เอ็กซ์ตร้า ไบร์ทเทนนิ่ง+ กลูต้า เซราไมด์ โลชั่น 300 มล.', 209, 0, 15, '2025-01-15 06:55:20.115', '2025-01-15 06:55:20.115', 4),
(13, 'JELLY FIBER-Dietary Supplement', 'ไฟเบอร์ธรรมชาติ 100% ไม่ใช้สารเคมีฟีลเหมือนกินกากใยผักผลไม้ในรูปแบบผงชง', 159, 0, 10, '2025-01-15 07:02:32.484', '2025-01-15 07:02:32.484', 6);

-- --------------------------------------------------------

--
-- Table structure for table `productoncart`
--

CREATE TABLE `productoncart` (
  `id` int(11) NOT NULL,
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productonorder`
--

CREATE TABLE `productonorder` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productonorder`
--

INSERT INTO `productonorder` (`id`, `productId`, `orderId`, `count`, `price`) VALUES
(2, 10, 2, 1, 490);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `picture` varchar(191) DEFAULT NULL,
  `role` varchar(191) NOT NULL DEFAULT 'user',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `address` varchar(191) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `picture`, `role`, `enabled`, `address`, `createdAt`, `updatedAt`) VALUES
(2, 'pim@pim.com', '$2a$10$V86jNzJopenDeLNupNnuReo4BuvkgaARXCNo0BxMmCKFO3ZrTLlcW', NULL, NULL, 'admin', 1, 'นนทบุรี', '2025-01-08 02:03:27.608', '2025-01-21 03:32:26.601'),
(3, 'pi@pim.com', '$2a$10$UrcpTCqIowvAiaE2KEaE7eZ9HELvSveJUArmOf/NcgU2hRPp3YptW', NULL, NULL, 'user', 1, 'นนทบุรี\n', '2025-01-08 07:22:07.945', '2025-01-16 04:10:47.178');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('23775615-14e2-4147-a299-89fd2c513e84', 'a1889df369b65b075562928fa6e10bc7b2a55bc66a2e6b0e2aae647e9491e61e', '2025-01-07 05:57:46.718', '20250107055746_ecom', NULL, NULL, '2025-01-07 05:57:46.091', 1),
('79aca75c-9848-4f0e-8f32-b775fe6169e4', '101d7ae9bd406fd44e540cf92abe941fcdde86b9a4c2da9e7a40f17797f801a8', '2025-01-07 12:10:25.218', '20250107121025_updatecategory_id', NULL, NULL, '2025-01-07 12:10:25.061', 1),
('e364f4b7-1625-43e0-9ff7-7f226144869c', 'f79beaa5819e2acee83bcbdb8a80d0fab54a75996b97a83ee460d01742289408', '2025-01-07 12:01:29.343', '20250107120129_make_category_mandatory', NULL, NULL, '2025-01-07 12:01:29.178', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Cart_orderedById_fkey` (`orderedById`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Image_productId_fkey` (`productId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_orderedById_fkey` (`orderedById`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_categoryId_fkey` (`categoryId`);

--
-- Indexes for table `productoncart`
--
ALTER TABLE `productoncart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductOnCart_cartId_fkey` (`cartId`),
  ADD KEY `ProductOnCart_productId_fkey` (`productId`);

--
-- Indexes for table `productonorder`
--
ALTER TABLE `productonorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductOnOrder_productId_fkey` (`productId`),
  ADD KEY `ProductOnOrder_orderId_fkey` (`orderId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `productoncart`
--
ALTER TABLE `productoncart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `productonorder`
--
ALTER TABLE `productonorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `Cart_orderedById_fkey` FOREIGN KEY (`orderedById`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `Image_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `Order_orderedById_fkey` FOREIGN KEY (`orderedById`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `Product_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `productoncart`
--
ALTER TABLE `productoncart`
  ADD CONSTRAINT `ProductOnCart_cartId_fkey` FOREIGN KEY (`cartId`) REFERENCES `cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOnCart_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `productonorder`
--
ALTER TABLE `productonorder`
  ADD CONSTRAINT `ProductOnOrder_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOnOrder_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
