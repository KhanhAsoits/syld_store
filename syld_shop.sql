-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 07:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `syld_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` varchar(255) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` varchar(255) NOT NULL,
  `brand_desc` varchar(255) DEFAULT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_slug` varchar(255) DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_desc`, `brand_logo`, `brand_name`, `brand_slug`, `create_at`, `state`, `update_at`) VALUES
('001a88d5-4fb1-459d-8dc8-6fb55a4826eb', 'Louis Vuitton Malletier, commonly known as Louis Vuitton is a French luxury fashion house and company founded in 1854 by Louis Vuitton.', '/assets/uploads/louis vuitton/006cc7dd-e371-4609-898e-a808616318ba.png', 'Louis Vuitton', 'louis-vuitton', '2022-10-29 17:23:42.000000', b'1', '2022-10-29 17:23:42.000000'),
('2f89b595-73d4-4824-b899-00d399276c09', 'Hermès International SA is a French luxury designer founded in 1837. The company specializes in leather goods, lifestyle accessories, home furniture, fragrances, jewelry, watches and tailoring. available .', '/assets/uploads/hermes/be4a1a39-74b4-4c1c-8c11-9c53ba6bb31c.jpg', 'Hermes', 'hermes', '2022-10-29 17:22:34.000000', b'1', '2022-10-29 17:22:34.000000'),
('4cc9f4d6-8a31-4f3f-b16d-485e47e8da8c', 'Adidas ltd AG is a German sports equipment manufacturer, a member of the adidas Group.', '/assets/uploads/adidas/1db2b2d8-b79b-41f2-b40b-8cf1884418b3.jpg', 'Adidas', 'adidas', '2022-10-29 17:19:56.000000', b'1', '2022-10-29 17:19:56.000000'),
('514bb1be-1767-4070-bc4d-19eec871bfb4', 'Vascara is this Vietnamese fashion brand that takes care of customers in the shopping experience, not inferior to global brands in the fashion accessories market.', '/assets/uploads/vascara/dca3726a-808f-4706-9e1b-6f5582904968.png', 'VASCARA', 'vascara', '2022-10-29 17:29:09.000000', b'1', '2022-10-29 17:29:09.000000'),
('5667e249-bc86-47da-951d-c76ba1cfffc0', 'Canifa is a prominent Vietnamese fashion brand focusing on product lines for couples and families. Therefore, the spiritual value as well as the uniformity in each product of Canifa are always focused to bring many positive inspirations.', '/assets/uploads/canifa/0913160b-af4a-49f3-b616-182b1dc47cc9.jpg', 'CANIFA', 'canifa', '2022-10-29 17:30:10.000000', b'1', '2022-10-29 17:30:10.000000'),
('589f4c6c-c431-40c3-b49a-1cfe5ee6ba6c', 'Nike, Inc. is an American multinational corporation engaged in the design, development, manufacturing, marketing, and sales of footwear, clothing, accessories, equipment and related services. related to sports.', '/assets/uploads/nike/61ec1cea-6d12-4b0b-b5e9-e726a28f0020.jpg', 'Nike', 'nike', '2022-10-29 17:24:38.000000', b'1', '2022-10-29 17:24:38.000000'),
('5b81bcf4-fddd-45bf-b37b-31d0eae81565', 'Christian Dior S.E. commonly known as Dior, is a famous French luxury goods company controlled and operated by billionaire Bernard Arnault.', '/assets/uploads/dior/5e16bb1c-a9b7-4e58-a786-c0765010c603.jpg', 'Dior', 'dior', '2022-10-29 17:20:49.000000', b'1', '2022-10-29 17:20:49.000000'),
('6e6c93d0-23da-4c34-9a0f-b4a0c20457dc', 'Adam Store is a Vietnamese men\'s fashion brand famous for many high-quality products. This is a familiar destination for men when they want to learn and choose to buy elegant suits and shirts.', '/assets/uploads/adam store/9ab31d1b-7754-4fa4-90fe-120e27a787c8.jpg', 'ADAM STORE', 'adam-store', '2022-10-29 17:31:53.000000', b'1', '2022-10-29 17:31:53.000000'),
('896f3590-ab28-4fe1-bace-e4fe611683d4', 'Elise is a Vietnamese fashion brand with many years of experience and a nationwide distribution system. This is the favorite destination of women when looking for elegant and gentle fashion clothes.', '/assets/uploads/elise/303623a3-6652-4c0a-9cbb-a142210e7f59.png', 'ELISE', 'elise', '2022-10-29 17:28:19.000000', b'1', '2022-10-29 17:28:19.000000'),
('dc3cca73-baf1-409f-804f-52e922895582', 'Chanel is a French company producing haute couture, as well as ready-to-wear, accessories, perfumes and various luxury goods.', '/assets/uploads/chanel/b3f8254f-3b56-44b2-965d-b2a7e29b37aa.jpg', 'Chanel', 'chanel', '2022-10-29 17:18:48.000000', b'1', '2022-10-29 17:18:48.000000');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` varchar(255) NOT NULL,
  `brand_thumbnail` varchar(255) DEFAULT NULL,
  `card_brand` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(255) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `create_at`, `state`, `update_at`, `user_id`) VALUES
('4b6392e2-e295-49ba-947c-179f58c4bc79', '2022-11-01 17:00:31.000000', b'1', '2022-11-01 17:00:31.000000', '81d25dfb-b665-46c2-8903-a4258f927b77');

-- --------------------------------------------------------

--
-- Table structure for table `cart_product_carts`
--

CREATE TABLE `cart_product_carts` (
  `cart_id` varchar(255) NOT NULL,
  `product_carts_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` varchar(255) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `category_thumbnail` varchar(255) DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_slug`, `category_thumbnail`, `create_at`, `parent_id`, `state`, `update_at`) VALUES
('002eae57-0370-4bb5-a904-4242087f981b', 'Men\'s Fragrances', 'mens-fragrances', '/assets/uploads/mens-fragrances/e6a48676-de44-46c3-a2d9-df1774edd125.jpg', '2022-10-29 17:02:06.000000', '8b07a1f6-9805-4911-a568-3ace7e5f98c7', b'1', '2022-10-29 17:02:06.000000'),
('006a799f-9cc6-419c-a774-c7052be0c51f', 'Schools Shoes', 'schools-shoes', '/assets/uploads/schools-shoes/e5454a7f-7f30-4ef5-93f5-7b97e3fa2182.jpg', '2022-10-29 17:05:17.000000', 'e57d5370-b239-4461-baec-44b350675239', b'1', '2022-10-29 17:05:17.000000'),
('1535ce19-7d50-4e78-8990-6b9a5ecf80b5', 'Hairclip', 'hairclip', '/assets/uploads/hairclip/890fe530-e8ef-4d8c-a5ab-8f056f447f0f.jpg', '2022-10-29 16:53:21.000000', '6c03c352-37f4-46a8-b4a8-b11bb1cab543', b'1', '2022-10-29 16:53:21.000000'),
('1beee9b4-5091-4df0-a6e8-968192dd8a21', 'Sport Shoes', 'sport-shoes', '/assets/uploads/sport-shoes/3a65bbe1-9111-4ac6-b6f5-77122efb63fc.jpg', '2022-10-29 17:04:15.000000', 'e57d5370-b239-4461-baec-44b350675239', b'1', '2022-10-29 17:04:15.000000'),
('1dab9ee1-8636-4f32-9868-a91ac3feb75c', 'Bag', 'bag', '/assets/uploads/bag/bcc19180-55ea-457b-8530-39569d43bb5b.jpg', '2022-10-29 16:54:44.000000', 'e367294e-de35-45be-8284-0e024173e642', b'1', '2022-10-29 16:54:44.000000'),
('22f56025-b8fc-4cd5-8665-a454fb51ca30', 'Shoes Fashion', 'shoes-fashion', '/assets/uploads/shoes-fashion/8830bb03-9f68-414a-b223-cd3a06292a24.jpg', '2022-10-29 17:03:49.000000', 'e57d5370-b239-4461-baec-44b350675239', b'1', '2022-10-29 17:03:49.000000'),
('2afdefa2-70c3-4152-ad2d-5b9f18d5cce1', 'Swimming Glass', 'swimming-glass', '/assets/uploads/swimming-glass/37f73da3-bd36-4328-9abe-d4dafa3abb51.jpg', '2022-10-29 17:01:39.000000', 'fe9558ac-4e5c-4926-b638-aa1e7d2917ab', b'1', '2022-10-29 17:01:39.000000'),
('35bdb5e4-f851-45e6-bd6a-8db0ef6d0589', 'Glasses', 'glasses', '/assets/uploads/glasses/6af2c141-71b4-43a7-8716-ac07e573d5e5.jpg', '2022-10-29 17:00:29.000000', 'fe9558ac-4e5c-4926-b638-aa1e7d2917ab', b'1', '2022-10-29 17:00:29.000000'),
('3ef512ad-75bb-430d-94cd-401917507c6d', 'Chest Strap', 'chest-strap', '/assets/uploads/chest-strap/aed3e562-7d5b-471f-8dc2-0adec7f76c70.jpg', '2022-10-29 16:45:23.000000', 'e367294e-de35-45be-8284-0e024173e642', b'1', '2022-10-29 16:45:23.000000'),
('529aa944-4136-4679-ad67-3356b383aca3', 'Perfume Niche', 'perfume-niche', '/assets/uploads/perfume-niche/01238727-8dda-4e0d-a202-8787ea818ef2.jpg', '2022-10-29 17:12:19.000000', '8b07a1f6-9805-4911-a568-3ace7e5f98c7', b'1', '2022-10-29 17:12:19.000000'),
('571bfbe8-ba64-4a61-a0ab-df45f292f56a', 'Belt', 'belt', '/assets/uploads/belt/ca08a657-8689-4028-bbbd-6c423a7202f8.jpg', '2022-10-29 16:55:10.000000', 'e367294e-de35-45be-8284-0e024173e642', b'1', '2022-10-29 16:55:10.000000'),
('5c067ec6-7b2d-45e4-9133-703019be7328', 'Women\'s Fashion', 'women_fashion', '/assets/uploads/women_fashion/0960c465-29bc-4955-8450-9b3c013ea84a.jpg', '2022-10-29 16:59:26.000000', 'c326b1d1-17b7-486b-99a1-5cecf557fe3c', b'1', '2022-10-29 16:59:26.000000'),
('5d3fa890-53a6-43bb-8683-05fc83ea72c1', 'ChestStrap', 'cheststrap', '/assets/uploads/cheststrap/ddf5cb18-f38e-4d6a-b099-20b024100cfd.jpg', '2022-11-04 07:26:00.000000', '6c03c352-37f4-46a8-b4a8-b11bb1cab543', b'1', '2022-11-04 07:26:00.000000'),
('5d8bab3d-2911-4fdc-9227-e854761a6178', 'Men\'s Fashion', 'mens-fashion', '/assets/uploads/mens-fashion/42d8887d-aa38-43d8-96fd-e583d4db86fb.jpg', '2022-10-29 16:59:11.000000', 'c326b1d1-17b7-486b-99a1-5cecf557fe3c', b'1', '2022-10-29 16:59:11.000000'),
('6c03c352-37f4-46a8-b4a8-b11bb1cab543', 'Jewels', 'jewels', '/assets/uploads/jewels/c012938a-d122-4d83-b308-662b8de4baad.jpg', '2022-10-29 16:42:19.000000', 'parent', b'1', '2022-10-29 16:42:19.000000'),
('8b07a1f6-9805-4911-a568-3ace7e5f98c7', 'Perfume', 'perfume', '/assets/uploads/perfume/2c391dd5-9f0b-403c-b7f6-43e6909954ce.jpg', '2022-10-29 16:42:33.000000', 'parent', b'1', '2022-10-29 16:42:33.000000'),
('941419bc-80ce-4e85-89c8-be2546f1edd2', 'Men\'s underwear', 'mens-underwear', '/assets/uploads/mens-underwear/22e79918-9f4b-4db6-9e05-8d064fc6d46c.jpg', '2022-10-29 17:08:43.000000', 'c326b1d1-17b7-486b-99a1-5cecf557fe3c', b'1', '2022-10-29 17:08:43.000000'),
('9876f4be-9fe0-40b9-b02f-1a323e10245c', 'Sock', 'sock', '/assets/uploads/sock/a9a408b5-95b4-4ac8-809a-4905c713d940.jpg', '2022-10-29 16:55:55.000000', 'e367294e-de35-45be-8284-0e024173e642', b'1', '2022-10-29 16:55:55.000000'),
('a2206bb3-c2b7-483a-8d3a-720e9f17b548', 'Children\'s items', 'childrens-items', '/assets/uploads/childrens-items/46609930-b52d-4d2b-a996-3e190e98780e.jpg', '2022-10-29 17:08:03.000000', 'c326b1d1-17b7-486b-99a1-5cecf557fe3c', b'1', '2022-10-29 17:08:03.000000'),
('a590eff4-1ea3-4a92-b959-84002e07a49c', 'Watch', 'watch', '/assets/uploads/watch/89ddff74-2758-4c64-919f-d82d931daeb9.jpg', '2022-10-29 16:56:48.000000', 'e367294e-de35-45be-8284-0e024173e642', b'1', '2022-10-29 16:56:48.000000'),
('ab27688c-965c-447a-8d71-227e5e33aea5', 'Scarf', 'scarf', '/assets/uploads/scarf/38d10611-8c0d-4bd8-beca-9caf64c97910.jpg', '2022-10-29 16:55:34.000000', 'e367294e-de35-45be-8284-0e024173e642', b'1', '2022-10-29 16:55:34.000000'),
('abe93b9c-3a86-451f-8f1f-19360c488245', 'Choker', 'choker', '/assets/uploads/choker/06679ba9-9586-4c64-af04-64af084b4a7e.jpg', '2022-10-29 16:45:55.000000', '6c03c352-37f4-46a8-b4a8-b11bb1cab543', b'1', '2022-10-29 16:45:55.000000'),
('c326b1d1-17b7-486b-99a1-5cecf557fe3c', 'Clothing Fashion', 'clothing-fashion', '/assets/uploads/clothing-fashion/f28019fc-7805-40bd-b7e3-ba1d1129c211.jpg', '2022-10-29 16:41:40.000000', 'parent', b'1', '2022-10-29 16:41:40.000000'),
('d4b25927-8cc2-4b18-aae9-7ff56e1ef32b', 'barcelet', 'barcelet', '/assets/uploads/barcelet/d4a488f7-c174-4609-8ac9-c625964557db.jpg', '2022-10-29 16:44:52.000000', '6c03c352-37f4-46a8-b4a8-b11bb1cab543', b'1', '2022-10-29 16:44:52.000000'),
('da8954d2-e3d5-4c27-baaf-81e82a687c2e', 'Women\'s Perfume', 'womens-perfume', '/assets/uploads/womens-perfume/7b07ac01-8ff8-4902-a166-860166f031bd.jpg', '2022-10-29 17:03:00.000000', '8b07a1f6-9805-4911-a568-3ace7e5f98c7', b'1', '2022-10-29 17:03:00.000000'),
('db6d2602-f5cf-4edb-bb42-e62e5ffeda5b', 'Earing', 'earing', '/assets/uploads/earing/385abdd4-778b-409b-bd66-80b868a6b0e9.jpg', '2022-10-29 16:52:20.000000', '6c03c352-37f4-46a8-b4a8-b11bb1cab543', b'1', '2022-10-29 16:52:20.000000'),
('e367294e-de35-45be-8284-0e024173e642', 'Accesories Fashion', 'accesories-fashion', '/assets/uploads/accesories-fashion/0695e5eb-fa36-4a37-a4c1-6b3c432add53.jpg', '2022-10-29 16:41:19.000000', 'parent', b'1', '2022-10-29 16:41:19.000000'),
('e57d5370-b239-4461-baec-44b350675239', 'Shoes', 'shoes', '/assets/uploads/shoes/c1215cfa-7924-49ec-ab2c-3ca479c33ab2.jpg', '2022-10-29 16:42:48.000000', 'parent', b'1', '2022-10-29 16:42:48.000000'),
('e6e42453-9c8f-4b09-ad99-f797db02b9cc', 'Healthy Body', 'healthy-body', '/assets/uploads/healthy-body/fded0a44-e193-4140-93d9-b605f830eee0.jpg', '2022-10-29 17:03:25.000000', '8b07a1f6-9805-4911-a568-3ace7e5f98c7', b'1', '2022-10-29 17:03:25.000000'),
('e777d18a-ee2f-4ce5-9f13-bae0c6508aaf', 'Kid\'s Fashion', 'kids-fashion', '/assets/uploads/kids-fashion/d03e48db-f1cb-4f01-9f38-8a544d509036.jpg', '2022-10-29 16:59:56.000000', 'c326b1d1-17b7-486b-99a1-5cecf557fe3c', b'1', '2022-10-29 16:59:56.000000'),
('ecbaca35-84bb-4f16-82cc-7c340d9c7771', 'Slow Glass', 'slow-glass', '/assets/uploads/slow-glass/12721074-2f50-48b0-b3f2-9c8ab098d95e.jpg', '2022-10-29 17:00:54.000000', 'fe9558ac-4e5c-4926-b638-aa1e7d2917ab', b'1', '2022-10-29 17:00:54.000000'),
('eda2e75a-7a39-40ae-b387-e0c60c643a93', 'Ring', 'ring', '/assets/uploads/ring/640b8d61-dadb-40aa-94fa-b85c6c240c29.jpg', '2022-10-29 16:53:45.000000', '6c03c352-37f4-46a8-b4a8-b11bb1cab543', b'1', '2022-10-29 16:53:45.000000'),
('f8b6943e-6da9-42f1-b628-0447bf0b2ed2', 'Women\'s underwear', 'womens-underwear', '/assets/uploads/womens-underwear/b4ccffce-5b48-492d-90fa-b06e9d67a307.jpg', '2022-10-29 17:09:05.000000', 'c326b1d1-17b7-486b-99a1-5cecf557fe3c', b'1', '2022-10-29 17:09:05.000000'),
('fe9558ac-4e5c-4926-b638-aa1e7d2917ab', 'Eyeglass', 'eyeglass', '/assets/uploads/eyeglass/ecc9084d-3f50-42f9-bb4f-f9ff3bbb6275.jpg', '2022-10-29 16:41:58.000000', 'parent', b'1', '2022-10-29 16:41:58.000000');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` varchar(255) NOT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  `color_name` varchar(255) DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `color_code`, `color_name`, `create_at`, `state`, `update_at`) VALUES
('01473d91-08a6-443e-a609-9594ccdb781c', '#e6e6e6', 'new_color_#e6e6e6', '2022-10-29 20:03:00.000000', b'1', '2022-10-29 20:03:00.000000'),
('01cb303c-de38-4e76-ae3d-d657c2b2c34d', '#808080', 'new_color_#808080', '2022-10-29 20:03:00.000000', b'1', '2022-10-29 20:03:00.000000'),
('03998856-9c5f-4bd8-a5fb-fd8ffcdb3670', '#f72008', 'new_color_#f72008', '2022-11-04 09:25:04.000000', b'1', '2022-11-04 09:25:04.000000'),
('04ed4c8d-29fb-4ff5-bc98-c6a49650042c', '#c8ff61', 'new_color_#c8ff61', '2022-11-04 06:56:25.000000', b'1', '2022-11-04 06:56:25.000000'),
('059b3f9d-9c82-4e18-909e-44d57ca97094', '#dbcdd1', 'new_color_#dbcdd1', '2022-11-04 08:06:54.000000', b'1', '2022-11-04 08:06:54.000000'),
('06031408-26b0-4e7e-8781-a7604597f928', '#cdc6c8', 'new_color_#cdc6c8', '2022-11-03 00:27:01.000000', b'1', '2022-11-03 00:27:01.000000'),
('079746c3-ae43-4668-b0d3-c543a2ed8660', '#9c9698', 'new_color_#9c9698', '2022-11-03 00:27:01.000000', b'1', '2022-11-03 00:27:01.000000'),
('0815ae40-d5bf-41cc-b11a-81e762085a7f', '#504e4f', 'new_color_#504e4f', '2022-10-29 20:30:09.000000', b'1', '2022-10-29 20:30:09.000000'),
('08bf51ab-75c4-434e-bcfb-c484047d044e', '#bec374', 'new_color_#bec374', '2022-11-04 07:56:36.000000', b'1', '2022-11-04 07:56:36.000000'),
('0a44b4ea-88c4-4df9-a789-ef39b40faaf0', '#767475', 'new_color_#767475', '2022-10-29 18:03:09.000000', b'1', '2022-10-29 18:03:09.000000'),
('0a9c4e06-7a84-498c-ac9c-e2f6d2052c0e', '#61ffba', 'new_color_#61ffba', '2022-11-04 07:32:12.000000', b'1', '2022-11-04 07:32:12.000000'),
('0b537f11-911f-40f7-802e-5c9273ccf092', '#9d0b37', 'new_color_#9d0b37', '2022-10-29 22:29:06.000000', b'1', '2022-10-29 22:29:06.000000'),
('0b7fe382-b157-4801-b6b0-a648ed868658', '#815f69', 'new_color_#815f69', '2022-11-04 09:07:18.000000', b'1', '2022-11-04 09:07:18.000000'),
('0c3c61c6-df87-434a-a03c-f363cc59e01e', '#efe6e9', 'new_color_#efe6e9', '2022-11-03 16:50:14.000000', b'1', '2022-11-03 16:50:14.000000'),
('0f88551d-6137-4023-b37a-7544d38a852b', '#dcdbdb', 'new_color_#dcdbdb', '2022-11-04 08:31:11.000000', b'1', '2022-11-04 08:31:11.000000'),
('0feef4a3-c4cf-490b-b175-5e622dce10ed', '#a8f28d', 'new_color_#a8f28d', '2022-11-04 06:56:25.000000', b'1', '2022-11-04 06:56:25.000000'),
('1065f2af-89dd-496a-8763-e278574bda72', '#747272', 'new_color_#747272', '2022-11-03 00:30:53.000000', b'1', '2022-11-03 00:30:53.000000'),
('10682960-6ed6-4285-8435-e07bf51591b2', '#8b8486', 'new_color_#8b8486', '2022-11-04 08:27:27.000000', b'1', '2022-11-04 08:27:27.000000'),
('114601fd-3827-474e-874a-10824005e8aa', '#ebe0e3', 'new_color_#ebe0e3', '2022-11-04 07:06:18.000000', b'1', '2022-11-04 07:06:18.000000'),
('11bf8cc6-387a-49c8-9df4-863be4f8696e', '#2c2124', 'new_color_#2c2124', '2022-11-04 07:42:51.000000', b'1', '2022-11-04 07:42:51.000000'),
('12e70395-b63b-4dc9-8f82-3ac37a52c3b7', '#ee792b', 'new_color_#ee792b', '2022-11-04 09:02:35.000000', b'1', '2022-11-04 09:02:35.000000'),
('13e796df-e8e8-45d6-aec9-50d7fc6e6bd4', '#b1a0a5', 'new_color_#b1a0a5', '2022-11-04 08:53:20.000000', b'1', '2022-11-04 08:53:20.000000'),
('159d5c44-126e-4772-bd24-8e2f8081c8da', '#797777', 'new_color_#797777', '2022-10-29 19:31:23.000000', b'1', '2022-10-29 19:31:23.000000'),
('161ee224-b1f6-4028-a556-1adbd2f8e5db', '#d20442', 'new_color_#d20442', '2022-11-04 09:25:04.000000', b'1', '2022-11-04 09:25:04.000000'),
('1629a1e4-1ca3-4efb-bf4c-042b99db3b90', '#f2f2f2', 'new_color_#f2f2f2', '2022-11-03 16:39:42.000000', b'1', '2022-11-03 16:39:42.000000'),
('16bd59f1-c2a0-4b53-8fb0-7c92752f5b2b', '#d8a3f5', 'new_color_#d8a3f5', '2022-11-03 16:14:10.000000', b'1', '2022-11-03 16:14:10.000000'),
('16c23ba4-68d4-410d-b355-3c5603171712', '#f5eaee', 'new_color_#f5eaee', '2022-11-04 08:45:51.000000', b'1', '2022-11-04 08:45:51.000000'),
('1b57c524-bd3f-4180-8068-8e428514b40f', '#f70202', 'new_color_#f70202', '2022-10-29 21:40:05.000000', b'1', '2022-10-29 21:40:05.000000'),
('1b5dbad9-3954-4395-ad9c-4a2ad8bec180', '#413e3f', 'new_color_#413e3f', '2022-11-04 07:36:51.000000', b'1', '2022-11-04 07:36:51.000000'),
('1c323f02-e97a-4309-aa62-dbee0a7dad1c', '#0a0a0a', 'new_color_#0a0a0a', '2022-10-29 20:48:23.000000', b'1', '2022-10-29 20:48:23.000000'),
('1f338ea8-8fb3-4849-b047-30959a287286', '#f5195b', 'new_color_#f5195b', '2022-11-04 09:27:33.000000', b'1', '2022-11-04 09:27:33.000000'),
('1f8f6508-7fc1-4e7d-a42d-ef891f48e9dd', '#f9f1f3', 'new_color_#f9f1f3', '2022-11-03 09:20:54.000000', b'1', '2022-11-03 09:20:54.000000'),
('1fa65766-d4a0-4f44-9e3a-e27d52201f02', '#aea7aa', 'new_color_#aea7aa', '2022-11-03 09:20:54.000000', b'1', '2022-11-03 09:20:54.000000'),
('20665492-4b2e-47a4-b285-99462890cbb5', '#484747', 'new_color_#484747', '2022-11-04 07:45:13.000000', b'1', '2022-11-04 07:45:13.000000'),
('20aefa39-c650-49d2-9962-33b715e86b1e', '#353132', 'new_color_#353132', '2022-11-04 07:42:51.000000', b'1', '2022-11-04 07:42:51.000000'),
('20daf1ba-8b01-4065-bc2d-873e1442a376', '#b9a2a9', 'new_color_#b9a2a9', '2022-11-04 07:45:13.000000', b'1', '2022-11-04 07:45:13.000000'),
('2300edf7-b1b5-4162-9ff2-a99d5d951af2', '#a8a4a5', 'new_color_#a8a4a5', '2022-11-03 08:39:15.000000', b'1', '2022-11-03 08:39:15.000000'),
('26506ff2-d547-4005-9d19-91153b51bb4b', '#9b9798', 'new_color_#9b9798', '2022-10-29 21:40:05.000000', b'1', '2022-10-29 21:40:05.000000'),
('28c56f6e-a8c4-4ef0-889d-1a8adcd1c2d0', '#85cc86', 'new_color_#85cc86', '2022-10-29 19:31:23.000000', b'1', '2022-10-29 19:31:23.000000'),
('28cc5ae3-91e9-41c5-92c8-dd5f6ce8abff', '#f1eeef', 'new_color_#f1eeef', '2022-11-04 08:15:42.000000', b'1', '2022-11-04 08:15:42.000000'),
('29427e97-a5e6-40c2-a25b-59546a98f93f', '#817e7f', 'new_color_#817e7f', '2022-11-04 07:36:51.000000', b'1', '2022-11-04 07:36:51.000000'),
('295c55ed-8108-4c0c-94b9-9166591f656d', '#47ffe0', 'new_color_#47ffe0', '2022-10-29 18:13:03.000000', b'1', '2022-10-29 18:13:03.000000'),
('2a4d904a-46f6-47fd-94d9-e41642d6bbd6', '#aea5d9', 'new_color_#aea5d9', '2022-11-03 16:14:10.000000', b'1', '2022-11-03 16:14:10.000000'),
('2c3f3bc0-679b-4089-8174-35f2ace8073c', '#403b3c', 'new_color_#403b3c', '2022-11-04 07:42:51.000000', b'1', '2022-11-04 07:42:51.000000'),
('2cdcbb67-8e8e-41ae-ae35-d3c566170a18', '#0a0003', 'new_color_#0a0003', '2022-10-29 18:03:09.000000', b'1', '2022-10-29 18:03:09.000000'),
('2cea130b-36ed-4b18-8029-27ca6e701750', '#f2a1b9', 'new_color_#f2a1b9', '2022-10-29 18:13:03.000000', b'1', '2022-10-29 18:13:03.000000'),
('2ea84db3-da1c-4066-b1a5-89524d2d51ad', '#f6eff1', 'new_color_#f6eff1', '2022-11-03 16:32:39.000000', b'1', '2022-11-03 16:32:39.000000'),
('2eb1d1df-123c-42ee-a539-850577cba642', '#f5bccd', 'new_color_#f5bccd', '2022-11-03 08:26:32.000000', b'1', '2022-11-03 08:26:32.000000'),
('3233f8e7-b27c-4a80-b7ae-bd377adeb868', '#f2edef', 'new_color_#f2edef', '2022-11-04 07:12:33.000000', b'1', '2022-11-04 07:12:33.000000'),
('34c3bc78-aebe-451f-b85b-5214ef433390', '#f2d9e1', 'new_color_#f2d9e1', '2022-11-04 08:01:15.000000', b'1', '2022-11-04 08:01:15.000000'),
('37503bb3-db6c-4817-ab87-a45d6550b82c', '#7cd3f8', 'new_color_#7cd3f8', '2022-11-03 08:21:00.000000', b'1', '2022-11-03 08:21:00.000000'),
('39031ab9-d7ce-4c90-9a01-7269b865024c', '#99db75', 'new_color_#99db75', '2022-11-04 06:56:25.000000', b'1', '2022-11-04 06:56:25.000000'),
('3956f0b8-6d70-4e76-9f8f-0c58044068a4', '#180c0f', 'new_color_#180c0f', '2022-10-29 20:30:09.000000', b'1', '2022-10-29 20:30:09.000000'),
('39a40c46-383b-4524-be2b-a8f28c77a2f3', '#f3e7eb', 'new_color_#f3e7eb', '2022-11-04 07:15:26.000000', b'1', '2022-11-04 07:15:26.000000'),
('3bd02438-61b5-4276-a922-d476e7219f55', '#626061', 'new_color_#626061', '2022-11-04 07:42:51.000000', b'1', '2022-11-04 07:42:51.000000'),
('3daaded2-1423-4113-a310-61102249e78f', '#2e136c', 'new_color_#2e136c', '2022-11-04 08:40:40.000000', b'1', '2022-11-04 08:40:40.000000'),
('3ecbeaeb-02ca-46a4-b8af-08197d8a83bb', '#ededed', 'new_color_#ededed', '2022-10-29 19:46:18.000000', b'1', '2022-10-29 19:46:18.000000'),
('3f5ce865-6945-4287-8ae8-4d3517e8ba7e', '#b2cd7e', 'new_color_#b2cd7e', '2022-11-04 07:19:56.000000', b'1', '2022-11-04 07:19:56.000000'),
('4068e1bd-1914-45f0-966d-68e9349d4aed', '#ffad61', 'new_color_#ffad61', '2022-11-04 08:40:40.000000', b'1', '2022-11-04 08:40:40.000000'),
('429fac28-d97e-4318-b58e-4dd522de1700', '#6461ff', 'new_color_#6461ff', '2022-11-04 07:49:23.000000', b'1', '2022-11-04 07:49:23.000000'),
('42eaaf84-3d17-4c4f-908d-555a08f95c6f', '#f0ebec', 'new_color_#f0ebec', '2022-11-03 16:50:14.000000', b'1', '2022-11-03 16:50:14.000000'),
('438b53db-44ad-4807-9417-89de0dbbf510', '#585656', 'new_color_#585656', '2022-10-29 19:46:18.000000', b'1', '2022-10-29 19:46:18.000000'),
('439687a1-1693-4005-bb70-1977dd6d9a52', '#028f92', 'new_color_#028f92', '2022-10-29 18:28:31.000000', b'1', '2022-10-29 18:28:31.000000'),
('44584d78-bab6-4e6b-afb8-5aaf6796078e', '#edd9df', 'new_color_#edd9df', '2022-11-04 06:52:38.000000', b'1', '2022-11-04 06:52:38.000000'),
('490c7dd1-d070-4dd6-90d4-eafe42b1fd74', '#6218ec', 'new_color_#6218ec', '2022-11-03 00:39:28.000000', b'1', '2022-11-03 00:39:28.000000'),
('496606e8-6ce3-460c-80af-21454fbb99c0', '#61ffad', 'new_color_#61ffad', '2022-11-04 09:44:08.000000', b'1', '2022-11-04 09:44:08.000000'),
('4aaa1dc6-5cd4-4274-a2e1-a4d96b36f85b', '#6bff61', 'new_color_#6bff61', '2022-11-04 08:37:37.000000', b'1', '2022-11-04 08:37:37.000000'),
('4cc983f9-9ff9-4088-8e45-87a9fbde845a', '#6188ff', 'new_color_#6188ff', '2022-11-04 06:52:38.000000', b'1', '2022-11-04 06:52:38.000000'),
('4d296412-434c-48bd-b696-a70a2cd1a225', '#7d681c', 'new_color_#7d681c', '2022-11-04 07:56:36.000000', b'1', '2022-11-04 07:56:36.000000'),
('4ea0aa70-12c9-4956-be59-1116d007f213', '#240594', 'new_color_#240594', '2022-10-29 18:28:31.000000', b'1', '2022-10-29 18:28:31.000000'),
('4fb77589-7002-4f01-8147-0b295f6e0e49', '#1f1f1f', 'new_color_#1f1f1f', '2022-11-03 00:30:53.000000', b'1', '2022-11-03 00:30:53.000000'),
('4fd67c25-1a22-48f6-b13c-3ed6fd0e8df5', '#67283b', 'new_color_#67283b', '2022-10-29 20:34:57.000000', b'1', '2022-10-29 20:34:57.000000'),
('50af0337-cd44-49e4-92d5-514999a4a6ce', '#e0d5ae', 'new_color_#e0d5ae', '2022-11-04 07:19:56.000000', b'1', '2022-11-04 07:19:56.000000'),
('517dddd3-e6f4-4a07-88f3-49844a20618a', '#f99fba', 'new_color_#f99fba', '2022-11-04 09:22:43.000000', b'1', '2022-11-04 09:22:43.000000'),
('5335f9f0-9194-4969-b8f4-42212b01bc66', '#dcd6d8', 'new_color_#dcd6d8', '2022-11-04 09:34:07.000000', b'1', '2022-11-04 09:34:07.000000'),
('568f0294-7cda-4d85-9b50-dee0f9958984', '#f0f0f0', 'new_color_#f0f0f0', '2022-10-29 21:40:05.000000', b'1', '2022-10-29 21:40:05.000000'),
('599ed6ae-fd05-41dc-90d3-08c33e0fe9be', '#22186d', 'new_color_#22186d', '2022-11-04 08:53:20.000000', b'1', '2022-11-04 08:53:20.000000'),
('59d2707d-b597-4257-a178-e18f5049b3fa', '#0b25a8', 'new_color_#0b25a8', '2022-11-04 08:53:20.000000', b'1', '2022-11-04 08:53:20.000000'),
('5d81231a-82a1-4a8f-a9e1-42f8fee1fc87', '#fafafa', 'new_color_#fafafa', '2022-10-29 19:46:18.000000', b'1', '2022-10-29 19:46:18.000000'),
('5f06f5f1-084a-4d74-a639-186a45cdf5a1', '#070250', 'new_color_#070250', '2022-10-29 22:29:06.000000', b'1', '2022-10-29 22:29:06.000000'),
('60732f6f-a771-43ea-88b6-8819a9a58c00', '#c45f7d', 'new_color_#c45f7d', '2022-11-04 07:32:12.000000', b'1', '2022-11-04 07:32:12.000000'),
('608784f0-2f2b-440b-9387-8211010a2346', '#cbb3ba', 'new_color_#cbb3ba', '2022-11-04 09:04:36.000000', b'1', '2022-11-04 09:04:36.000000'),
('61a24ab8-c35c-4815-804d-6a5245b6ef3d', '#ff9061', 'new_color_#ff9061', '2022-11-04 09:30:29.000000', b'1', '2022-11-04 09:30:29.000000'),
('626555ce-fee6-4971-97a1-4fd1f4f680c3', '#db1a54', 'new_color_#db1a54', '2022-11-04 08:37:37.000000', b'1', '2022-11-04 08:37:37.000000'),
('630d110b-a570-4d27-bbb5-ed138d95d098', '#d7c1c8', 'new_color_#d7c1c8', '2022-11-04 08:45:51.000000', b'1', '2022-11-04 08:45:51.000000'),
('64054e85-56b9-4474-9e9f-7fbdd7210d0e', '#fda0bc', 'new_color_#fda0bc', '2022-10-30 00:15:27.000000', b'1', '2022-10-30 00:15:27.000000'),
('64a83394-b0b4-4c39-9947-590fa2a53e33', '#4c2430', 'new_color_#4c2430', '2022-11-04 09:07:18.000000', b'1', '2022-11-04 09:07:18.000000'),
('65a137ee-5a72-4c27-b066-e47b97e924ea', '#db6186', 'new_color_#db6186', '2022-11-04 09:27:33.000000', b'1', '2022-11-04 09:27:33.000000'),
('66b151cd-30e1-4a3a-b158-f0fa102e977b', '#e2dadc', 'new_color_#e2dadc', '2022-11-03 16:32:39.000000', b'1', '2022-11-03 16:32:39.000000'),
('66f34db8-12bd-4d13-92aa-b7a9a73b3973', '#fbf3f6', 'new_color_#fbf3f6', '2022-11-03 16:39:42.000000', b'1', '2022-11-03 16:39:42.000000'),
('684e3938-40fb-4424-b87e-d67bf24dddd4', '#c59d0d', 'new_color_#c59d0d', '2022-11-04 09:00:31.000000', b'1', '2022-11-04 09:00:31.000000'),
('6874dd46-de26-4dd7-8dfc-141801f51d77', '#f5c30f', 'new_color_#f5c30f', '2022-11-04 09:02:35.000000', b'1', '2022-11-04 09:02:35.000000'),
('68851646-bc2a-4214-af49-9071b8b75cc7', '#1d1b1c', 'new_color_#1d1b1c', '2022-11-03 09:20:54.000000', b'1', '2022-11-03 09:20:54.000000'),
('68e149d3-cb5b-4860-b4f1-75b8ea6bf3f0', '#61adff', 'new_color_#61adff', '2022-10-29 18:28:31.000000', b'1', '2022-10-29 18:28:31.000000'),
('68eb8714-9e38-40a1-b4ae-0b5035cdd80e', '#fff5f8', 'new_color_#fff5f8', '2022-11-03 15:52:18.000000', b'1', '2022-11-03 15:52:18.000000'),
('69dd2708-b87f-485f-a541-3ae9d0cc5070', '#eae1e4', 'new_color_#eae1e4', '2022-11-04 08:01:15.000000', b'1', '2022-11-04 08:01:15.000000'),
('69f5912e-61a4-4d80-9298-af689cde53d6', '#f9e7ec', 'new_color_#f9e7ec', '2022-10-30 00:15:27.000000', b'1', '2022-10-30 00:15:27.000000'),
('6a8899b1-cec4-4780-ac91-2b1e53285494', '#eedde2', 'new_color_#eedde2', '2022-11-04 07:12:33.000000', b'1', '2022-11-04 07:12:33.000000'),
('6adf7ff2-c3da-439a-a6c1-8d79bd367002', '#f494b1', 'new_color_#f494b1', '2022-10-29 20:48:23.000000', b'1', '2022-10-29 20:48:23.000000'),
('6dce8349-e92d-4f80-9155-6ea099c5db0e', '#e10e4e', 'new_color_#e10e4e', '2022-11-04 09:25:04.000000', b'1', '2022-11-04 09:25:04.000000'),
('6dd3da8c-23c5-484d-bd5d-74e29cf0ef9c', '#f0f5d6', 'new_color_#f0f5d6', '2022-11-03 15:58:01.000000', b'1', '2022-11-03 15:58:01.000000'),
('6e05d57a-ad8b-47ce-b0a7-9fbac63bc077', '#d3557b', 'new_color_#d3557b', '2022-11-04 07:49:23.000000', b'1', '2022-11-04 07:49:23.000000'),
('6e97ccff-11b9-4eef-a2ce-b821f8da62f1', '#4d4749', 'new_color_#4d4749', '2022-11-03 15:58:01.000000', b'1', '2022-11-03 15:58:01.000000'),
('6fbee2b3-d499-481b-8b3e-02e9241f01ae', '#f6f4f4', 'new_color_#f6f4f4', '2022-10-29 20:34:57.000000', b'1', '2022-10-29 20:34:57.000000'),
('71040026-bb83-4f95-8dc2-91f5cd2efc40', '#a9a7a8', 'new_color_#a9a7a8', '2022-11-03 08:35:46.000000', b'1', '2022-11-03 08:35:46.000000'),
('7302d54f-ac31-4291-997a-c43ec1337f87', '#f4ff61', 'new_color_#f4ff61', '2022-11-03 09:20:54.000000', b'1', '2022-11-03 09:20:54.000000'),
('7347a50e-a7b7-42dc-ad99-47c6348cf2c5', '#a29095', 'new_color_#a29095', '2022-11-04 09:07:18.000000', b'1', '2022-11-04 09:07:18.000000'),
('749bfb70-f3fa-499a-8019-033b5758da40', '#bd7a8e', 'new_color_#bd7a8e', '2022-11-04 09:22:43.000000', b'1', '2022-11-04 09:22:43.000000'),
('785ee2c7-a3a4-47c4-843d-782e9f8e83b7', '#fbf9df', 'new_color_#fbf9df', '2022-11-03 16:17:13.000000', b'1', '2022-11-03 16:17:13.000000'),
('78623234-9985-466a-b489-0d0161b73eef', '#706b6d', 'new_color_#706b6d', '2022-10-29 20:30:09.000000', b'1', '2022-10-29 20:30:09.000000'),
('79253468-6b71-48d8-95ca-116a6ab3f5ef', '#6b575d', 'new_color_#6b575d', '2022-11-04 09:04:36.000000', b'1', '2022-11-04 09:04:36.000000'),
('7cb5d7a0-8460-450b-8926-2550f8c77e2c', '#2d2527', 'new_color_#2d2527', '2022-11-04 08:27:27.000000', b'1', '2022-11-04 08:27:27.000000'),
('7d0b020e-ad96-4f7c-ae26-75cec0f74821', '#2e00d6', 'new_color_#2e00d6', '2022-10-29 18:13:03.000000', b'1', '2022-10-29 18:13:03.000000'),
('7d7f29a7-2d5b-4d28-9325-e2bfd79d1500', '#f3d8e0', 'new_color_#f3d8e0', '2022-10-29 20:34:57.000000', b'1', '2022-10-29 20:34:57.000000'),
('7f2e98ab-f58f-430d-a184-2fd493da6085', '#d2c1c6', 'new_color_#d2c1c6', '2022-11-04 07:56:36.000000', b'1', '2022-11-04 07:56:36.000000'),
('809ce333-339e-4457-b060-c3b6e634ada4', '#f5f0f1', 'new_color_#f5f0f1', '2022-11-03 08:21:00.000000', b'1', '2022-11-03 08:21:00.000000'),
('81660be1-0b70-4c9d-a92f-4d9ac198dbb9', '#171617', 'new_color_#171617', '2022-11-04 09:04:36.000000', b'1', '2022-11-04 09:04:36.000000'),
('81f1239d-50bf-476f-88b2-eed95679c55a', '#e7e023', 'new_color_#e7e023', '2022-10-29 22:22:58.000000', b'1', '2022-10-29 22:22:58.000000'),
('859f64f8-c672-4a10-b8fe-1310c24005a9', '#eef207', 'new_color_#eef207', '2022-10-29 23:19:32.000000', b'1', '2022-10-29 23:19:32.000000'),
('8662fa04-2d33-496b-a39d-2dd96c4b5cf2', '#878787', 'new_color_#878787', '2022-11-03 08:08:28.000000', b'1', '2022-11-03 08:08:28.000000'),
('868699bd-f107-42f6-9c21-8c63e1326451', '#cbc3c5', 'new_color_#cbc3c5', '2022-11-04 08:12:42.000000', b'1', '2022-11-04 08:12:42.000000'),
('8749cd72-5d12-4601-82dc-8649c5c55071', '#f5eff1', 'new_color_#f5eff1', '2022-11-03 16:14:10.000000', b'1', '2022-11-03 16:14:10.000000'),
('89752d45-7b0e-47f7-bd6c-41035fa347f3', '#393234', 'new_color_#393234', '2022-11-03 16:17:13.000000', b'1', '2022-11-03 16:17:13.000000'),
('89c6b0b2-b1f9-4827-bba6-4bfad2be84d2', '#d77e99', 'new_color_#d77e99', '2022-10-29 19:31:23.000000', b'1', '2022-10-29 19:31:23.000000'),
('89d5a99c-1c22-4924-ae32-cf329fec58e2', '#f9f6f7', 'new_color_#f9f6f7', '2022-11-03 16:50:14.000000', b'1', '2022-11-03 16:50:14.000000'),
('8b1e50da-969e-46df-91e9-6dd9b9a791bc', '#7361ff', 'new_color_#7361ff', '2022-11-04 07:49:23.000000', b'1', '2022-11-04 07:49:23.000000'),
('8d163343-ddbf-40ef-8085-de667048a0bf', '#d7d0d2', 'new_color_#d7d0d2', '2022-11-03 08:16:21.000000', b'1', '2022-11-03 08:16:21.000000'),
('8d689022-4bfa-474a-9f21-71323f91904a', '#878284', 'new_color_#878284', '2022-11-04 08:27:27.000000', b'1', '2022-11-04 08:27:27.000000'),
('8ff44c04-0696-4740-aabd-dd123da3ce46', '#ccf0d3', 'new_color_#ccf0d3', '2022-11-03 15:58:01.000000', b'1', '2022-11-03 15:58:01.000000'),
('9247ff8f-2182-43f9-823b-41525cd97aad', '#dbd1d4', 'new_color_#dbd1d4', '2022-11-04 08:01:15.000000', b'1', '2022-11-04 08:01:15.000000'),
('929586e0-7a92-49f9-8211-d46495a5e7fb', '#74e29a', 'new_color_#74e29a', '2022-10-29 23:19:32.000000', b'1', '2022-10-29 23:19:32.000000'),
('95eefcc6-0457-49f0-a0f3-fdacc6737360', '#ee91ad', 'new_color_#ee91ad', '2022-11-04 06:52:38.000000', b'1', '2022-11-04 06:52:38.000000'),
('98a992cd-bfd6-4d5b-9aa4-23304e06b49b', '#d8134e', 'new_color_#d8134e', '2022-11-04 09:27:33.000000', b'1', '2022-11-04 09:27:33.000000'),
('9964e528-0187-479d-a908-5bb24cd23d0d', '#d3e203', 'new_color_#d3e203', '2022-10-30 00:09:29.000000', b'1', '2022-10-30 00:09:29.000000'),
('99af7a1c-2637-471d-90b2-8d80fe7e5b64', '#ecfdaf', 'new_color_#ecfdaf', '2022-10-29 20:03:00.000000', b'1', '2022-10-29 20:03:00.000000'),
('99df046e-a8e3-4260-8d0c-7e2a74e903b0', '#dcd0d4', 'new_color_#dcd0d4', '2022-11-03 16:32:39.000000', b'1', '2022-11-03 16:32:39.000000'),
('9b441214-16a9-4166-bfde-07a7bfeeeaf7', '#694953', 'new_color_#694953', '2022-11-04 09:07:18.000000', b'1', '2022-11-04 09:07:18.000000'),
('9cbb8042-ee05-4f20-8fef-08678ab7b364', '#faf5f6', 'new_color_#faf5f6', '2022-10-29 20:48:23.000000', b'1', '2022-10-29 20:48:23.000000'),
('9e535db9-c063-431e-a92d-dfbb643c06c3', '#8d8688', 'new_color_#8d8688', '2022-10-29 19:53:30.000000', b'1', '2022-10-29 19:53:30.000000'),
('a0304f4f-a381-4e74-9d7c-ada12eb2d433', '#fbacc4', 'new_color_#fbacc4', '2022-10-30 00:15:27.000000', b'1', '2022-10-30 00:15:27.000000'),
('a1f3dd7f-2b75-4f40-9cba-d6739b79aef8', '#fbf9f9', 'new_color_#fbf9f9', '2022-11-03 08:26:32.000000', b'1', '2022-11-03 08:26:32.000000'),
('a29b1a36-35df-4a07-9343-7f0bdb2b9655', '#393738', 'new_color_#393738', '2022-11-04 07:36:51.000000', b'1', '2022-11-04 07:36:51.000000'),
('a3a2a934-0732-4ae7-872d-b73709433cbf', '#fffa61', 'new_color_#fffa61', '2022-11-04 08:40:40.000000', b'1', '2022-11-04 08:40:40.000000'),
('a3e67c6b-9db7-4d8d-b83b-5efd8ef824a5', '#fffafb', 'new_color_#fffafb', '2022-11-03 00:27:01.000000', b'1', '2022-11-03 00:27:01.000000'),
('a4936775-c63d-48ea-855f-5e1eaa6ba71a', '#c30941', 'new_color_#c30941', '2022-11-04 09:27:33.000000', b'1', '2022-11-04 09:27:33.000000'),
('a5905e73-33b7-4705-ba20-5ca366cb8c67', '#2c2b2b', 'new_color_#2c2b2b', '2022-11-03 00:39:28.000000', b'1', '2022-11-03 00:39:28.000000'),
('a9d247d0-8c0e-48bb-9a32-ee11d8549d4a', '#212121', 'new_color_#212121', '2022-11-03 16:17:13.000000', b'1', '2022-11-03 16:17:13.000000'),
('aab376c0-d884-4844-b80e-c3727b9418c4', '#fefbfc', 'new_color_#fefbfc', '2022-10-29 22:29:06.000000', b'1', '2022-10-29 22:29:06.000000'),
('abc8f2eb-75a7-4586-ac13-cc0aa276360b', '#f2eeef', 'new_color_#f2eeef', '2022-10-29 18:03:09.000000', b'1', '2022-10-29 18:03:09.000000'),
('acb60ed7-7ea1-4256-8efb-43bce1ca3efa', '#d33665', 'new_color_#d33665', '2022-11-04 09:44:08.000000', b'1', '2022-11-04 09:44:08.000000'),
('ad1d8187-8ec1-480e-8d9e-11d2f10756ad', '#fdf7f9', 'new_color_#fdf7f9', '2022-10-29 19:53:30.000000', b'1', '2022-10-29 19:53:30.000000'),
('ae2c514d-eeac-4dde-b871-fde4d6d8b178', '#022aed', 'new_color_#022aed', '2022-11-02 13:31:10.000000', b'1', '2022-11-02 13:31:10.000000'),
('b046c420-d140-4f68-9c16-118cd0d2e34a', '#7e7779', 'new_color_#7e7779', '2022-11-03 08:21:00.000000', b'1', '2022-11-03 08:21:00.000000'),
('b0a63528-6d05-4d64-8a3e-3cb2d1b14d91', '#f9f5f7', 'new_color_#f9f5f7', '2022-10-30 00:15:27.000000', b'1', '2022-10-30 00:15:27.000000'),
('b3497e6a-419e-4caa-82fa-7ca9f4098ea2', '#9e9a9b', 'new_color_#9e9a9b', '2022-11-03 08:39:15.000000', b'1', '2022-11-03 08:39:15.000000'),
('b7e7cd76-cdd2-41cd-8ac6-3cef9454d7da', '#ff6161', 'new_color_#ff6161', '2022-11-04 08:37:37.000000', b'1', '2022-11-04 08:37:37.000000'),
('b8489f28-34a2-4f8b-a7e4-213e59e624a9', '#f5adc3', 'new_color_#f5adc3', '2022-10-30 00:09:29.000000', b'1', '2022-10-30 00:09:29.000000'),
('be820d3f-4220-4364-bd95-1984eb7f95bb', '#e2e6a8', 'new_color_#e2e6a8', '2022-11-04 07:19:56.000000', b'1', '2022-11-04 07:19:56.000000'),
('bf714892-5882-4e71-a96d-23dfc8eda24e', '#ffbd61', 'new_color_#ffbd61', '2022-11-04 09:30:29.000000', b'1', '2022-11-04 09:30:29.000000'),
('c02fadb5-bd07-4376-9022-f188488c3718', '#619eff', 'new_color_#619eff', '2022-11-03 08:08:28.000000', b'1', '2022-11-03 08:08:28.000000'),
('c073001f-f47e-4fd2-8d0d-2e20da38ad48', '#ffffff', 'new_color_#ffffff', '2022-11-03 15:52:18.000000', b'1', '2022-11-03 15:52:18.000000'),
('c21c4de5-2f15-4ed3-86ec-5a275c452166', '#0f0f0f', 'new_color_#0f0f0f', '2022-10-30 00:09:29.000000', b'1', '2022-10-30 00:09:29.000000'),
('c49e112f-0817-4463-bcda-58e6a6e51e02', '#d0c8ca', 'new_color_#d0c8ca', '2022-11-04 08:06:54.000000', b'1', '2022-11-04 08:06:54.000000'),
('c84ac129-59c5-427c-bb79-c4ad6a4ed6d6', '#080808', 'new_color_#080808', '2022-10-29 19:53:30.000000', b'1', '2022-10-29 19:53:30.000000'),
('ccd1a97a-8dc1-4d45-9fd5-7431e60b7250', '#0d0c0d', 'new_color_#0d0c0d', '2022-10-29 18:03:09.000000', b'1', '2022-10-29 18:03:09.000000'),
('ccdaf504-5d63-4643-8549-8a59e25891dd', '#e61957', 'new_color_#e61957', '2022-11-04 08:40:40.000000', b'1', '2022-11-04 08:40:40.000000'),
('ccef5be6-8751-49c8-9026-b3b40ce0867f', '#d7d1d2', 'new_color_#d7d1d2', '2022-11-04 07:12:33.000000', b'1', '2022-11-04 07:12:33.000000'),
('ce048781-624f-43ed-98da-69d29b384f6f', '#ffa061', 'new_color_#ffa061', '2022-11-04 09:02:35.000000', b'1', '2022-11-04 09:02:35.000000'),
('d01828af-cd47-4d1f-827a-44d6fc40935e', '#fbeef2', 'new_color_#fbeef2', '2022-11-03 15:52:18.000000', b'1', '2022-11-03 15:52:18.000000'),
('d07dd057-ee8b-4523-8130-31c703353f6d', '#704854', 'new_color_#704854', '2022-11-04 09:00:31.000000', b'1', '2022-11-04 09:00:31.000000'),
('d150ce5b-d651-4172-81e1-edaa6e8bccad', '#262626', 'new_color_#262626', '2022-11-04 07:36:51.000000', b'1', '2022-11-04 07:36:51.000000'),
('d2e98193-7059-43ae-b6f6-735b1be432bf', '#eae6e7', 'new_color_#eae6e7', '2022-11-04 07:15:26.000000', b'1', '2022-11-04 07:15:26.000000'),
('d37f5905-a00c-4adc-b1d9-0d5bc4f4ec4e', '#53cafd', 'new_color_#53cafd', '2022-11-03 00:39:28.000000', b'1', '2022-11-03 00:39:28.000000'),
('d41a32cd-0d17-4f0c-abbb-13a63a4bc754', '#c98398', 'new_color_#c98398', '2022-10-29 20:34:57.000000', b'1', '2022-10-29 20:34:57.000000'),
('d53bbdbc-8242-436b-9ac7-e50ff03bb4f0', '#ee5d89', 'new_color_#ee5d89', '2022-10-29 20:48:23.000000', b'1', '2022-10-29 20:48:23.000000'),
('d53d6a30-d536-43e5-ad4e-811fa95fa894', '#f8ecf0', 'new_color_#f8ecf0', '2022-11-03 16:50:14.000000', b'1', '2022-11-03 16:50:14.000000'),
('d5a42c50-6ea8-4935-8445-49d4d002a85a', '#f4f1f2', 'new_color_#f4f1f2', '2022-10-29 23:19:32.000000', b'1', '2022-10-29 23:19:32.000000'),
('d6301b4c-b314-4524-8b5a-de8937de0852', '#cd899d', 'new_color_#cd899d', '2022-11-04 09:22:43.000000', b'1', '2022-11-04 09:22:43.000000'),
('d773e6a5-3b76-4568-8d6a-7bcc8f0ce55e', '#060f84', 'new_color_#060f84', '2022-10-29 22:22:58.000000', b'1', '2022-10-29 22:22:58.000000'),
('d937c180-44c3-4908-a007-62dbc837dfb3', '#f5e0e6', 'new_color_#f5e0e6', '2022-11-04 07:12:33.000000', b'1', '2022-11-04 07:12:33.000000'),
('db1fcfc1-0e55-4845-882f-e2812ec45805', '#eeeded', 'new_color_#eeeded', '2022-10-29 22:22:58.000000', b'1', '2022-10-29 22:22:58.000000'),
('dc226c62-ac23-4c7f-aedd-7513a2990817', '#f7f3f4', 'new_color_#f7f3f4', '2022-11-03 16:17:13.000000', b'1', '2022-11-03 16:17:13.000000'),
('dce6bd32-fcd1-4caf-bc9e-1615a010916e', '#e1e0e0', 'new_color_#e1e0e0', '2022-11-03 16:25:28.000000', b'1', '2022-11-03 16:25:28.000000'),
('de6f6385-8e68-4cb8-bde7-732e48da4845', '#f9f8f1', 'new_color_#f9f8f1', '2022-11-03 16:25:28.000000', b'1', '2022-11-03 16:25:28.000000'),
('de7935ae-5a8d-4437-a263-ea7c2d084d4c', '#f5f5f5', 'new_color_#f5f5f5', '2022-11-03 08:16:21.000000', b'1', '2022-11-03 08:16:21.000000'),
('df3bf9fd-5fbc-4320-a532-19420c8cc84b', '#0865fd', 'new_color_#0865fd', '2022-10-29 18:13:03.000000', b'1', '2022-10-29 18:13:03.000000'),
('e0366bbd-778b-4fff-834b-55f1a9975d9c', '#61dfff', 'new_color_#61dfff', '2022-11-04 07:49:23.000000', b'1', '2022-11-04 07:49:23.000000'),
('e2919b18-79d5-4bda-a1f7-6dfcba0e35c0', '#525151', 'new_color_#525151', '2022-10-29 19:53:30.000000', b'1', '2022-10-29 19:53:30.000000'),
('e563160a-c91f-4f4c-8fb6-7bce00bc51c6', '#f6eaed', 'new_color_#f6eaed', '2022-11-03 16:25:28.000000', b'1', '2022-11-03 16:25:28.000000'),
('e5b8af68-bdf3-4a37-a57e-51916c2e6fb9', '#050505', 'new_color_#050505', '2022-11-03 08:16:21.000000', b'1', '2022-11-03 08:16:21.000000'),
('e6c90908-5a77-4205-b9fa-8eb291fbe57b', '#7de9f7', 'new_color_#7de9f7', '2022-11-03 08:26:32.000000', b'1', '2022-11-03 08:26:32.000000'),
('e95c402d-f54c-4648-b300-412687473074', '#077eed', 'new_color_#077eed', '2022-11-03 00:30:53.000000', b'1', '2022-11-03 00:30:53.000000'),
('eab41b04-e14d-47d6-83b4-2668eae0b5db', '#f1eaec', 'new_color_#f1eaec', '2022-11-03 16:25:28.000000', b'1', '2022-11-03 16:25:28.000000'),
('eb663c76-28cc-41f8-b08d-34e8e99c3ce3', '#e2d0d5', 'new_color_#e2d0d5', '2022-11-04 08:31:11.000000', b'1', '2022-11-04 08:31:11.000000'),
('ef252233-6a5b-492d-bd23-a297233f0888', '#f2e8eb', 'new_color_#f2e8eb', '2022-11-04 07:06:18.000000', b'1', '2022-11-04 07:06:18.000000'),
('f10dcb51-6453-4535-ab80-cbc4367739a0', '#929091', 'new_color_#929091', '2022-11-03 08:35:46.000000', b'1', '2022-11-03 08:35:46.000000'),
('f12ecf94-7abe-4d51-9f5e-b43f295bc118', '#e7e4e5', 'new_color_#e7e4e5', '2022-11-04 07:15:26.000000', b'1', '2022-11-04 07:15:26.000000'),
('f2b391b0-91f9-48c0-a242-2dba50d47693', '#f7f7f7', 'new_color_#f7f7f7', '2022-11-03 08:08:28.000000', b'1', '2022-11-03 08:08:28.000000'),
('f5f57761-79bb-4001-babd-aa47ff8f6813', '#7e4455', 'new_color_#7e4455', '2022-11-04 09:00:31.000000', b'1', '2022-11-04 09:00:31.000000'),
('f715fa6d-0318-410b-8e34-7a11d6ac8b8b', '#dac8cd', 'new_color_#dac8cd', '2022-11-04 08:31:11.000000', b'1', '2022-11-04 08:31:11.000000'),
('f8389657-18a2-48cd-9810-03f3fa669712', '#987001', 'new_color_#987001', '2022-11-03 08:39:15.000000', b'1', '2022-11-03 08:39:15.000000'),
('f935408f-caff-423c-873d-15dfc48dcd4b', '#171717', 'new_color_#171717', '2022-10-29 20:03:00.000000', b'1', '2022-10-29 20:03:00.000000'),
('f959c16e-5776-4380-b213-eaa06fb72fae', '#b9647e', 'new_color_#b9647e', '2022-11-04 09:30:29.000000', b'1', '2022-11-04 09:30:29.000000'),
('fa429c53-a35c-46a2-a3af-7650836d1d9d', '#f8e8ed', 'new_color_#f8e8ed', '2022-11-02 13:31:10.000000', b'1', '2022-11-02 13:31:10.000000'),
('fa5f0582-c047-4269-862a-ae915082a948', '#efeced', 'new_color_#efeced', '2022-11-04 06:52:38.000000', b'1', '2022-11-04 06:52:38.000000'),
('fb7fc3a2-a661-4aa3-8d6c-4270a6d6eb1a', '#d6cccf', 'new_color_#d6cccf', '2022-11-04 08:15:42.000000', b'1', '2022-11-04 08:15:42.000000'),
('fb887451-4f7e-481f-99e1-248847d5f5e7', '#322a2c', 'new_color_#322a2c', '2022-11-04 07:45:13.000000', b'1', '2022-11-04 07:45:13.000000'),
('fce153fa-28ba-4c00-b0c9-fb06f4ef3474', '#121212', 'new_color_#121212', '2022-10-29 19:31:23.000000', b'1', '2022-10-29 19:31:23.000000'),
('fd4f2355-b5aa-40f8-a5c3-26eb6e05af07', '#272526', 'new_color_#272526', '2022-11-04 07:56:36.000000', b'1', '2022-11-04 07:56:36.000000'),
('fea8bb58-4c01-4cbb-8e38-7981a8c83c25', '#f6fbe4', 'new_color_#f6fbe4', '2022-11-03 15:58:01.000000', b'1', '2022-11-03 15:58:01.000000'),
('ff43d9c2-ffb7-47a1-8638-fbbeda8565c9', '#69501c', 'new_color_#69501c', '2022-11-04 09:02:35.000000', b'1', '2022-11-04 09:02:35.000000'),
('ffa2602c-31d2-44f5-afc7-95ae0862281c', '#2e87dc', 'new_color_#2e87dc', '2022-11-04 09:44:08.000000', b'1', '2022-11-04 09:44:08.000000');

-- --------------------------------------------------------

--
-- Table structure for table `order_entity`
--

CREATE TABLE `order_entity` (
  `id` varchar(255) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `order_amount` float NOT NULL,
  `order_name` varchar(255) DEFAULT NULL,
  `order_state` int(11) NOT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_entity`
--

INSERT INTO `order_entity` (`id`, `create_at`, `order_amount`, `order_name`, `order_state`, `state`, `update_at`, `user_id`) VALUES
('b9c4f58b-43fb-4c19-959f-a292cc52a230', '2022-11-02 13:45:42.000000', 27, 'Order_2434cbf0-588a-468a-b5ee-bedbc6a8ebd1_User_hieu.dbutcl@gmail.com', 2, b'1', '2022-11-02 13:45:42.000000', '81d25dfb-b665-46c2-8903-a4258f927b77');

-- --------------------------------------------------------

--
-- Table structure for table `order_entity_product_cart`
--

CREATE TABLE `order_entity_product_cart` (
  `order_entity_id` varchar(255) NOT NULL,
  `product_cart_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_entity_product_cart`
--

INSERT INTO `order_entity_product_cart` (`order_entity_id`, `product_cart_id`) VALUES
('b9c4f58b-43fb-4c19-959f-a292cc52a230', 'b21e4c1f-6da9-4124-a231-29af0350bed9');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(255) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `product_desc` varchar(5000) DEFAULT NULL,
  `product_detail` varchar(5000) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `sale_off` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `brand_id` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `create_at`, `product_desc`, `product_detail`, `product_name`, `product_price`, `product_quantity`, `sale_off`, `slug`, `state`, `update_at`, `brand_id`, `category_id`) VALUES
('002824ea-9641-4409-8e3d-acc2cabb6a77', '2022-10-29 18:03:09.000000', ',Áo khoác hoodie nỉ siêu rẻ phù hợp nam nữ ', ',✅THÔNG TIN ÁO\r\nGồm 3 size M,L,XL \r\nForm unisex phù hợp Nam ,Nữ \r\nChất liệu : vải mát , chất vải 95% như hình, nỉ cotton mềm mịn\r\n\r\n\r\n✅ SỬ DỤNG VÀ BẢO QUẢN\r\n+ Nhớ lộn trái áo khi giặt và không giặt ngâm\r\n+ Không sử dụng thuốc tẩy\r\n+ Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời\r\n+ Dùng móc phơi không để hình in dính vào nhau\r\n\r\n✅CAM KẾT\r\nSản phẩm khách nhận không đẹp nhắn tin trực tiếp với shop để giải quyết trước khi khiếu nại.\r\nSản phẩm bị lỗi khách có thể đổi trả hàng miễn phí', 'Áo khoác hoodie nỉ siêu rẻ phù hợp nam nữ ', 10, 1000, 0, 'ao-khoac-hoodie-ni-sieu-re-phu-hop-nam-nu', b'1', '2022-10-29 18:03:09.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', '5d8bab3d-2911-4fdc-9227-e854761a6178'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '2022-10-29 18:13:03.000000', ',CITI MODE FASHION là thương hiệu thiết kế thời trang từ 2015 chuyên sản xuất các sản phẩm như đầm, chân váy, áo sơ mi... công sở dành riêng cho phái đẹp.', ',Thông tin sản phẩm:\r\nTên: Đầm công sở CITI MODE FASHION dáng xòe thiết kế tay ngắn cổ ve DH3325.\r\nChất liệu: Tuyết hàn cao cấp.\r\nMàu sắc: Xanh dương.\r\nTính chất vải: mềm mại, mặt vải mịn, 1 lớp.\r\nBộ sản phẩm bao gồm: 01 đầm.\r\n\r\nMô tả và công dụng:\r\n- Đầm công sở CITI MODE FASHION dáng xòe DH3325 với thiết kế cổ ve sang chảnh, tay áo dáng ngắn năng động, phối hợp khéo léo với họa tiết caro thời thượng nữ tính, tạo thêm nét đặc trưng có 1-0-2 của sản phẩm.\r\n- Đầm xòe DH3325 là dáng đầm công sở cao cấp được thiết kế cầu kỳ, cẩn thận từ khâu lên mẫu, sản phẩm phù hợp cho các nàng ăn diện trong tiết trời mát mẻ như mùa thu, xuân và hè.\r\n- Với chất liệu tuyết hàn cao cấp, cho các nàng bộ cánh thật sự thoải mái khi mặc lên.\r\n- Đầm công sở DH3325 xứng đáng là dáng đầm công sở nên có trong tủ đồ của các nàng.\r\n\r\nCITI MODE FASHION CAM KẾT\r\nSản phẩm được kiểm tra kỹ, cẩn thận và tư vấn nhiệt tình.\r\nHàng có sẵn, giao hàng ngay khi nhận được đơn.\r\nHoàn tiền nếu sản phẩm không giống với mô tả.\r\nChấp nhận đổi hàng khi size không vừa.\r\nGiao hàng trên toàn quốc, nhận hàng trả tiền.\r\nSản phẩm được thiết kế độc quyền chính hãng thương hiệu Citi Mode.\r\n\r\nQUY ĐỊNH BẢO HÀNH, ĐỔI TRẢ \r\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm).\r\n- Hàng hoá vẫn còn mới, chưa qua sử dụng. \r\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất.\r\n- Chỉ nhận lại hàng khi Nàng có video quay từ lúc mở hàng đến lúc kiểm tra hàng lỗi.\r\n2. Trường hợp được chấp nhận: \r\n- Hàng không đúng size, kiểu dáng như quý khách đặt hàng.\r\n- Không đủ số lượng, không đủ bộ như trong đơn hàng. \r\n3. Trường hợp không đủ điều kiện áp dụng chính sách: \r\n- Quá 07 ngày kể từ khi Quý khách nhận hàng.\r\n- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của CITI MODE FASHION.\r\n- Không thích, không hợp, đặt nhầm mã, nhầm màu... \r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.', 'Đầm công sở CITI MODE FASHION dáng xòe thiết kế tay ngắn cổ ve', 20, 1000, 0, 'dam-cong-so-citi-mode-fashion-dang-xoe-thiet-ke-tay-ngan-co-ve', b'1', '2022-10-29 18:13:03.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', '5c067ec6-7b2d-45e4-9133-703019be7328'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '2022-11-03 08:21:00.000000', ',<p>Danh Mục</p>\r\n\r\n<p><a href=\"https://shopee.vn/\">Shopee</a><a href=\"https://shopee.vn/Gi%C3%A0y-D%C3%A9p-Nam-cat.11035801\">Gi&agrave;y D&eacute;p Nam</a><a href=\"https://shopee.vn/X%C4%83ng-%C4%91an-v%C3%A0-D%C3%A9p-cat.11035801.11035811\">Xăng-đan v&agrave; D&eacute;p</a><a href=\"https://shopee.vn/X%C4%83ng-%C4%91an-cat.11035801.11035811.11035813\">Xăng-đan</a></p>\r\n\r\n<p>Gi&agrave;y cao g&oacute;t</p>\r\n\r\n<p>Trung B&igrave;nh</p>\r\n\r\n<p>Chất liệu</p>\r\n\r\n<p>Canvas, Cao su</p>\r\n\r\n<p>Loại mũi gi&agrave;y</p>\r\n\r\n<p>Mũi hở</p>\r\n\r\n<p>Chiều rộng ph&ugrave; hợp</p>\r\n\r\n<p>C&oacute;</p>\r\n\r\n<p>Loại Kh&oacute;a</p>\r\n\r\n<p>Kh&oacute;a d&aacute;n</p>\r\n\r\n<p>Xuất xứ</p>\r\n\r\n<p>Việt Nam</p>\r\n\r\n<p>Kiểu gi&agrave;y</p>\r\n\r\n<p>Kh&aacute;c</p>\r\n\r\n<p>Gi&agrave;y đi bộ</p>\r\n\r\n<p>C&oacute;</p>\r\n\r\n<p>T&ecirc;n tổ chức chịu tr&aacute;ch nhiệm sản xuất</p>\r\n\r\n<p>Giaybibi1</p>\r\n\r\n<p>Địa chỉ tổ chức chịu tr&aacute;ch nhiệm sản xuất</p>\r\n\r\n<p>Ph&uacute; y&ecirc;n</p>\r\n\r\n<p>Kho h&agrave;ng</p>\r\n\r\n<p>1661</p>\r\n\r\n<p>Gửi từ</p>\r\n\r\n<p>Huyện Ứng H&ograve;a, H&agrave; Nội</p>\r\n', ',<p>Kiểu d&aacute;ng mới nhất hiện nay mang &ecirc;m nhẹ ch&acirc;n Mẫu mới ph&ugrave; hợp c&aacute;c lứa tuổi Size từ 35 đến 39 chất si&ecirc;u đẹp nh&eacute; c&aacute;c bạn nhanh tay nh&eacute;! L&agrave; mẫu gi&agrave;y đang được c&aacute;c bạn nữ rất ưa chuộng hiện nay bởi những đặc t&iacute;nh nổi trội:Kiểu d&aacute;ng thời trang, năng động,trẻ trung dễ phối đồChất liệu đẹp, &ecirc;m v&agrave; dễ l&agrave;m sạch; đế cao su tổng hợp n&ecirc;n dẻo v&agrave; rất &ecirc;m ch&acirc;n.- Size 36-40- Gi&agrave;yTh&iacute;ch hợp khi tham gia c&aacute;c hoạt động thể thao, đạp xe, leo n&uacute;i , trượt v&aacute;n...- GI&Agrave;Y ulzzang nữ Dễ d&agrave;ng kết hợp với hầu hết c&aacute;c phong c&aacute;ch thời trang như:đi học,đi chơi,đi du lịch. gi&agrave;y đ&ocirc;i, gi&agrave;y nh&oacute;m...._ To&agrave;n bộ ảnh v&agrave; video l&agrave; shop tự chụp_______________________________________________:sparkles:H&agrave;ng trong kho to&agrave;n bộ l&agrave; h&agrave;ng c&oacute; sẵn. C&aacute;c bạn đặt h&agrave;ng chọn theo ph&acirc;n loại h&agrave;ng m&igrave;nh mua l&agrave; được nh&eacute;⚜️GIAO H&Agrave;NG TO&Agrave;N QUỐC SI&Ecirc;U NHANH⚜️Thanh to&aacute;n khi nhận h&agrave;ng:small_orange_diamond:Cam kết gi&aacute; cả cạnh tranh, mẫu m&atilde; đa dạng:small_orange_diamond:Bao chất - bao gi&aacute; - bao đổi trả nếu h&agrave;ng k&eacute;m chất lượng:white_check_mark: N&oacute;i kh&ocirc;ng với h&agrave;ng chợ, h&agrave;ng k&eacute;m chất lượng:white_check_mark: Đổi trả h&agrave;ng kh&ocirc;ng mất ph&iacute; nếu h&agrave;ng kh&ocirc;ng giống ảnh trong v&ograve;ng 3 ng&agrave;y.</p>\r\n', 'Sandal Nữ AIR Phản Quang Học Sinh 2 màu Siêu Hot', 5, 100, 0, 'sandal-nu-air-phan-quang-hoc-sinh-2-mau-sieu-hot', b'1', '2022-11-03 08:21:00.000000', '589f4c6c-c431-40c3-b49a-1cfe5ee6ba6c', '006a799f-9cc6-419c-a774-c7052be0c51f'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '2022-11-03 16:17:13.000000', ',<p>V&ograve;ng Cổ Choker Bằng Da Thời Trang C&aacute; T&iacute;nh D&agrave;nh Cho Nữ</p>\r\n', ',<p>Phong c&aacute;ch: phong c&aacute;ch H&agrave;n Quốc / phong c&aacute;ch H&agrave;n Quốc Loại: v&ograve;ng cổ Phong c&aacute;ch: nữ t&iacute;nh H&igrave;nh dạng: Ng&ocirc;i sao Với mặt d&acirc;y chuyền: C&oacute; Chuỗi d&acirc;y mở rộng: dưới 10cm Chu vi: 21cm (bao gồm) - 50cm (bao gồm) C&aacute;c yếu tố phổ biến: H&igrave;nh học C&aacute;c yếu tố phổ biến: Ng&ocirc;i sao Danh mục sản phẩm: đồ trang tr&iacute;</p>\r\n', 'Vòng Cổ Choker Bằng Da Thời Trang Cá Tính Dành Cho Nữ ', 18, 100, 0, 'vong-co-choker-bang-da-thoi-trang-ca-tinh-danh-cho-nu', b'1', '2022-11-03 16:17:13.000000', 'dc3cca73-baf1-409f-804f-52e922895582', 'abe93b9c-3a86-451f-8f1f-19360c488245'),
('0b590666-a985-4fac-b374-f7b4189f88d2', '2022-11-04 09:02:35.000000', ',<p>Nước hoa nam John Varvatos Artisan 125ml</p>\r\n', ',<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước hoa nam Gentlemen hương thơm mới, thiết kế chai dạng xịt v&agrave; h&igrave;nh d&aacute;ng bắt mắt, sang trọng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nh&agrave; sản xuất Gentlemen đ&atilde; c&ocirc;ng bố thời gian lưu hương b&ecirc;n bạn 4-5h, v&agrave; độ tỏa hương xa tới b&aacute;n k&iacute;nh 2m, gi&uacute;p bạn lu&ocirc;n nổi bật ở mọi nơi bạn tới, 🍒</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước hoa Gentlemen với hương thơm:</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương đầu: Chanh, qu&yacute;t, bưởi, gừng đặc trưng kh&oacute; phai của nước hoa nam Gentlemen</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương giữa: Lavender (oải hương), hoa chu&ocirc;ng, cẩm t&uacute; cầu, đại dương ngọt ng&agrave;o, l&ocirc;i cuốn thơm L&acirc;u.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương cuối: Sự cuốn h&uacute;t, n&oacute;ng bỏng kh&oacute; cưỡng với Hổ ph&aacute;ch, đ&agrave;n hương, xạ hương Với hương thơm the m&aacute;t từ chanh, qu&yacute;t lướt tr&ecirc;n vị cay của gừng kết hợp với hương thơm đại dương tạo n&ecirc;n sự tươi m&aacute;t, sảng kho&aacute;i ngay khi xịt, th&ecirc;m ch&uacute;t hương thơm ngọt ng&agrave;o, tr&agrave;n trề sinh lực của lavender, g&acirc;y ấn tượng mạnh mẽ bởi hương gỗ đ&agrave;n hương, hổ ph&aacute;ch, xạ hương tạo n&ecirc;n sự cuốn h&uacute;t kh&oacute; cưỡng.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen L&agrave; Sự kết hợp tinh tế của hương thơm tự nhi&ecirc;n tạo n&ecirc;n d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng với n&eacute;t ri&ecirc;ng v&ocirc; c&ugrave;ng cuốn h&uacute;t, gi&uacute;p bạn tự tin trước đ&aacute;m đ&ocirc;ng hoặc những người xung quanh,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương thơm nam t&iacute;nh đến từ sản phẩm Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen sẽ chinh phục được bạn ngay từ lần sử dụng đầu ti&ecirc;n, hứa hẹn sẽ l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường bạn đi,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen. Kh&ocirc;ng chỉ d&agrave;nh ri&ecirc;ng cho Qu&yacute; Anh. Kể cả c&aacute;c n&agrave;ng nếu muốn thử một m&ugrave;i hương c&aacute; t&iacute;nh mạnh th&igrave; cũng c&oacute; thể thử d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng n&agrave;y với sự tươi mới v&agrave; nguồn năng lượng m&atilde;nh liệt. - C&aacute;ch sử dụng: Giữ chai thẳng đứng, lắc đều v&agrave; nhấn v&agrave; xịt v&agrave;o v&ugrave;ng tay v&agrave; cổ. - Bảo quản: Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Tr&aacute;nh tiếp x&uacute;c trực tiếp với mắt v&agrave; tr&aacute;nh xa tầm tay trẻ em.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Nước hoa nam John Varvatos Artisan 125ml', 265, 100, 0, 'nuoc-hoa-nam-john-varvatos-artisan-125ml', b'1', '2022-11-04 09:02:35.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', '002eae57-0370-4bb5-a904-4242087f981b'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '2022-11-04 08:40:39.000000', ',<p>Nhẫn Hở H&igrave;nh Ng&ocirc;i Sao Mặt Trăng 12 Th&aacute;ng Thời Trang H&agrave;n Quốc Th&iacute;ch Hợp L&agrave;m Qu&agrave; Tặng Sinh Nhật Tốt Nhất Cho Nam V&agrave; Nữ</p>\r\n', ',<p>Thời gian giao h&agrave;ng dự kiến cho sản phẩm n&agrave;y l&agrave; từ 7-9 ng&agrave;y</p>\r\n\r\n<p>Nếu bạn kh&ocirc;ng biết k&iacute;ch thước của bạn</p>\r\n\r\n<p>Bạn c&oacute; thể đo ng&oacute;n tay của bạn theo bảng k&iacute;ch thước.</p>\r\n\r\n<p>Khi đo, vui l&ograve;ng đo v&ugrave;ng d&agrave;y nhất của ng&oacute;n tay.</p>\r\n\r\n<p>Sau đ&oacute; chọn K&Iacute;CH THƯỚC US dựa tr&ecirc;n kết quả chu vi Sản phẩm ho&agrave;n to&agrave;n mới 100% v&agrave; chất lượng cao</p>\r\n\r\n<p>Loại sản phẩm: Nhẫn M&agrave;u sắc: Bạc, V&agrave;ng hồng</p>\r\n\r\n<p>Chủ đề: Thời trang Đ&iacute;nh đ&aacute;: kim cương Kim loại: Titan K&iacute;ch thước nhẫn (US): 5 6 7 8 9 10</p>\r\n\r\n<p>G&oacute;i h&agrave;ng bao gồm: 1 sản phẩm</p>\r\n\r\n<p>Lưu &yacute;: C&aacute;c sản phẩm c&oacute; chất liệu v&agrave;ng, kim cương, đ&aacute; qu&yacute; trong shop đều l&agrave; xi mạ/ nh&acirc;n tạo.</p>\r\n', 'Nhẫn Hở Hình Ngôi Sao Mặt Trăng 12 Tháng Thời Trang Hàn Quốc Thích Hợp Làm Quà Tặng Sinh Nhật Tốt Nhất Cho Nam Và Nữ', 43, 100, 0, 'nhan-ho-hinh-ngoi-sao-mat-trang-12-thang-thoi-trang-han-quoc-thich-hop-lam-qua-tang-sinh-nhat-tot-nhat-cho-nam-va-nu', b'1', '2022-11-04 08:40:39.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', 'eda2e75a-7a39-40ae-b387-e0c60c643a93'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '2022-10-29 23:19:32.000000', ',Váy Cho Bé Gái 2 Màu Dáng Xòe Dài Tay Họa Tiết Xinh Xắn Thời Trang Bello Land - Kid\'s Fashion', ',Hàng nhập khẩu\r\n* Bello Land - Kid\'s Fashion  \r\n👉 Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh.\r\n👉 Hoàn tiền nếu sản phẩm không giống với mô tả\r\n*  HƯỚNG DẪN ĐẶT HÀNG \r\n Bấm chọn MÀU \r\n⏩ Bấm chọn SIZE và SỐ LƯỢNG \r\n⏩ Bấm THÊM VÀO GIỎ HÀNG \r\n⏩ Tiếp tục chọn các mẫu hoặc màu khác và làm giống các bước như trên\r\n⏩ Chọn đủ mẫu và số lượng sau đó chọn MUA HÀNG\r\n* MÔ TẢ SẢN PHẨM\r\n- Sản xuất tại Việt Nam.\r\n- Size: 2 3 4 5 6\r\n* HƯỚNG DẪN BẢO QUẢN\r\nGiặt tay hoặc giặt bằng máy không quá 30 độ C.\r\nLà ở nhiệt độ thường.\r\nKhông giặt chung đồ bị phai màu.\r\nKhông ngâm sản phẩm quá 30 phút với xà phòng giặt.\r\nKhông sử dụng chất tẩy mạnh.\r\n* CHÍNH SÁCH ĐỔI SẢN PHẨM\r\nThời gian đổi sản phẩm: Trong vòng 7 ngày kể từ ngày nhận.\r\nMỗi đơn hàng được đổi tối đa 01 lần.\r\nSản phẩm đổi có giá trị bằng hoặc thấp hơn sản phẩm đã mua (khoản phí thừa sẽ không được hoàn trả).\r\nSản phẩm phải còn nguyên mác, chưa qua sử dụng, giặt tẩy, không bị dơ, bẩn hoặc bị hư hỏng bởi các tác nhân bên ngoài.\r\nKhông áp dụng đổi hàng đối với sản phẩm mua trong chương trình khuyến mại (Trừ trường hợp lỗi do sản phẩm)', 'Váy Cho Bé Gái 2 Màu Dáng Xòe Dài Tay Họa Tiết Xinh Xắn Thời Trang Bello Land - Kid\'s Fashion', 35, 100, 0, 'vay-cho-be-gai-2-mau-dang-xoe-dai-tay-ha-tiet-xinh-xan-thoi-trang-bello-land-kids-fashion', b'1', '2022-10-29 23:19:32.000000', '896f3590-ab28-4fe1-bace-e4fe611683d4', 'e777d18a-ee2f-4ce5-9f13-bae0c6508aaf'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '2022-11-03 08:35:46.000000', ',<p>Chất liệu</p>\r\n\r\n<p>Da</p>\r\n\r\n<p>Loại Kh&oacute;a</p>\r\n\r\n<p>Kh&oacute;a c&agrave;i</p>\r\n\r\n<p>Địa chỉ tổ chức chịu tr&aacute;ch nhiệm sản xuất</p>\r\n\r\n<p>Đang cập nhật</p>\r\n\r\n<p>Xuất xứ</p>\r\n\r\n<p>Trung Quốc</p>\r\n\r\n<p>Dịp</p>\r\n\r\n<p>Hằng Ng&agrave;y</p>\r\n\r\n<p>Loại mũi gi&agrave;y</p>\r\n\r\n<p>Mũi tr&ograve;n</p>\r\n\r\n<p>Gi&agrave;y cao g&oacute;t</p>\r\n\r\n<p>Trung B&igrave;nh</p>\r\n\r\n<p>Kho h&agrave;ng</p>\r\n\r\n<p>176</p>\r\n\r\n<p>Gửi từ</p>\r\n\r\n<p>Quận Đống Đa, H&agrave; Nội</p>\r\n', ',<p>T&ecirc;n sản phẩm: Gi&agrave;y oxford nữ, gi&agrave;y b&uacute;p b&ecirc; marry jane đế cao g&oacute;t vu&ocirc;ng mũi tr&ograve;n may chỉ nổi 5cm học sinh lolita chất liệu da C1006 - Th&agrave;nh phần: Da Pu - Đế: 5cm - Th&ocirc;ng số kỹ thuật: Size chuẩn Ch&acirc;u &Aacute; - Th&ocirc;ng tin cảnh b&aacute;o: kh&ocirc;ng c&oacute; - Hướng dẫn sử dụng: Gi&agrave;y n&ecirc;n được vệ sinh thường xuy&ecirc;n để sản phẩm lu&ocirc;n như mới v&agrave; chất da bền hơn - Hướng dẫn bảo quản: Bảo quản nơi kh&ocirc; m&aacute;t, tr&aacute;nh ẩm mốc l&acirc;u ng&agrave;y.,tr&aacute;nh nhiệt độ cao... - Xuất xứ: Việt Nam Gi&agrave;y oxford nữ, gi&agrave;y b&uacute;p b&ecirc; marry jane đế cao g&oacute;t vu&ocirc;ng mũi tr&ograve;n may chỉ nổi 5cm học sinh lolita chất liệu da C1006 CH&Iacute;NH S&Aacute;CH ĐỔi TRẢ: ĐIỀU KIỆN: - GI&Agrave;Y CHƯA ĐI XUỐNG ĐẤT NỀN - ĐI THỬ TRONG NH&Agrave; TH&Igrave; SHOP VẪN NHẬN ĐỔI TRẢ - GI&Agrave;Y C&Ograve;N NGUY&Ecirc;N PHỤ KIỆN + HỘP/BAO B&Igrave; ĐI K&Egrave;M( nếu hộp nhận bị b&oacute;p m&eacute;o kh&ocirc;ng thể t&aacute;i sử dụng th&igrave; kh&aacute;ch kiếm hộp catton n&agrave;o đ&oacute; ph&ugrave; hợp để gi&agrave;y trả lại shop nh&eacute;) ĐỔI SIZE : - B&Aacute;O SHOP SIZE MONG MUỐN ĐỂ ĐƯỢC NHẬN H&Agrave;NG MỚI H&Agrave;NG LỖI/TRẢ H&Agrave;NG: - SHOP/SHOPEE HO&Agrave;N LẠI TIỀN CHO BẠN SAU KHI NHẬN ĐƯỢC GI&Agrave;Y VỀ SHOP. LI&Ecirc;N HỆ QUA CHAT SHOPEE HOẶC SĐT HOTLINE 0981997667 ĐỂ CH&Uacute;NG M&Igrave;NH HỖ TRỢ NHANH NHẤT NH&Eacute; &lt;3 Gi&agrave;y oxford nữ, gi&agrave;y b&uacute;p b&ecirc; marry jane đế cao g&oacute;t vu&ocirc;ng mũi tr&ograve;n may chỉ nổi 5cm học sinh lolita chất liệu da C1006</p>\r\n', 'Giày oxford nữ, giày búp bê marry jane đế cao gót vuông mũi tròn may chỉ nổi 5cm học sinh lolita chất liệu da C1006', 10, 100, 0, 'giay-oxford-nu-giay-bup-be-marry-jane-de-cao-got-vuong-mi-tron-may-chi-noi-5cm-hoc-sinh-lolita-chat-lieu-da-c1006', b'1', '2022-11-03 08:35:46.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', '006a799f-9cc6-419c-a774-c7052be0c51f'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '2022-11-03 00:30:53.000000', ',<p>Nước hoa Nam Bleu De Chanel 100ml lịch l&atilde;m quyến rũ lưu hương l&acirc;u - Dầu thơm nam t&iacute;nh sang trọng lịch sự - Daikon Store</p>\r\n', ',<p>Nước hoa nam dầu thơm nam t&iacute;nh Bleu 100ml lịch l&atilde;m quyến rũ lưu hương l&acirc;u - DaikonStore Th&ocirc;ng tin sản phẩm: - T&ecirc;n sản phẩm: Nước hoa nam dầu thơm nam t&iacute;nh Bleu 100ml lịch l&atilde;m quyến rũ lưu hương l&acirc;u - DaikonStore - Nồng độ: EDP bản cao cấp - Loại nước hoa nam: H&agrave;ng nội địa trung - M&ugrave;i hương đặc trưng - Nh&oacute;m hương: Woody - Phong c&aacute;ch: lịch l&atilde;m, nam t&iacute;nh, ấm &aacute;p - Dung t&iacute;ch: 100ml - C&aacute;ch sử dụng: Xịt l&ecirc;n v&ugrave;ng cổ tay, sau g&aacute;y, cổ Hương đầu: hoa labdanum,hạt ti&ecirc;u hồng, chanh, bưởi Hương giữa: gừng, c&acirc;y patchouli, hoa nh&agrave;i, nhục đậu khấu Hương cuối: gỗ đ&agrave;n hương, tuyết t&ugrave;ng, bạc h&agrave;, hương trầm, cỏ vetiver Nước hoa nam (Dầu Thơm) Bleu lịch l&atilde;m cho nam - Nồng độ EDP dung t&iacute;ch 100ml - Hương thơm nam t&iacute;nh quyến rũ lưu hương l&acirc;u - Daikon Store được kết hợp sở hữu đặc trưng đẳng cấp v&agrave; lịch l&atilde;m vốn với của nước hoa, đ&acirc;y l&agrave; chai nước hoa được khiến ra để d&agrave;nh ri&ecirc;ng cho ph&aacute;i mạnh, sở hữu lại sự khỏe khoắn sảng kho&aacute;i v&agrave; bắt mắt. Mang hương thơm nhẹ nh&otilde;m ngẫu nhi&ecirc;n trong khoảng tự nhi&ecirc;n v&agrave; sự cuốn h&uacute;t gợi cảm được lưu lại tr&ecirc;n l&agrave;n da, tạo ra 1 sức l&ocirc;i k&eacute;o quyến rũ kh&ocirc;ng thể cưỡng lại được. Sản phẩm ph&ugrave; hợp ti&ecirc;u d&ugrave;ng v&agrave;o những ng&agrave;y trời n&oacute;ng ẩm của m&ugrave;a xu&acirc;n v&agrave; hạ. Được kết hợp mang đặc th&ugrave; sang trọng v&agrave; lịch l&atilde;m vốn với của nước hoa, đ&acirc;y l&agrave; chai nước hoa được khiến cho ra để d&agrave;nh ri&ecirc;ng cho ph&aacute;i mạnh, với lại sự khỏe khoắn sảng kho&aacute;i v&agrave; phong c&aacute;ch. Cam kết với kh&aacute;ch h&agrave;ng: * Sản phẩm 100% giống m&ocirc; tả * Giao h&agrave;ng ngay khi nhận được đơn * Đổi trả theo đ&uacute;ng quy định của Shopee : 1. Điều kiện &aacute;p dụng (trong v&ograve;ng 03 ng&agrave;y kể từ khi nhận sản phẩm): - H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng - H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất 2. Trường hợp được chấp nhận: - H&agrave;ng kh&ocirc;ng đ&uacute;ng chủng loại, mẫu m&atilde; như qu&yacute; kh&aacute;ch đặt h&agrave;ng - Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng - T&igrave;nh trạng b&ecirc;n ngo&agrave;i bị ảnh hưởng như r&aacute;ch bao b&igrave;, bong tr&oacute;c, bể vỡ&hellip; 3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch: - Qu&aacute; 03 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng. - Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải h&agrave;ng của shop - Do m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%.</p>\r\n', 'Nước hoa Nam Bleu De Chanel 100ml lịch lãm quyến rũ lưu hương lâu - Dầu thơm nam tính sang trọng lịch sự - Daikon Store', 10, 1000, 0, 'nuoc-hoa-nam-bleu-de-chanel-100ml-lch-lam-quyen-r-lu-huong-lau-dau-thom-nam-tinh-sang-trong-lich-su-daikon-store', b'1', '2022-11-03 00:30:53.000000', 'dc3cca73-baf1-409f-804f-52e922895582', '002eae57-0370-4bb5-a904-4242087f981b'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '2022-11-04 09:25:04.000000', ',<p>Nước hoa nữ Qu&ecirc;n tram</p>\r\n', ',<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Nh&oacute;m nước hoa: Hương va-ni phương đ&ocirc;ng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Giới t&iacute;nh: Nữ Độ tuổi khuy&ecirc;n d&ugrave;ng: Tr&ecirc;n 25</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Năm ra mắt: 2014 Nồng độ: EDP Nh&agrave; pha chế: Olivier Cresp</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Độ lưu hương: Tạm ổn &ndash; 3 giờ đến 6 giờ</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Độ toả hương: Gần &ndash; Toả hương trong v&ograve;ng một c&aacute;nh tay</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, Đ&ecirc;m, Thu, Đ&ocirc;ng Phong c&aacute;ch: B&iacute; ẩn , Năng động ,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Thu h&uacute;t Hương Đầu: Hồng ti&ecirc;u, Hoa cam, Quả l&ecirc;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Hương giữa: C&agrave; ph&ecirc;, Hoa nh&agrave;i, Hạnh nh&acirc;n đắng, Cam thảo Hương cuối: Hương Va ni, C&acirc;y hoắc hương, Gỗ tuyết t&ugrave;ng, Gỗ Cashmer</span></span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'Nước hoa nữ Quên tram', 198, 100, 0, 'nuoc-hoa-nu-quen-tram', b'1', '2022-11-04 09:25:04.000000', '2f89b595-73d4-4824-b899-00d399276c09', 'da8954d2-e3d5-4c27-baaf-81e82a687c2e'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '2022-10-29 22:22:58.000000', ',Áo khoác in hình BatMan sau lưng siêu ngầu cho bé - Destiny Kid - Chất nỉ da cá dày dặn , đứng form , dễ phối đồ', ',𝐀́𝐎 𝐊𝐇𝐎𝐀́𝐂 𝐍𝐈̉ 𝐈𝐍 𝐇𝐈̀𝐍𝐇 𝐁𝐀𝐓𝐌𝐀𝐍 𝐒𝐀𝐔 𝐋𝐔̛𝐍𝐆 𝐒𝐈𝐄̂𝐔 𝐍𝐆𝐀̂̀𝐔 𝐂𝐇𝐎 𝐁𝐄́\r\n🐅  Chất vải nỉ da cá dày dặn, thấm hút mồ hôi tốt\r\n🐅  Áo phối màu nổi bật in hình người dơi bé nào cũng thích\r\n🐅  Màu sắc trang nhã, mẹ tha hồ mix đồ cho bé đi học đi chơi\r\n🐅  Mẫu cực hot, sỉ lên đơn em cho hàng đi luôn nhé!!!\r\n——————————\r\n𝐒𝐢𝐳𝐞 𝟖𝟎-𝟏𝟑𝟎: (𝟗-𝟐𝟓𝐤𝐠)\r\n𝐂𝐨𝐥𝐨𝐫: 𝐗𝐚𝐧𝐡 𝐥𝐮̣𝐜 - 𝐗𝐚𝐧𝐡 𝐭𝐡𝐚𝐧', 'Áo khoác in hình BatMan sau lưng siêu ngầu cho bé - Destiny Kid - Chất nỉ da cá dày dặn , đứng form , dễ phối đồ', 11, 100, 0, 'ao-khoac-in-hinh-batman-sau-lung-sieu-ngau-cho-be-destiny-kid-chat-ni-da-ca-day-dan-dung-form-de-phoi-do', b'1', '2022-10-29 22:22:58.000000', '6e6c93d0-23da-4c34-9a0f-b4a0c20457dc', 'e777d18a-ee2f-4ce5-9f13-bae0c6508aaf'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', '2022-11-04 09:30:29.000000', ',<p>Nước Hoa Nữ My BURBERRY New Seal m&ugrave;i hương dịu d&agrave;ng, tinh tế, sang trọng - 90ml</p>\r\n', ',<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Nh&oacute;m nước hoa: Hương va-ni phương đ&ocirc;ng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Giới t&iacute;nh: Nữ Độ tuổi khuy&ecirc;n d&ugrave;ng: Tr&ecirc;n 25</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Năm ra mắt: 2014 Nồng độ: EDP Nh&agrave; pha chế: Olivier Cresp</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Độ lưu hương: Tạm ổn &ndash; 3 giờ đến 6 giờ</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Độ toả hương: Gần &ndash; Toả hương trong v&ograve;ng một c&aacute;nh tay</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, Đ&ecirc;m, Thu, Đ&ocirc;ng Phong c&aacute;ch: B&iacute; ẩn , Năng động ,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Thu h&uacute;t Hương Đầu: Hồng ti&ecirc;u, Hoa cam, Quả l&ecirc;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Hương giữa: C&agrave; ph&ecirc;, Hoa nh&agrave;i, Hạnh nh&acirc;n đắng, Cam thảo Hương cuối: Hương Va ni, C&acirc;y hoắc hương, Gỗ tuyết t&ugrave;ng, Gỗ Cashmer</span></span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'Nước Hoa Nữ My BURBERRY New Seal mùi hương dịu dàng, tinh tế, sang trọng - 90ml', 99, 100, 0, 'nuoc-hoa-nu-my-burberry-new-seal-mui-huong-diu-dang-tinh-te-sang-trong-90ml', b'1', '2022-11-04 09:30:29.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', 'da8954d2-e3d5-4c27-baaf-81e82a687c2e'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '2022-10-29 18:28:31.000000', ',Chào mừng bạn đến với cửa hàng của chúng tôi. Nếu bạn có nhu cầu mua sản phẩm. Vui lòng liên hệ bộ phận chăm sóc khách hàng để được tư vấn kích thước và màu sắc liên quan trước. Xin cảm ơn\r\nCửa hàng này là cửa hàng Trung Quốc.Nếu bạn cần hàng gấp, xin vui lòng không đặt hàng. Cảm ơn bạn.', ', Đặc điểm\r\n 100% sản phẩm mới, chất lượng cao! Chất liệu là cotton và spandex.\r\n \r\n Chiếc áo sơ mi dài tay này được thiết kế với chất liệu cotton đan siêu mềm và rất dễ mặc. Rất thích hợp để đồng hành cùng bạn ở nhà hay dạo phố.\r\n \r\n Áo sơ mi nam tay dài rộng rãi, thoải mái, giản dị, đa năng, thời trang, cá tính.\r\n Thiết kế rất thời trang và quý ông.\r\n Vải mềm.\r\n Cần thiết cho tủ quần áo.\r\n Bạn có thể mặc hàng ngày.\r\n Phong cách thời trang đường phố.\r\n \r\n Kích thước dành cho người châu Á: M L XL 2XL\r\n M: chiều dài 70 ngực 104 vai 48 chiều dài tay áo 55\r\n L: chiều dài 72 ngực 108 vai 50 chiều dài tay áo 56\r\n XL: chiều dài 74 ngực 112 vai 52 chiều dài tay áo 57\r\n 2XL: chiều dài 76 ngực 116 vai 54 chiều dài tay áo 58\r\n \r\n Kích thước tham khảo:\r\n M: chiều cao phù hợp xấp xỉ 155-160CM. cân nặng 45-50KG\r\n L: chiều cao phù hợp xấp xỉ 160-165CM. cân nặng 50-55KG\r\n XL: chiều cao phù hợp xấp xỉ 165-170CM. cân nặng 60-70KG\r\n 2XL: chiều cao phù hợp xấp xỉ 170-175CM. cân nặng 70-80KG', 'Korean Fashion Men\'s Long Sleeve Solid Color Shirt', 10, 100, 0, 'korean-fashion-mens-long-sleeve-solid-color-shirt', b'1', '2022-10-29 18:28:31.000000', '5b81bcf4-fddd-45bf-b37b-31d0eae81565', '5d8bab3d-2911-4fdc-9227-e854761a6178'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '2022-11-04 07:36:51.000000', ',<p>👗THỊNH H&Agrave;NH👗Sexy Women Body Leather Harness Chest Bra Straps Belt Punk Gothic Corsets</p>\r\n', ',<p>welcome to oneleft.vn</p>\r\n\r\n<p>👗THỊNH H&Agrave;NH👗Sexy Women Body Leather Harness Chest Bra Straps Belt Punk Gothic Corsets Description: Features: Fashion and Classic Simple Style. Durable material, comfortable and flexible to wear, make you look more charming and unique. Perfect for cosplay or roleplay, nightclub, party, lingerie night or self pleasure.</p>\r\n\r\n<p>Material: pu Leather + Metal</p>\r\n\r\n<p>Color: Black(as picture shown)</p>\r\n\r\n<p>Size: One Size,the size can be adjustable</p>\r\n\r\n<p>Belt length about 78cm-95cm/30.7in-37.4inch</p>\r\n\r\n<p>Choker length:33cm-45cm/12.9in-17.7inch</p>\r\n\r\n<p>Package Include: 1Pc Harness Belt</p>\r\n\r\n<p>Note: The size is measured by hands, please allow minor error of measurement.</p>\r\n\r\n<p>Photo color might be a little different from the actual product due to color display of different monitors.</p>\r\n', '👗THỊNH HÀNH👗Sexy Women Body Leather Harness Chest Bra Straps Belt Punk Gothic Corsets', 115, 100, 0, 'thinh-hanhsexy-women-body-leather-harness-chest-bra-straps-belt-punk-gothic-corsets', b'1', '2022-11-04 07:36:51.000000', '2f89b595-73d4-4824-b899-00d399276c09', '5d3fa890-53a6-43bb-8683-05fc83ea72c1'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '2022-11-04 09:22:43.000000', ',<p>Nước hoa nữ Yves Saint Laurent- Black Opium</p>\r\n', ',<p>Nh&oacute;m nước hoa: Hương va-ni phương đ&ocirc;ng</p>\r\n\r\n<p>Giới t&iacute;nh: Nữ Độ tuổi khuy&ecirc;n d&ugrave;ng: Tr&ecirc;n 25</p>\r\n\r\n<p>Năm ra mắt: 2014 Nồng độ: EDP Nh&agrave; pha chế: Olivier Cresp</p>\r\n\r\n<p>Độ lưu hương: Tạm ổn &ndash; 3 giờ đến 6 giờ</p>\r\n\r\n<p>Độ toả hương: Gần &ndash; Toả hương trong v&ograve;ng một c&aacute;nh tay</p>\r\n\r\n<p>Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, Đ&ecirc;m, Thu, Đ&ocirc;ng Phong c&aacute;ch: B&iacute; ẩn , Năng động ,</p>\r\n\r\n<p>Thu h&uacute;t Hương Đầu: Hồng ti&ecirc;u, Hoa cam, Quả l&ecirc;</p>\r\n\r\n<p>Hương giữa: C&agrave; ph&ecirc;, Hoa nh&agrave;i, Hạnh nh&acirc;n đắng, Cam thảo Hương cuối: Hương Va ni, C&acirc;y hoắc hương, Gỗ tuyết t&ugrave;ng, Gỗ Cashmer</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Nước hoa nữ Yves Saint Laurent- Black Opium', 99, 100, 0, 'nuoc-hoa-nu-yves-saint-laurent-black-opium', b'1', '2022-11-04 09:22:43.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', 'da8954d2-e3d5-4c27-baaf-81e82a687c2e'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '2022-10-29 20:34:57.000000', ',Sexy Women\'s Summer Fashion Colorful Knit Stretch Top', ',Vải / chất liệu: Khác / Khác\r\nHàm lượng chất liệu: 30% trở xuống\r\nPhong cách: đi làm đơn giản / Châu Âu và Mỹ\r\nChiều dài tay áo: dài tay\r\nĐộ tuổi sử dụng: Thanh niên (18-25 tuổi)\r\nCó thêm nhung: không lót nhung\r\nMùa niêm yết: Mùa hè năm 2022', 'Sexy Women\'s Summer Fashion Colorful Knit Stretch Top', 15, 1000, 0, 'sexy-womens-summer-fashion-colorful-knit-stretch-top', b'1', '2022-10-29 20:34:57.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', '5c067ec6-7b2d-45e4-9133-703019be7328'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '2022-11-04 08:12:42.000000', ',<p>Khuy&ecirc;n tai bạc nữ TLEE tr&ograve;n chốt bấm tua hạt đ&aacute; nhỏ xinh xắn TleeJewelry</p>\r\n', ',<p>TH&Ocirc;NG TIN SẢN PHẨM KHUY&Ecirc;N TAI BẠC TLEE JEWELRY</p>\r\n\r\n<p>- Chất liệu: Bạc S925 (92,5% Bạc v&agrave; 7,5% kim loại kh&aacute;c sản xuất theo c&ocirc;ng nghệ Bạc &Yacute;) h&agrave;ng gia c&ocirc;ng kĩ b&oacute;ng đẹp, kh&ocirc;ng han gỉ, kh&ocirc;ng dị ứng, dễ l&agrave;m s&aacute;ng v&agrave; bảo quản</p>\r\n\r\n<p>- Kiểu c&aacute;ch: Thiết kế thanh lịch, trẻ trung, tinh tế, sắc sảo</p>\r\n\r\n<p>- Sản xuất: được thiết kế bởi TLEE JEWELRY</p>\r\n\r\n<p>- Khuy&ecirc;n tai bạc TLEE JEWELRY được thiết kế thanh lịch, trẻ trung theo xu hướng mới nhất của ng&agrave;nh phụ kiện trang sức</p>\r\n\r\n<p>- Khuy&ecirc;n tai được gia c&ocirc;ng v&ocirc; c&ugrave;ng kĩ lưỡng, tỉ mỉ tạo n&ecirc;n một sản phẩm trang sức ho&agrave;n hảo</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>HƯỚNG DẪN SỬ DỤNG V&Agrave; BẢO QUẢN KHUY&Ecirc;N TAI BẠC TLEE JEWELRY</p>\r\n\r\n<p>- Tr&aacute;nh để trang sức tiếp x&uacute;c với ho&aacute; chất, chất tẩy rửa mạnh, c&oacute; thể l&agrave;m s&aacute;ng trang sức bằng c&aacute;ch ch&agrave; kem đ&aacute;nh răng, nước rửa b&aacute;t, nước chanh...</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh trang sức băng khăn l&agrave;m s&aacute;ng, que l&agrave;m s&aacute;ng (phụ kiện vệ sinh sản phẩm của shop) n&ecirc;n vệ sinh nhẫn bạc thường xuy&ecirc;n bằng nước rửa bạc 1-3 th&aacute;ng/lần để đảm bảo sản phẩm lu&ocirc;n được s&aacute;ng b&oacute;ng.</p>\r\n\r\n<p>- Khi kh&ocirc;ng đeo, bảo quản trang sức nơi kh&ocirc; r&aacute;o, tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm thấp.</p>\r\n\r\n<p>- N&ecirc;n để trang sức trong t&uacute;i zip, th&ecirc;m 1 miếng b&ocirc;ng g&ograve;n nhỏ để h&uacute;t ẩm gi&uacute;p bảo quản tốt hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NCJ CAM KẾT TRANG SỨC TLEE JEWELRY</p>\r\n\r\n<p>- Sản phẩm giống ảnh, giống m&ocirc; tả 100%.</p>\r\n\r\n<p>- H&igrave;nh ảnh, video đều l&agrave; ảnh thật, video quay lại những g&oacute;c độ ch&acirc;n thật nhất của sản phẩm.</p>\r\n\r\n<p>- Tư vấn hỗ trợ kh&aacute;ch h&agrave;ng nhiệt t&igrave;nh 24/24.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>QUYỀN LỢI CỦA KH&Aacute;CH KHI MUA SẢN PHẨM KHUY&Ecirc;N TAI BẠC TLEE JEWELRY</p>\r\n\r\n<p>- Bảo h&agrave;nh l&agrave;m s&aacute;ng đ&aacute;nh b&oacute;ng trọn đời sản phẩm.</p>\r\n\r\n<p>- Hỗ trợ đổi trả miễn ph&iacute; trong v&ograve;ng 07 ng&agrave;y (theo ch&iacute;nh s&aacute;ch của Shopee).</p>\r\n\r\n<p>- Sản phẩm Qu&yacute; kh&aacute;ch nhận sau khi mua sắm nếu c&oacute; bất cứ vấn đề g&igrave; cần giải đ&aacute;p, hỗ trợ h&atilde;y chat ngay cho shop để được nh&acirc;n vi&ecirc;n chăm s&oacute;c nhanh nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>*Lưu &yacute;: Qu&yacute; kh&aacute;ch vui l&ograve;ng quay lại video mở sản phẩm để l&agrave;m cơ sở giải quyết khiếu nại đổi/trả khi c&oacute; vấn đề ph&aacute;t sinh li&ecirc;n quan đến sản phẩm.</p>\r\n', 'Khuyên tai bạc nữ TLEE tròn chốt bấm tua hạt đá nhỏ xinh xắn TleeJewelry', 80, 100, 0, 'khuyen-tai-bac-nu-tlee-tron-chot-bam-tua-hat-da-nho-xinh-xan-tleejewelry', b'1', '2022-11-04 08:12:42.000000', '2f89b595-73d4-4824-b899-00d399276c09', '1535ce19-7d50-4e78-8990-6b9a5ecf80b5'),
('2792d341-30e2-4710-915f-808d0366ffee', '2022-11-04 07:19:55.000000', ',<p>Kẹp Nối T&oacute;c Chữ Q Bằng Kim Loại Chất Lượng Cao</p>\r\n', ',<p>Thời gian giao h&agrave;ng dự kiến cho sản phẩm n&agrave;y l&agrave; 7-9 ng&agrave;y</p>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với cửa h&agrave;ng mua sắm Phụ kiện thời trang</p>\r\n\r\n<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>T&igrave;nh trạng h&agrave;ng: 100% thương hiệu mới</p>\r\n\r\n<p>T&ecirc;n sản phẩm: kẹp t&oacute;c</p>\r\n\r\n<p>K&iacute;ch thước: 1 K&iacute;ch thước</p>\r\n\r\n<p>M&agrave;u sắc: Như h&igrave;nh</p>\r\n\r\n<p>Phong c&aacute;ch h&agrave;n quốc</p>\r\n\r\n<p>Vui l&ograve;ng cho ph&eacute;p lỗi k&iacute;ch thước nhỏ do đo lường thủ c&ocirc;ng. Ch&uacute;c bạn th&ocirc;ng cảm!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&ocirc;ng tin giao h&agrave;ng</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ cố gắng giao h&agrave;ng trong thời gian sớm nhất.</p>\r\n\r\n<p>Ưu điểm của cửa h&agrave;ng:</p>\r\n\r\n<p>Cửa h&agrave;ng chủ yếu b&aacute;n phụ kiện với số lượng lớn v&agrave; gi&aacute; cả tuyệt vời, ch&agrave;o mừng bạn đến mua</p>\r\n\r\n<p>Tất cả sản phẩm đều c&oacute; sẵn trong kho</p>\r\n\r\n<p>Sản phẩm n&agrave;y được b&aacute;n trực tiếp từ xưởng, gi&aacute; sỉ, chất lượng tốt v&agrave; gi&aacute; rẻ</p>\r\n\r\n<p>Dịch vụ kh&aacute;ch h&agrave;ng trực tuyến</p>\r\n\r\n<p>Mọi thắc mắc về sản phẩm vui l&ograve;ng chat v&agrave; hỏi</p>\r\n\r\n<p>Giờ phục vụ kh&aacute;ch h&agrave;ng: Thứ Hai đến Chủ Nhật 10: 00-18: 00 (thời gian k&yacute; nhận)</p>\r\n\r\n<p>Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o, xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i sẽ cung cấp cho bạn một giải ph&aacute;p thỏa đ&aacute;ng.</p>\r\n\r\n<p>Nếu c&aacute;c bạn th&iacute;ch sản phẩm của ch&uacute;ng t&ocirc;i th&igrave; nhớ theo d&otilde;i nh&eacute; ️</p>\r\n', 'Kẹp Nối Tóc Chữ Q Bằng Kim Loại Chất Lượng Cao', 16, 100, 0, 'kep-noi-toc-chu-q-bang-kim-loai-chat-luong-cao', b'1', '2022-11-04 07:19:55.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', '1535ce19-7d50-4e78-8990-6b9a5ecf80b5'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '2022-11-04 07:06:18.000000', ',<p>Kẹp T&oacute;c Tua Rua H&igrave;nh Bướm Đ&iacute;nh Hạt Cao Cấp Thời Trang Cho Nữ Dtonline b4day</p>\r\n', ',<p>Kẹp gấp t&oacute;c c&agrave;ng cua kim loại đ&iacute;nh hạt, c&oacute; tua rua</p>\r\n\r\n<p>Size nửa đầu</p>\r\n\r\n<p>Gi&uacute;p c&aacute;c bạn nữ nổi bật mọi l&uacute;c mọi nơi m&agrave; kh&ocirc;ng mất thời gian</p>\r\n\r\n<p>Xu hướng thời trang n&ecirc;n cập nhật trong năm nay</p>\r\n\r\n<p>Chỉ cần kẹp - sẽ xinh đẹp</p>\r\n\r\n<p>Xinh đẹp với mọi m&agrave;u t&oacute;c của bạn m&agrave; kh&ocirc;ng cần đắng đo</p>\r\n\r\n<p>Th&iacute;ch hợp với mọi lứa tuổi. SHOP C&Oacute; GIAO HỎA TỐC, THỜI GIAN L&Agrave;M VIỆC T2-T7 (9H ĐẾN 17H)</p>\r\n', 'Kẹp Tóc Tua Rua Hình Bướm Đính Hạt Cao Cấp Thời Trang Cho Nữ Dtonline b4day', 33, 100, 0, 'kep-toc-tua-rua-hinh-buom-dinh-hat-cao-cap-thoi-trang-cho-nu-dtonline-b4day', b'1', '2022-11-04 07:06:18.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', '1535ce19-7d50-4e78-8990-6b9a5ecf80b5'),
('38f72114-9854-4778-916e-70a11162d727', '2022-11-04 06:52:38.000000', ',<p>V&ograve;ng Tay D&acirc;y Bện Mặt H&igrave;nh Ch&uacute; Ch&oacute; Cinnamon Mềm Mại M&agrave;u Hồng Xanh Dương Phong C&aacute;ch Nhật Bản Xinh Xắn</p>\r\n', ',<p>&quot;&quot;Ch&agrave;o Mừng đến với cửa h&agrave;ng fetar -------------------------------------------------- C&oacute; sẵn trong kho! Chất lượng đảm bảo! &quot;&quot;&quot; Dễ thương Cinnamoroll Dog Charm Creative Chain Bracelet V&ograve;ng đeo tay thời trang bạn g&aacute;i Đặc trưng - H&igrave;nh dạng ch&oacute; quay, mạnh mẽ, chắc chắn -V&ograve;ng Tay sử dụng thiết kế sang trọng nhẹ v&agrave; đeo một loạt nhiều m&agrave;u thời trang, c&oacute; hiệu ứng h&igrave;nh ảnh đ&aacute;ng kể hơn. -Sản Phẩm n&agrave;y th&iacute;ch hợp cho hẹn h&ograve;, kỳ nghỉ, mua sắm, du lịch, mặc h&agrave;ng ng&agrave;y, v.v. Th&ocirc;ng tin chi tiết Chất liệu: Nhựa, Nhựa K&iacute;ch thước g&oacute;i h&agrave;ng: 6x4 x 0.5cm G&oacute;i bao gồm 1 x V&ograve;ng tay Kh&ocirc;ng c&oacute; hộp b&aacute;n lẻ. Được đ&oacute;ng g&oacute;i an to&agrave;n trong t&uacute;i OPP. Ghi ch&uacute;: C&oacute; thể c&oacute; một số kh&aacute;c biệt nhỏ trong t&ocirc;ng m&agrave;u của h&igrave;nh ảnh v&agrave; mặt h&agrave;ng thực tế. Xin vui l&ograve;ng cho ph&eacute;p sai số 1-2mm do đo lường thủ c&ocirc;ng, xin cảm ơn.</p>\r\n', 'Vòng Tay Dây Bện Mặt Hình Chú Chó Cinnamon Mềm Mại Màu Hồng Xanh Dương Phong Cách Nhật Bản Xinh Xắn', 14, 100, 0, 'vong-tay-day-ban-mat-hinh-chu-cho-cinnamon-mem-mai-mau-hong-xanh-duong-phong-cach-nhat-ban-xinh-xan', b'1', '2022-11-04 06:52:38.000000', '896f3590-ab28-4fe1-bace-e4fe611683d4', 'd4b25927-8cc2-4b18-aae9-7ff56e1ef32b'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '2022-11-03 08:26:32.000000', ',<p>Gi&agrave;y cao g&oacute;t</p>\r\n\r\n<p>Trung B&igrave;nh</p>\r\n\r\n<p>Loại Kh&oacute;a</p>\r\n\r\n<p>Kh&oacute;a d&aacute;n</p>\r\n\r\n<p>Chất liệu</p>\r\n\r\n<p>Da</p>\r\n\r\n<p>Chiều rộng ph&ugrave; hợp</p>\r\n\r\n<p>Kh&ocirc;ng</p>\r\n\r\n<p>Xuất xứ</p>\r\n\r\n<p>Trung Quốc</p>\r\n\r\n<p>Dịp</p>\r\n\r\n<p>Hằng Ng&agrave;y</p>\r\n\r\n<p>Chiều cao cổ gi&agrave;y</p>\r\n\r\n<p>Cổ thấp</p>\r\n\r\n<p>Địa chỉ tổ chức chịu tr&aacute;ch nhiệm sản xuất</p>\r\n\r\n<p>Địa chỉ: Room 1304-2, Building 1, Traffi</p>\r\n\r\n<p>T&ecirc;n tổ chức chịu tr&aacute;ch nhiệm sản xuất</p>\r\n\r\n<p>Cty sản xuất: Wenzhou Naizu Shoes Co., L</p>\r\n\r\n<p>Kho h&agrave;ng</p>\r\n\r\n<p>297</p>\r\n\r\n<p>Gửi từ</p>\r\n\r\n<p>Huyện &Acirc;n Thi, Hưng Y&ecirc;n</p>\r\n', ',<p>Gi&agrave;y thể dục học sinh nữ si&ecirc;u nhẹ kiểu d&aacute;ng hợp thời trang L&agrave; một trong những loại gi&agrave;y si&ecirc;u nhẹ, với thiết kế đẹp, tinh tế, trẻ trung v&agrave; hiện đại. Loại gi&agrave;y: Gi&agrave;y thể dục học sinh hoạ tiết moew Chiều cao đế 3 cm Kiểu d&aacute;ng thể thao, mạnh mẽ,ph&ugrave; hợp với c&aacute;c bạn trong độ tuổi 10-40 Đế cao su bền chắc, c&oacute; độ b&aacute;m cao Thiết kế: Trẻ Trung, nhẹ nh&agrave;ng Ph&ugrave; hợp đi chơi, đi l&agrave;m, đi d&atilde; ngoại, tiệc t&ugrave;ng..... M&agrave;u sắc: Trắng moew Bảng size gi&agrave;y nữ độn đế: Size 35 -----------&gt; 22.5 cm Size 36 -----------&gt; 23 cm Size 37 -----------&gt; 23.5 cm Size 38 -----------&gt; 24 cm Size 39 -----------&gt; 24.5 cm Size 40 -----------&gt; 25 cm Kh&aacute;ch h&agrave;ng đo ch&acirc;n ch&iacute;nh x&aacute;c để chọn size gi&agrave;y ph&ugrave; hợp nh&eacute; Hướng dẫn bảo quản gi&agrave;y nữ độn đế: Bảo nơi tho&aacute;ng m&aacute;t tr&aacute;nh ẩm ướt hoặc &aacute;nh nắng chiếu trực tiếp v&agrave;o gi&agrave;y. CAM KẾT CỦA SHOP: SẢN PHẨM GI&Agrave;Y NỮ ĐỘN ĐẾ CỦA SHOP ĐỀU CHẤT LƯỢNG V&Agrave; GIỐNG H&Igrave;NH. HO&Agrave;N TIỀN 110% NẾU SẢN PHẨM KH&Ocirc;NG GIỐNG H&Igrave;NH. QU&Yacute; KH&Aacute;CH NHỚ &Aacute;P M&Atilde; FREESHIP &Aacute;P DỤNG CHO TẤT CẢ H&Igrave;NH THỨC VẬN CHUYỂN ĐỂ ĐƯỢC GIẢM GI&Aacute; TỐI ĐA 30K - 70K T&Ugrave;Y V&Agrave;O ĐƠN H&Agrave;NG NH&Eacute;. #giaydondenu #giaybatanu #giaybatanutrang #giaybata #giayhoacuc #giaythethaonu #giayulzzang #giaynuthethao #giaythethaonu #giaynugiare #giaythethaotrang #giaythethaomaumoi #giaythethaotrang #giayhocsinh #giayđihọc #sneakerulzzang #giaythethao #giaynuxinh #giaydecao #sneakerstore_official #giaysneakernu #giaynu &gt;&gt;&gt; Th&ocirc;ng tin xuất xứ sản phẩm + Xuất xứ: Sản xuất tại Trung Quốc Cty sản xuất: Wenzhou Naizu Shoes Co., Ltd. Địa chỉ: Room 1304-2, Building 1, Traffic Plaza, Station Avenue, Wenzhou, Zhejiang, China</p>\r\n', 'Giày thể dục học sinh nữ siêu nhẹ kiểu dáng hợp thời trang', 6, 1000, 0, 'giay-the-duc-hoc-sinh-nu-sieu-nhe-kieu-dang-hop-thoi-trang', b'1', '2022-11-03 08:26:32.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', '006a799f-9cc6-419c-a774-c7052be0c51f'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '2022-11-03 15:58:01.000000', ',<p>V&ograve;ng cổ Đ&iacute;nh Ngọc Trai Thời Trang D&agrave;nh Cho Nữ</p>\r\n', ',<p>🎉Ch&agrave;o mừng đến với cửa h&agrave;ng JIHE🎉 Sản phẩm phụ kiện thời trang, đảm bảo chất lượng, c&aacute;c bạn cứ y&ecirc;n t&acirc;m mua h&agrave;ng ~ ■ C&aacute;c t&iacute;nh năng của shop: sản phẩm chất lượng cao, kiểu d&aacute;ng đa dạng, đủ m&agrave;u sắc. o (=_) o... ■ Đảm bảo chất lượng, gi&aacute; cả phải chăng, ch&agrave;o mừng bạn đến với b&aacute;n bu&ocirc;n. ■ Nếu c&oacute; bất kỳ vấn đề g&igrave; với chất lượng h&agrave;ng h&oacute;a nhận được, bạn c&oacute; thể li&ecirc;n hệ với người b&aacute;n để được ho&agrave;n lại tiền hoặc đổi h&agrave;ng. (Nếu C&oacute; bất kỳ vấn đề g&igrave; với k&iacute;ch thước, vui l&ograve;ng đo k&iacute;ch thước trước khi mua.) ~ ■ Y&ecirc;u cầu ch&agrave;o mừng bất cứ l&uacute;c n&agrave;o. 🥰🥰🥰🥰 Một khi g&oacute;i đ&atilde; được gửi đi, n&oacute; kh&ocirc;ng thể được trả lại. Nếu kh&ocirc;ng muốn hoặc hủy đơn h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ trực tiếp thua, rất nhiều &aacute;p lực, mong c&aacute;c bạn th&ocirc;ng cảm. Lưu &yacute;: Sản phẩm được đo bằng tay, c&oacute; thể c&oacute; sai số, c&oacute; thể c&oacute; hiện tượng quang sai m&agrave;u do m&agrave;n h&igrave;nh v&agrave; &aacute;nh s&aacute;ng chụp kh&aacute;c nhau. Vui l&ograve;ng tham khảo sản phẩm thực tế, cảm ơn. 🚚Vận chuyển🚚 C&aacute;c mặt h&agrave;ng sẽ được xuất xưởng trong v&ograve;ng 1-3 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y thanh to&aacute;n qua SLS Standard Express. Ch&uacute;ng t&ocirc;i sẽ đăng số theo d&otilde;i tr&ecirc;n trang đặt h&agrave;ng ngay khi c&oacute; sẵn 💁&zwj;♀️Dịch vụ kh&aacute;ch h&agrave;ng: Nếu bạn c&oacute; c&acirc;u hỏi n&agrave;o. H&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i trước, ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng trợ gi&uacute;p. Nếu ch&uacute;ng t&ocirc;i kh&ocirc;ng trả lời trong thời gian, ch&uacute;ng t&ocirc;i sẽ trả lời bạn trong v&ograve;ng v&agrave;i giờ. Lưu &yacute;: Sản phẩm c&oacute; v&agrave;ng, kim cương v&agrave; đ&aacute; qu&yacute; tại shop đều l&agrave; h&agrave;ng mạ / nh&acirc;n tạo.</p>\r\n', 'Vòng cổ Đính Ngọc Trai Thời Trang Dành Cho Nữ', 32, 100, 0, 'vong-co-dinh-ngoc-trai-thoi-trang-danh-cho-nu', b'1', '2022-11-03 15:58:01.000000', '2f89b595-73d4-4824-b899-00d399276c09', 'abe93b9c-3a86-451f-8f1f-19360c488245'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '2022-10-29 20:48:23.000000', ',Spring and autumn 2022 women\'s new Hong Kong style retro V-neck slim high waist chic skirt Sequin fishtail dress fashion', ',Vải / chất liệu: Khác / khác;\r\nThành phần: 71% (có) -80% (có);\r\nPhong cách: temperent socialite / sexy;\r\nCác yếu tố / quy trình phổ biến: voile gấp lụa sáng;\r\nHình thức kết hợp: Một mảnh;\r\nKiểu dáng: đầm hông;\r\nChiều dài tay áo: dài tay;\r\nChiều dài của váy: váy dài giữa;\r\nKiểu cổ áo: cổ áo;\r\nDành cho lứa tuổi: Thanh niên (18-25 tuổi);\r\nLót lông cừu lúa mì: Không thêm nhung;\r\nMùa: mùa xuân2022;\r\nLoại tay áo: thông thường;', 'Spring and autumn 2022 women\'s new Hong Kong style retro V-neck slim high waist chic skirt Sequin fishtail dress fashion', 20, 1000, 0, 'spring-and-autumn-2022-womens-new-hong-kong-style-retro-v-neck-slim-high-waist-chic-skirt-sequin-fishtail-dress-fashion', b'1', '2022-10-29 20:48:23.000000', '5b81bcf4-fddd-45bf-b37b-31d0eae81565', '5c067ec6-7b2d-45e4-9133-703019be7328'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '2022-10-29 21:40:05.000000', ',Hannie-Women’s Casual Fashion Solid Color Tassel Chain Boat Neck Skinny Dress', ',Bảng kích thước:\r\nKích thước (cm)\r\nS	Lật tẩy:	74-84	Vòng eo:	60-70	Hông:	78-88	Chiều dài:	64\r\nM	Lật tẩy:	78-88	Vòng eo:	64-74	Hông:	82-92	Chiều dài:	65\r\nL	Lật tẩy:	82-92	Vòng eo:	68-78	Hông:	86-96	Chiều dài:	66\r\n\r\nThông tin chi tiết:\r\nChất liệu: Polyester\r\nPhong cách: Đường phố\r\nMô hình: Đồng bằng\r\nMàu sắc: đen\r\nMùa thích hợp: Mùa hè\r\nDành cho: Bé gái\r\nĐộ tuổi phù hợp: 18-24 tuổi\r\n\r\nLưu ý:\r\n1. Các dữ liệu trên được đo thủ công và cho phép sai số từ 1-3 cm.\r\n2. Do màn hình và đèn chiếu sáng khác nhau, có thể có sai số về màu sắc. Vui lòng tham khảo các mặt hàng thực tế.\r\n\r\nGói hàng bao gồm:\r\n1 * Váy', 'Hannie-Women’s Casual Fashion Solid Color Tassel Chain Boat Neck Skinny Dress', 12, 100, 0, 'hannie-womens-casual-fashion-solid-color-tassel-chain-boat-neck-skinny-dress', b'1', '2022-10-29 21:40:05.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', '5c067ec6-7b2d-45e4-9133-703019be7328');
INSERT INTO `product` (`id`, `create_at`, `product_desc`, `product_detail`, `product_name`, `product_price`, `product_quantity`, `sale_off`, `slug`, `state`, `update_at`, `brand_id`, `category_id`) VALUES
('64f025eb-6792-4373-b8f3-0b2b29e44392', '2022-11-03 16:32:39.000000', ',<p>V&ograve;ng Tay Bạc Nữ THE SKY VT1022 Hai D&acirc;y Sợi Mảnh K&egrave;m Mặt H&igrave;nh Tr&aacute;i Tim</p>\r\n', ',<p>V&ograve;ng Tay Bạc Nữ THE SKY VT1022 Hai D&acirc;y Sợi Mảnh K&egrave;m Mặt H&igrave;nh Tr&aacute;i Tim 1. TH&Ocirc;NG TIN SẢN PHẨM - M&atilde; sản phẩm: VT1022 - Thương hiệu: THE SKY - Xuất xứ: Việt Nam - Chất liệu: Bạc 925 - M&agrave;u sắc: V&ograve;ng tay bạc 2 lớp đ&iacute;nh mặt tr&aacute;i tim bạc s&aacute;ng đẹp i h&igrave;nh - Kiểu d&aacute;ng thiết kế tinh tế, sắc sảo, gia c&ocirc;ng tỉ mỉ, v&ograve;ng tay bạc nữ mẫu mới nhất theo Trend - Chiều d&agrave;i: + V&ograve;ng tay d&agrave;i: 15cm v&agrave; 5cm mối nới 2. L&Yacute; DO KH&Aacute;CH Y&Ecirc;N T&Acirc;M LỰA CHỌN SHOP - Sản phẩm v&ograve;ng bạc được sản xuất gia c&ocirc;ng tỉ mỉ, shop kiểm tra h&agrave;ng kĩ trước khi gửi cho kh&aacute;ch - Nhận h&agrave;ng thanh to&aacute;n tiền tại nh&agrave; tr&ecirc;n to&agrave;n quốc - Sản phẩm mới, đảm bảo về chất lượng - Tặng hộp đẹp ( C&oacute; thể l&agrave;m qu&agrave; tặng) cho mọi đơn h&agrave;ng ph&aacute;t sinh 3. HƯỚNG DẪN BẢO QUẢN - Tr&aacute;nh tiếp x&uacute;c với ho&aacute; chất, keo xịt t&oacute;c, nước hoa, kem v&agrave; c&aacute;c loại mỹ phẩm kh&aacute;c , chất tẩy rửa mạnh - Tr&aacute;nh va chạm v&agrave; ma s&aacute;t độ cứng: đồ trang sức n&ecirc;n cố gắng tr&aacute;nh va chạm v&agrave; ma s&aacute;t với vật cứng, để kh&ocirc;ng l&agrave;m m&ograve;n bề mặt v&agrave; ảnh hưởng đến độ s&aacute;ng - Thường xuy&ecirc;n vệ sinh sản phẩm bằng khăn l&agrave;m s&aacute;ng để đảm bảo sản phẩm lu&ocirc;n được s&aacute;ng b&oacute;ng - Bảo quản k&iacute;n: nếu l&acirc;u ng&agrave;y kh&ocirc;ng đeo, bạn cần lau sạch cho v&agrave;o t&uacute;i Zip v&agrave; đặt v&agrave;o hộp trang sức để tr&aacute;nh l&agrave;m hỏng, m&ograve;n trang sức - Sản phẩm c&oacute; thể bị xỉn m&agrave;u do t&aacute;c động của mồ h&ocirc;i, bụi bẩn, lưu huỳnh trong kh&ocirc;ng kh&iacute; sau 1 thời gian bạn c&oacute; thể sử dụng nước chanh, pha ch&uacute;t x&agrave; b&ocirc;ng hoặc d&ugrave;ng kem đ&aacute;nh răng để l&agrave;m s&aacute;ng lại sản phẩm 4. QUYỀN LỢI KH&Aacute;CH H&Agrave;NG 1. Điều kiện đổi trả &aacute;p dụng (trong v&ograve;ng 07 ng&agrave;y kể từ khi nhận sản phẩm): - H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng - H&agrave;ng h&oacute;a hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất ( đứt g&atilde;y, rơi đ&aacute;, kh&ocirc;ng giống ảnh, sai sản phẩm) theo đ&uacute;ng quy định của shopee - Trong qu&aacute; tr&igrave;nh sử dụng : Hỗ trợ sửa chữa như bong đ&aacute;, gắn đ&aacute;, x&acirc;u v&ograve;ng, &hellip; (nhắn tin cho shop để được tư vấn trực tiếp), đứt g&atilde;y sản phẩm kh&ocirc;ng bảo h&agrave;nh 2. Trường hợp được chấp nhận: - H&agrave;ng kh&ocirc;ng đ&uacute;ng size, mẫu m&atilde; như qu&yacute; kh&aacute;ch đặt - Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng 3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch: - Qu&aacute; 07 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng - Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải h&agrave;ng của shop - Đặt nhầm sản phẩm, chủng loại, kh&ocirc;ng th&iacute;ch, kh&ocirc;ng hợp,... 👉 Shop kiểm tra h&agrave;ng trước khi gửi đi. Nhận h&agrave;ng kh&aacute;ch vui l&ograve;ng quay lại qu&aacute; tr&igrave;nh b&oacute;c h&agrave;ng, nếu c&oacute; trường hợp sản phẩm bị lỗi hoặc nhầm mẫu vui l&ograve;ng th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i ngay khi c&oacute; thể để ch&uacute;ng t&ocirc;i gi&uacute;p bạn giải quyết vấn đề. Nếu bạn h&agrave;i l&ograve;ng với c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i, xin vui l&ograve;ng cho ch&uacute;ng t&ocirc;i phản hồi t&iacute;ch cực (năm sao)</p>\r\n', 'Vòng Tay Bạc Nữ THE SKY VT1022 Hai Dây Sợi Mảnh Kèm Mặt Hình Trái Tim', 93, 100, 0, 'vong-tay-bac-nu-the-sky-vt1022-hai-day-soi-manh-kem-mat-hinh-trai-tim', b'1', '2022-11-03 16:32:39.000000', '6e6c93d0-23da-4c34-9a0f-b4a0c20457dc', 'd4b25927-8cc2-4b18-aae9-7ff56e1ef32b'),
('67aadb06-bb43-4b78-9232-829915a598ee', '2022-10-29 19:31:23.000000', ',Men Sweater S~L Thick Warm Casual Fashion Knitwear Long Sleeve Polyester Cotton', ',* Kích thước thẻ: S ~ L, Vui lòng đảm bảo rằng các phép đo thực tế này sẽ phù hợp với bạn.\r\nBảng kích thước (1 inch = 2,54cm) |  \r\nKích thước thẻ |  S |  M  |  L  |  \r\nLật tẩy |  Cm |  96 |  100 |  104  |  \r\nInch |  37.8  |  39.4  |  40.9  |  \r\nTay áo |  Cm |  54 |  55 |  56  |  \r\nInch |  21.3  |  21.7  |  22.0  |  \r\nVai |  Cm |  55 |  56 |  57  |  \r\nInch |  21.7  |  22.0  |  22.4  |  \r\nChiều dài |  Cm |  70 |  71 |  72  |  \r\nInch |  27.6  |  28.0  |  28.3  |  \r\nĐược đo trước khi kéo căng, được gọi là dữ liệu phẳng, Vui lòng cho phép độ sai số 1~2cm |  \r\n\r\n* Mục Vải: Polyester Cotton * Màu sắc: Đen / Đỏ / Xanh lá / Xám đậm (Như Hình ảnh Hiển thị) * Tình trạng hàng: 100% Thương hiệu mới * Mô tả mặt hàng: Nam &#Áo chui đầu dệt kim dày 39; S Winter, Áo chui đầu cổ lọ cuộn, Áo len * Nội dung gói: 1 * Áo len (KHÔNG Bao gồm phụ kiện) Làm thế nào để chọn kích thước phù hợp?1) Sử dụng trang phục tương tự để so sánh với các kích thước2) Chọn kích thước lớn hơn nếu kích thước của bạn giống với biểu đồ kích thước đo lường phẳng\r\n\r\nLưu ý: 1. Do màn hình khác nhau và hiệu ứng ánh sáng, màu sắc thực tế sản phẩm sẽ khác so với hình ảnh 2. Xin vui lòng cho phép sai số nhỏ do đo lường thủ công', 'Men Sweater S~L Thick Warm Casual Fashion Knitwear Long Sleeve Polyester Cotton', 7, 1000, 0, 'men-sweater-sl-thick-warm-casual-fashion-knitwear-long-sleeve-polyester-cotton', b'1', '2022-10-29 19:31:23.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', '5d8bab3d-2911-4fdc-9227-e854761a6178'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '2022-11-04 07:32:12.000000', ',<p>Dog Hand Holding Rope Reflective Chest Strap Dog Chain Medium and Small Dogs and Cats out Breathable Teddy Bichon Corgi New hdYu</p>\r\n', ',<p>Color</p>\r\n\r\n<p>Orange 1.5 m flat rope</p>\r\n\r\n<p>Red 1.5 m flat rope</p>\r\n\r\n<p>Lake Blue 1.5 m flat rope</p>\r\n\r\n<p>Green 1.5 m flat rope</p>\r\n\r\n<p>Purple 1.5 m flat rope</p>\r\n\r\n<p>Brown 1.5 m flat rope</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Size S recommended weight 2-3kg</p>\r\n\r\n<p>M recommended weight 4-7kg</p>\r\n\r\n<p>L recommended weight 7-10kg</p>\r\n\r\n<p>XL recommended weight 10-14kg</p>\r\n', 'Dog Hand Holding Rope Reflective Chest Strap Dog Chain Medium and Small Dogs and Cats out Breathable Teddy Bichon Corgi New hdYu', 99, 100, 0, 'dog-hand-holding-rope-reflective-chest-strap-dog-chain-medium-and-small-dogs-and-cats-out-breathable-teddy-bichon-corgi-new-hdyu', b'1', '2022-11-04 07:32:12.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', '5d3fa890-53a6-43bb-8683-05fc83ea72c1'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '2022-11-03 00:39:28.000000', ',<p>Nước hoa nam cao cấp ch&iacute;nh h&atilde;ng Ver.sace, dầu thơm nam body sang trọng qu&yacute; ph&aacute;i hương thơm cuốn h&uacute;t N56</p>\r\n', ',<p>M&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<p>T&Ecirc;N SẢN PHẨM: Nước hoa nam cao cấp ch&iacute;nh h&atilde;ng Ver.sace, dầu thơm nam body sang trọng qu&yacute; ph&aacute;i hương thơm cuốn h&uacute;t N56 Th&ocirc;ng tin sản phẩm: Nước hoa nam cao cấp ch&iacute;nh h&atilde;ng Ver.sace, dầu thơm nam body sang trọng qu&yacute; ph&aacute;i hương thơm cuốn h&uacute;t N56 - Hương đầu: C&acirc;y bạc h&agrave;, T&aacute;o xanh, Quả chanh v&agrave;ng. - Hương giữa: Đậu Ton.ka, Hoa phong lữ, Hương Am.broxan. - Hương cuối: Hương Va ni Ma.dagascar, Cỏ hương b&agrave;i, R&ecirc;u sồi, Gỗ tuyết t&ugrave;ng Virginia 2, Gỗ tuyết t&ugrave;ng A.tlas. - Giới t&iacute;nh: Nam - Năm ra mắt: 1966 - Độ lưu hương: L&acirc;u - 3 giờ đến 5 giờ - Độ toả hương: Gần - Toả hương trong v&ograve;ng một c&aacute;nh tay - Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, Đ&ecirc;m, Xu&acirc;n, Hạ, Thu - Nước hoa nam, dầu thơm l&acirc;u Cam kết với kh&aacute;ch h&agrave;ng: Nước hoa nam cao cấp ch&iacute;nh h&atilde;ng Ver.sace, dầu thơm nam body sang trọng qu&yacute; ph&aacute;i hương thơm cuốn h&uacute;t N56 *Sản phẩm 100% giống m&ocirc; tả *Giao h&agrave;ng ngay khi nhận được đơn *Đổi trả theo đ&uacute;ng quy định của Shope : 1. Điều kiện &aacute;p dụng (trong v&ograve;ng 03 ng&agrave;y kể từ khi nhận sản phẩm): - H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng - H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất 2. Trường hợp được chấp nhận: - H&agrave;ng kh&ocirc;ng đ&uacute;ng chủng loại, mẫu m&atilde; như qu&yacute; kh&aacute;ch đặt h&agrave;ng - Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng - T&igrave;nh trạng b&ecirc;n ngo&agrave;i bị ảnh hưởng như r&aacute;ch bao b&igrave;, bong tr&oacute;c, bể vỡ&hellip; 3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch: - Qu&aacute; 03 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng. - Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải h&agrave;ng của shop - Do m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%</p>\r\n', 'Nước hoa nam cao cấp chính hãng Ver.sace, dầu thơm nam body sang trọng quý phái hương thơm cuốn hút N56', 17, 100, 0, 'nuoc-hoa-nam-cao-cap-chinh-hang-versace-du-thm-nam-body-sang-trong-quy-phai-huong-thom-cuon-hut-n56', b'1', '2022-11-03 00:39:28.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', '002eae57-0370-4bb5-a904-4242087f981b'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '2022-11-04 08:45:51.000000', ',<p>Nhẫn Mở Khắc Chữ N-Z Đ&iacute;nh Đ&aacute; Pha L&ecirc; Thời Trang Cho Nữ</p>\r\n', ',<p>Đặc điểm: 100% h&agrave;ng mới, chất lượng cao</p>\r\n\r\n<p>Đ&acirc;y l&agrave; những c&ocirc;ng cụ phụ trợ thời trang, bền v&agrave; tiện lợi T</p>\r\n\r\n<p>rang sức quyến rũ v&agrave; tuyệt vời cho tất cả phụ nữ M&agrave;u sắc: như h&igrave;nh ảnh</p>\r\n\r\n<p>D&agrave;nh cho: Phụ nữ C&ocirc; g&aacute;i</p>\r\n\r\n<p>Đặt loại: nhẫn</p>\r\n\r\n<p>Chất liệu: kim loại K&iacute;ch thước: khoảng 1,8cm (c&oacute; thể điều chỉnh)</p>\r\n\r\n<p>C&aacute;c dịp: Tiệc, Tiệc, Hẹn h&ograve;, Cocktail, Khai trương, Lễ cưới, Sinh nhật, v.v.</p>\r\n\r\n<p>C&aacute;c t&iacute;nh năng: Duy&ecirc;n d&aacute;ng, Thiết kế đơn giản, H&agrave;n Quốc</p>\r\n\r\n<p>Số lượng: 1 chiếc</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<p>1.Do m&agrave;n h&igrave;nh kh&aacute;c nhau v&agrave; hiệu ứng &aacute;nh s&aacute;ng, m&agrave;u sắc thực tế sản phẩm sẽ kh&aacute;c so với h&igrave;nh ảnh, mong bạn th&ocirc;ng cảm</p>\r\n\r\n<p>2.Xin vui l&ograve;ng cho ph&eacute;p sai số từ 1-3cm do đo lường thủ c&ocirc;ng</p>\r\n\r\n<p>3.Vui l&ograve;ng giữ đồ trang sức ở nơi kh&ocirc; r&aacute;o v&agrave; cố gắng kh&ocirc;ng chạm v&agrave;o nước.</p>\r\n\r\n<p>Điều n&agrave;y sẽ k&eacute;o d&agrave;i thời gian sử dụng của trang sức.</p>\r\n\r\n<p>Xin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đến với cửa h&agrave;ng của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;c qu&yacute; kh&aacute;ch một ng&agrave;y vui vẻ.</p>\r\n', 'Nhẫn Mở Khắc Chữ N-Z Đính Đá Pha Lê Thời Trang Cho Nữ', 73, 100, 0, 'nhan-mo-khac-chu-n-z-dinh-da-pha-le-thoi-trang-cho-nu', b'1', '2022-11-04 08:45:51.000000', 'dc3cca73-baf1-409f-804f-52e922895582', 'eda2e75a-7a39-40ae-b387-e0c60c643a93'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '2022-11-03 16:14:10.000000', ',<p>D&acirc;y chuyền bạc nữ 925 c&agrave;nh đ&agrave;o nữ t&iacute;nh dịu d&agrave;ng Lavesta SIL29</p>\r\n', ',<p>Th&ocirc;ng tin sản phẩm D&acirc;y chuyền bạc nữ 925, v&ograve;ng cổ nữ bạc đ&iacute;nh đ&aacute; c&aacute; t&iacute;nh Lavesta SIL29 Th&ocirc;ng tin Sản Phẩm - Chất liệu : Bạc 925 gồm 93% bạc v&agrave; pha 7% c&aacute;c kim loại kh&aacute;c. Bạc 925 sẽ c&oacute; độ s&aacute;ng hơn bạc ta th&ocirc;ng thường v&igrave; vậy l&agrave;m ra c&aacute;c sản phẩm trang sức sẽ bắt mắt hơn. Bạc 925 cũng sẽ đ&aacute;nh b&oacute;ng s&aacute;ng lại được sau 1 thời gian d&agrave;i tiếp x&uacute;c với m&ocirc;i trường n&ecirc;n c&aacute;c bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về loại bạc n&agrave;y nh&eacute;. - Thiết kế: d&acirc;y chuyền bạc nữ tinh tế, kiểu d&aacute;ng hiện đại - Xuất xứ: Trung Quốc - Địa chỉ nhập: Trang sức Lavesta, Tam Trinh, phường Ho&agrave;ng Văn Thụ, quận Ho&agrave;ng Mai, H&agrave; Nội. Chương tr&igrave;nh hỗ trợ Vận Chuyển Shop c&oacute; chương tr&igrave;nh FREESHIP EXTRA, khi đặt h&agrave;ng qu&yacute; kh&aacute;ch n&ecirc;n &Aacute;P M&Atilde; MIỄN PH&Iacute; VẬN CHUYỂN để được ưu đ&atilde;i giảm hoặc miễn ph&iacute; vận chuyển: - Giảm 15k ph&iacute; vận chuyển đối với đơn tr&ecirc;n 50k - Giảm đến 70k ph&iacute; vận chuyển cho c&aacute;c đơn h&agrave;ng từ 300k Hướng dẫn sử dụng sản phẩm - Kh&ocirc;ng n&ecirc;n đeo 24/24, h&atilde;y th&aacute;o trang sức l&uacute;c chơi thể thao, tắm biển, bơi,... để tr&aacute;nh bạc xước v&agrave; xỉn m&agrave;u - Khi sử dụng mỹ phẩm th&igrave; một số loại chất h&oacute;a học c&oacute; thể l&agrave;m bạc xỉn m&agrave;u. Trang sức Lavesta cam kết - Sản phẩm: D&acirc;y chuyền bạc nữ 925 gi&aacute; rẻ 100% giống m&ocirc; tả. - Đảm bảo chất lượng v&agrave; chất liệu bạc 100% - Sản phẩm được kiểm tra cẩn thận, kĩ c&agrave;ng trước khi được giao cho Qu&yacute; kh&aacute;ch - H&agrave;ng c&oacute; sẵn, giao ngay sau khi nhận đơn - Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng đ&uacute;ng với m&ocirc; tả - Giao h&agrave;ng to&agrave;n quốc, thanh to&aacute;n khi nhận h&agrave;ng - Hỗ trợ đổi trả theo quy định của Shopee - Bảo h&agrave;nh: 1 đổi 1 trong v&ograve;ng 1 th&aacute;ng Ngo&agrave;i ra, Trang sức Lavesta xin chia sẻ một số tips hữu dụng để l&agrave;m s&aacute;ng trang sức tại nh&agrave; - Ch&agrave; nhẹ kem đ&aacute;nh răng, nước rửa b&aacute;t hoặc nước chanh l&ecirc;n sản phẩm bạc, sau đ&oacute; rửa sạch bằng nước ấm rồi lau kh&ocirc; - D&ugrave;ng khăn lau bạc chuy&ecirc;n dụng lau nhẹ nh&agrave;ng bề mặt trang sức mỗi ng&agrave;y hoặc d&ugrave;ng nước rửa bạc chuy&ecirc;n dụng để đ&aacute;nh s&aacute;ng bạc. Lưu &yacute;: Do điều kiện &aacute;nh s&aacute;ng, n&ecirc;n m&agrave;u sắc sản phẩm c&oacute; thể ch&ecirc;nh lệch ko đ&aacute;ng kể</p>\r\n', 'Dây chuyền bạc nữ 925 cành đào nữ tính dịu dàng Lavesta SIL29', 74, 100, 0, 'day-chuyen-bac-nu-925-canh-dao-nu-tinh-diu-dang-lavesta-sil29', b'1', '2022-11-03 16:14:10.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', 'abe93b9c-3a86-451f-8f1f-19360c488245'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '2022-11-04 07:56:36.000000', ',<p>Đ&ocirc;i khuy&ecirc;n tai chốt bạc 925 kiểu d&aacute;ng h&igrave;nh học đ&iacute;nh đ&aacute; sang trọng cho nữ</p>\r\n', ',<p>Thời gian giao h&agrave;ng dự kiến cho sản phẩm n&agrave;y l&agrave; từ 7-9 ng&agrave;y</p>\r\n\r\n<p>💦 hairclip.vn💦</p>\r\n\r\n<p>💕💕 Xin ch&agrave;o, ch&agrave;o mừng bạn đến với cửa h&agrave;ng hairclip.vn!</p>\r\n\r\n<p>💕 Gi&aacute; thấp nhất v&agrave; đảm bảo chất lượng cao!</p>\r\n\r\n<p>💕Tất cả c&aacute;c sản phẩm đều c&oacute; sẵn, ch&uacute;ng t&ocirc;i c&oacute; thể đ&oacute;ng g&oacute;i v&agrave; giao h&agrave;ng cho bạn trong thời gian sớm nhất</p>\r\n\r\n<p>💕 Thời gian vận chuyển: Ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng cho bạn trong thời gian sớm nhất c&oacute; thể. Tất cả c&aacute;c sản phẩm sẽ vận chuyển từ Trung Quốc.</p>\r\n\r\n<p>💕 Hoan ngh&ecirc;nh kh&aacute;ch mua sỉ, nếu bạn c&oacute; nhu cầu mua h&agrave;ng số lượng lớn ch&uacute;ng t&ocirc;i sẽ b&aacute;o gi&aacute; tốt nhất cho qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>💕 Ch&uacute;ng t&ocirc;i ho&agrave;n to&agrave;n t&ocirc;n trọng quyền ri&ecirc;ng tư của bạn. Tất cả g&oacute;i h&agrave;ng / l&ocirc; h&agrave;ng kh&ocirc;ng hiển thị t&ecirc;n sản phẩm</p>\r\n\r\n<p>💕 M&ocirc; tả sản phẩm: Ph&acirc;n loại m&agrave;u sắc: Chốt bạc. Danh mục sản phẩm: hoa tai Đ&oacute;ng g&oacute;i: Đ&oacute;ng g&oacute;i 1 đ&ocirc;i khuy&ecirc;n tai ri&ecirc;ng lẻ độc lập (c&oacute; m&aacute;c v&agrave; t&uacute;i opp)</p>\r\n\r\n<p>💦 Bao b&igrave;: Như h&igrave;nh ảnh hiển thị, ch&uacute;ng t&ocirc;i sẽ đ&oacute;ng g&oacute;i trong một hộp xốp v&agrave; đảm bảo kh&aacute;c để đảm bảo sản phẩm đến tay bạn một c&aacute;ch ho&agrave;n hảo nhất</p>\r\n\r\n<p>. 💕 💕 Lưu &yacute;: 💌 Hỗ trợ thanh to&aacute;n bằng tiền mặt khi giao h&agrave;ng 💕</p>\r\n\r\n<p>💕 C&oacute; nh&agrave; m&aacute;y sản xuất, tất cả c&aacute;c sản phẩm đều c&oacute; sẵn! 📣 Đ&ocirc;i khuy&ecirc;n tai c&oacute; chốt bạc 925 mềm mại, dễ bị uốn cong trong qu&aacute; tr&igrave;nh vận chuyển. Bạn chỉ c&oacute; thể d&ugrave;ng tay chỉnh thẳng lại 💕</p>\r\n\r\n<p>💕 Giao h&agrave;ng nhanh ch&oacute;ng! 💕</p>\r\n\r\n<p>💕 Đ&oacute;ng g&oacute;i nhiều lớp &amp; kiểm tra cẩn thận trước khi giao h&agrave;ng 💕</p>\r\n\r\n<p>💕 Chất lượng cao v&agrave; gi&aacute; thấp, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để th&ocirc;ng b&aacute;o c&aacute;c vấn đề kh&aacute;c 💕</p>\r\n\r\n<p>💕 Đảm bảo l&agrave;m bạn h&agrave;i l&ograve;ng 100% v&agrave; đảm bảo chất lượng cao!</p>\r\n\r\n<p>📣 Vui l&ograve;ng cho ch&uacute;ng t&ocirc;i đ&aacute;nh gi&aacute; 5 sao nếu bạn h&agrave;i l&ograve;ng với sản phẩm của ch&uacute;ng t&ocirc;i. Cửa H&agrave;ng Trang Sức Thời Trang rất mong được hợp t&aacute;c với qu&yacute; kh&aacute;ch, rất mong qu&yacute; kh&aacute;ch nhận được sản phẩm ưng &yacute;</p>\r\n\r\n<p>💕1--Chốt bạc 925 Chốt bạc 925 l&agrave;m từ chất liệu bạc. Chất liệu bạc tương đối mềm n&ecirc;n chốt bạc cũng tương đối mềm. Bạc c&oacute; t&aacute;c dụng chống gỉ, chống dị ứng, chất lượng sản phẩm sẽ tốt hơn. Sau khi nhận sản phẩm, t&igrave;nh trạng chốt bạc bị biến dạng l&agrave; điều b&igrave;nh thường, kh&ocirc;ng phải vấn đề chất lượng. Nếu thấy chốt khuy&ecirc;n tai bị cong, xin h&atilde;y nhẹ nh&agrave;ng điều chỉnh lại. Xin đừng lo lắng, h&atilde;y y&ecirc;n t&acirc;m mua h&agrave;ng!</p>\r\n\r\n<p>💕2 -: Do ch&ecirc;nh lệch c&agrave;i đặt &aacute;nh s&aacute;ng v&agrave; m&agrave;n h&igrave;nh, m&agrave;u sắc của sản phẩm c&oacute; thể hơi kh&aacute;c so với h&igrave;nh ảnh. Mong bạn th&ocirc;ng cảm. Vui l&ograve;ng cho ph&eacute;p sai số một ch&uacute;t về số đo do c&aacute;ch đo lường thủ c&ocirc;ng</p>\r\n', 'Đôi khuyên tai chốt bạc 925 kiểu dáng hình học đính đá sang trọng cho nữ', 19, 100, 0, 'doi-khuyen-tai-chot-bac-925-kieu-dang-hinh-hoc-dinh-da-sang-trong-cho-nu', b'1', '2022-11-04 07:56:36.000000', '5b81bcf4-fddd-45bf-b37b-31d0eae81565', 'db6d2602-f5cf-4edb-bb42-e62e5ffeda5b'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '2022-11-03 16:25:28.000000', ',<p>Choker nữ, D&acirc;y chuyền nữ, chocker đ&iacute;nh đ&aacute; dự tiệc sang chảnh, trang sức Her Accessories</p>\r\n', ',<p>Choker nữ, D&acirc;y chuyền nữ, chocker đ&iacute;nh đ&aacute; dự tiệc trang sức Her Accessories C46 (H&igrave;nh ảnh do Her Accessories tự chụp, kh&ocirc;ng sao ch&eacute;p dưới mọi h&igrave;nh thức) Chất liệu: D&acirc;y chuyền nữ, v&ograve;ng cổ, chocker đ&iacute;nh đ&aacute; dự tiệc l&agrave;m bằng Titan Mạ Bạc 925 &quot; KH&Ocirc;NG GỈ &quot; Freesize : C&oacute; d&acirc;y điều chỉnh theo size mong muốn HƯỚNG DẪN SỬ DỤNG V&Agrave; BẢO QUẢN SẢN PHẨM: Độ bền của bạc 925 phụ thuộc rất nhiều v&agrave;o cơ địa v&agrave; c&aacute;ch bảo quản khi sử dụng n&ecirc;n c&aacute;c n&agrave;ng ch&uacute; &yacute; gi&uacute;p m&igrave;nh nha! - Hạn chế tiếp x&uacute;c với nước, mồ h&ocirc;i v&agrave; c&aacute;c chất h&oacute;a học, tẩy rửa - Đeo trang sức sau khi đ&atilde; trang điểm hoặc xịt nước hoa - Lau trang sức bằng khăn hoặc giấy kh&ocirc; - Kh&ocirc;ng để trang sức c&ugrave;ng với những trang sức kh&aacute;c đ&atilde; bị han, gỉ HER TEAM CAM KẾT &bull; Sản phẩm đ&uacute;ng với h&igrave;nh ảnh. &bull; Bảo h&agrave;nh 1 đổi 1 trong v&ograve;ng 3 ng&agrave;y sau khi nhận h&agrave;ng. Trong trường hợp: gửi sai h&agrave;ng, g&atilde;y, hỏng do nh&agrave; sản xuất. 𝐋𝐮̛𝐮 𝐲́: Chỉ giải quyết khiếu nại khi c&oacute; video khui h&agrave;ng r&otilde; n&eacute;t ( r&otilde; m&atilde; vận đơn, tem ni&ecirc;m phong)</p>\r\n', 'Choker nữ, Dây chuyền nữ, chocker đính đá dự tiệc sang chảnh, trang sức Her Accessories', 59, 100, 0, 'choker-nu-day-chuyen-nu-chocker-dinh-da-du-tiec-sang-chanh-trang-suc-her-accessories', b'1', '2022-11-03 16:25:28.000000', '2f89b595-73d4-4824-b899-00d399276c09', 'abe93b9c-3a86-451f-8f1f-19360c488245'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '2022-10-29 19:53:30.000000', ',Men\'s fashion Korean style short pants and hoodie', ',Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày\r\n\r\nXin chào, chào mừng đến với cửa hàng của chúng tôi. Nếu bạn cần mua một sản phẩm. Vui lòng tham khảo ý kiến ​​dịch vụ khách hàng để biết kích thước và màu sắc có liên quan trước. Cảm ơn bạn\r\n \r\n Cửa hàng này là cửa hàng Trung Quốc. Nếu bạn cần gấp, vui lòng không đặt hàng. Cảm ơn bạn.\r\n \r\n Hãy mua hàng thận trọng nhé!\r\n \r\n Liên kết sản phẩm này có: quần ngắn và áo hoodie\r\n \r\n Đặc điểm: \r\n 100% Hàng mới, chất lượng cao! Chất liệu là cotton và spandex.\r\n \r\n Áo hoodie tay ngắn dáng rộng, thoải mái, giản dị, đa năng, thời trang, mát mẻ dành cho nam \r\n Thiết kế rất thời trang và nam tính.\r\n Cảm ứng siêu mềm.\r\n Đây là một bộ đồ mà bất kỳ tủ quần áo nào cũng cần phải có.\r\n Bạn có thể mặc hàng ngày.\r\n Phong cách thời trang đường phố.\r\n \r\n Kích thước Châu Á: M L XL 2XL\r\n Áo hoodie\r\n M: Chiều dài 64 Ngực 102 Chiều rộng vai 50 Chiều dài tay áo 22\r\n L: Chiều dài 66 Ngực 106 Chiều rộng vai 52 Chiều dài tay áo 23\r\n XL: Chiều dài 68 Ngực 110 Chiều rộng vai 54 Chiều dài tay áo 25\r\n 2XL: Chiều dài 70 Ngực 114 Chiều rộng vai 56 Chiều dài tay áo 26\r\n \r\n Quần ngắn\r\n M: chiều dài quần 45 vòng eo 60 (có dây rút) vòng hông 94 ống quần 22\r\n L: chiều dài quần 46 vòng eo 64 (có dây rút) vòng hông 98 ống quần 24\r\n XL: chiều dài quần 47 vòng eo 68 (có dây rút) vòng hông 102 ống quần 26\r\n 2XL: chiều dài quần 48 vòng eo 72 (có dây rút) vòng hông 106 ống quần 28\r\n \r\n Kích thước tham khảo:\r\n M: (Xấp xỉ) phù hợp với chiều cao 155-160CM. Cân nặng 50-52KG\r\n L: (Xấp xỉ) thích hợp với chiều cao 160-165CM. Cân nặng 53-55KG\r\n XL: (Xấp xỉ) thích hợp với chiều cao 165-170CM. Cân nặng 60-68KG\r\n 2XL: (Xấp xỉ) thích hợp với chiều cao 170-175CM. Cân nặng 70-80KG\r\n \r\n Lưu ý kích thước có thể chênh lệch 1-3 cm do đo lường thủ công. Màu sắc có thể khác nhau giữa các màn hình, cảm ơn bạn đã thông cảm.\r\n \r\n Nếu bạn không chắc bạn mặc size bao nhiêu, bạn có thể cung cấp cho chúng tôi chiều cao và cân nặng, chúng tôi sẽ tư vấn chuyên nghiệp cho bạn.\r\n \r\n Nếu bạn gặp chỉ có màu mà không có kích thước. Bạn chỉ cần để lại tin nhắn và ghi chú kích thước.\r\n \r\n Nếu bạn có bất kỳ câu hỏi nào, bạn có thể sử dụng \"trò chuyện\" để liên hệ với chúng tôi, chúng tôi sẽ trả lời bạn một cách kiên nhẫn\r\n', 'Men\'s fashion Korean style short pants and hoodie', 12, 300, 0, 'mens-fashion-korean-style-short-pants-and-hoodie', b'1', '2022-10-29 19:53:30.000000', 'dc3cca73-baf1-409f-804f-52e922895582', '5d8bab3d-2911-4fdc-9227-e854761a6178'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '2022-11-03 00:27:01.000000', ',<p>Nước hoa nam dầu thơm nam t&iacute;nh Gi&ograve; Đen Profumo 100ml lưu hương l&acirc;u mạnh mẽ cuốn h&uacute;t - Shin Official</p>\r\n', ',<p>TH&Ocirc;NG TIN SẢN PHẨM: Th&ocirc;ng tin chi tiết về sản phẩm Nước hoa nam dầu thơm nam t&iacute;nh Gi&ograve; Đen Profumo 100ml lưu hương l&acirc;u mạnh mẽ cuốn h&uacute;t - Shin Official. Nước hoa Profumo l&agrave; một hương thơm mang sự tươi m&aacute;t, thanh lịch v&agrave; s&acirc;u sắc, tượng trưng cho c&aacute;c cuộc họp của biển v&agrave; đ&aacute;. Được lấy cảm hứng từ thời trang, một tảng đ&aacute; đen đ&aacute;nh b&oacute;ng từ sức mạnh của s&oacute;ng. Bắt đầu với hương tươi m&aacute;t của cam bergamot, tiếp theo đ&oacute; l&agrave; hương thơm được x&acirc;y dựng xung quanh c&acirc;y x&ocirc; thơm v&agrave; hương thảo v&agrave; cuối c&ugrave;ng được kết th&uacute;c với sự h&ograve;a quyện của trầm hương v&agrave; hoắc hương thể hiện một nam t&iacute;nh mới. M&ugrave;i hương đặc trưng: + Hương đầu: Cam Bergamot, Hương nước biển. + Hương giữa: Hoa phong lữ, C&acirc;y hương thảo, C&acirc;y x&ocirc; thơm. + Hương cuối: C&acirc;y hoắc hương, Xạ Hương. - Phong c&aacute;ch: lịch l&atilde;m, cuốn h&uacute;t v&agrave; đầy quyền lực. - Thời điểm khuy&ecirc;n d&ugrave;ng: M&ugrave;a Xu&acirc;n, Hạ v&agrave; Chớm Thu Hướng dẫn bảo quản đối với sản phẩm Nước hoa nam dầu thơm nam t&iacute;nh Gi&ograve; Đen Profumo 100ml lưu hương l&acirc;u mạnh mẽ cuốn h&uacute;t - Shin Official. - Để ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp của mặt trời - Đậy nắp sản phẩm sau khi sử dụng - Tr&aacute;nh tiếp x&uacute;c trực tiếp với mắt v&agrave; tr&aacute;nh xa tầm tay của trẻ em Shop cam kết với kh&aacute;ch h&agrave;ng về sản phẩm Nước hoa Gi&ograve; Đen Profumo 100ml, Nước hoa nam thơm l&acirc;u *Sản phẩm 100% giống m&ocirc; tả *Giao h&agrave;ng ngay khi nhận được đơn *Đổi trả theo đ&uacute;ng quy định của Shopee : 1. Điều kiện &aacute;p dụng (trong v&ograve;ng 07 ng&agrave;y kể từ khi nhận sản phẩm): - H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng - H&agrave;ng ho&aacute; bị lỗi hoặc hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất 2. Trường hợp được chấp nhận: - H&agrave;ng kh&ocirc;ng đ&uacute;ng chủng loại, mẫu m&atilde; như qu&yacute; kh&aacute;ch đặt h&agrave;ng - Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng - T&igrave;nh trạng b&ecirc;n ngo&agrave;i bị ảnh hưởng như r&aacute;ch bao b&igrave;, bong tr&oacute;c, bể vỡ&hellip; 3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch: - Qu&aacute; 07 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng. - Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải h&agrave;ng của shop - Do m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%.</p>\r\n', 'Nước hoa nam dầu thơm nam tính Giò Đen Profumo 100ml lưu hương lâu mạnh mẽ cuốn hút - Shin Official', 25, 100, 0, 'nuoc-hoa-nam-dau-thom-nam-tinh-gio-den-profumo-100ml-luu-huong-lau-manh-me-cuon-hut-shin-official', b'1', '2022-11-03 00:27:01.000000', '6e6c93d0-23da-4c34-9a0f-b4a0c20457dc', '002eae57-0370-4bb5-a904-4242087f981b'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '2022-11-04 09:04:35.000000', ',<p>[𝙁𝙍𝙀𝙀𝙎𝙃𝙄𝙋] Nước hoa nam ARMAF Ventana Pour Homme 10ml (mẫu thử)</p>\r\n', ',<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước hoa nam Gentlemen hương thơm mới, thiết kế chai dạng xịt v&agrave; h&igrave;nh d&aacute;ng bắt mắt, sang trọng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nh&agrave; sản xuất Gentlemen đ&atilde; c&ocirc;ng bố thời gian lưu hương b&ecirc;n bạn 4-5h, v&agrave; độ tỏa hương xa tới b&aacute;n k&iacute;nh 2m, gi&uacute;p bạn lu&ocirc;n nổi bật ở mọi nơi bạn tới, 🍒</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước hoa Gentlemen với hương thơm:</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương đầu: Chanh, qu&yacute;t, bưởi, gừng đặc trưng kh&oacute; phai của nước hoa nam Gentlemen</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương giữa: Lavender (oải hương), hoa chu&ocirc;ng, cẩm t&uacute; cầu, đại dương ngọt ng&agrave;o, l&ocirc;i cuốn thơm L&acirc;u.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương cuối: Sự cuốn h&uacute;t, n&oacute;ng bỏng kh&oacute; cưỡng với Hổ ph&aacute;ch, đ&agrave;n hương, xạ hương Với hương thơm the m&aacute;t từ chanh, qu&yacute;t lướt tr&ecirc;n vị cay của gừng kết hợp với hương thơm đại dương tạo n&ecirc;n sự tươi m&aacute;t, sảng kho&aacute;i ngay khi xịt, th&ecirc;m ch&uacute;t hương thơm ngọt ng&agrave;o, tr&agrave;n trề sinh lực của lavender, g&acirc;y ấn tượng mạnh mẽ bởi hương gỗ đ&agrave;n hương, hổ ph&aacute;ch, xạ hương tạo n&ecirc;n sự cuốn h&uacute;t kh&oacute; cưỡng.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen L&agrave; Sự kết hợp tinh tế của hương thơm tự nhi&ecirc;n tạo n&ecirc;n d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng với n&eacute;t ri&ecirc;ng v&ocirc; c&ugrave;ng cuốn h&uacute;t, gi&uacute;p bạn tự tin trước đ&aacute;m đ&ocirc;ng hoặc những người xung quanh,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương thơm nam t&iacute;nh đến từ sản phẩm Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen sẽ chinh phục được bạn ngay từ lần sử dụng đầu ti&ecirc;n, hứa hẹn sẽ l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường bạn đi,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen. Kh&ocirc;ng chỉ d&agrave;nh ri&ecirc;ng cho Qu&yacute; Anh. Kể cả c&aacute;c n&agrave;ng nếu muốn thử một m&ugrave;i hương c&aacute; t&iacute;nh mạnh th&igrave; cũng c&oacute; thể thử d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng n&agrave;y với sự tươi mới v&agrave; nguồn năng lượng m&atilde;nh liệt. - C&aacute;ch sử dụng: Giữ chai thẳng đứng, lắc đều v&agrave; nhấn v&agrave; xịt v&agrave;o v&ugrave;ng tay v&agrave; cổ. - Bảo quản: Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Tr&aacute;nh tiếp x&uacute;c trực tiếp với mắt v&agrave; tr&aacute;nh xa tầm tay trẻ em.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '[𝙁𝙍𝙀𝙀𝙎𝙃𝙄𝙋] Nước hoa nam ARMAF Ventana Pour Homme 10ml (mẫu thử)', 193, 100, 0, '-nuoc-hoa-nam-armaf-ventana-pour-homme-10ml-mau-thu', b'1', '2022-11-04 09:04:35.000000', '2f89b595-73d4-4824-b899-00d399276c09', '002eae57-0370-4bb5-a904-4242087f981b'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '2022-11-04 08:01:15.000000', ',<p>✨✨ B&ocirc;ng Tai H&igrave;nh Hoa Đ&iacute;nh Ngọc Trai Cao Cấp Phong C&aacute;ch Ph&aacute;p Cổ Điển D&agrave;nh Cho Nữ</p>\r\n', ',<p>Thời gian giao h&agrave;ng dự kiến cho sản phẩm n&agrave;y l&agrave; 7-9 ng&agrave;y</p>\r\n\r\n<p>✨✨Ch&uacute;c một ng&agrave;y tốt l&agrave;nh ở Amigoa ~</p>\r\n\r\n<p>🔅Sản phẩm c&oacute; sẵn!</p>\r\n\r\n<p>🔅Bạn sẽ nhận được sản phẩm nhanh nhất c&oacute; thể!</p>\r\n\r\n<p>🔅Mới 100!Niche Design French Pearl Flower Stud Earrings B&ocirc;ng tai nữ cao cấp cổ điển</p>\r\n\r\n<p>Đặc trưng Thiết kế th&iacute;ch hợp, Ngọc trai, Sang trọng nhẹ, Cao cấp, Cổ điển, Kim cương Pearl flower: Với h&igrave;nh ngọc trai v&agrave; h&igrave;nh b&ocirc;ng hoa, đ&ocirc;i b&ocirc;ng tai n&agrave;y c&oacute; kiểu d&aacute;ng sang trọng nhẹ nh&agrave;ng.</p>\r\n\r\n<p>Chất lượng: Những đ&ocirc;i b&ocirc;ng tai đinh t&aacute;n d&agrave;nh cho phụ nữ n&agrave;y được l&agrave;m bằng hợp kim v&agrave; khảm bằng ngọc trai v&agrave; kim cương thủ c&ocirc;ng, kh&ocirc;ng chứa ch&igrave; v&agrave; kh&ocirc;ng chứa niken. Nh&acirc;n dịp: Sản phẩm n&agrave;y th&iacute;ch hợp để hẹn h&ograve;, đi nghỉ, du lịch, mua sắm, dự tiệc, mặc h&agrave;ng ng&agrave;y, đi l&agrave;m, đi học, v.v.</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p>Chất liệu: Hợp kim, Kim cương, Ngọc trai</p>\r\n\r\n<p>K&iacute;ch thước sản phẩm: Chiều d&agrave;i: 2,6cm G&oacute;i h&agrave;ng bao gồm 1 x đ&ocirc;i b&ocirc;ng tai đinh t&aacute;n Kh&ocirc;ng c&oacute; hộp b&aacute;n lẻ.</p>\r\n\r\n<p>Được đ&oacute;ng g&oacute;i an to&agrave;n trong t&uacute;i.</p>\r\n\r\n<p>Ghi ch&uacute;:</p>\r\n\r\n<p>1.Do sự kh&aacute;c biệt về &aacute;nh s&aacute;ng v&agrave; m&agrave;n h&igrave;nh, m&agrave;u sắc của sản phẩm c&oacute; thể hơi kh&aacute;c so với h&igrave;nh ảnh.</p>\r\n\r\n<p>2.Vui l&ograve;ng cho ph&eacute;p ch&ecirc;nh lệch 1-2 cm do đo lường thủ c&ocirc;ng.</p>\r\n', '✨✨ Bông Tai Hình Hoa Đính Ngọc Trai Cao Cấp Phong Cách Pháp Cổ Điển Dành Cho Nữ', 162, 100, 0, '-bong-tai-hinh-hoa-dinh-ngoc-trai-cao-cap-phong-cach-phap-co-dien-danh-cho-nu', b'1', '2022-11-04 08:01:15.000000', 'dc3cca73-baf1-409f-804f-52e922895582', 'db6d2602-f5cf-4edb-bb42-e62e5ffeda5b'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', '2022-11-03 16:50:14.000000', ',<p>Lắc tay nam nữ bạc S925 - V&ograve;ng tay bạc &Yacute; nam nữ đơn giản, c&aacute; t&iacute;nh, trẻ trung, hiện đại Zaza accessories ZZ VT01</p>\r\n', ',<p>💐 Ch&agrave;o mừng t&igrave;nh y&ecirc;u đến với ZaZa.accessories!! Lắc tay nam nữ bạc S925 - V&ograve;ng tay bạc &Yacute; nam nữ đơn giản, c&aacute; t&iacute;nh, trẻ trung, hiện đại Zaza accessories ZZ VT01 🎀 TH&Ocirc;NG TIN SẢN PHẨM ✔️ Chất liệu: Bạc S925 ✔️M&agrave;u sắc: Bạc ✔️K&iacute;ch thước: 17cm +3cm ✔️Thiết kế đơn giản, thanh lịch, sang trọng 🎀 Ở nh&agrave; hay đi l&agrave;m, D&ugrave; mặc đồ tối giản hay sang trọng, sexy hay c&aacute; t&iacute;nh, 1 phụ kiện ph&ugrave; hợp sẽ l&agrave;m bạn rạng rỡ hơn, thật đấy!! . Mặc đẹp rồi h&atilde;y điểm th&ecirc;m 1 ch&uacute;t với Lắc tay nam nữ bạc S925 - V&ograve;ng tay bạc &Yacute; nam nữ đơn giản, c&aacute; t&iacute;nh, trẻ trung, hiện đại Zaza accessories ZVT0095 nh&agrave; ZaZa.accessories nh&eacute;!! 🎀Ngo&agrave;i ra, ph&ugrave; hợp l&agrave;m qu&agrave; tặng c&aacute;c dịp lễ cho người th&acirc;n, bạn b&egrave;. Xinh xẻo như n&agrave;y chắc chắn ai đ&oacute; sẽ rất th&iacute;ch đ&oacute; ạ! 🎀CH&Iacute;NH S&Aacute;CH HỖ TRỢ KH&Aacute;CH H&Agrave;NG -T&ugrave;y gi&aacute; trị đơn h&agrave;ng nhất định m&agrave; shop sẽ c&oacute; thể tặng th&ecirc;m những phần qu&agrave; nhỏ nhỏ xinh xinh - Sản phẩm nh&agrave; ZaZa.acessories y h&igrave;nh, y m&ocirc; tả - H&agrave;ng c&oacute; sẵn, nh&agrave; ZaZa sẽ cố gắng giao sớm nhất c&oacute; thể cho c&aacute;c t&igrave;nh y&ecirc;u ạ. - Hỗ trợ đổi trả trong v&ograve;ng 2 ng&agrave;y từ thời điểm nhận h&agrave;ng nếu ph&aacute;t sinh lỗi sản xuất hoặc lỗi từ ph&iacute;a shop. - Chương tr&igrave;nh Freeship extra, giảm 15k ship cho đơn h&agrave;ng từ 50k, giảm 70k ph&iacute; vận chuyển cho đơn h&agrave;ng từ 300k. - Nhận h&agrave;ng c&oacute; bất k&igrave; vấn đề g&igrave; xin h&atilde;y nhắn tin cho shop để được hỗ trợ tốt nhất, nếu h&agrave;i l&ograve;ng về SP h&atilde;y đ&aacute;nh gi&aacute; ZaZa.accessories 5 sao để ch&uacute;ng m&igrave;nh cố gắng tốt hơn, thật vui v&igrave; được g&oacute;p th&ecirc;m 1 phần xinh đẹp cho c&aacute;c bạn! 🎀HƯỚNG DẪN BẢO QUẢN: - Hạn chế nước, tr&aacute;nh h&oacute;a chất, tẩy rửa - Nếu được khi nhận h&agrave;ng v&agrave; cứ c&aacute;ch tầm 7-10 ng&agrave;y h&atilde;y qu&eacute;t 1 lớp sơn b&oacute;ng mỏng l&ecirc;n bề mặt để sản phẩm s&aacute;ng đẹp m&atilde;i nha ạ. - Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, sạch sẽ, cất t&uacute;i nilon, bỏ hộp nếu ko SD - Tr&aacute;nh v&agrave; đập, rơi vỡ, sử dụng xin nhẹ nh&agrave;ng y&ecirc;u thương - Sau 1 thời gian sử dụng sản phẩm c&oacute; thể bị d&iacute;nh bụi, h&atilde;y d&ugrave;ng khăn mềm lau sạch v&agrave; để kh&ocirc; ❗Lưu &yacute;: Đ&oacute; điều kiện &aacute;nh s&aacute;ng, m&agrave;u sắc thực tế sản phẩm c&oacute; thể ch&ecirc;nh lệch 1 ch&uacute;t so với h&igrave;nh ảnh , thường ko đ&aacute;ng kể! 🎀 H&atilde;y để ZaZa.accessories c&ugrave;ng bạn Đẹp hơn mỗi ng&agrave;y!</p>\r\n', 'Lắc tay nam nữ bạc S925 - Vòng tay bạc Ý nam nữ đơn giản, cá tính, trẻ trung, hiện đại Zaza accessories ZZ VT01', 72, 100, 0, 'lac-tay-nam-nu-bac-s925-vong-tay-bac-nam-nu-don-gian-ca-tinh-tre-trung-hien-dai-zaza-accessories-zz-vt01', b'1', '2022-11-03 16:50:14.000000', '5b81bcf4-fddd-45bf-b37b-31d0eae81565', 'd4b25927-8cc2-4b18-aae9-7ff56e1ef32b'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '2022-11-04 08:06:54.000000', ',<p>Khuy&ecirc;n tai bạc TLEE chữ c&aacute;i nạm đ&aacute; xinh xắn TleeJewelry B0307</p>\r\n', ',<p>TH&Ocirc;NG TIN SẢN PHẨM KHUY&Ecirc;N TAI BẠC TLEE JEWELRY</p>\r\n\r\n<p>- Chất liệu: Bạc S925 (92,5% Bạc v&agrave; 7,5% kim loại kh&aacute;c sản xuất theo c&ocirc;ng nghệ Bạc &Yacute;) h&agrave;ng gia c&ocirc;ng kĩ b&oacute;ng đẹp, kh&ocirc;ng han gỉ, kh&ocirc;ng dị ứng, dễ l&agrave;m s&aacute;ng v&agrave; bảo quản</p>\r\n\r\n<p>- Kiểu c&aacute;ch: Thiết kế thanh lịch, trẻ trung, tinh tế, sắc sảo - Sản xuất: được thiết kế bởi TLEE JEWELRY</p>\r\n\r\n<p>- Khuy&ecirc;n tai bạc TLEE JEWELRY được thiết kế thanh lịch, trẻ trung theo xu hướng mới nhất của ng&agrave;nh phụ kiện trang sức</p>\r\n\r\n<p>- Khuy&ecirc;n tai được gia c&ocirc;ng v&ocirc; c&ugrave;ng kĩ lưỡng, tỉ mỉ tạo n&ecirc;n một sản phẩm trang sức ho&agrave;n hảo HƯỚNG DẪN SỬ DỤNG V&Agrave; BẢO QUẢN KHUY&Ecirc;N TAI BẠC TLEE JEWELRY</p>\r\n\r\n<p>- Tr&aacute;nh để trang sức tiếp x&uacute;c với ho&aacute; chất, chất tẩy rửa mạnh, c&oacute; thể l&agrave;m s&aacute;ng trang sức bằng c&aacute;ch ch&agrave; kem đ&aacute;nh răng, nước rửa b&aacute;t, nước chanh...</p>\r\n\r\n<p>- Thường xuy&ecirc;n vệ sinh trang sức băng khăn l&agrave;m s&aacute;ng, que l&agrave;m s&aacute;ng (phụ kiện vệ sinh sản phẩm của shop) n&ecirc;n vệ sinh nhẫn bạc thường xuy&ecirc;n bằng nước rửa bạc 1-3 th&aacute;ng/lần để đảm bảo sản phẩm lu&ocirc;n được s&aacute;ng b&oacute;ng</p>\r\n\r\n<p>&nbsp;- Khi kh&ocirc;ng đeo, bảo quản trang sức nơi kh&ocirc; r&aacute;o, tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm thấp.</p>\r\n\r\n<p>- N&ecirc;n để trang sức trong t&uacute;i zip, th&ecirc;m 1 miếng b&ocirc;ng g&ograve;n nhỏ để h&uacute;t ẩm gi&uacute;p bảo quản tốt hơn.</p>\r\n\r\n<p>NCJ CAM KẾT TRANG SỨC TLEE JEWELRY</p>\r\n\r\n<p>- Sản phẩm giống ảnh, giống m&ocirc; tả 100%</p>\r\n\r\n<p>. - H&igrave;nh ảnh, video đều l&agrave; ảnh thật, video quay lại những g&oacute;c độ ch&acirc;n thật nhất của sản phẩm.</p>\r\n\r\n<p>- Tư vấn hỗ trợ kh&aacute;ch h&agrave;ng nhiệt t&igrave;nh 24/24. QUYỀN LỢI CỦA KH&Aacute;CH KHI MUA SẢN PHẨM KHUY&Ecirc;N TAI BẠC TLEE JEWELRY</p>\r\n\r\n<p>- Bảo h&agrave;nh l&agrave;m s&aacute;ng đ&aacute;nh b&oacute;ng trọn đời sản phẩm.</p>\r\n\r\n<p>- Hỗ trợ đổi trả miễn ph&iacute; trong v&ograve;ng 07 ng&agrave;y (theo ch&iacute;nh s&aacute;ch của Shopee).</p>\r\n\r\n<p>- Sản phẩm Qu&yacute; kh&aacute;ch nhận sau khi mua sắm nếu c&oacute; bất cứ vấn đề g&igrave; cần giải đ&aacute;p, hỗ trợ h&atilde;y chat ngay cho shop để được nh&acirc;n vi&ecirc;n chăm s&oacute;c nhanh nhất.</p>\r\n\r\n<p>*Lưu &yacute;: Qu&yacute; kh&aacute;ch vui l&ograve;ng quay lại video mở sản phẩm để l&agrave;m cơ sở giải quyết khiếu nại đổi/trả khi c&oacute; vấn đề ph&aacute;t sinh li&ecirc;n quan đến sản phẩm.</p>\r\n', 'Khuyên tai bạc TLEE chữ cái nạm đá xinh xắn TleeJewelry B0307', 19, 100, 0, 'khuyen-tai-bac-tlee-chu-cai-nam-da-xinh-xan-tleejewelry-b0307', b'1', '2022-11-04 08:06:54.000000', '2f89b595-73d4-4824-b899-00d399276c09', 'db6d2602-f5cf-4edb-bb42-e62e5ffeda5b'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '2022-11-04 09:07:18.000000', ',<p>Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Mini Dark Brawn Chai 80ml Đẳng Cấp Vượt Trội Lưu Hương Đến 10h</p>\r\n', ',<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước hoa nam Gentlemen hương thơm mới, thiết kế chai dạng xịt v&agrave; h&igrave;nh d&aacute;ng bắt mắt, sang trọng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nh&agrave; sản xuất Gentlemen đ&atilde; c&ocirc;ng bố thời gian lưu hương b&ecirc;n bạn 4-5h, v&agrave; độ tỏa hương xa tới b&aacute;n k&iacute;nh 2m, gi&uacute;p bạn lu&ocirc;n nổi bật ở mọi nơi bạn tới, 🍒</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước hoa Gentlemen với hương thơm:</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương đầu: Chanh, qu&yacute;t, bưởi, gừng đặc trưng kh&oacute; phai của nước hoa nam Gentlemen</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương giữa: Lavender (oải hương), hoa chu&ocirc;ng, cẩm t&uacute; cầu, đại dương ngọt ng&agrave;o, l&ocirc;i cuốn thơm L&acirc;u.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương cuối: Sự cuốn h&uacute;t, n&oacute;ng bỏng kh&oacute; cưỡng với Hổ ph&aacute;ch, đ&agrave;n hương, xạ hương Với hương thơm the m&aacute;t từ chanh, qu&yacute;t lướt tr&ecirc;n vị cay của gừng kết hợp với hương thơm đại dương tạo n&ecirc;n sự tươi m&aacute;t, sảng kho&aacute;i ngay khi xịt, th&ecirc;m ch&uacute;t hương thơm ngọt ng&agrave;o, tr&agrave;n trề sinh lực của lavender, g&acirc;y ấn tượng mạnh mẽ bởi hương gỗ đ&agrave;n hương, hổ ph&aacute;ch, xạ hương tạo n&ecirc;n sự cuốn h&uacute;t kh&oacute; cưỡng.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen L&agrave; Sự kết hợp tinh tế của hương thơm tự nhi&ecirc;n tạo n&ecirc;n d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng với n&eacute;t ri&ecirc;ng v&ocirc; c&ugrave;ng cuốn h&uacute;t, gi&uacute;p bạn tự tin trước đ&aacute;m đ&ocirc;ng hoặc những người xung quanh,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương thơm nam t&iacute;nh đến từ sản phẩm Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen sẽ chinh phục được bạn ngay từ lần sử dụng đầu ti&ecirc;n, hứa hẹn sẽ l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường bạn đi,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen. Kh&ocirc;ng chỉ d&agrave;nh ri&ecirc;ng cho Qu&yacute; Anh. Kể cả c&aacute;c n&agrave;ng nếu muốn thử một m&ugrave;i hương c&aacute; t&iacute;nh mạnh th&igrave; cũng c&oacute; thể thử d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng n&agrave;y với sự tươi mới v&agrave; nguồn năng lượng m&atilde;nh liệt. - C&aacute;ch sử dụng: Giữ chai thẳng đứng, lắc đều v&agrave; nhấn v&agrave; xịt v&agrave;o v&ugrave;ng tay v&agrave; cổ. - Bảo quản: Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Tr&aacute;nh tiếp x&uacute;c trực tiếp với mắt v&agrave; tr&aacute;nh xa tầm tay trẻ em.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Nước Hoa Nam Chính Hãng Thơm Lâu Mini Dark Brawn Chai 80ml Đẳng Cấp Vượt Trội Lưu Hương Đến 10h', 137, 100, 0, 'nuoc-hoa-nam-chinh-hang-thom-lau-mini-dark-brawn-chai-80ml-dang-cap-vuot-troi-luu-huong-den-10h', b'1', '2022-11-04 09:07:18.000000', '5b81bcf4-fddd-45bf-b37b-31d0eae81565', '002eae57-0370-4bb5-a904-4242087f981b'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '2022-11-04 09:34:07.000000', ',<p>Nước hoa nữ PROLA La Angel nữ t&iacute;nh, tinh kh&ocirc;i, thanh lịch th&iacute;ch hợp đi l&agrave;m, đi học, đi hẹn h&ograve; PL04 - Dạng xịt 15ml</p>\r\n', ',<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Nh&oacute;m nước hoa: Hương va-ni phương đ&ocirc;ng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Giới t&iacute;nh: Nữ Độ tuổi khuy&ecirc;n d&ugrave;ng: Tr&ecirc;n 25</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Năm ra mắt: 2014 Nồng độ: EDP Nh&agrave; pha chế: Olivier Cresp</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Độ lưu hương: Tạm ổn &ndash; 3 giờ đến 6 giờ</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Độ toả hương: Gần &ndash; Toả hương trong v&ograve;ng một c&aacute;nh tay</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, Đ&ecirc;m, Thu, Đ&ocirc;ng Phong c&aacute;ch: B&iacute; ẩn , Năng động ,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Thu h&uacute;t Hương Đầu: Hồng ti&ecirc;u, Hoa cam, Quả l&ecirc;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Hương giữa: C&agrave; ph&ecirc;, Hoa nh&agrave;i, Hạnh nh&acirc;n đắng, Cam thảo Hương cuối: Hương Va ni, C&acirc;y hoắc hương, Gỗ tuyết t&ugrave;ng, Gỗ Cashmer</span></span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'Nước hoa nữ PROLA La Angel nữ tính, tinh khôi, thanh lịch thích hợp đi làm, đi học, đi hẹn hò PL04 - Dạng xịt 15ml', 154, 100, 0, 'nuoc-hoa-nu-prola-la-angel-nu-tinh-tinh-khoi-thanh-lich-thich-hop-id-lam-di-hoc-di-hen-ho-pl04-dang-xit-15ml', b'1', '2022-11-04 09:34:07.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', 'da8954d2-e3d5-4c27-baaf-81e82a687c2e'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '2022-11-04 06:56:25.000000', ',<p>V&ograve;ng Tay Chuỗi Hạt Ngọc B&iacute;ch H&igrave;nh Chiếc L&aacute; Nhỏ Đơn Giản Sang Trọng Cho Nữ</p>\r\n', ',<p>☆ Ch&agrave;o mừng bạn đến với Cửa h&agrave;ng phụ kiện thời trang ☆</p>\r\n\r\n<p>-----------------------------------------------------</p>\r\n\r\n<p>M&ocirc; tả:</p>\r\n\r\n<p>Chất liệu: đồng + hạt</p>\r\n\r\n<p>Đ&oacute;ng g&oacute;i: T&uacute;i phong b&igrave;</p>\r\n\r\n<p>K&iacute;ch thước: xấp xỉ. 17 + 5cm</p>\r\n\r\n<p>M&agrave;u sắc: m&agrave;u của h&igrave;nh ảnh</p>\r\n\r\n<p>G&oacute;i bao gồm: 1pc * V&ograve;ng đeo tay</p>\r\n\r\n<p>Ghi ch&uacute;:</p>\r\n\r\n<p>1.Xin vui l&ograve;ng cho ph&eacute;p sai số 1-3mm do đo lường thủ c&ocirc;ng.</p>\r\n\r\n<p>2.M&agrave;u sắc thực c&oacute; thể hơi kh&aacute;c so với h&igrave;nh ảnh do độ ph&acirc;n giải, độ s&aacute;ng, độ tương phản của m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh, v.v. Mong bạn th&ocirc;ng cảm.</p>\r\n\r\n<p>-----------------------------------------------------</p>\r\n\r\n<p>☆ Bạn th&acirc;n mến, H&atilde;y theo d&otilde;i ch&uacute;ng t&ocirc;i v&agrave; c&oacute; h&igrave;nh ảnh r&otilde; r&agrave;ng v&agrave; được ca ngợi năm sao để nhận phiếu giảm gi&aacute;.</p>\r\n\r\n<p>☆Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o về hậu m&atilde;i, vui l&ograve;ng li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i sẽ đưa ra giải ph&aacute;p tốt nhất.</p>\r\n', 'Vòng Tay Chuỗi Hạt Ngọc Bích Hình Chiếc Lá Nhỏ Đơn Giản Sang Trọng Cho Nữ', 63, 100, 0, 'vong-tay-chui-aht-ngoc-bich-hinh-chiec-la-nho-don-gian-sang-trong-cho-nu', b'1', '2022-11-04 06:56:25.000000', '2f89b595-73d4-4824-b899-00d399276c09', 'd4b25927-8cc2-4b18-aae9-7ff56e1ef32b'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '2022-10-29 22:29:06.000000', ',Kid\'s Fashion Contrast Collar Baseball Jacket coat for autumn', ',Phong cách: Phong cách Hàn Quốc\r\nMùa áp dụng: mùa xuân và mùa thu\r\nHọa tiết: phối màu + số\r\nVải: vải pha Cotton\r\nGiới tính áp dụng: girls\r\nChiều cao tham khảo: 110/120/130/140/150/160/170\r\n\r\nKhuyến nghị độ tuổi 3-4 tuổi, chiều cao 95-104cm, cân nặng 13,5-16,5kg\r\n120 độ tuổi khuyến nghị 5-6 tuổi, chiều cao 104-114cm, cân nặng 16,5-20,5kg\r\nKhuyến nghị độ tuổi 7-8 tuổi, chiều cao 114-124cm, cân nặng 20,5-25,5kg\r\n140 độ tuổi khuyến nghị 9-10 tuổi, chiều cao 124-134cm, cân nặng 25,5-30,5kg\r\nKhuyến nghị độ tuổi 150 150, độ tuổi khuyến nghị 10-11 tuổi, chiều cao 134-144cm, cân nặng 30,5-35,5kg\r\n160 độ tuổi khuyến nghị 11-12 tuổi, chiều cao 144-154cm, cân nặng 35,5-40,5kg\r\n170 độ tuổi khuyến nghị 12-13 tuổi, chiều cao 154-164cm, cân nặng 40,5-45kg\r\n\r\nGói chứa: 1 * áo khoác\r\n\r\nLưu ý:\r\n\r\n📣Tất cả các kích thước tùy thuộc vào chiều cao của trẻ em, và kích thước cụ thể được thêm vào sản phẩm;\r\n\r\n📣 Kích thước khuyến nghị là hình dạng cơ thể bình thường, vui lòng chọn theo hình dạng cơ thể thực tế;\r\n\r\n📣100% hàng mới, chất lượng cao\r\n\r\n📣Mọi thắc mắc vui lòng xác nhận size và màu sắc trước khi mua hàng. Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ \"chat\";', 'Kid\'s Fashion Contrast Collar Baseball Jacket coat for autumn', 30, 1000, 0, 'kids-fashion-contrast-collar-baseball-jacket-coat-for-autumn', b'1', '2022-10-29 22:29:06.000000', '4cc9f4d6-8a31-4f3f-b16d-485e47e8da8c', 'e777d18a-ee2f-4ce5-9f13-bae0c6508aaf');
INSERT INTO `product` (`id`, `create_at`, `product_desc`, `product_detail`, `product_name`, `product_price`, `product_quantity`, `sale_off`, `slug`, `state`, `update_at`, `brand_id`, `category_id`) VALUES
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '2022-11-04 09:44:08.000000', ',<p>Sữa Tắm Safeguard T&uacute;i 620ml Hoa Hồng L&ocirc; Hội/Chanh/Trắng Tinh Khiết</p>\r\n', ',<p>Sữa tắm gi&uacute;p diệt khuẩn, l&agrave;m sạch da hiệu quả. Hương thơm tươi m&aacute;t, giảm thiểu m&ugrave;i cơ thể kh&oacute; chịu. Chăm s&oacute;c sức khỏe cho người sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sữa Tắm SAFEGUARD T&uacute;i 620ML Hương Chanh/ Trắng Tinh Khiết/ Hồng Hoa &amp; L&ocirc; Hội</p>\r\n\r\n<p>A. Đặc điểm nổi bật:</p>\r\n\r\n<p>- Sữa tắm gi&uacute;p diệt khuẩn, l&agrave;m sạch da hiệu quả.</p>\r\n\r\n<p>- Hương thơm tươi m&aacute;t, giảm thiểu m&ugrave;i cơ thể kh&oacute; chịu.</p>\r\n\r\n<p>- Chăm s&oacute;c sức khỏe cho người sử dụng.</p>\r\n\r\n<p>- Th&agrave;nh phần thi&ecirc;n nhi&ecirc;n an to&agrave;n với mọi đối tượng</p>\r\n\r\n<p>B. Lựa chọn m&ugrave;i hương/ t&iacute;nh năng:</p>\r\n\r\n<p>- Sữa Tắm Safeguard Trắng Tinh Khiết với c&ocirc;ng nghệ bảo vệ vượt trội sẽ gi&uacute;p mang đến cho l&agrave;n da của bạn sự mềm mại v&agrave; tươi trẻ sau mỗi lần sử dụng. Sữa tắm kh&ocirc;ng chỉ gi&uacute;p l&agrave;m sạch bụi bẩn v&agrave; tế b&agrave;o chết tr&ecirc;n da m&agrave; c&ograve;n tạo một lớp m&agrave;ng bảo vệ da khỏi c&aacute;c vi khuẩn g&acirc;y hại. Sau khi tắm sản phẩm gi&uacute;p lưu lại hương thơm tinh tế v&agrave; quyến rũ tr&ecirc;n cơ thể cho bạn thoải m&aacute;i v&agrave; tự tin suốt cả ng&agrave;y.</p>\r\n\r\n<p>- Sữa tắm Safeguard Hồng Hoa v&agrave; L&ocirc; Hội chứa tinh chất nha đam tự nhi&ecirc;n nu&ocirc;i dưỡng da đồng thời l&agrave;m s&aacute;ng m&agrave;u da, trắng da, chất chống nắng gi&uacute;p bảo vệ da khỏi t&aacute;c hại của tia cực t&iacute;m. Đặc biệt hương thơm trong sữa tắm lưu lại l&acirc;u tr&ecirc;n da mang đến cho bạn vẻ quyến rũ suốt cả ng&agrave;y.</p>\r\n\r\n<p>- Sữa Tắm Safeguard Chanh Tươi M&aacute;t với c&ocirc;ng nghệ bảo vệ vượt trội sẽ gi&uacute;p mang đến cho l&agrave;n da của bạn sự mềm mại v&agrave; tươi trẻ sau mỗi lần sử dụng. Sữa tắm kh&ocirc;ng chỉ gi&uacute;p l&agrave;m sạch bụi bẩn v&agrave; tế b&agrave;o chết tr&ecirc;n da m&agrave; c&ograve;n tạo một lớp m&agrave;ng bảo vệ da khỏi c&aacute;c vi khuẩn g&acirc;y hại. Sau khi tắm, sản phẩm gi&uacute;p lưu lại hương thơm tinh tế v&agrave; quyến rũ tr&ecirc;n cơ thể cho bạn thoải m&aacute;i v&agrave; tự tin suốt cả ng&agrave;y.</p>\r\n\r\n<p>L&agrave;m sạch bụi bẩn, b&atilde; nhờn, cung cấp dưỡng chất thiết yếu nu&ocirc;i dưỡng l&agrave;n da khỏe mạnh.</p>\r\n\r\n<p>C&ocirc;ng nghệ bảo vệ vượt trội, đ&atilde; chứng minh khoa học về khả năng giảm thiểu c&aacute;c vi khuẩn c&oacute; hại sản sinh từ mồ h&ocirc;i của cơ thể v&agrave; m&ocirc;i trường.</p>\r\n\r\n<p>Th&agrave;nh phần c&oacute; nguồn gốc ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n, đảm bảo nhẹ dịu cho mọi l&agrave;n da.</p>\r\n\r\n<p>L&agrave;m trắng da, lưu hương quyến rũ tr&ecirc;n cơ thể suốt nhiều giờ.</p>\r\n\r\n<p>Ph&ugrave; hợp với mọi loại da v&agrave; trẻ em từ 3 tuổi trở l&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C. Hướng dẫn sử dụng</p>\r\n\r\n<p>- L&agrave;m ướt da.</p>\r\n\r\n<p>- Lấy một lượng sữa tắm Safeguard vừa đủ cho v&agrave;o l&ograve;ng b&agrave;n tay hoặc b&ocirc;ng tắm tạo bọt.</p>\r\n\r\n<p>- Massage nhẹ nh&agrave;ng.</p>\r\n\r\n<p>- Tắm lại với nước.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D. Hướng dẫn bảo quản</p>\r\n\r\n<p>Bảo quản nơi tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n\r\n<p>E. Hạn sử dụng: 36 th&aacute;ng kể từ ng&agrave;y sản xuất</p>\r\n\r\n<p>Xuất xứ thương hiệu: Mỹ</p>\r\n\r\n<p>Nơi sản xuất tại: Xem tr&ecirc;n bao b&igrave;</p>\r\n', 'Sữa Tắm Safeguard Túi 620ml Hoa Hồng Lô Hội/Chanh/Trắng Tinh Khiết', 56, 100, 0, 'sua-tam-safeguard-tui-620ml-hoa-hong-lo-hoi-chanh-trang-tinh-khiet', b'1', '2022-11-04 09:44:08.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', 'e6e42453-9c8f-4b09-ad99-f797db02b9cc'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '2022-10-29 20:03:00.000000', ',ĐẶC ĐIỂM NỎI BẬT:\r\n\r\n- Quần kaki Just Men có chất vải co giãn nhẹ, đủ thoải mái cho phái mạnh mặc cả ngày dài.\r\n\r\n- Form ôm gọn dáng, vừa thoải mái vận động vừa đủ để tôn chiều cao.\r\n\r\n- 5 màu sắc thanh lịch cho các hoạt động văn phòng, tiệc tùng...', ',Just Men - Thương hiệu thời trang hàng đầu dành cho phái mạnh.\r\n\r\n\r\n\r\nĐẶC ĐIỂM NỎI BẬT:\r\n\r\n- Quần kaki Just Men có chất vải co giãn nhẹ, đủ thoải mái cho phái mạnh mặc cả ngày dài.\r\n\r\n- Form ôm gọn dáng, vừa thoải mái vận động vừa đủ để tôn chiều cao.\r\n\r\n- 5 màu sắc thanh lịch cho các hoạt động văn phòng, tiệc tùng...\r\n\r\n\r\n\r\nQUY ĐỔI KÍCH THƯỚC:\r\n\r\n- Size 29 : cân nặng 49-59kg, cao 1m50- 1m70\r\n\r\n- Size 30-31: cân nặng 60kg-68kg , cao 1m65 – 1m75\r\n\r\n- Size 32 : cân nặng 69kg – 73kg, cao 1m70 – 1m78\r\n\r\n- Size 34 : cân nặng 73kg – 90kg, cao 1m75 – 1m80\r\n\r\n\r\n\r\nHƯỚNG DẪN CÁCH ĐẶT HÀNG:\r\n\r\n- Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE.\r\n\r\n- Code sản phẩm đã có trong ảnh.\r\n\r\n- Shop luôn sẵn sàng trả lời inbox để tư vấn.\r\n\r\n- Thương hiệu: Just Men.\r\n\r\n- Xuất xứ: Việt Nam.', 'Quần Kaki Dài Just Men nam tính và thanh lịch', 15, 1000, 0, 'quan-kaki-dai-just-men-nam-tinh-va-thanh-lich', b'1', '2022-10-29 20:03:00.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', '5d8bab3d-2911-4fdc-9227-e854761a6178'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '2022-11-04 08:37:37.000000', ',<p>Nhẫn Th&eacute;p Titan M&agrave;u V&agrave;ng Hồng/Bạc Đ&iacute;nh Đ&aacute; Thời Trang D&agrave;nh Cho Nữ</p>\r\n', ',<p>Thời gian giao h&agrave;ng dự kiến cho sản phẩm n&agrave;y l&agrave; từ 7-9 ng&agrave;y</p>\r\n\r\n<p>Nếu bạn kh&ocirc;ng biết k&iacute;ch thước của bạn</p>\r\n\r\n<p>Bạn c&oacute; thể đo ng&oacute;n tay của bạn theo bảng k&iacute;ch thước.</p>\r\n\r\n<p>Khi đo, vui l&ograve;ng đo v&ugrave;ng d&agrave;y nhất của ng&oacute;n tay.</p>\r\n\r\n<p>Sau đ&oacute; chọn K&Iacute;CH THƯỚC US dựa tr&ecirc;n kết quả chu vi Sản phẩm ho&agrave;n to&agrave;n mới 100% v&agrave; chất lượng cao</p>\r\n\r\n<p>Loại sản phẩm: Nhẫn M&agrave;u sắc: Bạc, V&agrave;ng hồng</p>\r\n\r\n<p>Chủ đề: Thời trang Đ&iacute;nh đ&aacute;: kim cương Kim loại: Titan K&iacute;ch thước nhẫn (US): 5 6 7 8 9 10</p>\r\n\r\n<p>G&oacute;i h&agrave;ng bao gồm: 1 sản phẩm</p>\r\n\r\n<p>Lưu &yacute;: C&aacute;c sản phẩm c&oacute; chất liệu v&agrave;ng, kim cương, đ&aacute; qu&yacute; trong shop đều l&agrave; xi mạ/ nh&acirc;n tạo.</p>\r\n', 'Nhẫn Thép Titan Màu Vàng Hồng/Bạc Đính Đá Thời Trang Dành Cho Nữ', 81, 100, 0, 'nhan-thep-titan-mau-vang-hong-bac-dinh-da-thoi-trang-danh-cho-nu', b'1', '2022-11-04 08:37:37.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', 'eda2e75a-7a39-40ae-b387-e0c60c643a93'),
('a3e0540f-4622-47e3-873d-548c132537d2', '2022-11-04 08:15:42.000000', ',<p>B&ocirc;ng Tai D&agrave;i H&igrave;nh Quạt Đ&iacute;nh Kim Cương Trắng Sang Trọng</p>\r\n', ',<p>Cảm ơn bạn đ&atilde; chọn trang sức Carmax</p>\r\n\r\n<p>💕 Mỗi ng&agrave;y mặc quần &aacute;o phức tạp c&oacute; nguồn gốc từ t&igrave;nh y&ecirc;u của cuộc sống</p>\r\n\r\n<p>💕 Đeo đồ trang sức, Sang trọng l&agrave; vượt thời gian, Bạn độc đ&aacute;o v&agrave; đẹp đẽ💕</p>\r\n\r\n<p>🎀Th&ocirc;ng TIN Sản phẩm</p>\r\n\r\n<p>🎀 Số lượng sản phẩm: 1 Đ&oacute;ng g&oacute;i: đ&oacute;ng g&oacute;i hộp qu&agrave; tặng Gra: Giấy chứng nhận GRA điện tử</p>\r\n\r\n<p>✈️Nhắc nhở vận chuyển✈️</p>\r\n\r\n<p>✔️ Giao h&agrave;ng trong v&ograve;ng 24-48 giờ sau khi đặt h&agrave;ng v&agrave; c&oacute; thể giao h&agrave;ng trong v&ograve;ng 5~10 ng&agrave;y để đến nơi.</p>\r\n\r\n<p>✔️ Nếu c&oacute; bất kỳ vấn đề g&igrave; với sản phẩm, vui l&ograve;ng li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ cố gắng hết sức để gi&uacute;p bạn.</p>\r\n\r\n<p>☘️Bảo quản đồ trang sức☘️</p>\r\n\r\n<p>A. Khi kh&ocirc;ng đeo b&igrave;nh thường, h&atilde;y bảo quản trong hộp k&iacute;n để c&aacute;ch ly oxy v&agrave; giảm oxy h&oacute;a.</p>\r\n\r\n<p>B. Tốt nhất bạn n&ecirc;n bảo quản trong một miếng để tr&aacute;nh trầy xước do ma s&aacute;t giữa hai m&oacute;n trang sức.</p>\r\n\r\n<p>C. Tr&aacute;nh tiếp x&uacute;c với mỹ phẩm, nước hoa v&agrave; chất tẩy rửa, c&oacute; chứa c&aacute;c h&oacute;a chất c&oacute; thể dễ d&agrave;ng ăn m&ograve;n trang sức.</p>\r\n\r\n<p>D. Cố gắng tr&aacute;nh va chạm giữa đồ trang sức v&agrave; vật cứng, v&agrave; kh&ocirc;ng n&ecirc;n đeo khi tập thể dục vất vả 、 l&agrave;m việc nh&agrave; v&agrave; tắm rửa.</p>\r\n', 'Bông Tai Dài Hình Quạt Đính Kim Cương Trắng Sang Trọng', 75, 100, 0, 'bong-tai-dai-hinh-quat-dinh-kim-cuong-trang-sang-trong', b'1', '2022-11-04 08:15:42.000000', 'dc3cca73-baf1-409f-804f-52e922895582', '1535ce19-7d50-4e78-8990-6b9a5ecf80b5'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '2022-10-30 00:09:29.000000', ',Bộ Quần Áo Thun Tay Dài Bé Gái (1-9 Tuổi) Zakids', ',✏   MÔ TẢ SẢN PHẨM\r\n\r\n•Thương hiệu: ZA KIDS\r\n\r\n•Sản xuất tại: Việt Nam\r\n\r\n•Chất liệu: 65% cotton, 35% spandex \r\n\r\n•Sản phẩm bảo đảm không ra màu, hình in không bong tróc khi giặt\r\n\r\n•Hình ảnh được chụp bằng sản phẩm thật, không qua chỉnh sửa\r\n\r\n•Hoàn tiền nếu sản phẩm không giống như hình và mô tả\r\n\r\n•Có size cho bé từ 2–14 tuổi\r\n\r\n\r\n\r\n✏  HƯỚNG DẪN CHỌN SIZE\r\n\r\nBa mẹ có thể chọn size cho bé theo bảng size của shop. \r\n\r\nVề thể chất, các bé sẽ phát triển khác nhau theo từng giai đoạn do đó nếu bé có thân hình gầy cao thì ba mẹ có thể chọn size theo chiều cao, còn nếu bé có thân hình đầy đặn thì ba mẹ có thể chọn theo cân nặng.\r\n\r\nSản phẩm của ZA Kids đã được qua xử lý nên không co rút khi mặc.\r\n\r\nNếu phân vân giữa các size, ba mẹ có thể liên hệ với ZA Kids để được tư vấn kỹ hơn nhé.\r\n\r\n\r\n\r\n✏ HƯỚNG DẪN BẢO QUẢN\r\n\r\n• Giăt tay hoặc giặt máy với nước không quá 30 độ C\r\n\r\n• Ủi ở nhiệt độ bình thường\r\n\r\n• Không ngâm sản phẩm quá 30p với xà phòng giặt\r\n\r\n• Không sử dụng chất tẩy mạnh, sẽ làm sản phẩm nhanh phai màu\r\n\r\n• Lần giặt đầu tiên nên giặt bằng nước, không sử dụng bột giặt.\r\n\r\n\r\n\r\n✏ CHÍNH SÁCH ĐỔI SẢN PHẨM\r\n\r\n• Thời gian đổi sản phẩm: Trong vòng 7 ngày kể từ ngày nhận. \r\n\r\n• Mỗi đơn hàng được đổi tối đa 01 lần. \r\n\r\n• Sản phẩm đổi có giá trị bằng hoặc thấp hơn sản phẩm đã mua (phí thừa sẽ không được hoàn trả). \r\n\r\n• Sản phẩm đổi trả phải còn nguyên mác, chưa qua sử dụng, giặt tẩy, không bị dơ, bẩn hoặc bị hư hỏng bởi các tác nhân bên ngoài. \r\n\r\n• Không áp dụng đổi hàng đối với sản phẩm mua trong chương trình ưu đãi (Trừ trường hợp lỗi do ZAKIDS)\r\n\r\n\r\n\r\n✏THÔNG TIN THƯƠNG HIỆU\r\n\r\n•ZA Kids -  Bring Fun 2 Life\r\n\r\n•ZA Kids là thương hiệu thời trang trẻ em chất lượng cao, được sản xuất và phân phối độc quyền bởi Công Ty Cổ Phần Đầu Tư May Mặc P&L.\r\n\r\n•Với định hướng đổi mới dẫn đầu xu hướng về dòng thời trang trẻ em, ZA Kids cam kết mang đến cho người tiêu dùng,  những sản phẩm chất lượng, thời trang, an toàn và tiện lợi nhất cho bé', 'Bộ Quần Áo Thun Tay Dài Bé Gái (1-9 Tuổi) Zakids', 7, 1000, 0, 'bo-quan-ao-thun-tay-dai-be-gai-1-9-tui-zakids', b'1', '2022-10-30 00:09:29.000000', '2f89b595-73d4-4824-b899-00d399276c09', 'e777d18a-ee2f-4ce5-9f13-bae0c6508aaf'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '2022-11-04 07:45:13.000000', ',<p>zzzone* Durable Car Baby Safety Seat Strap Belt Harness Chest Child Clip Safe Buckle</p>\r\n', ',<p>100% brand new and high quality</p>\r\n\r\n<p>The baby is too small, the seat belt is always slipping? Worry about the baby be reined by seat belts?</p>\r\n\r\n<p>Chest with a belt buckle, and you do not have to worry about. It is a chest clip for car child safety seat strap.</p>\r\n\r\n<p>It is help to locate and curved seat strap to ensure the safety of the child. Material: Nylon PA66 Color: Black Size (L*W): 14.5 x 4cm/5.71&quot;x1.57&quot;(approx)</p>\r\n\r\n<p>PA66 material properties: Good strength, excellent toughness and wear resistance</p>\r\n\r\n<p>Quantity: 1 pc Note: Please allow 0-2mm error due to manual measurement, thanks for understanding.</p>\r\n\r\n<p>Due to the difference between different monitors, the picture may not reflect the actual color of the item. Please understand, Thank you!</p>\r\n', 'zzzone* Durable Car Baby Safety Seat Strap Belt Harness Chest Child Clip Safe Buckle', 99, 100, 0, 'zzzone-durable-car-baby-safety-seat-strap-belt-harness-chest-child-clip-safe-buckle', b'1', '2022-11-04 07:45:13.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', '5d3fa890-53a6-43bb-8683-05fc83ea72c1'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '2022-11-04 07:12:33.000000', ',<p>&nbsp;Kẹp t&oacute;c đ&iacute;nh ngọc trai giả thời trang</p>\r\n', ',<p>Thời gian giao h&agrave;ng dự kiến cho sản phẩm n&agrave;y l&agrave; từ 7-9 ng&agrave;y</p>\r\n\r\n<p>⭐Ch&agrave;o mừng đến với cửa h&agrave;ng! ^-^⭐</p>\r\n\r\n<p>M&ocirc; tả sản phẩm: Loại sản phẩm: Kẹp t&oacute;c.</p>\r\n\r\n<p>M&agrave;u sắc / Phong c&aacute;ch: đ&aacute; s&aacute;ng b&oacute;ng</p>\r\n\r\n<p>Chất liệu: Hợp kim &amp; đ&aacute; giả</p>\r\n\r\n<p>K&iacute;ch thước chiều d&agrave;i: khoảng 5.7 cm</p>\r\n\r\n<p>D&agrave;nh cho: nữ G&oacute;i h&agrave;ng bao gồm: 1 x kẹp t&oacute;c</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<p>Độ ch&ecirc;nh lệch m&agrave;u sắc c&oacute; thể hơi kh&aacute;c do c&aacute;c c&agrave;i đặt m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Lưu &yacute;: C&aacute;c sản phẩm c&oacute; chất liệu v&agrave;ng, kim cương, đ&aacute; qu&yacute; trong shop đều l&agrave; xi mạ/ nh&acirc;n tạo.</p>\r\n', ' Kẹp tóc đính ngọc trai giả thời trang', 21, 1, 0, 'kep-toc-dinh-ngoc-trai-gia-thoi-trang', b'1', '2022-11-04 07:12:33.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', '1535ce19-7d50-4e78-8990-6b9a5ecf80b5'),
('ae786d5c-34a6-4f86-9042-465af777092c', '2022-11-03 08:16:21.000000', ',<p>Th&ocirc;ng Tin Sản Phẩm :</p>\r\n\r\n<p>Thương Hiệu : No Brand</p>\r\n\r\n<p>Sản Xuất Tại : Việt Nam</p>\r\n\r\n<p>Th&ocirc;ng Số K&iacute;ch Thước : 1-42-43</p>\r\n\r\n<p>Chất Liệu : Da, Cao Su ...</p>\r\n\r\n<p>Nguồn Gốc Xuất Xứ : Việt Nam</p>\r\n', ',<p>&nbsp;</p>\r\n\r\n<p>Gi&agrave;y_Converse Đen Cao Cổ Nam Nữ Thời Trang, Gi&agrave;y thể thao Đen cao cổ Mũi b&oacute;ng, l&oacute;t xanh</p>\r\n\r\n<p>--Cam Kết B&aacute;n H&agrave;ng - H&igrave;nh ảnh l&agrave; do shop chụp 100%</p>\r\n\r\n<p>- Kh&aacute;ch nhận h&agrave;ng Đ&uacute;ng như m&ocirc; tả - Kh&ocirc;ng độn size sản phẩm</p>\r\n\r\n<p>- Kh&ocirc;ng tăng gi&aacute; trong suốt v&ograve;ng đời sản phẩm - Gửi h&agrave;ng nhanh nhất c&oacute; thể</p>\r\n\r\n<p>--Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>\r\n\r\n<p>- H&agrave;ng kh&ocirc;ng giống m&ocirc; tả shop ho&agrave;n lại tiền 100%</p>\r\n\r\n<p>- H&agrave;ng lỗi do nh&agrave; sản xuất hỗ trợ miễn ph&iacute; đổi mới ngay lập tức</p>\r\n\r\n<p>-- Kh&ocirc;ng tiếp nhận ho&agrave;n h&agrave;ng đối với c&aacute;c trường hợp</p>\r\n\r\n<p>- Sản phẩm đ&atilde; sử dụng g&acirc;y hư hỏng - Q&uacute;a thời hạn tiếp nhận xử l&yacute; dưới 7 ng&agrave;y</p>\r\n\r\n<p>- H&agrave;ng mang kh&ocirc;ng hợp với bạn -Về sản phẩm: Shop cam kết 100% về chất lượng</p>\r\n\r\n<p>-Về gi&aacute; cả : Shop nhập với số lượng nhiều v&agrave; trực tiếp n&ecirc;n chi ph&iacute; sẽ l&agrave; rẻ nhất nh&eacute;.</p>\r\n\r\n<p>-Về dịch vụ: Shop c&oacute; đội ngũ tư vấn 24/24 v&agrave; sẽ cố gắng trả lời hết những thắc mắc xoay quanh sản phẩm nh&eacute;.</p>\r\n\r\n<p>-Thời gian chuẩn bị h&agrave;ng: H&agrave;ng lu&ocirc;n c&oacute; sẵn, thời gian chuẩn bị tối ưu nhất</p>\r\n', 'Giày_Converse Đen Cao Cổ Nam Nữ Thời Trang, Giày thể thao Đen cao cổ Mũi bóng, lót xanh', 12, 100, 0, 'giay-converse-den-cao-co-nam-nu-thoi-trang-giay-the-thao-den-cao-co-mui-bong-lot-xanh', b'1', '2022-11-03 08:16:21.000000', '896f3590-ab28-4fe1-bace-e4fe611683d4', '006a799f-9cc6-419c-a774-c7052be0c51f'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '2022-11-04 07:42:51.000000', ',<p>Chest Mount Harness Strap Holder with Phone Clip for Mobile Phones</p>\r\n', ',<p>Description: Fits with Most of smartphone models on the market.(4-5.5inch)</p>\r\n\r\n<p>Adjustable straps fit over even the largest winter jackets.</p>\r\n\r\n<p>Available with skiing, fishing, hiking, biking, more interesting shot for you to discover.</p>\r\n\r\n<p>Easily and steady clip and lock your phone with adjustable phone clip,universal adapter to connect the clip and chest strap , press the shutter release to allow you perform activities.</p>\r\n\r\n<p>Strong ABS and nylon strapping materials,the phone clip compatible with most of selfie stick, equipped with a convex mirror to see the Panorama.</p>\r\n\r\n<p>Specification: Material: ABS</p>\r\n\r\n<p>Size: Strap:30x30cm / 11.81x11.81inch</p>\r\n\r\n<p>Package Includes: 1 Piece</p>\r\n\r\n<p>Chest Mount Strap 1 Piece Phone Clip A pack of Gadgets</p>\r\n', 'Chest Mount Harness Strap Holder with Phone Clip for Mobile Phones', 91, 100, 0, 'chest-mount-harness-strap-holder-with-phone-clip-for-mobile-phones', b'1', '2022-11-04 07:42:51.000000', '514bb1be-1767-4070-bc4d-19eec871bfb4', '5d3fa890-53a6-43bb-8683-05fc83ea72c1'),
('bf610986-28ec-4239-a386-606e68682ff9', '2022-11-04 07:15:25.000000', ',<p>Kẹp T&oacute;c H&igrave;nh Bướm Đ&iacute;nh Ngọc Trai Sang Trọng Cho Nữ</p>\r\n', ',<p>❤️Tất cả c&aacute;c sản phẩm đều c&oacute; trong kho, bạn c&oacute; thể tự tin mua h&agrave;ng! Nếu th&iacute;ch sản phẩm của ch&uacute;ng t&ocirc;i, c&aacute;c bạn nhớ theo d&otilde;i shop nh&eacute; v&agrave; th&iacute;ch sản phẩm nh&eacute;!❤️</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🙋&zwj;♀️ Dịch vụ tr&ograve; chuyện: 9:00 đến 23:00 từ Thứ Hai đến Thứ Bảy</p>\r\n\r\n<p>🚚 Thời gian vận chuyển: từ thứ Hai đến thứ Bảy, khoảng 1-2 ng&agrave;y sau khi đặt h&agrave;ng tại chỗ; H&agrave;ng đặt trước sẽ được vận chuyển trong khoảng 5 ng&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🚩 Mua h&agrave;ng miễn ph&iacute;: ch&uacute;ng t&ocirc;i sẽ kiểm tra mọi mảnh, v&igrave; vậy ch&uacute;ng t&ocirc;i kh&ocirc;ng phải lo lắng về việc nhận được sản phẩm bị lỗi.</p>\r\n\r\n<p>🚩 Kh&ocirc;ng phải lo lắng về việc trả lại: nếu bạn giao tiếp với chủ cửa h&agrave;ng trong bất kỳ trường hợp n&agrave;o, bạn sẽ nhận được c&acirc;u trả lời thỏa đ&aacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>❤️Chi TIẾT sản phẩm❤️</p>\r\n\r\n<p>⭐T&ecirc;n sản phẩm: Kẹp t&oacute;c đu&ocirc;i ngựa cao</p>\r\n\r\n<p>⭐T&igrave;nh trạng sản phẩm: 100% thương hiệu mới</p>\r\n\r\n<p>⭐Địa chỉ giao h&agrave;ng: Trung Quốc</p>\r\n\r\n<p>⭐Chất liệu: kim loại</p>\r\n\r\n<p>⭐Nh&acirc;n dịp: Tất cả</p>\r\n\r\n<p>⭐Thiết kế: Kim cương, Ngọc trai</p>\r\n\r\n<p>⭐M&agrave;u sắc: Như h&igrave;nh</p>\r\n\r\n<p>⭐Phong c&aacute;ch: phong c&aacute;ch h&agrave;n quốc</p>\r\n\r\n<p>⭐Đ&oacute;ng g&oacute;i: T&uacute;i bong b&oacute;ng 1 C&Aacute;I</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lưu &yacute;: do sự kh&aacute;c biệt về &aacute;nh s&aacute;ng v&agrave; m&agrave;n h&igrave;nh, m&agrave;u sắc của sản phẩm c&oacute; thể hơi kh&aacute;c so với h&igrave;nh ảnh. Mong bạn th&ocirc;ng cảm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạn th&acirc;n! Bạn c&oacute; thể thấy rằng ai đ&oacute; b&aacute;n sản phẩm với gi&aacute; thấp hơn gi&aacute; của ch&uacute;ng t&ocirc;i, nhưng họ kh&ocirc;ng thể đảm bảo chất lượng v&agrave; dịch vụ như của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o, vui l&ograve;ng li&ecirc;n hệ &quot;Ch&uacute;ng t&ocirc;i Tr&ograve; chuyện&quot;!Cảm ơn bạn!</p>\r\n', 'Kẹp Tóc Hình Bướm Đính Ngọc Trai Sang Trọng Cho Nữ', 69, 100, 0, 'kep-toc-hinh-buom-idnh-ngoc-trai-sang-tong-cho-nu', b'1', '2022-11-04 07:15:25.000000', 'dc3cca73-baf1-409f-804f-52e922895582', '1535ce19-7d50-4e78-8990-6b9a5ecf80b5'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '2022-11-04 09:00:31.000000', ',<p>nước hoa nam dubai 100ml mp</p>\r\n', ',<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước hoa nam Gentlemen hương thơm mới, thiết kế chai dạng xịt v&agrave; h&igrave;nh d&aacute;ng bắt mắt, sang trọng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nh&agrave; sản xuất Gentlemen đ&atilde; c&ocirc;ng bố thời gian lưu hương b&ecirc;n bạn 4-5h, v&agrave; độ tỏa hương xa tới b&aacute;n k&iacute;nh 2m, gi&uacute;p bạn lu&ocirc;n nổi bật ở mọi nơi bạn tới, 🍒</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">🍒 Nước hoa Gentlemen với hương thơm:</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương đầu: Chanh, qu&yacute;t, bưởi, gừng đặc trưng kh&oacute; phai của nước hoa nam Gentlemen</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương giữa: Lavender (oải hương), hoa chu&ocirc;ng, cẩm t&uacute; cầu, đại dương ngọt ng&agrave;o, l&ocirc;i cuốn thơm L&acirc;u.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương cuối: Sự cuốn h&uacute;t, n&oacute;ng bỏng kh&oacute; cưỡng với Hổ ph&aacute;ch, đ&agrave;n hương, xạ hương Với hương thơm the m&aacute;t từ chanh, qu&yacute;t lướt tr&ecirc;n vị cay của gừng kết hợp với hương thơm đại dương tạo n&ecirc;n sự tươi m&aacute;t, sảng kho&aacute;i ngay khi xịt, th&ecirc;m ch&uacute;t hương thơm ngọt ng&agrave;o, tr&agrave;n trề sinh lực của lavender, g&acirc;y ấn tượng mạnh mẽ bởi hương gỗ đ&agrave;n hương, hổ ph&aacute;ch, xạ hương tạo n&ecirc;n sự cuốn h&uacute;t kh&oacute; cưỡng.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen L&agrave; Sự kết hợp tinh tế của hương thơm tự nhi&ecirc;n tạo n&ecirc;n d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng với n&eacute;t ri&ecirc;ng v&ocirc; c&ugrave;ng cuốn h&uacute;t, gi&uacute;p bạn tự tin trước đ&aacute;m đ&ocirc;ng hoặc những người xung quanh,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Hương thơm nam t&iacute;nh đến từ sản phẩm Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen sẽ chinh phục được bạn ngay từ lần sử dụng đầu ti&ecirc;n, hứa hẹn sẽ l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường bạn đi,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen. Kh&ocirc;ng chỉ d&agrave;nh ri&ecirc;ng cho Qu&yacute; Anh. Kể cả c&aacute;c n&agrave;ng nếu muốn thử một m&ugrave;i hương c&aacute; t&iacute;nh mạnh th&igrave; cũng c&oacute; thể thử d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng n&agrave;y với sự tươi mới v&agrave; nguồn năng lượng m&atilde;nh liệt. - C&aacute;ch sử dụng: Giữ chai thẳng đứng, lắc đều v&agrave; nhấn v&agrave; xịt v&agrave;o v&ugrave;ng tay v&agrave; cổ. - Bảo quản: Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Tr&aacute;nh tiếp x&uacute;c trực tiếp với mắt v&agrave; tr&aacute;nh xa tầm tay trẻ em.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'nước hoa nam dubai 100ml mp', 190, 100, 0, 'nuoc-hoa-nam-dubai-100ml-mp', b'1', '2022-11-04 09:00:31.000000', '2f89b595-73d4-4824-b899-00d399276c09', '002eae57-0370-4bb5-a904-4242087f981b'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '2022-10-29 19:46:18.000000', ',Men Fashion Crop Top Patchwork Sheer Sexy Short Sleeve T Shirt Streetwear Vest', ', Kích thước thẻ: M-XL, vui lòng đảm bảo rằng các phép đo thực tế này sẽ phù hợp với bạn.\r\n\r\n\r\n\r\nBảng kích thước (1 inch = 2,54cm) |  \r\nKích thước thẻ |  M |  L |  Xl |  \r\nLật tẩy |  Cm |  88 |  92 |  96 |  \r\nInch |  34.6  |  36.2  |  37.8  |  \r\nChiều dài |  Cm |  30 |  31 |  32 |  \r\nInch |  11.8  |  12.2  |  12.6  |  \r\nĐược đo trước khi kéo căng, được gọi là dữ liệu phẳng, Vui lòng cho phép độ sai số 1~2cm |  \r\n\r\n* Mục vải: Nylon\r\n* Màu mục: Đen / Trắng (Như hình ảnh hiển thị)\r\n* Tình trạng sản phẩm: 100% hàng mới\r\n* Mô tả mặt hàng: ️ Thời trang nam Crop Top Patchwork Sheer Sexy Short Sleeve T Shirt Streetwear Vest\r\n* Nội dung gói: 1 * Trên cùng (KHÔNG có phụ kiện đi kèm)', 'Men Fashion Crop Top Patchwork Sheer Sexy Short Sleeve T Shirt Streetwear Vest', 5, 100, 0, 'men-fashion-crop-top-patchwork-sheer-sexy-short-sleeve-t-shirt-streetwear-vest', b'1', '2022-10-29 19:46:18.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', '941419bc-80ce-4e85-89c8-be2546f1edd2'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '2022-11-03 16:39:41.000000', ',<p>Lắc Tay Chu&ocirc;ng K&ecirc;u Leng Keng Chất Liệu Bạc &Yacute; Mẫu Mới H&agrave;ng Thiết Kế THE SKY VT1030</p>\r\n', ',<p>Lắc Tay Chu&ocirc;ng K&ecirc;u Leng Keng Chất Liệu Bạc &Yacute; Mẫu Mới H&agrave;ng Thiết Kế THE SKY VT1030 1. TH&Ocirc;NG TIN SẢN PHẨM - M&atilde; sản phẩm: VT1030 - Thương hiệu: THE SKY - Xuất xứ: Việt Nam - Chất liệu: Bạc 925 - M&agrave;u sắc: V&ograve;ng tay bạc c&oacute; chu&ocirc;ng k&ecirc;u leng keng s&aacute;ng đẹp i h&igrave;nh - Kiểu d&aacute;ng thiết kế tinh tế, sắc sảo, gia c&ocirc;ng tỉ mỉ, v&ograve;ng tay bạc nữ mẫu mới nhất theo Trend - Chiều d&agrave;i: + V&ograve;ng tay d&agrave;i: 16cm v&agrave; 5cm mối nới 2. L&Yacute; DO KH&Aacute;CH Y&Ecirc;N T&Acirc;M LỰA CHỌN SHOP - Sản phẩm v&ograve;ng bạc được sản xuất gia c&ocirc;ng tỉ mỉ, shop kiểm tra h&agrave;ng kĩ trước khi gửi cho kh&aacute;ch - Nhận h&agrave;ng thanh to&aacute;n tiền tại nh&agrave; tr&ecirc;n to&agrave;n quốc - Sản phẩm mới, đảm bảo về chất lượng - Tặng hộp đẹp ( C&oacute; thể l&agrave;m qu&agrave; tặng) cho mọi đơn h&agrave;ng ph&aacute;t sinh 3. HƯỚNG DẪN BẢO QUẢN - Tr&aacute;nh tiếp x&uacute;c với ho&aacute; chất, keo xịt t&oacute;c, nước hoa, kem v&agrave; c&aacute;c loại mỹ phẩm kh&aacute;c , chất tẩy rửa mạnh - Tr&aacute;nh va chạm v&agrave; ma s&aacute;t độ cứng: đồ trang sức n&ecirc;n cố gắng tr&aacute;nh va chạm v&agrave; ma s&aacute;t với vật cứng, để kh&ocirc;ng l&agrave;m m&ograve;n bề mặt v&agrave; ảnh hưởng đến độ s&aacute;ng - Thường xuy&ecirc;n vệ sinh sản phẩm bằng khăn l&agrave;m s&aacute;ng để đảm bảo sản phẩm lu&ocirc;n được s&aacute;ng b&oacute;ng - Bảo quản k&iacute;n: nếu l&acirc;u ng&agrave;y kh&ocirc;ng đeo, bạn cần lau sạch cho v&agrave;o t&uacute;i Zip v&agrave; đặt v&agrave;o hộp trang sức để tr&aacute;nh l&agrave;m hỏng, m&ograve;n trang sức - Sản phẩm c&oacute; thể bị xỉn m&agrave;u do t&aacute;c động của mồ h&ocirc;i, bụi bẩn, lưu huỳnh trong kh&ocirc;ng kh&iacute; sau 1 thời gian bạn c&oacute; thể sử dụng nước chanh, pha ch&uacute;t x&agrave; b&ocirc;ng hoặc d&ugrave;ng kem đ&aacute;nh răng để l&agrave;m s&aacute;ng lại sản phẩm 4. QUYỀN LỢI KH&Aacute;CH H&Agrave;NG 1. Điều kiện đổi trả &aacute;p dụng (trong v&ograve;ng 07 ng&agrave;y kể từ khi nhận sản phẩm): - H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng - H&agrave;ng h&oacute;a hư hỏng do vận chuyển hoặc do nh&agrave; sản xuất ( đứt g&atilde;y, rơi đ&aacute;, kh&ocirc;ng giống ảnh, sai sản phẩm) theo đ&uacute;ng quy định của shopee - Trong qu&aacute; tr&igrave;nh sử dụng : Hỗ trợ sửa chữa như bong đ&aacute;, gắn đ&aacute;, x&acirc;u v&ograve;ng, &hellip; (nhắn tin cho shop để được tư vấn trực tiếp), đứt g&atilde;y sản phẩm kh&ocirc;ng bảo h&agrave;nh 2. Trường hợp được chấp nhận: - H&agrave;ng kh&ocirc;ng đ&uacute;ng size, mẫu m&atilde; như qu&yacute; kh&aacute;ch đặt - Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng 3. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch: - Qu&aacute; 07 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng - Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải h&agrave;ng của shop - Đặt nhầm sản phẩm, chủng loại, kh&ocirc;ng th&iacute;ch, kh&ocirc;ng hợp,... 👉 Shop kiểm tra h&agrave;ng trước khi gửi đi. Nhận h&agrave;ng kh&aacute;ch vui l&ograve;ng quay lại qu&aacute; tr&igrave;nh b&oacute;c h&agrave;ng, nếu c&oacute; trường hợp sản phẩm bị lỗi hoặc nhầm mẫu vui l&ograve;ng th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i ngay khi c&oacute; thể để ch&uacute;ng t&ocirc;i gi&uacute;p bạn giải quyết vấn đề. Nếu bạn h&agrave;i l&ograve;ng với c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i, xin vui l&ograve;ng cho ch&uacute;ng t&ocirc;i phản hồi t&iacute;ch cực (năm sao)</p>\r\n', 'Lắc Tay Chuông Kêu Leng Keng Chất Liệu Bạc Ý Mẫu Mới Hàng Thiết Kế THE SKY VT1030', 76, 100, 0, 'lac-tay-chuong-keu-leng-keng-chat-lieu-bac-mau-moi-hang-thiet-ke-the-sky-vt1030', b'1', '2022-11-03 16:39:41.000000', 'dc3cca73-baf1-409f-804f-52e922895582', 'd4b25927-8cc2-4b18-aae9-7ff56e1ef32b'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '2022-10-30 00:15:27.000000', ',ĐẦM CÔNG CHÚA LỤA Ý CAO CẤP PHỐI VOAN', ',Đầm công chúa đi tiệc bé gái sang trọng từ 6-8 tuổi\r\nChất liệu : Lụa Ý phối Voan', 'ĐẦM CÔNG CHÚA LỤA Ý CAO CẤP PHỐI VOAN', 12, 100, 0, 'dam-cong-chua-lua-cao-cap-phoi-voan', b'1', '2022-10-30 00:15:27.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', 'e777d18a-ee2f-4ce5-9f13-bae0c6508aaf'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '2022-11-04 08:53:20.000000', ',<p>[Cực Phẩm] Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u ❤️Gentlemen, Quyền Lực, Nước Hoa Nam Ch&iacute;nh H&atilde;ng C&ocirc;ng Nghệ Mới</p>\r\n', ',<p>🍒 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen</p>\r\n\r\n<p>🍒 Nước hoa nam Gentlemen hương thơm mới, thiết kế chai dạng xịt v&agrave; h&igrave;nh d&aacute;ng bắt mắt, sang trọng</p>\r\n\r\n<p>🍒 Nh&agrave; sản xuất Gentlemen đ&atilde; c&ocirc;ng bố thời gian lưu hương b&ecirc;n bạn 4-5h, v&agrave; độ tỏa hương xa tới b&aacute;n k&iacute;nh 2m, gi&uacute;p bạn lu&ocirc;n nổi bật ở mọi nơi bạn tới, 🍒</p>\r\n\r\n<p>🍒 Nước hoa Gentlemen với hương thơm:</p>\r\n\r\n<p>👉 Hương đầu: Chanh, qu&yacute;t, bưởi, gừng đặc trưng kh&oacute; phai của nước hoa nam Gentlemen</p>\r\n\r\n<p>👉 Hương giữa: Lavender (oải hương), hoa chu&ocirc;ng, cẩm t&uacute; cầu, đại dương ngọt ng&agrave;o, l&ocirc;i cuốn thơm L&acirc;u.</p>\r\n\r\n<p>👉 Hương cuối: Sự cuốn h&uacute;t, n&oacute;ng bỏng kh&oacute; cưỡng với Hổ ph&aacute;ch, đ&agrave;n hương, xạ hương Với hương thơm the m&aacute;t từ chanh, qu&yacute;t lướt tr&ecirc;n vị cay của gừng kết hợp với hương thơm đại dương tạo n&ecirc;n sự tươi m&aacute;t, sảng kho&aacute;i ngay khi xịt, th&ecirc;m ch&uacute;t hương thơm ngọt ng&agrave;o, tr&agrave;n trề sinh lực của lavender, g&acirc;y ấn tượng mạnh mẽ bởi hương gỗ đ&agrave;n hương, hổ ph&aacute;ch, xạ hương tạo n&ecirc;n sự cuốn h&uacute;t kh&oacute; cưỡng.</p>\r\n\r\n<p>👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen L&agrave; Sự kết hợp tinh tế của hương thơm tự nhi&ecirc;n tạo n&ecirc;n d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng với n&eacute;t ri&ecirc;ng v&ocirc; c&ugrave;ng cuốn h&uacute;t, gi&uacute;p bạn tự tin trước đ&aacute;m đ&ocirc;ng hoặc những người xung quanh,</p>\r\n\r\n<p>👉 Hương thơm nam t&iacute;nh đến từ sản phẩm Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen sẽ chinh phục được bạn ngay từ lần sử dụng đầu ti&ecirc;n, hứa hẹn sẽ l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng bạn tr&ecirc;n mọi nẻo đường bạn đi,</p>\r\n\r\n<p>👉 Nước Hoa Nam Ch&iacute;nh H&atilde;ng Thơm L&acirc;u Gentlemen. Kh&ocirc;ng chỉ d&agrave;nh ri&ecirc;ng cho Qu&yacute; Anh. Kể cả c&aacute;c n&agrave;ng nếu muốn thử một m&ugrave;i hương c&aacute; t&iacute;nh mạnh th&igrave; cũng c&oacute; thể thử d&ograve;ng Nước Hoa Nam Ch&iacute;nh H&atilde;ng n&agrave;y với sự tươi mới v&agrave; nguồn năng lượng m&atilde;nh liệt. - C&aacute;ch sử dụng: Giữ chai thẳng đứng, lắc đều v&agrave; nhấn v&agrave; xịt v&agrave;o v&ugrave;ng tay v&agrave; cổ. - Bảo quản: Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Tr&aacute;nh tiếp x&uacute;c trực tiếp với mắt v&agrave; tr&aacute;nh xa tầm tay trẻ em.</p>\r\n', '[Cực Phẩm] Nước Hoa Nam Chính Hãng Thơm Lâu ❤️Gentlemen, Quyền Lực, Nước Hoa Nam Chính Hãng Công Nghệ Mới', 163, 100, 0, 'cuc-pham-nuoc-hoa-nam-chinh-hang-thom-lau-gentlemen-quyen-luc-nuoc-hoa-nam-chinh-hang-cong-nghe-moi', b'1', '2022-11-04 08:53:20.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', '002eae57-0370-4bb5-a904-4242087f981b'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '2022-11-04 07:49:23.000000', ',<p>Pet Chest Back Rope Dog Leashing Strap Cartoon Small and Medium-sized Dog Leashing Rope Strap</p>\r\n', ',<p>Đặc điểm: Thương hiệu mới v&agrave; chất lượng cao.</p>\r\n\r\n<p>Chất liệu: Polyester</p>\r\n\r\n<p>K&iacute;ch thước: Chiều d&agrave;i v&agrave; chiều rộng khoảng 120 * 1,5cm, th&iacute;ch hợp cho v&ograve;ng ngực 27-44cm</p>\r\n\r\n<p>M&agrave;u sắc: Như h&igrave;nh Đ&oacute;ng g&oacute;i: 1Pc</p>\r\n\r\n<p>Mẹo ấm &aacute;p: Xin lưu &yacute; rằng do hiệu ứng &aacute;nh s&aacute;ng, c&agrave;i đặt độ s&aacute;ng / độ tương phản của m&agrave;n h&igrave;nh, v.v., c&oacute; thể c&oacute; một số kh&aacute;c biệt nhỏ trong t&ocirc;ng m&agrave;u của ảnh tr&ecirc;n trang web v&agrave; mặt h&agrave;ng thực tế. Mục Đo bằng tay, n&oacute; c&oacute; thể l&agrave; 1 cm kh&aacute;c nhau, loại hiểu biết của bạn sẽ được đ&aacute;nh gi&aacute; cao.</p>\r\n\r\n<p>Nếu bạn h&agrave;i l&ograve;ng với ch&uacute;ng t&ocirc;i, vui l&ograve;ng đ&aacute;nh gi&aacute; ch&uacute;ng t&ocirc;i ⭐️⭐️⭐️⭐️⭐️ (5 Sao)</p>\r\n\r\n<p>Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o, h&atilde;y thương lượng trước.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i l&agrave; những người b&aacute;n h&agrave;ng C&Oacute; TR&Aacute;CH NHIỆM. 💋Like V&Agrave; THEO D&Otilde;I CH&Uacute;NG T&Ocirc;I ĐỂ ĐƯỢC CẬP NHẬT TH&Ecirc;M!</p>\r\n\r\n<p>👍 Mua sắm tận hưởng!</p>\r\n', 'Pet Chest Back Rope Dog Leashing Strap Cartoon Small and Medium-sized Dog Leashing Rope Strap', 76, 100, 0, 'pet-chest-back-rope-dog-leashing-strap-cartoon-small-and-medium-sized-dog-leashing-rope-strap', b'1', '2022-11-04 07:49:23.000000', '896f3590-ab28-4fe1-bace-e4fe611683d4', '5d3fa890-53a6-43bb-8683-05fc83ea72c1'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '2022-10-29 20:30:09.000000', ',JK❃Women’s Fashion Solid Color Boat Neck Skinny Dress', ',Chất liệu thân thiện với làn da: Được làm bằng vải polyester chất lượng cao, thoáng khí và trọng lượng nhẹ, chống mồ hôi và chống mài mòn, mềm mại khi chạm vào và thoải mái khi mặc.\r\n\r\nThiết kế thời trang: Màu trơn thời trang và thiết kế ôm sát với dây đeo hoa, cổ thuyền giản dị và kiểu dáng hở lưng, giúp chiếc váy bút chì trở nên hoang dã và giúp bạn quyến rũ hơn.\r\n\r\nAll-matching dress: Có thể phối với áo khoác, giày cao gót, trang sức và túi xách để bạn trở nên quyến rũ hơn, chiếc váy ngắn có dây thông thường này cũng là một món quà lý tưởng cho bạn bè.\r\n\r\nCác dịp áp dụng: Chiếc váy mini chui đầu mùa hè này thích hợp cho mọi dịp, chẳng hạn như: mặc hàng ngày, câu lạc bộ, tiệc tùng, kỳ nghỉ, dạo phố, hẹn hò, mua sắm, du lịch, v.v.\r\n\r\nĐóng gói & Kích thước: 1 x Đầm bó sát màu trơn cho nữ; Kích thước: S / M / L, vui lòng tham khảo chi tiết kích thước trong mô tả, hình ảnh hoặc biểu đồ kích thước trước khi đặt hàng.\r\n\r\nVáy dây đồng màu thời trang nữ có dây đeo hoa --- Một chiếc váy vừa vặn có thể tôn lên vóc dáng của bạn, nó có tác dụng kéo dài và tôn chiều cao, chiếc váy này là sự lựa chọn hoàn hảo của bạn, sang trọng và thoải mái; bạn có thểĐừng bỏ lỡ những bộ quần áo tuyệt vời tuyệt vời này. Đây là một món quà tốt cho người yêu của bạn hoặc chính bạn!\r\n\r\nBảng kích thước:\r\nKích thước (cm)\r\nS	Lật tẩy:	69-88	Hông:	78-94	Chiều dài:	62\r\nM	Lật tẩy:	73-92	Hông:	82-98	Chiều dài:	63\r\nL	Lật tẩy:	77-96	Hông:	86-102	Chiều dài:	64\r\nKích thước (inch)\r\nS	Lật tẩy:	27.17-34.65	Hông:	30.71-37.01	Chiều dài:	24.41\r\nM	Lật tẩy:	28.74-36.22	Hông:	32.28-38.58	Chiều dài:	24.8\r\nL	Lật tẩy:	30.71-37.8	Hông:	33.86-40.16	Chiều dài:	25.2\r\n\r\nThông tin chi tiết:\r\nChất liệu: Polyester\r\nPhong cách: Đường phố\r\nMô hình: Đồng bằng\r\nMàu sắc: đen\r\nMùa thích hợp: Mùa hè\r\nDành cho: Bé gái\r\nĐộ tuổi phù hợp: 18-24 tuổi\r\nYếu tố phổ biến: Không lưng, không đều\r\n\r\nLưu ý:\r\n1. Các dữ liệu trên được đo thủ công và cho phép sai số từ 1-3 cm.\r\n2. Do màn hình và đèn chiếu sáng khác nhau, có thể có sai số về màu sắc. Vui lòng tham khảo các mặt hàng thực tế.\r\n\r\nGói hàng bao gồm:\r\n1 * Váy', 'JK❃Women’s Fashion Solid Color Boat Neck Skinny Dress', 10, 1000, 0, 'jk-womens-fashion-solid-color-boat-neck-skinny-dress', b'1', '2022-10-29 20:30:09.000000', '5667e249-bc86-47da-951d-c76ba1cfffc0', '5c067ec6-7b2d-45e4-9133-703019be7328'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '2022-11-03 08:08:28.000000', ',<p>Nước hoa nam Suziko Aqua bombshell phong độ, mạnh mẽ. Nước hoa mini 10ml dạng xịt tiện lợi</p>\r\n', ',<p>Nước hoa nam Suziko Aqua bombshell phong độ, mạnh mẽ. Nước hoa mini 10ml dạng xịt tiện lợi</p>\r\n\r\n<p>1. GIỚI THIỆU SẢN PHẨM</p>\r\n\r\n<p>Giới t&iacute;nh: Nam</p>\r\n\r\n<p>Độ tuổi khuy&ecirc;n d&ugrave;ng: Tr&ecirc;n 15 tuổi</p>\r\n\r\n<p>Độ lưu hương: 6 giờ đến 10 giờ</p>\r\n\r\n<p>Độ toả hương: Gần - Toả hương trong v&ograve;ng một c&aacute;nh tay</p>\r\n\r\n<p>Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, Đ&ecirc;m, Hạ, Thu Đ&ocirc;ng, Đ&ocirc;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. ƯU ĐIỂM NỔI BẬT:</p>\r\n\r\n<p>- Aqua bombshell</p>\r\n\r\n<p>c&oacute; độ lưu hương l&acirc;u - 6 giờ đến 12 giờ v&agrave;</p>\r\n\r\n<p>- Độ tỏa hương thuộc dạng xa - toả hương trong v&ograve;ng b&aacute;n k&iacute;nh 2 m&eacute;t.</p>\r\n\r\n<p>- Aqua bombshell</p>\r\n\r\n<p>ph&ugrave; hợp để sử dụng trong cả ng&agrave;y lẫn đ&ecirc;m v&agrave;o m&ugrave;a thu, đ&ocirc;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. TẦNG HƯƠNG</p>\r\n\r\n<p>Hương Đầu: Quả Qu&yacute;t, Tinh Dầu L&aacute;c Hanh, Hổ Ph&aacute;ch tạo ra hơi thở của biển</p>\r\n\r\n<p>Hương giữa: Tinh Dầu L&aacute;c Hanh kết hợp với sự tinh khiết của d&ograve;ng nước mang đến cảm gi&aacute;c tươi mới, dễ chịu đến bất tận</p>\r\n\r\n<p>Hương cuối: Từ sự kết hợp giữa Hổ ph&aacute;ch v&agrave; Hương gỗ tạo ra 1 m&ugrave;i hương đầy phong độ v&agrave; mạnh mẽ.</p>\r\n\r\n<p>Tất cả đ&atilde; tạo n&ecirc;n một Aqua Bombshell tinh khiết m&agrave; kh&ocirc;ng k&eacute;m phần sang trọng, mạnh mẽ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4. SUZIKO.OFFICIAL XIN CAM KẾT</p>\r\n\r\n<p>&bull; Sản phẩm đ&uacute;ng m&ocirc; tả 100%</p>\r\n\r\n<p>&bull; Cam kết đổi trả, ho&agrave;n tiền nếu giao sai, nhầm, thiếu h&agrave;ng theo quy định của Shopee</p>\r\n\r\n<p>&bull; Date mới nhất</p>\r\n\r\n<p>&bull; Hỗ trợ tư vấn giải đ&aacute;p mọi thắc mắc của kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>&bull; Gửi h&agrave;ng nhanh ch&oacute;ng</p>\r\n\r\n<p>-------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>Sản xuất tại: Việt Nam Đơn vị chịu tr&aacute;ch nhiệm về sản phẩm:</p>\r\n\r\n<p>Hộ kinh doanh Suziko Địa chỉ: 183 ng&otilde; 281 Trần Kh&aacute;t Ch&acirc;n - Phường Thanh Nh&agrave;n - Q. Hai B&agrave; Trưng - TP. H&agrave; Nội</p>\r\n', 'Nước hoa nam Suziko Aqua bombshell phong độ, mạnh mẽ. Nước hoa mini 10ml dạng xịt tiện lợi', 10, 100, 0, 'nuoc-hoa-nam-suziko-aqua-bombshell-phong-do-manh-me-nuoc-hoa-mini-10ml-dang-xit-tien-loi', b'1', '2022-11-03 08:08:28.000000', '6e6c93d0-23da-4c34-9a0f-b4a0c20457dc', '002eae57-0370-4bb5-a904-4242087f981b'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '2022-11-04 08:27:27.000000', ',<p>Nhẫn Titan Nam C&aacute; T&iacute;nh, Nhẫn Nam Thời Trang Nhiều Kiểu Lựa Chọn (M&agrave;u Bạc)</p>\r\n', ',<p>Rosi Accessories l&agrave; thương hiệu phụ kiện thời trang : khuy&ecirc;n tai, v&ograve;ng cổ, nhẫn, lắc...lu&ocirc;n dẫn đầu xu hướng v&agrave; bắt kịp trend c&aacute;c mẫu phụ kiện phong c&aacute;ch, c&aacute; t&iacute;nh, kiểu d&aacute;ng đa dạng.</p>\r\n\r\n<p>Đến với Rosi Accessories, bạn sẽ c&oacute; được những trải nghiệm mua sắm tuyệt vời v&agrave; dễ d&agrave;ng lựa chọn được cho m&igrave;nh c&aacute;c m&oacute;n phụ kiện &quot; easy to mix-match&quot;.</p>\r\n\r\n<p>Từ những m&oacute;n phụ kiện đơn giản đến những phụ kiện &quot; đẹp v&agrave; chất&quot; gi&uacute;p bạn thay đổi phong c&aacute;ch của m&igrave;nh nhanh ch&oacute;ng chỉ bằng 1 c&uacute; CLICK mua h&agrave;ng!!</p>\r\n\r\n<p>Bạn h&atilde;y y&ecirc;n t&acirc;m trải nghiệm mua sắm tại Rosi Accessories, bởi: - Sản phẩm đ&uacute;ng m&ocirc; tả, đ&uacute;ng ảnh</p>\r\n\r\n<p>- H&agrave;ng mới, chưa qua sử dụng</p>\r\n\r\n<p>- H&agrave;ng c&oacute; sẵn, giao h&agrave;ng ngay khi nhận được đơn</p>\r\n\r\n<p>- Đổi trả, ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả</p>\r\n\r\n<p>- Giao h&agrave;ng tr&ecirc;n to&agrave;n quốc, nhận h&agrave;ng trả tiền</p>\r\n\r\n<p>1.VỀ SẢN PHẨM</p>\r\n\r\n<p>- T&ecirc;n sản phẩm: Nhẫn Titan Nam C&aacute; T&iacute;nh</p>\r\n\r\n<p>- Họa tiết: nhiều kiểu lựa chọn</p>\r\n\r\n<p>- Chất liệu: Hợp kim cao cấp kh&ocirc;ng gỉ, bền m&agrave;u</p>\r\n\r\n<p>- M&agrave;u sắc: Đen, Bạc - Size: 6, 7, 8, 9, 10, 11</p>\r\n\r\n<p>- Phong c&aacute;ch đơn giản, hợp thời trang, dễ d&agrave;ng phối kết hợp với trang phục</p>\r\n\r\n<p>2. HƯỚNG DẪN CHỌN SIZE NHẪN NAM TITAN</p>\r\n\r\n<p>Bước 1: Cắt một sợi len hoặc giấy bản nhỏ.</p>\r\n\r\n<p>Bước 2: D&ugrave;ng len hoặc giấy bản nhỏ vừa cắt rời quấn quanh khu vực tr&ecirc;n ng&oacute;n tay m&agrave; bạn muốn đeo nhẫn.</p>\r\n\r\n<p>Bước 3: Đ&aacute;nh dấu điểm giao nhau</p>\r\n\r\n<p>Bước 4: D&ugrave;ng thước đo chiều d&agrave;i sợi d&acirc;y v&agrave; so s&aacute;nh với bảng size dưới đ&acirc;y</p>\r\n\r\n<p>Bảng Size nhẫn nam titan</p>\r\n\r\n<p>- Size 4: ~46,8mm</p>\r\n\r\n<p>- Size 5: ~49,4mm</p>\r\n\r\n<p>- Size 6: ~52mm</p>\r\n\r\n<p>- Size 7: ~54,5mm</p>\r\n\r\n<p>- Size 8: ~57,2mm</p>\r\n\r\n<p>- Size 9: ~59,8mm</p>\r\n\r\n<p>- Size 10: ~62,2mm</p>\r\n\r\n<p>- Size 11: ~64,8mm</p>\r\n\r\n<p>3. HƯỚNG DẪN BẢO QUẢN SẢN PHẨM NHẪN NAM TITAN</p>\r\n\r\n<p>- Kh&ocirc;ng tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, axit, nước rửa b&aacute;t, bột giặt, ...</p>\r\n\r\n<p>- Kh&ocirc;ng va chạm mạnh với vật sắc nhọn</p>\r\n\r\n<p>- Kh&ocirc;ng đeo khi đi tắm</p>\r\n\r\n<p>- Kh&ocirc;ng đeo khi tập thể dục, thể thao</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n đeo khi đi ngủ</p>\r\n\r\n<p>📩 Nhắn tin với shop để được tư vấn, hướng dẫn chọn khuy&ecirc;n ph&ugrave; hợp nha.</p>\r\n', 'Nhẫn Titan Nam Cá Tính, Nhẫn Nam Thời Trang Nhiều Kiểu Lựa Chọn (Màu Bạc)', 17, 100, 0, 'nhan-titan-nam-ca-tinh-nhan-nam-thoi-trang-nhiu-kiu-la-chien-mau-bac', b'1', '2022-11-04 08:27:27.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', 'eda2e75a-7a39-40ae-b387-e0c60c643a93'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '2022-11-04 08:31:11.000000', ',<p>Nhẫn bạc nữ TLEE Snow Princess nạm đ&aacute; lấp l&aacute;nh TleeJewelry</p>\r\n', ',<p>Rosi Accessories l&agrave; thương hiệu phụ kiện thời trang : khuy&ecirc;n tai, v&ograve;ng cổ, nhẫn, lắc...lu&ocirc;n dẫn đầu xu hướng v&agrave; bắt kịp trend c&aacute;c mẫu phụ kiện phong c&aacute;ch, c&aacute; t&iacute;nh, kiểu d&aacute;ng đa dạng.</p>\r\n\r\n<p>Đến với Rosi Accessories, bạn sẽ c&oacute; được những trải nghiệm mua sắm tuyệt vời v&agrave; dễ d&agrave;ng lựa chọn được cho m&igrave;nh c&aacute;c m&oacute;n phụ kiện &quot; easy to mix-match&quot;.</p>\r\n\r\n<p>Từ những m&oacute;n phụ kiện đơn giản đến những phụ kiện &quot; đẹp v&agrave; chất&quot; gi&uacute;p bạn thay đổi phong c&aacute;ch của m&igrave;nh nhanh ch&oacute;ng chỉ bằng 1 c&uacute; CLICK mua h&agrave;ng!!</p>\r\n\r\n<p>Bạn h&atilde;y y&ecirc;n t&acirc;m trải nghiệm mua sắm tại Rosi Accessories, bởi: - Sản phẩm đ&uacute;ng m&ocirc; tả, đ&uacute;ng ảnh</p>\r\n\r\n<p>- H&agrave;ng mới, chưa qua sử dụng</p>\r\n\r\n<p>- H&agrave;ng c&oacute; sẵn, giao h&agrave;ng ngay khi nhận được đơn</p>\r\n\r\n<p>- Đổi trả, ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng giống với m&ocirc; tả</p>\r\n\r\n<p>- Giao h&agrave;ng tr&ecirc;n to&agrave;n quốc, nhận h&agrave;ng trả tiền</p>\r\n\r\n<p>1.VỀ SẢN PHẨM</p>\r\n\r\n<p>- T&ecirc;n sản phẩm: Nhẫn Titan Nam C&aacute; T&iacute;nh</p>\r\n\r\n<p>- Họa tiết: nhiều kiểu lựa chọn</p>\r\n\r\n<p>- Chất liệu: Hợp kim cao cấp kh&ocirc;ng gỉ, bền m&agrave;u</p>\r\n\r\n<p>- M&agrave;u sắc: Đen, Bạc - Size: 6, 7, 8, 9, 10, 11</p>\r\n\r\n<p>- Phong c&aacute;ch đơn giản, hợp thời trang, dễ d&agrave;ng phối kết hợp với trang phục</p>\r\n\r\n<p>2. HƯỚNG DẪN CHỌN SIZE NHẪN NAM TITAN</p>\r\n\r\n<p>Bước 1: Cắt một sợi len hoặc giấy bản nhỏ.</p>\r\n\r\n<p>Bước 2: D&ugrave;ng len hoặc giấy bản nhỏ vừa cắt rời quấn quanh khu vực tr&ecirc;n ng&oacute;n tay m&agrave; bạn muốn đeo nhẫn.</p>\r\n\r\n<p>Bước 3: Đ&aacute;nh dấu điểm giao nhau</p>\r\n\r\n<p>Bước 4: D&ugrave;ng thước đo chiều d&agrave;i sợi d&acirc;y v&agrave; so s&aacute;nh với bảng size dưới đ&acirc;y</p>\r\n\r\n<p>Bảng Size nhẫn nam titan</p>\r\n\r\n<p>- Size 4: ~46,8mm</p>\r\n\r\n<p>- Size 5: ~49,4mm</p>\r\n\r\n<p>- Size 6: ~52mm</p>\r\n\r\n<p>- Size 7: ~54,5mm</p>\r\n\r\n<p>- Size 8: ~57,2mm</p>\r\n\r\n<p>- Size 9: ~59,8mm</p>\r\n\r\n<p>- Size 10: ~62,2mm</p>\r\n\r\n<p>- Size 11: ~64,8mm</p>\r\n\r\n<p>3. HƯỚNG DẪN BẢO QUẢN SẢN PHẨM NHẪN NAM TITAN</p>\r\n\r\n<p>- Kh&ocirc;ng tiếp x&uacute;c với h&oacute;a chất như x&agrave; ph&ograve;ng, axit, nước rửa b&aacute;t, bột giặt, ...</p>\r\n\r\n<p>- Kh&ocirc;ng va chạm mạnh với vật sắc nhọn</p>\r\n\r\n<p>- Kh&ocirc;ng đeo khi đi tắm</p>\r\n\r\n<p>- Kh&ocirc;ng đeo khi tập thể dục, thể thao</p>\r\n\r\n<p>- Kh&ocirc;ng n&ecirc;n đeo khi đi ngủ</p>\r\n\r\n<p>📩 Nhắn tin với shop để được tư vấn, hướng dẫn chọn khuy&ecirc;n ph&ugrave; hợp nha.</p>\r\n', 'Nhẫn bạc nữ TLEE Snow Princess nạm đá lấp lánh TleeJewelry', 174, 100, 0, 'nhan-bac-nu-tlee-snow-princess-nam-da-lap-lanh-tleejewelry', b'1', '2022-11-04 08:31:11.000000', '896f3590-ab28-4fe1-bace-e4fe611683d4', 'eda2e75a-7a39-40ae-b387-e0c60c643a93'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '2022-11-02 13:31:10.000000', ',<p>Nước hoa nam cao cấp 100ml - Dầu thơm nồng độ EDP thơm l&acirc;u ch&iacute;nh h&atilde;ng k&egrave;m t&uacute;i</p>\r\n', ',<p>Nước Hoa D&agrave;nh Cho Nam Nồng Độ EDP Dung T&iacute;ch 100ml - Hương thơm mạnh mẽ, nam t&iacute;nh, sang trọng Th&ocirc;ng tin sản phẩm: Nước Hoa D&agrave;nh Cho Nam Chanel Bleu Nồng Độ EDP Dung T&iacute;ch 100ml - Hương thơm mạnh mẽ, nam t&iacute;nh, sang trọng M&ugrave;i hương gỗ đặc trưng kết hợp với c&aacute;c hương liệu như gỗ đ&agrave;n hương, gừng, bạc h&agrave; gi&uacute;p giải tho&aacute;t gi&aacute;c quan v&agrave; khẳng định bản th&acirc;n. H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; những điều bất ngờ chứ đựng trong m&ugrave;i hương nước hoa chanel nam t&iacute;nh n&agrave;y. Hương Đầu: Quả chanh v&agrave;ng, Quả bưởi, Hồng ti&ecirc;u, Cam Bergamot, Ng&ograve; thơm, C&acirc;y bạc h&agrave;, Hương An-đ&ecirc;-h&iacute;t Hương giữa: Dưa gang, Hoa nh&agrave;i, Gừng, Nhục đậu khấu Hương cuối: Hương Labdanum, C&acirc;y hoắc hương, Gỗ đ&agrave;n hương, Gỗ tuyết t&ugrave;ng, Hổ ph&aacute;ch, Nhang (Hương), Amberwood Chai nước hoa cao cấp được sinh ra d&agrave;nh ri&ecirc;ng cho những ch&agrave;ng trai năng động, y&ecirc;u th&iacute;ch hoạt động, m&ugrave;i hương to&aacute;t l&ecirc;n đầy vẻ mạnh mẽ, quyến rũ của ph&aacute;i mạnh, với hương thơm k&eacute;o d&agrave;i, thơm ng&aacute;t. 💖 CH&Iacute;NH S&Aacute;CH CAM KẾT Cam kết sản phẩm nước hoa nam , nước hoa h&agrave;ng nội địa ch&iacute;nh h&atilde;ng Jeanmiss 60ml như h&igrave;nh chụp nha c&aacute;c bạn. H&atilde;y đừng bỏ lỡ si&ecirc;u phẩm nước hoa nam cao cấp n&agrave;y nh&eacute;. - Sản phẩm 100% giống m&ocirc; tả - Kiểu d&aacute;ng ho&agrave;n to&agrave;n giống ảnh mẫu - Ship COD to&agrave;n quốc - Đổi trả miễn ph&iacute; trong v&ograve;ng 7 ng&agrave;y, điều kiện: + H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng, c&ograve;n nguy&ecirc;n tem m&aacute;c + H&agrave;ng kh&ocirc;ng đ&uacute;ng kiểu d&aacute;ng như qu&yacute; kh&aacute;ch đặt h&agrave;ng + Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ như trong đơn h&agrave;ng - Do m&agrave;n h&igrave;nh v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh lệch khoảng 3-5%.</p>\r\n', 'Nước hoa nam cao cấp 100ml - Dầu thơm nồng độ EDP thơm lâu chính hãng kèm túi', 12, 100, 0, 'nuoc-hoa-nam-cao-cap-100ml-dau-thom-nong-edp-thm-lau-chinh-hang-kem-tui', b'1', '2022-11-02 13:31:10.000000', '001a88d5-4fb1-459d-8dc8-6fb55a4826eb', '002eae57-0370-4bb5-a904-4242087f981b');
INSERT INTO `product` (`id`, `create_at`, `product_desc`, `product_detail`, `product_name`, `product_price`, `product_quantity`, `sale_off`, `slug`, `state`, `update_at`, `brand_id`, `category_id`) VALUES
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '2022-11-03 09:20:53.000000', ',<p>Xuất xứ</p>\r\n\r\n<p>Trung Quốc</p>\r\n\r\n<p>Giới t&iacute;nh</p>\r\n\r\n<p>Nữ</p>\r\n\r\n<p>Kho h&agrave;ng</p>\r\n\r\n<p>100172</p>\r\n\r\n<p>Gửi từ</p>\r\n\r\n<p>Nước ngo&agrave;i</p>\r\n', ',<p>Ch&agrave;o mừng bạn đến với cửa h&agrave;ng của ch&uacute;ng t&ocirc;i! Tất cả c&aacute;c sản phẩm trong cửa h&agrave;ng n&agrave;y c&oacute; gi&aacute; cả phải chăng v&agrave; chất lượng tuyệt vời. Xin vui l&ograve;ng mua với sự tự tin!! C&oacute; đủ h&agrave;ng tồn kho v&agrave; giao h&agrave;ng nhanh ch&oacute;ng. Giao h&agrave;ng trong v&ograve;ng 5-14 ng&agrave;y ~ ^ 100% đảm bảo sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng v&agrave; đảm bảo sản phẩm chất lượng tốt, ch&uacute;ng t&ocirc;i sẽ cung cấp cho bạn trải nghiệm v&agrave; trải nghiệm mua sắm tốt nhất. Sau đ&acirc;y l&agrave; phần giới thiệu sản phẩm. Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o, xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i trong thời gian. Ch&uacute;ng t&ocirc;i sẽ trả lời bạn c&agrave;ng sớm c&agrave;ng tốt. (Loại Sản phẩm): Phụ kiện t&oacute;c (Chất Liệu sản phẩm): hợp kim (Phong C&aacute;ch sản phẩm): Phong c&aacute;ch H&agrave;n Quốc (Ph&ugrave; Hợp cho): Tất cả phụ nữ (C&aacute;c Dịp &aacute;p dụng): Qu&agrave; sinh nhật / đi ăn / du lịch để giải tr&iacute; / đến trường học / văn ph&ograve;ng / học tập / cuộc hẹn h&agrave;ng ng&agrave;y để l&agrave;m cho cuộc sống của bạn trở n&ecirc;n xinh đẹp!! Lưu &yacute;: Do sự kh&aacute;c biệt về c&agrave;i đặt &aacute;nh s&aacute;ng v&agrave; m&agrave;n h&igrave;nh M&agrave;u sắc của mặt h&agrave;ng thực tế c&oacute; thể hơi kh&aacute;c so với m&agrave;u sắc của h&igrave;nh ảnh sản phẩm. K&iacute;ch thước của sản phẩm c&oacute; thể l&agrave; sai số nhỏ 0,5 cm. V&igrave; n&oacute; l&agrave; một ph&eacute;p đo thủ c&ocirc;ng? Nếu bạn tham gia v&agrave;o c&aacute;c m&ocirc;n thể thao ngo&agrave;i trời, tắm, ngủ hoặc mang v&aacute;c vật nặng, n&ecirc;n th&aacute;o trang sức trước. Điều n&agrave;y l&agrave;m giảm sự v&eacute;o v&ocirc; t&igrave;nh v&agrave; đ&atilde; bị hư hỏng bởi lực lượng b&ecirc;n ngo&agrave;i!!</p>\r\n', 'Kẹp tóc đính pha lê phong cách cổ điển Nhật Bản và Hàn Quốc Trang sức ngọt ngào cho phụ nữ', 2, 100, 0, 'kep-toc-dinh-pha-le-phong-cach-co-dien-nht-bn-va-han-quc-trang-suc-ngot-ngao-cho-phai-nu', b'1', '2022-11-03 09:20:53.000000', '896f3590-ab28-4fe1-bace-e4fe611683d4', '1535ce19-7d50-4e78-8990-6b9a5ecf80b5'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '2022-11-03 15:52:18.000000', ',<p>Bộ trang sức D&acirc;y chuyền, Khuy&ecirc;n tai, Nhẫn nữ bạc ta nguy&ecirc;n chất S999 Lavesta mặt vu&ocirc;ng đ&iacute;nh pha l&ecirc; lấp l&aacute;nh SUN595</p>\r\n', ',<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Combo D&acirc;y chuyền, Khuy&ecirc;n tai, Nhẫn nữ bạc ta nguy&ecirc;n chất S999 Lavesta mặt vu&ocirc;ng đ&iacute;nh pha l&ecirc; lấp l&aacute;nh SUN595</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➤ Th&ocirc;ng tin Sản Phẩm</p>\r\n\r\n<p>- Chất liệu: Bạc ta nguy&ecirc;n chất</p>\r\n\r\n<p>- Size: Sản phẩm d&acirc;y chuyền v&agrave; khuy&ecirc;n tai chỉ c&oacute; 1 size duy nhất; sản phẩm nhẫn c&oacute; 3 size 16mm, 17mm v&agrave; 18mm</p>\r\n\r\n<p>- Thiết kế: D&acirc;y chuyền, nhẫn, khuy&ecirc;n tai bạc nữ tinh tế, kiểu d&aacute;ng hiện đại vu&ocirc;ng đ&iacute;nh pha l&ecirc; lấp l&aacute;nh</p>\r\n\r\n<p>- Bộ sản phẩm gồm: 1 chiếc d&acirc;y chuyền + 1 đ&ocirc;i khuy&ecirc;n tai + 1 nhẫn</p>\r\n\r\n<p>- Xuất xứ: VN</p>\r\n\r\n<p>- Địa chỉ nhập: Trang sức LAVESTA, Tam Trinh, phường Ho&agrave;ng Văn Thụ, quận Ho&agrave;ng Mai, H&agrave; Nội.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➤ Chương tr&igrave;nh hỗ trợ Vận Chuyển</p>\r\n\r\n<p>Shop c&oacute; chương tr&igrave;nh FREESHIP EXTRA, khi đặt h&agrave;ng qu&yacute; kh&aacute;ch n&ecirc;n &Aacute;P M&Atilde; MIỄN PH&Iacute; VẬN CHUYỂN để được ưu đ&atilde;i giảm hoặc miễn ph&iacute; vận chuyển:</p>\r\n\r\n<p>- Giảm 15k ph&iacute; vận chuyển đối với đơn tr&ecirc;n 50k</p>\r\n\r\n<p>- Giảm đến 70k ph&iacute; vận chuyển cho c&aacute;c đơn h&agrave;ng từ 300k</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➤ Hướng dẫn sử dụng sản phẩm</p>\r\n\r\n<p>- Tr&aacute;nh để sản phẩm tiếp x&uacute;c với c&aacute;c loại mỹ phẩm v&agrave; h&oacute;a chất</p>\r\n\r\n<p>- Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, nếu ko sử dụng h&atilde;y để v&agrave;o t&uacute;i nilon, cất hộp</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➤ Trang sức LAVESTA cam kết</p>\r\n\r\n<p>- Sản phẩm: giống 100% m&ocirc; tả</p>\r\n\r\n<p>- Đảm bảo chất lượng v&agrave; chất liệu bạc 100%</p>\r\n\r\n<p>- Sản phẩm được kiểm tra cẩn thận, kĩ c&agrave;ng trước khi được giao cho Qu&yacute; kh&aacute;ch</p>\r\n\r\n<p>- Ho&agrave;n tiền nếu sản phẩm kh&ocirc;ng đ&uacute;ng với m&ocirc; tả</p>\r\n\r\n<p>- Giao h&agrave;ng to&agrave;n quốc, thanh to&aacute;n khi nhận h&agrave;ng</p>\r\n\r\n<p>- Hỗ trợ đổi trả theo quy định của Shopee</p>\r\n\r\n<p>- Bảo h&agrave;nh: 1 đổi 1 trong v&ograve;ng 1 th&aacute;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>➤ Ngo&agrave;i ra, Trang sức LAVESTA xin chia sẻ một số tips hữu dụng để l&agrave;m s&aacute;ng trang sức tại nh&agrave;</p>\r\n\r\n<p>- Ch&agrave; nhẹ kem đ&aacute;nh răng, nước rửa b&aacute;t hoặc nước chanh l&ecirc;n sản phẩm bạc, sau đ&oacute; rửa sạch bằng nước ấm rồi lau kh&ocirc;</p>\r\n\r\n<p>- D&ugrave;ng khăn lau bạc chuy&ecirc;n dụng lau nhẹ nh&agrave;ng bề mặt trang sức mỗi ng&agrave;y</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lưu &yacute;: Do điều kiện &aacute;nh s&aacute;ng, n&ecirc;n m&agrave;u sắc sản phẩm c&oacute; thể ch&ecirc;nh lệch ko đ&aacute;ng kể</p>\r\n', 'Bộ trang sức Dây chuyền, Khuyên tai, Nhẫn nữ bạc ta nguyên chất S999 Lavesta mặt vuông đính pha lê lấp lánh SUN595', 19, 100, 0, 'bo-trang-suc-day-chuyen-khuyen-tai-nhan-nu-bac-ta-nguyen-chat-s999-lavesta-mat-vuong-dinh-pha-le-lap-lanh-sun595', b'1', '2022-11-03 15:52:18.000000', '896f3590-ab28-4fe1-bace-e4fe611683d4', 'abe93b9c-3a86-451f-8f1f-19360c488245'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '2022-11-04 09:27:33.000000', ',<p>Nước Hoa Nữ CCharme Sosexy Hương Hồng Nhẹ Nh&agrave;ng Quyến Rũ 50ml</p>\r\n', ',<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Nh&oacute;m nước hoa: Hương va-ni phương đ&ocirc;ng</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Giới t&iacute;nh: Nữ Độ tuổi khuy&ecirc;n d&ugrave;ng: Tr&ecirc;n 25</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Năm ra mắt: 2014 Nồng độ: EDP Nh&agrave; pha chế: Olivier Cresp</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Độ lưu hương: Tạm ổn &ndash; 3 giờ đến 6 giờ</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Độ toả hương: Gần &ndash; Toả hương trong v&ograve;ng một c&aacute;nh tay</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, Đ&ecirc;m, Thu, Đ&ocirc;ng Phong c&aacute;ch: B&iacute; ẩn , Năng động ,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Thu h&uacute;t Hương Đầu: Hồng ti&ecirc;u, Hoa cam, Quả l&ecirc;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Hương giữa: C&agrave; ph&ecirc;, Hoa nh&agrave;i, Hạnh nh&acirc;n đắng, Cam thảo Hương cuối: Hương Va ni, C&acirc;y hoắc hương, Gỗ tuyết t&ugrave;ng, Gỗ Cashmer</span></span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'Nước Hoa Nữ CCharme Sosexy Hương Hồng Nhẹ Nhàng Quyến Rũ 50ml', 237, 100, 0, 'nuoc-hoa-nu-ccharme-sosexy-huong-hong-nhe-nhang-quyen-ru-50ml', b'1', '2022-11-04 09:27:33.000000', 'dc3cca73-baf1-409f-804f-52e922895582', 'da8954d2-e3d5-4c27-baaf-81e82a687c2e'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '2022-11-03 08:39:15.000000', ',<p>Loại mũi gi&agrave;y</p>\r\n\r\n<p>Mũi tr&ograve;n</p>\r\n\r\n<p>Kho h&agrave;ng</p>\r\n\r\n<p>72</p>\r\n\r\n<p>Gửi từ</p>\r\n\r\n<p>Quận T&acirc;y Hồ, H&agrave; Nội</p>\r\n', ',<p>Gi&agrave;y Học Sinh Oxford Phong C&aacute;ch Nhật Bản Cosplay JK Seifuku - HS006 (H&igrave;nh ảnh chụp thật) *TH&Ocirc;NG TIN SẢN PHẨM: - Sản phẩm: Gi&agrave;y oxford - M&atilde; sản phẩm: HS006 - Chiều cao: 3cm - M&agrave;u sắc: Đen - N&acirc;u - Size: 35-36-37-38-39-40 - Chất liệu: Da PU mềm (Gi&agrave;y được đ&oacute;ng g&oacute;i trong hộp carton cứng k&egrave;m t&uacute;i vải chống bụi, nhận ship hỏa tốc) *HƯỚNG DẪN BẢO QUẢN: - Tr&aacute;nh mang sản phẩm khi trời mưa, kh&ocirc;ng ng&acirc;m sản phẩm trong nước qu&aacute; l&acirc;u. - Kh&ocirc;ng giặt tẩy bằng c&aacute;c chất tẩy rửa mạnh, c&oacute; thể d&ugrave;ng khăn mềm, b&ocirc;ng tăm, chất tẩy Canna để vệ sinh gi&agrave;y. - Gi&agrave;y phải được để ở nơi tho&aacute;ng m&aacute;t. Nếu kh&ocirc;ng thường xuy&ecirc;n sử dụng, c&oacute; thể để v&agrave;o hộp c&oacute; t&uacute;i h&uacute;t ẩm, để keo gi&agrave;y kh&ocirc;ng bị tho&aacute;i h&oacute;a do l&acirc;u ng&agrave;y kh&ocirc;ng sử dụng. *CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ H&Agrave;NG: - Hỗ trợ đổi size hoặc đổi mẫu gi&agrave;y trong v&ograve;ng 3 ng&agrave;y ( Kh&aacute;ch h&agrave;ng chịu cước đổi trả nếu kh&aacute;ch h&agrave;ng l&agrave; người chủ động muốn đổi size gi&agrave;y hoặc đổi mẫu) - Kh&aacute;ch h&agrave;ng được đổi sang c&aacute;c sản phẩm ngang gi&aacute; hoặc hơn gi&aacute; ( sản phẩm thấp gi&aacute; hơn sẽ kh&ocirc;ng được nhận lại gi&aacute; ch&ecirc;nh lệch giữa 2 đ&ocirc;i ) - Mỗi sản phẩm chỉ được đổi h&agrave;ng duy nhất 1 lần - Kh&ocirc;ng hỗ trợ đổi h&agrave;ng với c&aacute;c sản phẩm đ&atilde; qua sử dụng, sản phẩm c&oacute; t&igrave;nh trạng bẩn đế, trầy xước..</p>\r\n', 'HS006 Giày Học Sinh Oxford Phong Cách Nhật Bản Cosplay JK Seifuku', 12, 100, 0, 'hs006-giay-hoc-sinh-oxford-phong-cach-nhat-ban-cosplay-jk-seifuku', b'1', '2022-11-03 08:39:15.000000', '2f89b595-73d4-4824-b899-00d399276c09', '006a799f-9cc6-419c-a774-c7052be0c51f');

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `id` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_cart`
--

INSERT INTO `product_cart` (`id`, `quantity`, `product_id`) VALUES
('b21e4c1f-6da9-4124-a231-29af0350bed9', 1, '002824ea-9641-4409-8e3d-acc2cabb6a77');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `product_id` varchar(255) NOT NULL,
  `color_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`product_id`, `color_id`) VALUES
('002824ea-9641-4409-8e3d-acc2cabb6a77', '0a44b4ea-88c4-4df9-a789-ef39b40faaf0'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', '2cdcbb67-8e8e-41ae-ae35-d3c566170a18'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', 'abc8f2eb-75a7-4586-ac13-cc0aa276360b'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', 'ccd1a97a-8dc1-4d45-9fd5-7431e60b7250'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '295c55ed-8108-4c0c-94b9-9166591f656d'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '2cea130b-36ed-4b18-8029-27ca6e701750'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '7d0b020e-ad96-4f7c-ae26-75cec0f74821'),
('00f5b40f-c6df-4466-a95d-69697c986a59', 'df3bf9fd-5fbc-4320-a532-19420c8cc84b'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '1c323f02-e97a-4309-aa62-dbee0a7dad1c'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '37503bb3-db6c-4817-ab87-a45d6550b82c'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '809ce333-339e-4457-b060-c3b6e634ada4'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'b046c420-d140-4f68-9c16-118cd0d2e34a'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '785ee2c7-a3a4-47c4-843d-782e9f8e83b7'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '89752d45-7b0e-47f7-bd6c-41035fa347f3'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', 'a9d247d0-8c0e-48bb-9a32-ee11d8549d4a'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', 'dc226c62-ac23-4c7f-aedd-7513a2990817'),
('0b590666-a985-4fac-b374-f7b4189f88d2', '12e70395-b63b-4dc9-8f82-3ac37a52c3b7'),
('0b590666-a985-4fac-b374-f7b4189f88d2', '6874dd46-de26-4dd7-8dfc-141801f51d77'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'ce048781-624f-43ed-98da-69d29b384f6f'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'ff43d9c2-ffb7-47a1-8638-fbbeda8565c9'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '3daaded2-1423-4113-a310-61102249e78f'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '4068e1bd-1914-45f0-966d-68e9349d4aed'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', 'a3a2a934-0732-4ae7-872d-b73709433cbf'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', 'ccdaf504-5d63-4643-8549-8a59e25891dd'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '859f64f8-c672-4a10-b8fe-1310c24005a9'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '929586e0-7a92-49f9-8211-d46495a5e7fb'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'd5a42c50-6ea8-4935-8445-49d4d002a85a'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'fce153fa-28ba-4c00-b0c9-fb06f4ef3474'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '1c323f02-e97a-4309-aa62-dbee0a7dad1c'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '6fbee2b3-d499-481b-8b3e-02e9241f01ae'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '71040026-bb83-4f95-8dc2-91f5cd2efc40'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', 'f10dcb51-6453-4535-ab80-cbc4367739a0'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '1065f2af-89dd-496a-8763-e278574bda72'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '4fb77589-7002-4f01-8147-0b295f6e0e49'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'ad1d8187-8ec1-480e-8d9e-11d2f10756ad'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'e95c402d-f54c-4648-b300-412687473074'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '03998856-9c5f-4bd8-a5fb-fd8ffcdb3670'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '161ee224-b1f6-4028-a556-1adbd2f8e5db'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '6dce8349-e92d-4f80-9155-6ea099c5db0e'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '81660be1-0b70-4c9d-a92f-4d9ac198dbb9'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '1c323f02-e97a-4309-aa62-dbee0a7dad1c'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '81f1239d-50bf-476f-88b2-eed95679c55a'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', 'd773e6a5-3b76-4568-8d6a-7bcc8f0ce55e'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', 'db1fcfc1-0e55-4845-882f-e2812ec45805'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', '61a24ab8-c35c-4815-804d-6a5245b6ef3d'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', '7302d54f-ac31-4291-997a-c43ec1337f87'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', 'bf714892-5882-4e71-a96d-23dfc8eda24e'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', 'f959c16e-5776-4380-b213-eaa06fb72fae'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '439687a1-1693-4005-bb70-1977dd6d9a52'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '4ea0aa70-12c9-4956-be59-1116d007f213'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '68e149d3-cb5b-4860-b4f1-75b8ea6bf3f0'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'ccd1a97a-8dc1-4d45-9fd5-7431e60b7250'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '1b5dbad9-3954-4395-ad9c-4a2ad8bec180'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '29427e97-a5e6-40c2-a25b-59546a98f93f'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', 'a29b1a36-35df-4a07-9343-7f0bdb2b9655'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', 'd150ce5b-d651-4172-81e1-edaa6e8bccad'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '20aefa39-c650-49d2-9962-33b715e86b1e'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '517dddd3-e6f4-4a07-88f3-49844a20618a'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '749bfb70-f3fa-499a-8019-033b5758da40'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', 'd6301b4c-b314-4524-8b5a-de8937de0852'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '4fd67c25-1a22-48f6-b13c-3ed6fd0e8df5'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '6fbee2b3-d499-481b-8b3e-02e9241f01ae'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '7d7f29a7-2d5b-4d28-9325-e2bfd79d1500'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', 'd41a32cd-0d17-4f0c-abbb-13a63a4bc754'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '01473d91-08a6-443e-a609-9594ccdb781c'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '114601fd-3827-474e-874a-10824005e8aa'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '868699bd-f107-42f6-9c21-8c63e1326451'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'e563160a-c91f-4f4c-8fb6-7bce00bc51c6'),
('2792d341-30e2-4710-915f-808d0366ffee', '3f5ce865-6945-4287-8ae8-4d3517e8ba7e'),
('2792d341-30e2-4710-915f-808d0366ffee', '50af0337-cd44-49e4-92d5-514999a4a6ce'),
('2792d341-30e2-4710-915f-808d0366ffee', '8749cd72-5d12-4601-82dc-8649c5c55071'),
('2792d341-30e2-4710-915f-808d0366ffee', 'be820d3f-4220-4364-bd95-1984eb7f95bb'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '114601fd-3827-474e-874a-10824005e8aa'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '1f8f6508-7fc1-4e7d-a42d-ef891f48e9dd'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '9cbb8042-ee05-4f20-8fef-08678ab7b364'),
('29b889f7-e946-4664-9c66-a31b3e744d42', 'ef252233-6a5b-492d-bd23-a297233f0888'),
('38f72114-9854-4778-916e-70a11162d727', '44584d78-bab6-4e6b-afb8-5aaf6796078e'),
('38f72114-9854-4778-916e-70a11162d727', '4cc983f9-9ff9-4088-8e45-87a9fbde845a'),
('38f72114-9854-4778-916e-70a11162d727', '95eefcc6-0457-49f0-a0f3-fdacc6737360'),
('38f72114-9854-4778-916e-70a11162d727', 'fa5f0582-c047-4269-862a-ae915082a948'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '2eb1d1df-123c-42ee-a539-850577cba642'),
('3efd776a-436d-43d0-ab02-edec0c68183e', 'a1f3dd7f-2b75-4f40-9cba-d6739b79aef8'),
('3efd776a-436d-43d0-ab02-edec0c68183e', 'e6c90908-5a77-4205-b9fa-8eb291fbe57b'),
('3efd776a-436d-43d0-ab02-edec0c68183e', 'fce153fa-28ba-4c00-b0c9-fb06f4ef3474'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '6dd3da8c-23c5-484d-bd5d-74e29cf0ef9c'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '6e97ccff-11b9-4eef-a2ce-b821f8da62f1'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '8ff44c04-0696-4740-aabd-dd123da3ce46'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', 'fea8bb58-4c01-4cbb-8e38-7981a8c83c25'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '1c323f02-e97a-4309-aa62-dbee0a7dad1c'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '6adf7ff2-c3da-439a-a6c1-8d79bd367002'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '9cbb8042-ee05-4f20-8fef-08678ab7b364'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', 'd53bbdbc-8242-436b-9ac7-e50ff03bb4f0'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '1b57c524-bd3f-4180-8068-8e428514b40f'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '26506ff2-d547-4005-9d19-91153b51bb4b'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '568f0294-7cda-4d85-9b50-dee0f9958984'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', 'c84ac129-59c5-427c-bb79-c4ad6a4ed6d6'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '2ea84db3-da1c-4066-b1a5-89524d2d51ad'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '66b151cd-30e1-4a3a-b158-f0fa102e977b'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '99df046e-a8e3-4260-8d0c-7e2a74e903b0'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', 'b0a63528-6d05-4d64-8a3e-3cb2d1b14d91'),
('67aadb06-bb43-4b78-9232-829915a598ee', '159d5c44-126e-4772-bd24-8e2f8081c8da'),
('67aadb06-bb43-4b78-9232-829915a598ee', '28c56f6e-a8c4-4ef0-889d-1a8adcd1c2d0'),
('67aadb06-bb43-4b78-9232-829915a598ee', '89c6b0b2-b1f9-4827-bba6-4bfad2be84d2'),
('67aadb06-bb43-4b78-9232-829915a598ee', 'fce153fa-28ba-4c00-b0c9-fb06f4ef3474'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '0a9c4e06-7a84-498c-ac9c-e2f6d2052c0e'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '4cc983f9-9ff9-4088-8e45-87a9fbde845a'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '4fb77589-7002-4f01-8147-0b295f6e0e49'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '60732f6f-a771-43ea-88b6-8819a9a58c00'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '490c7dd1-d070-4dd6-90d4-eafe42b1fd74'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', 'a5905e73-33b7-4705-ba20-5ca366cb8c67'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', 'd37f5905-a00c-4adc-b1d9-0d5bc4f4ec4e'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', 'db1fcfc1-0e55-4845-882f-e2812ec45805'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '16c23ba4-68d4-410d-b355-3c5603171712'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '630d110b-a570-4d27-bbb5-ed138d95d098'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '68eb8714-9e38-40a1-b4ae-0b5035cdd80e'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '89d5a99c-1c22-4924-ae32-cf329fec58e2'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '16bd59f1-c2a0-4b53-8fb0-7c92752f5b2b'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '2a4d904a-46f6-47fd-94d9-e41642d6bbd6'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '8749cd72-5d12-4601-82dc-8649c5c55071'),
('75b937cb-3421-4c3d-b1a5-51584747d198', 'f2b391b0-91f9-48c0-a242-2dba50d47693'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '08bf51ab-75c4-434e-bcfb-c484047d044e'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '4d296412-434c-48bd-b696-a70a2cd1a225'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '7f2e98ab-f58f-430d-a184-2fd493da6085'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', 'fd4f2355-b5aa-40f8-a5c3-26eb6e05af07'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', 'dce6bd32-fcd1-4caf-bc9e-1615a010916e'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', 'de6f6385-8e68-4cb8-bde7-732e48da4845'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', 'e563160a-c91f-4f4c-8fb6-7bce00bc51c6'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', 'eab41b04-e14d-47d6-83b4-2668eae0b5db'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '9e535db9-c063-431e-a92d-dfbb643c06c3'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'ad1d8187-8ec1-480e-8d9e-11d2f10756ad'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'c84ac129-59c5-427c-bb79-c4ad6a4ed6d6'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'e2919b18-79d5-4bda-a1f7-6dfcba0e35c0'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '06031408-26b0-4e7e-8781-a7604597f928'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '079746c3-ae43-4668-b0d3-c543a2ed8660'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', 'a3e67c6b-9db7-4d8d-b83b-5efd8ef824a5'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', 'f935408f-caff-423c-873d-15dfc48dcd4b'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '608784f0-2f2b-440b-9387-8211010a2346'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '79253468-6b71-48d8-95ca-116a6ab3f5ef'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '81660be1-0b70-4c9d-a92f-4d9ac198dbb9'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '89d5a99c-1c22-4924-ae32-cf329fec58e2'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '114601fd-3827-474e-874a-10824005e8aa'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '34c3bc78-aebe-451f-b85b-5214ef433390'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '69dd2708-b87f-485f-a541-3ae9d0cc5070'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '9247ff8f-2182-43f9-823b-41525cd97aad'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', '0c3c61c6-df87-434a-a03c-f363cc59e01e'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', '42eaaf84-3d17-4c4f-908d-555a08f95c6f'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', '89d5a99c-1c22-4924-ae32-cf329fec58e2'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'd53d6a30-d536-43e5-ad4e-811fa95fa894'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '059b3f9d-9c82-4e18-909e-44d57ca97094'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '3ecbeaeb-02ca-46a4-b8af-08197d8a83bb'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'ad1d8187-8ec1-480e-8d9e-11d2f10756ad'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'c49e112f-0817-4463-bcda-58e6a6e51e02'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '0b7fe382-b157-4801-b6b0-a648ed868658'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '64a83394-b0b4-4c39-9947-590fa2a53e33'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '7347a50e-a7b7-42dc-ad99-47c6348cf2c5'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '9b441214-16a9-4166-bfde-07a7bfeeeaf7'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '059b3f9d-9c82-4e18-909e-44d57ca97094'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '0c3c61c6-df87-434a-a03c-f363cc59e01e'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '5335f9f0-9194-4969-b8f4-42212b01bc66'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', 'ef252233-6a5b-492d-bd23-a297233f0888'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '04ed4c8d-29fb-4ff5-bc98-c6a49650042c'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '0feef4a3-c4cf-490b-b175-5e622dce10ed'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '39031ab9-d7ce-4c90-9a01-7269b865024c'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '5d81231a-82a1-4a8f-a9e1-42f8fee1fc87'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '0b537f11-911f-40f7-802e-5c9273ccf092'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '1c323f02-e97a-4309-aa62-dbee0a7dad1c'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '5f06f5f1-084a-4d74-a639-186a45cdf5a1'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'aab376c0-d884-4844-b80e-c3727b9418c4'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '496606e8-6ce3-460c-80af-21454fbb99c0'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', 'a3a2a934-0732-4ae7-872d-b73709433cbf'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', 'acb60ed7-7ea1-4256-8efb-43bce1ca3efa'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', 'ffa2602c-31d2-44f5-afc7-95ae0862281c'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '01473d91-08a6-443e-a609-9594ccdb781c'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '01cb303c-de38-4e76-ae3d-d657c2b2c34d'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '99af7a1c-2637-471d-90b2-8d80fe7e5b64'),
('a2714e34-764b-47a2-af2c-887f84a4c646', 'f935408f-caff-423c-873d-15dfc48dcd4b'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '4aaa1dc6-5cd4-4274-a2e1-a4d96b36f85b'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '626555ce-fee6-4971-97a1-4fd1f4f680c3'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '8b1e50da-969e-46df-91e9-6dd9b9a791bc'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'b7e7cd76-cdd2-41cd-8ac6-3cef9454d7da'),
('a3e0540f-4622-47e3-873d-548c132537d2', '28cc5ae3-91e9-41c5-92c8-dd5f6ce8abff'),
('a3e0540f-4622-47e3-873d-548c132537d2', 'd937c180-44c3-4908-a007-62dbc837dfb3'),
('a3e0540f-4622-47e3-873d-548c132537d2', 'fa5f0582-c047-4269-862a-ae915082a948'),
('a3e0540f-4622-47e3-873d-548c132537d2', 'fb7fc3a2-a661-4aa3-8d6c-4270a6d6eb1a'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '9964e528-0187-479d-a908-5bb24cd23d0d'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', 'ad1d8187-8ec1-480e-8d9e-11d2f10756ad'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', 'b8489f28-34a2-4f8b-a7e4-213e59e624a9'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', 'c21c4de5-2f15-4ed3-86ec-5a275c452166'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '1b5dbad9-3954-4395-ad9c-4a2ad8bec180'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '20665492-4b2e-47a4-b285-99462890cbb5'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '20daf1ba-8b01-4065-bc2d-873e1442a376'),
('a7136ea1-1404-496a-a732-2f2458d6db17', 'fb887451-4f7e-481f-99e1-248847d5f5e7'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '3233f8e7-b27c-4a80-b7ae-bd377adeb868'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '6a8899b1-cec4-4780-ac91-2b1e53285494'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', 'ccef5be6-8751-49c8-9026-b3b40ce0867f'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', 'd937c180-44c3-4908-a007-62dbc837dfb3'),
('ae786d5c-34a6-4f86-9042-465af777092c', '1065f2af-89dd-496a-8763-e278574bda72'),
('ae786d5c-34a6-4f86-9042-465af777092c', '8d163343-ddbf-40ef-8085-de667048a0bf'),
('ae786d5c-34a6-4f86-9042-465af777092c', 'de7935ae-5a8d-4437-a263-ea7c2d084d4c'),
('ae786d5c-34a6-4f86-9042-465af777092c', 'e5b8af68-bdf3-4a37-a57e-51916c2e6fb9'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '11bf8cc6-387a-49c8-9df4-863be4f8696e'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '20aefa39-c650-49d2-9962-33b715e86b1e'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '2c3f3bc0-679b-4089-8174-35f2ace8073c'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '3bd02438-61b5-4276-a922-d476e7219f55'),
('bf610986-28ec-4239-a386-606e68682ff9', '114601fd-3827-474e-874a-10824005e8aa'),
('bf610986-28ec-4239-a386-606e68682ff9', '39a40c46-383b-4524-be2b-a8f28c77a2f3'),
('bf610986-28ec-4239-a386-606e68682ff9', 'd2e98193-7059-43ae-b6f6-735b1be432bf'),
('bf610986-28ec-4239-a386-606e68682ff9', 'f12ecf94-7abe-4d51-9f5e-b43f295bc118'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '684e3938-40fb-4424-b87e-d67bf24dddd4'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', 'd07dd057-ee8b-4523-8130-31c703353f6d'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', 'f5f57761-79bb-4001-babd-aa47ff8f6813'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', 'fd4f2355-b5aa-40f8-a5c3-26eb6e05af07'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '3ecbeaeb-02ca-46a4-b8af-08197d8a83bb'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '438b53db-44ad-4807-9417-89de0dbbf510'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '5d81231a-82a1-4a8f-a9e1-42f8fee1fc87'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', 'ccd1a97a-8dc1-4d45-9fd5-7431e60b7250'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '1629a1e4-1ca3-4efb-bf4c-042b99db3b90'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '66f34db8-12bd-4d13-92aa-b7a9a73b3973'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', 'a3e67c6b-9db7-4d8d-b83b-5efd8ef824a5'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', 'dc226c62-ac23-4c7f-aedd-7513a2990817'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '64054e85-56b9-4474-9e9f-7fbdd7210d0e'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '69f5912e-61a4-4d80-9298-af689cde53d6'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', 'a0304f4f-a381-4e74-9d7c-ada12eb2d433'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', 'b0a63528-6d05-4d64-8a3e-3cb2d1b14d91'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '13e796df-e8e8-45d6-aec9-50d7fc6e6bd4'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '599ed6ae-fd05-41dc-90d3-08c33e0fe9be'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '59d2707d-b597-4257-a178-e18f5049b3fa'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', 'a5905e73-33b7-4705-ba20-5ca366cb8c67'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '429fac28-d97e-4318-b58e-4dd522de1700'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '6e05d57a-ad8b-47ce-b0a7-9fbac63bc077'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '8b1e50da-969e-46df-91e9-6dd9b9a791bc'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'e0366bbd-778b-4fff-834b-55f1a9975d9c'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '0815ae40-d5bf-41cc-b11a-81e762085a7f'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '3956f0b8-6d70-4e76-9f8f-0c58044068a4'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '78623234-9985-466a-b489-0d0161b73eef'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', 'ccd1a97a-8dc1-4d45-9fd5-7431e60b7250'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '8662fa04-2d33-496b-a39d-2dd96c4b5cf2'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', 'c02fadb5-bd07-4376-9022-f188488c3718'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', 'ccd1a97a-8dc1-4d45-9fd5-7431e60b7250'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', 'f2b391b0-91f9-48c0-a242-2dba50d47693'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '10682960-6ed6-4285-8435-e07bf51591b2'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '7cb5d7a0-8460-450b-8926-2550f8c77e2c'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '8d689022-4bfa-474a-9f21-71323f91904a'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', 'a9d247d0-8c0e-48bb-9a32-ee11d8549d4a'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '01473d91-08a6-443e-a609-9594ccdb781c'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '0f88551d-6137-4023-b37a-7544d38a852b'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', 'eb663c76-28cc-41f8-b08d-34e8e99c3ce3'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', 'f715fa6d-0318-410b-8e34-7a11d6ac8b8b'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '5d81231a-82a1-4a8f-a9e1-42f8fee1fc87'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', 'ae2c514d-eeac-4dde-b871-fde4d6d8b178'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', 'f935408f-caff-423c-873d-15dfc48dcd4b'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', 'fa429c53-a35c-46a2-a3af-7650836d1d9d'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '1f8f6508-7fc1-4e7d-a42d-ef891f48e9dd'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '1fa65766-d4a0-4f44-9e3a-e27d52201f02'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '68851646-bc2a-4214-af49-9071b8b75cc7'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '7302d54f-ac31-4291-997a-c43ec1337f87'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '5d81231a-82a1-4a8f-a9e1-42f8fee1fc87'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '68eb8714-9e38-40a1-b4ae-0b5035cdd80e'),
('f397dee0-7dae-4b20-bb98-f76719611a79', 'c073001f-f47e-4fd2-8d0d-2e20da38ad48'),
('f397dee0-7dae-4b20-bb98-f76719611a79', 'd01828af-cd47-4d1f-827a-44d6fc40935e'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '1f338ea8-8fb3-4849-b047-30959a287286'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '65a137ee-5a72-4c27-b066-e47b97e924ea'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '98a992cd-bfd6-4d5b-9aa4-23304e06b49b'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', 'a4936775-c63d-48ea-855f-5e1eaa6ba71a'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '2300edf7-b1b5-4162-9ff2-a99d5d951af2'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'b3497e6a-419e-4caa-82fa-7ca9f4098ea2'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'f8389657-18a2-48cd-9810-03f3fa669712'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'fce153fa-28ba-4c00-b0c9-fb06f4ef3474');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` varchar(255) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `create_at`, `path`, `state`, `update_at`) VALUES
('0017e462-05fc-4fbb-8953-e55b814adb34', '2022-11-04 09:00:31.000000', '/assets/uploads/nuoc-hoa-nam-dubai-100ml-mp/cd788d85-16d9-4476-acba-5668da649ecb.jpg', b'1', '2022-11-04 09:00:31.000000'),
('001b5ad0-2ac1-447a-86e9-02a76a94c486', '2022-10-29 18:13:03.000000', '/assets/uploads/am-cong-so-citi-mode-fashion-dang-xoe-thiet-ke-tay-ngan-co-ve/ccb6225e-6c26-4809-99aa-8992977402a9.jpg', b'1', '2022-10-29 18:13:03.000000'),
('005ffd8b-cae9-40ab-9145-2da9978a90fd', '2022-10-29 18:13:03.000000', '/assets/uploads/am-cong-so-citi-mode-fashion-dang-xoe-thiet-ke-tay-ngan-co-ve/cb1d9d35-88d9-49b5-a9a2-8423528af774.jpg', b'1', '2022-10-29 18:13:03.000000'),
('00ecd715-e373-40cc-8eee-7e4b3d86c161', '2022-11-04 07:42:51.000000', '/assets/uploads/chest-mount-harness-strap-holder-with-phone-clip-for-mobile-phones/7d26aebf-f151-4825-aad1-7890b553ab5b.jpg', b'1', '2022-11-04 07:42:51.000000'),
('015b8ef9-29ab-496d-8f55-fe5b3a0fc56b', '2022-10-29 20:34:57.000000', '/assets/uploads/sexy-womens-summer-fashion-colorful-knit-stretch-top/da85ba59-e100-4de2-8665-4dcc9df19278.jpg', b'1', '2022-10-29 20:34:57.000000'),
('01dc7181-d327-48a2-b72e-8f86b2bb8dc4', '2022-11-03 00:27:01.000000', '/assets/uploads/nuoc-hoa-nam-dau-thom-nam-tinh-gio-en-profumo-100ml-luu-huong-lau-manh-me-cuon-hut---shin-official/ef3329c0-afb6-48fe-b4b2-b113061b1a61.jpg', b'1', '2022-11-03 00:27:01.000000'),
('02ce699b-c3a9-42c1-ae53-b9fba871119e', '2022-11-04 07:45:13.000000', '/assets/uploads/zzzone-durable-car-baby-safety-seat-strap-belt-harness-chest-child-clip-safe-buckle/e18a7fe5-fe13-445b-8d89-0ab6c3ad7b7d.jpg', b'1', '2022-11-04 07:45:13.000000'),
('02f19bdf-9329-446c-84c7-33d9b936a772', '2022-11-04 09:04:36.000000', '/assets/uploads/-nuoc-hoa-nam-armaf-ventana-pour-homme-10ml-mau-thu/23160530-12be-481f-acd9-71ccd667af16.jpg', b'1', '2022-11-04 09:04:36.000000'),
('03cd77e0-f237-48f7-9df1-77e1d1cb7f1e', '2022-11-04 09:34:07.000000', '/assets/uploads/nuoc-hoa-nu-prola-la-angel-nu-tinh-tinh-khoi-thanh-lich-thich-hop-i-lam-i-hoc-i-hen-ho-pl04---dang-xit-15ml/427b06b0-4454-4025-8a6a-1b544256196e.jpg', b'1', '2022-11-04 09:34:07.000000'),
('03f712c7-75c1-45eb-8a92-8d923119d26e', '2022-11-04 08:01:15.000000', '/assets/uploads/-bong-tai-hinh-hoa-inh-ngoc-trai-cao-cap-phong-cach-phap-co-ien-danh-cho-nu/0951a15e-d174-417b-b423-6621ef8a28a0.jpg', b'1', '2022-11-04 08:01:15.000000'),
('04447f0c-dec4-4732-84b1-45ed81468791', '2022-11-04 09:44:08.000000', '/assets/uploads/sua-tam-safeguard-tui-620ml-hoa-hong-lo-hoichanhtrang-tinh-khiet/919d8f31-1e23-48ed-8c61-bc365ab2d5bd.jpg', b'1', '2022-11-04 09:44:08.000000'),
('046839ae-3ed9-4c25-aebc-b9c675f4d5db', '2022-11-04 07:42:51.000000', '/assets/uploads/chest-mount-harness-strap-holder-with-phone-clip-for-mobile-phones/0950d8fb-28d6-41f0-b466-bdae0e83ef79.jpg', b'1', '2022-11-04 07:42:51.000000'),
('047f1b2d-de83-4adf-91ce-ca15c82ebfc3', '2022-11-03 09:20:53.000000', '/assets/uploads/kep-toc-inh-pha-le-phong-cach-co-ien-nhat-ban-va-han-quoc-trang-suc-ngot-ngao-cho-phu-nu/730bc56e-ae42-435e-91c5-a16138eee2fc.jpg', b'1', '2022-11-03 09:20:53.000000'),
('0566f452-0257-4e13-bb51-4b139a281627', '2022-11-04 09:00:31.000000', '/assets/uploads/nuoc-hoa-nam-dubai-100ml-mp/5f982c40-1b9f-43a8-9e42-e6280ed36da6.jpg', b'1', '2022-11-04 09:00:31.000000'),
('058f2f24-2d19-44ec-9c38-0a9489580c02', '2022-11-04 08:37:37.000000', '/assets/uploads/nhan-thep-titan-mau-vang-hongbac-inh-a-thoi-trang-danh-cho-nu/e7636994-2176-4f06-81e7-393728b7fecd.jpg', b'1', '2022-11-04 08:37:37.000000'),
('069e3a89-460d-46bb-9cc6-34131791f07a', '2022-11-04 09:30:29.000000', '/assets/uploads/nuoc-hoa-nu-my-burberry-new-seal-mui-huong-diu-dang-tinh-te-sang-trong---90ml/b9051f70-d15a-4ed3-b8a8-9b2c312e2fbf.jpg', b'1', '2022-11-04 09:30:29.000000'),
('07150a36-6857-4a32-935b-626d34538711', '2022-11-03 08:39:15.000000', '/assets/uploads/hs006-giay-hoc-sinh-oxford-phong-cach-nhat-ban-cosplay-jk-seifuku/6e5785dd-0396-4ff6-a273-bfdc9e588a19.jpg', b'1', '2022-11-03 08:39:15.000000'),
('088300b7-42bf-4323-8670-438b70b2c61e', '2022-11-04 07:32:12.000000', '/assets/uploads/dog-hand-holding-rope-reflective-chest-strap-dog-chain-medium-and-small-dogs-and-cats-out-breathable-teddy-bichon-corgi-new-hdyu/ff08d4ee-bc51-4865-9dcb-06336a1135f9.jpg', b'1', '2022-11-04 07:32:12.000000'),
('08a57afb-32e5-4f5d-b655-5ac17b315ebc', '2022-11-04 08:40:39.000000', '/assets/uploads/nhan-ho-hinh-ngoi-sao-mat-trang-12-thang-thoi-trang-han-quoc-thich-hop-lam-qua-tang-sinh-nhat-tot-nhat-cho-nam-va-nu/afe248ea-2e8f-48db-87dc-e201b2d935e6.jpg', b'1', '2022-11-04 08:40:39.000000'),
('08f12eae-424c-44c6-8742-a67f83c11908', '2022-11-03 16:14:10.000000', '/assets/uploads/day-chuyen-bac-nu-925-canh-ao-nu-tinh-diu-dang-lavesta-sil29/69f50f66-aeb4-43c7-8876-5b0a5aa8f4c5.jpg', b'1', '2022-11-03 16:14:10.000000'),
('09459cbf-26ed-40e1-8c57-deff34a36978', '2022-11-03 08:21:00.000000', '/assets/uploads/sandal-nu-air-phan-quang-hoc-sinh-2-mau-sieu-hot/384027b0-9844-4c70-9836-97f2b5661220.jpg', b'1', '2022-11-03 08:21:00.000000'),
('0a0d8399-e907-46ef-8d91-e95f08681a94', '2022-11-03 00:30:53.000000', '/assets/uploads/nuoc-hoa-nam-bleu-de-chanel-100ml-lich-lam-quyen-ru-luu-huong-lau---dau-thom-nam-tinh-sang-trong-lich-su---daikon-store/db68c65c-73fa-44cf-b411-44c949198e27.jpg', b'1', '2022-11-03 00:30:53.000000'),
('0a655d9a-e75a-440c-93d5-fc2e80cd767f', '2022-11-04 07:19:56.000000', '/assets/uploads/kep-noi-toc-chu-q-bang-kim-loai-chat-luong-cao/c86188f1-bfd1-46f0-b151-beb6657e8516.jpg', b'1', '2022-11-04 07:19:56.000000'),
('0ac5f65d-5be8-4835-b170-740fc63edc57', '2022-10-30 00:09:29.000000', '/assets/uploads/bo-quan-ao-thun-tay-dai-be-gai-1-9-tuoi-zakids/cd4db5e5-6b16-40fe-bbf6-eda86cc9165d.jpg', b'1', '2022-10-30 00:09:29.000000'),
('0b57ad2d-7cbd-47b4-9a23-9d2734e47772', '2022-11-04 09:22:43.000000', '/assets/uploads/nuoc-hoa-nu-yves-saint-laurent--black-opium/45ec0443-b7d7-47bd-8c8f-9c3a249d13f3.jpg', b'1', '2022-11-04 09:22:43.000000'),
('0bf34a34-b206-4a0e-9008-b85752d4998b', '2022-11-04 07:45:13.000000', '/assets/uploads/zzzone-durable-car-baby-safety-seat-strap-belt-harness-chest-child-clip-safe-buckle/269f9327-36ea-44cb-adc6-101cc3b6cbd2.jpg', b'1', '2022-11-04 07:45:13.000000'),
('0cf968d8-ab92-4336-9e0a-257500bbb8aa', '2022-11-04 09:44:08.000000', '/assets/uploads/sua-tam-safeguard-tui-620ml-hoa-hong-lo-hoichanhtrang-tinh-khiet/acafb769-c60b-4373-b15a-c24aca441c25.jpg', b'1', '2022-11-04 09:44:08.000000'),
('0dc8509a-1520-4149-979b-e49a55c87043', '2022-11-04 09:07:18.000000', '/assets/uploads/nuoc-hoa-nam-chinh-hang-thom-lau-mini-dark-brawn-chai-80ml-ang-cap-vuot-troi-luu-huong-en-10h/2d5e1aa9-472c-4f99-9950-4e2dc1438689.jpg', b'1', '2022-11-04 09:07:18.000000'),
('0e138c16-51aa-4983-9102-6da8331871b8', '2022-11-04 07:32:12.000000', '/assets/uploads/dog-hand-holding-rope-reflective-chest-strap-dog-chain-medium-and-small-dogs-and-cats-out-breathable-teddy-bichon-corgi-new-hdyu/973d5c0f-2d7e-454a-8ea1-38577b6fef63.jpg', b'1', '2022-11-04 07:32:12.000000'),
('0e27580d-65b7-487d-9102-cc909b207c81', '2022-11-04 07:49:23.000000', '/assets/uploads/pet-chest-back-rope-dog-leashing-strap-cartoon-small-and-medium-sized-dog-leashing-rope-strap/1cb72f58-2151-4ff8-9d70-0c358f68b03b.jpg', b'1', '2022-11-04 07:49:23.000000'),
('0e629388-f835-44b4-b502-54a693495942', '2022-11-03 08:26:32.000000', '/assets/uploads/giay-the-duc-hoc-sinh-nu-sieu-nhe-kieu-dang-hop-thoi-trang/0367682a-1e2d-4b5d-93a1-076a91b40076.jpg', b'1', '2022-11-03 08:26:32.000000'),
('0e70cd21-7b58-43b6-8357-78526c1aff51', '2022-11-04 07:56:36.000000', '/assets/uploads/oi-khuyen-tai-chot-bac-925-kieu-dang-hinh-hoc-inh-a-sang-trong-cho-nu/6d7ff6ea-eca5-470b-b215-6ae3c5280fe2.jpg', b'1', '2022-11-04 07:56:36.000000'),
('0e771465-1e84-42d5-894d-979337e2f92f', '2022-11-04 06:56:25.000000', '/assets/uploads/vong-tay-chuoi-hat-ngoc-bich-hinh-chiec-la-nho-on-gian-sang-trong-cho-nu/7be2541e-919a-4c33-a71c-fa5c86dd033d.jpg', b'1', '2022-11-04 06:56:25.000000'),
('0f5a7f68-22bb-4778-b9a6-960c8211ce8b', '2022-11-04 08:27:27.000000', '/assets/uploads/nhan-titan-nam-ca-tinh-nhan-nam-thoi-trang-nhieu-kieu-lua-chon-mau-bac/6f5b4c02-620a-4f19-b1de-7e1c3747ab1d.jpg', b'1', '2022-11-04 08:27:27.000000'),
('103a8261-dc70-49eb-a91e-2dcf2414a565', '2022-11-03 16:39:41.000000', '/assets/uploads/lac-tay-chuong-keu-leng-keng-chat-lieu-bac-y-mau-moi-hang-thiet-ke-the-sky-vt1030/6ee745c0-b608-4ae6-b49b-ba2925b46bad.jpg', b'1', '2022-11-03 16:39:41.000000'),
('106c851f-e43e-4c79-97ae-1c91911a352b', '2022-10-29 19:46:18.000000', '/assets/uploads/men-fashion-crop-top-patchwork-sheer-sexy-short-sleeve-t-shirt-streetwear-vest/5be07f65-ab10-43b8-b011-9cf827ae7352.jpg', b'1', '2022-10-29 19:46:18.000000'),
('117a1d33-6218-4571-b65b-ff8b463df911', '2022-10-29 21:40:05.000000', '/assets/uploads/hannie-womens-casual-fashion-solid-color-tassel-chain-boat-neck-skinny-dress/ecdde1ad-abe1-4b64-a252-30db532c180a.jpg', b'1', '2022-10-29 21:40:05.000000'),
('11dfa446-27e6-4b6c-a95d-e504a5edb425', '2022-11-04 06:56:25.000000', '/assets/uploads/vong-tay-chuoi-hat-ngoc-bich-hinh-chiec-la-nho-on-gian-sang-trong-cho-nu/4c590cd5-a72c-49cc-902f-1a51e86067cb.jpg', b'1', '2022-11-04 06:56:25.000000'),
('12156e13-bfb5-4ce0-90b6-e146fc29b896', '2022-11-03 00:39:28.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-chinh-hang-versace-dau-thom-nam-body-sang-trong-quy-phai-huong-thom-cuon-hut-n56/8a59d8f9-30e2-44e4-ba8b-8ef575af82a2.jpg', b'1', '2022-11-03 00:39:28.000000'),
('121ec973-9beb-4676-a832-b9db90d84024', '2022-11-04 06:52:38.000000', '/assets/uploads/vong-tay-day-ben-mat-hinh-chu-cho-cinnamon-mem-mai-mau-hong-xanh-duong-phong-cach-nhat-ban-xinh-xan/ccb6845e-5e35-46fb-ae32-c6480289be66.jpg', b'1', '2022-11-04 06:52:38.000000'),
('12f1be94-2ddf-4c89-8386-80df7523ec39', '2022-11-04 09:27:33.000000', '/assets/uploads/nuoc-hoa-nu-ccharme-sosexy-huong-hong-nhe-nhang-quyen-ru-50ml/d0f7b8f9-5a20-41bf-8a95-39c5c6b3c265.jpg', b'1', '2022-11-04 09:27:33.000000'),
('1322f543-f507-42c9-b585-cc13342bf0cc', '2022-11-04 08:27:27.000000', '/assets/uploads/nhan-titan-nam-ca-tinh-nhan-nam-thoi-trang-nhieu-kieu-lua-chon-mau-bac/17cf9108-fa7e-40e6-8350-01903087ca38.jpg', b'1', '2022-11-04 08:27:27.000000'),
('1342bfcf-9167-466b-b0e0-a21297707388', '2022-11-04 08:15:42.000000', '/assets/uploads/bong-tai-dai-hinh-quat-inh-kim-cuong-trang-sang-trong/1e098bb2-38d4-44a5-8e0d-67027a869383.jpg', b'1', '2022-11-04 08:15:42.000000'),
('153bd5fe-27fe-4ce5-9f19-a5e694bb26ea', '2022-11-03 08:35:46.000000', '/assets/uploads/giay-oxford-nu-giay-bup-be-marry-jane-e-cao-got-vuong-mui-tron-may-chi-noi-5cm-hoc-sinh-lolita-chat-lieu-da-c1006/0f34f956-d595-41dc-8557-8b52646aec20.jpg', b'1', '2022-11-03 08:35:46.000000'),
('154176e7-caa6-4d1f-b9ce-6fcb0eab086e', '2022-11-03 16:25:28.000000', '/assets/uploads/choker-nu-day-chuyen-nu-chocker-inh-a-du-tiec-sang-chanh-trang-suc-her-accessories/3cf6e379-5171-466a-908f-f0a7b97317cc.jpg', b'1', '2022-11-03 16:25:28.000000'),
('16446086-9af5-48d5-8d60-dcf043e66ae2', '2022-11-03 15:52:18.000000', '/assets/uploads/bo-trang-suc-day-chuyen-khuyen-tai-nhan-nu-bac-ta-nguyen-chat-s999-lavesta-mat-vuong-inh-pha-le-lap-lanh-sun595/d463eeab-6a91-4f91-9964-a10cb664fd20.jpg', b'1', '2022-11-03 15:52:18.000000'),
('16640219-6aef-4001-96c3-0559dc82397d', '2022-11-04 07:15:25.000000', '/assets/uploads/kep-toc-hinh-buom-inh-ngoc-trai-sang-trong-cho-nu/48093a11-bfea-402c-8f69-8a10ca66e5a3.jpg', b'1', '2022-11-04 07:15:25.000000'),
('1679545f-281d-4e5f-8da6-09230e782115', '2022-11-04 07:12:33.000000', '/assets/uploads/-kep-toc-inh-ngoc-trai-gia-thoi-trang/5bba3a11-e2f6-4785-a05e-352c1867cb97.jpg', b'1', '2022-11-04 07:12:33.000000'),
('17ae4540-cbc0-4ee3-b30d-41d806a4fa1f', '2022-11-03 15:52:18.000000', '/assets/uploads/bo-trang-suc-day-chuyen-khuyen-tai-nhan-nu-bac-ta-nguyen-chat-s999-lavesta-mat-vuong-inh-pha-le-lap-lanh-sun595/64ddd9d4-755f-45ef-bc69-1ca749d58a21.jpg', b'1', '2022-11-03 15:52:18.000000'),
('17d9c88c-ff54-4deb-863b-552f1c936c7e', '2022-11-03 08:35:46.000000', '/assets/uploads/giay-oxford-nu-giay-bup-be-marry-jane-e-cao-got-vuong-mui-tron-may-chi-noi-5cm-hoc-sinh-lolita-chat-lieu-da-c1006/6faf57aa-a671-48dc-98b4-2bca29363ce9.jpg', b'1', '2022-11-03 08:35:46.000000'),
('192dbe83-5cb3-451b-b9d4-7cb3da111f37', '2022-11-02 13:31:10.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-100ml---dau-thom-nong-o-edp-thom-lau-chinh-hang-kem-tui/f227a6d0-0667-4d0c-b11e-969cc1c531c0.jpg', b'1', '2022-11-02 13:31:10.000000'),
('198d0428-8b47-4736-9c4c-86f3c907096a', '2022-11-03 16:25:28.000000', '/assets/uploads/choker-nu-day-chuyen-nu-chocker-inh-a-du-tiec-sang-chanh-trang-suc-her-accessories/371fcc3e-f7e9-4a2d-a0de-86dfcb20d877.jpg', b'1', '2022-11-03 16:25:28.000000'),
('1a65f542-5637-43f8-9100-ccd5426547ae', '2022-11-03 08:16:21.000000', '/assets/uploads/giay_converse-en-cao-co-nam-nu-thoi-trang-giay-the-thao-en-cao-co-mui-bong-lot-xanh/62e3773e-42c6-4d56-945f-bcf67c67bf7b.jpg', b'1', '2022-11-03 08:16:21.000000'),
('1ab912a2-3de6-48c9-8fbb-ce6c8b700abe', '2022-10-29 23:19:32.000000', '/assets/uploads/vay-cho-be-gai-2-mau-dang-xoe-dai-tay-hoa-tiet-xinh-xan-thoi-trang-bello-land---kids-fashion/a324c339-513f-4f05-b09d-84d154712c5a.jpg', b'1', '2022-10-29 23:19:32.000000'),
('1ae1872f-46ed-4baf-bae3-56ead3824807', '2022-10-29 18:28:31.000000', '/assets/uploads/korean-fashion-mens-long-sleeve-solid-color-shirt/63342673-8eb1-41c3-9f7a-023c3f4f3d17.jpg', b'1', '2022-10-29 18:28:31.000000'),
('1b23076c-c604-4d6d-8212-2e70975668f7', '2022-10-29 19:31:23.000000', '/assets/uploads/men-sweater-sl-thick-warm-casual-fashion-knitwear-long-sleeve-polyester-cotton/3fba66af-804c-46e1-a0d9-9a1e85b9979c.jpg', b'1', '2022-10-29 19:31:23.000000'),
('1d4e80bd-843b-4239-a225-23d8ef45f49e', '2022-11-04 08:15:42.000000', '/assets/uploads/bong-tai-dai-hinh-quat-inh-kim-cuong-trang-sang-trong/c29cad2d-d232-4843-98d8-ae7e14e126c6.jpg', b'1', '2022-11-04 08:15:42.000000'),
('1eaea4c4-3c68-427c-97ed-88520fae7f50', '2022-11-04 09:30:29.000000', '/assets/uploads/nuoc-hoa-nu-my-burberry-new-seal-mui-huong-diu-dang-tinh-te-sang-trong---90ml/3eae0391-f64f-4d6d-a26d-1c2a4e50aee3.jpg', b'1', '2022-11-04 09:30:29.000000'),
('1ecdad92-ad7f-4197-ad29-8da1c810ca35', '2022-11-04 07:19:56.000000', '/assets/uploads/kep-noi-toc-chu-q-bang-kim-loai-chat-luong-cao/4c1622c5-f391-4587-842e-0c8a23621ba5.jpg', b'1', '2022-11-04 07:19:56.000000'),
('1f06c530-5031-4331-8153-4cbe06acf093', '2022-11-04 09:04:36.000000', '/assets/uploads/-nuoc-hoa-nam-armaf-ventana-pour-homme-10ml-mau-thu/a5015edf-73db-4f5c-b568-21b89acd9779.jpg', b'1', '2022-11-04 09:04:36.000000'),
('1f5ffbb4-085c-457f-a816-15ca9693f717', '2022-10-29 20:03:00.000000', '/assets/uploads/quan-kaki-dai-just-men-nam-tinh-va-thanh-lich/f47bca1d-fb94-4920-bb98-f26652dfcb34.jpg', b'1', '2022-10-29 20:03:00.000000'),
('1f90d6c3-7a17-4a12-92c1-17821a93d9a1', '2022-10-29 20:03:00.000000', '/assets/uploads/quan-kaki-dai-just-men-nam-tinh-va-thanh-lich/131a9b0a-5491-4485-a829-04bc76ab2a6b.jpg', b'1', '2022-10-29 20:03:00.000000'),
('2020944b-c1b8-447c-b51d-2d19462df097', '2022-10-29 18:03:09.000000', '/assets/uploads/ao-khoac-hoodie-ni-sieu-re-phu-hop-nam-nu-/5a8db7ce-7dc4-4766-bde7-b83ff3c60fc8.jpg', b'1', '2022-10-29 18:03:09.000000'),
('20a2598f-df17-423d-8b4a-8260fb7e4122', '2022-11-04 09:00:31.000000', '/assets/uploads/nuoc-hoa-nam-dubai-100ml-mp/b860620a-a020-4a15-907a-eafff8123f2e.jpg', b'1', '2022-11-04 09:00:31.000000'),
('20f7d19a-a881-4b98-9e8f-cba79028734f', '2022-10-29 22:29:06.000000', '/assets/uploads/kids-fashion-contrast-collar-baseball-jacket-coat-for-autumn/911071e1-e47c-4a4c-bafc-0216c463b49f.jpg', b'1', '2022-10-29 22:29:06.000000'),
('21ad1e23-65fa-4c58-a2ab-97b85d15eb33', '2022-11-03 08:08:28.000000', '/assets/uploads/nuoc-hoa-nam-suziko-aqua-bombshell-phong-o-manh-me-nuoc-hoa-mini-10ml-dang-xit-tien-loi/9587f3a4-ecbd-4544-a10a-37f2f50ac03f.jpg', b'1', '2022-11-03 08:08:28.000000'),
('23511a32-3964-419a-862f-da5c59583b4f', '2022-10-29 20:48:23.000000', '/assets/uploads/spring-and-autumn-2022-womens-new-hong-kong-style-retro-v-neck-slim-high-waist-chic-skirt-sequin-fishtail-dress-fashion/893cb655-4ed6-4453-b712-eb9198db250a.jpg', b'1', '2022-10-29 20:48:23.000000'),
('23bf9f84-b7f0-4ff3-9f27-8bee5e8a05fe', '2022-10-30 00:09:29.000000', '/assets/uploads/bo-quan-ao-thun-tay-dai-be-gai-1-9-tuoi-zakids/01a4d942-6692-4895-a4b7-c5106595d51b.jpg', b'1', '2022-10-30 00:09:29.000000'),
('2458bc9d-5086-4ee6-b6cd-836ef0aaa5b5', '2022-11-04 08:12:42.000000', '/assets/uploads/khuyen-tai-bac-nu-tlee-tron-chot-bam-tua-hat-a-nho-xinh-xan-tleejewelry/819e7e13-0caf-462f-bbe5-f05d54a8471d.jpg', b'1', '2022-11-04 08:12:42.000000'),
('24e363f6-f011-4d73-b3ec-187531cdb9f6', '2022-11-03 16:14:10.000000', '/assets/uploads/day-chuyen-bac-nu-925-canh-ao-nu-tinh-diu-dang-lavesta-sil29/3b78aa8d-8d5b-4953-86c4-6feb9170c7d9.jpg', b'1', '2022-11-03 16:14:10.000000'),
('25194593-7577-431d-8a42-f4a19b84274c', '2022-11-04 08:53:20.000000', '/assets/uploads/cuc-pham-nuoc-hoa-nam-chinh-hang-thom-lau-gentlemen-quyen-luc-nuoc-hoa-nam-chinh-hang-cong-nghe-moi/b7899bdf-1b6f-4f0b-a04e-4b0c374967da.jpg', b'1', '2022-11-04 08:53:20.000000'),
('275c3f94-30ff-4eae-a354-571a8f77551a', '2022-11-04 09:34:07.000000', '/assets/uploads/nuoc-hoa-nu-prola-la-angel-nu-tinh-tinh-khoi-thanh-lich-thich-hop-i-lam-i-hoc-i-hen-ho-pl04---dang-xit-15ml/2ad12d56-8ba4-4c61-81b0-9f47c60b40d4.jpg', b'1', '2022-11-04 09:34:07.000000'),
('2851c15c-8679-41f3-901d-b99b2b52fbe5', '2022-11-03 16:39:41.000000', '/assets/uploads/lac-tay-chuong-keu-leng-keng-chat-lieu-bac-y-mau-moi-hang-thiet-ke-the-sky-vt1030/2fdfdec1-f807-4f69-a32d-843667aabfb3.jpg', b'1', '2022-11-03 16:39:41.000000'),
('28f4f893-b648-44af-992b-1aa0b91c0e58', '2022-11-03 00:39:28.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-chinh-hang-versace-dau-thom-nam-body-sang-trong-quy-phai-huong-thom-cuon-hut-n56/62faacf4-86eb-429e-a101-5b28ddf157d5.jpg', b'1', '2022-11-03 00:39:28.000000'),
('297cdf0a-9eaf-4fd7-b609-e6c4f9cb17a2', '2022-10-29 20:30:09.000000', '/assets/uploads/jkwomens-fashion-solid-color-boat-neck-skinny-dress/f51492f3-4bbc-4146-bcf5-417822c41390.jpg', b'1', '2022-10-29 20:30:09.000000'),
('29c56f37-aaaa-47e7-b7bc-a807b57ac4f6', '2022-11-03 15:52:18.000000', '/assets/uploads/bo-trang-suc-day-chuyen-khuyen-tai-nhan-nu-bac-ta-nguyen-chat-s999-lavesta-mat-vuong-inh-pha-le-lap-lanh-sun595/cb6e3236-07ed-46b3-8329-17a3fce3503b.jpg', b'1', '2022-11-03 15:52:18.000000'),
('2a2b8063-04d1-4eae-b9c3-66d1a6f42eb3', '2022-11-04 07:45:13.000000', '/assets/uploads/zzzone-durable-car-baby-safety-seat-strap-belt-harness-chest-child-clip-safe-buckle/2e6f5ec9-89c2-4761-80ec-898bf63eaa11.jpg', b'1', '2022-11-04 07:45:13.000000'),
('2c8a801a-a4fe-4505-91a2-af731c9bb834', '2022-10-29 20:30:09.000000', '/assets/uploads/jkwomens-fashion-solid-color-boat-neck-skinny-dress/a298bb5e-712b-46b4-93ca-a52d77ee22d8.jpg', b'1', '2022-10-29 20:30:09.000000'),
('2ccf8277-6dcd-4366-8b00-48552b5e3612', '2022-11-04 08:27:27.000000', '/assets/uploads/nhan-titan-nam-ca-tinh-nhan-nam-thoi-trang-nhieu-kieu-lua-chon-mau-bac/2193e252-1351-4a7d-a14f-dbe9f081a21e.jpg', b'1', '2022-11-04 08:27:27.000000'),
('2d1c8ead-6970-43ce-9b72-b1345b602fb2', '2022-11-04 08:15:42.000000', '/assets/uploads/bong-tai-dai-hinh-quat-inh-kim-cuong-trang-sang-trong/6e7edb6d-46c9-4529-9649-275e2aa6bef6.jpg', b'1', '2022-11-04 08:15:42.000000'),
('2d6434b6-776c-4c32-9aa1-51b420c98beb', '2022-11-03 16:25:28.000000', '/assets/uploads/choker-nu-day-chuyen-nu-chocker-inh-a-du-tiec-sang-chanh-trang-suc-her-accessories/d0d03c50-de41-44de-88db-8e2a073758b7.jpg', b'1', '2022-11-03 16:25:28.000000'),
('2d9c834f-ea2f-449e-9717-1ed23dcdcf80', '2022-11-03 08:16:21.000000', '/assets/uploads/giay_converse-en-cao-co-nam-nu-thoi-trang-giay-the-thao-en-cao-co-mui-bong-lot-xanh/032b6c70-9029-45bb-906a-fe690eca6817.jpg', b'1', '2022-11-03 08:16:21.000000'),
('2daabda6-d30b-46b6-94e5-97d4be9b748e', '2022-11-04 08:31:11.000000', '/assets/uploads/nhan-bac-nu-tlee-snow-princess-nam-a-lap-lanh-tleejewelry/e0a1549d-f3b0-4c59-88d0-fd66d1b192e3.jpg', b'1', '2022-11-04 08:31:11.000000'),
('2ecdddad-ac5d-47f5-963a-e87e0faa00fc', '2022-11-04 08:27:27.000000', '/assets/uploads/nhan-titan-nam-ca-tinh-nhan-nam-thoi-trang-nhieu-kieu-lua-chon-mau-bac/1730f1de-f220-43ad-ac0c-d321072a3388.jpg', b'1', '2022-11-04 08:27:27.000000'),
('2f5029ce-bea9-4556-8035-4a07de262bd0', '2022-11-03 16:17:13.000000', '/assets/uploads/vong-co-choker-bang-da-thoi-trang-ca-tinh-danh-cho-nu-/8dae5470-0b9d-421c-871f-7c97c2ae10f1.', b'1', '2022-11-03 16:17:13.000000'),
('2f87a9bf-592a-46d8-a4d8-4dc01fb77b9d', '2022-11-04 07:36:51.000000', '/assets/uploads/thinh-hanhsexy-women-body-leather-harness-chest-bra-straps-belt-punk-gothic-corsets/62fa19f6-ce74-4cb2-b9d5-5b3841f508e1.jpg', b'1', '2022-11-04 07:36:51.000000'),
('2f9aaa86-89e1-49fd-9d33-c451036c1083', '2022-10-29 18:13:03.000000', '/assets/uploads/am-cong-so-citi-mode-fashion-dang-xoe-thiet-ke-tay-ngan-co-ve/924b5f46-ca85-4c33-b4c2-0761f607fdc6.jpg', b'1', '2022-10-29 18:13:03.000000'),
('2ffdb032-2654-49ce-b874-32fa972ddabd', '2022-11-04 06:56:25.000000', '/assets/uploads/vong-tay-chuoi-hat-ngoc-bich-hinh-chiec-la-nho-on-gian-sang-trong-cho-nu/5a12c5d8-74a0-4847-839c-dd689332497d.jpg', b'1', '2022-11-04 06:56:25.000000'),
('30f11271-23b5-4338-a548-e442c6f57ef2', '2022-10-30 00:15:27.000000', '/assets/uploads/am-cong-chua-lua-y-cao-cap-phoi-voan/e64faa7e-668c-4b65-af3e-143aea707776.jpg', b'1', '2022-10-30 00:15:27.000000'),
('311ecce3-05fd-42df-b541-413808be0238', '2022-11-04 08:53:20.000000', '/assets/uploads/cuc-pham-nuoc-hoa-nam-chinh-hang-thom-lau-gentlemen-quyen-luc-nuoc-hoa-nam-chinh-hang-cong-nghe-moi/c0f6d22e-6ec0-4d14-8b9b-7a26b9742e6b.jpg', b'1', '2022-11-04 08:53:20.000000'),
('3154322c-64b6-4d7b-8b83-05f9d18f51b1', '2022-11-04 09:44:08.000000', '/assets/uploads/sua-tam-safeguard-tui-620ml-hoa-hong-lo-hoichanhtrang-tinh-khiet/e78a5771-cca9-4cd4-817e-40d5dfac96c2.jpg', b'1', '2022-11-04 09:44:08.000000'),
('316f417d-3c8e-4bf5-a4c3-12e99b32d511', '2022-11-04 09:25:04.000000', '/assets/uploads/nuoc-hoa-nu-quen-tram/e6542513-75bd-4d30-b844-90ad725076df.jpg', b'1', '2022-11-04 09:25:04.000000'),
('3222720b-8e45-49f5-a117-3caf9352f124', '2022-10-29 20:03:00.000000', '/assets/uploads/quan-kaki-dai-just-men-nam-tinh-va-thanh-lich/e9f15eb5-d083-4733-9d38-7274d8f9df99.jpg', b'1', '2022-10-29 20:03:00.000000'),
('34a4b875-358e-448f-9985-a49ff463daf2', '2022-10-29 23:19:32.000000', '/assets/uploads/vay-cho-be-gai-2-mau-dang-xoe-dai-tay-hoa-tiet-xinh-xan-thoi-trang-bello-land---kids-fashion/eb2fffbe-e5c9-4a65-a94e-9da5adced896.jpg', b'1', '2022-10-29 23:19:32.000000'),
('34a82e8b-be87-43b3-924e-236c0340effb', '2022-11-04 09:27:33.000000', '/assets/uploads/nuoc-hoa-nu-ccharme-sosexy-huong-hong-nhe-nhang-quyen-ru-50ml/7dd345ad-9a48-4209-bd4f-3608d3a11d7f.jpg', b'1', '2022-11-04 09:27:33.000000'),
('351a2b44-5719-4ee2-81ed-3c070e7da70d', '2022-11-04 09:00:31.000000', '/assets/uploads/nuoc-hoa-nam-dubai-100ml-mp/8695d62a-fadd-4dbc-b996-58bfc335f94e.jpg', b'1', '2022-11-04 09:00:31.000000'),
('354dc3df-633c-4543-bae7-e931de74e9ee', '2022-11-04 09:22:43.000000', '/assets/uploads/nuoc-hoa-nu-yves-saint-laurent--black-opium/509cd51c-c087-499b-8f3e-5dc7084176a8.jpg', b'1', '2022-11-04 09:22:43.000000'),
('371b49c9-1ad5-4e36-95c0-0833a779953d', '2022-11-04 07:12:33.000000', '/assets/uploads/-kep-toc-inh-ngoc-trai-gia-thoi-trang/fe76d972-b2e9-4352-845f-4a71356e9503.jpg', b'1', '2022-11-04 07:12:33.000000'),
('3741ea0e-22dc-4893-9d34-d9765bfdc123', '2022-11-03 16:32:39.000000', '/assets/uploads/vong-tay-bac-nu-the-sky-vt1022-hai-day-soi-manh-kem-mat-hinh-trai-tim/0990dc8a-ad54-4460-b65c-9c9093a04a68.jpg', b'1', '2022-11-03 16:32:39.000000'),
('3802355c-3829-48ae-b431-9aaf3d691390', '2022-11-03 08:08:28.000000', '/assets/uploads/nuoc-hoa-nam-suziko-aqua-bombshell-phong-o-manh-me-nuoc-hoa-mini-10ml-dang-xit-tien-loi/5a65e95d-5bf4-4a53-8757-c37ae39b3a05.jpg', b'1', '2022-11-03 08:08:28.000000'),
('380914c2-6ece-4592-9d3b-ec808335b54b', '2022-10-29 19:53:30.000000', '/assets/uploads/mens-fashion-korean-style-short-pants-and-hoodie/39b21ced-1e89-4519-9e83-34ea4a8cf54f.jpg', b'1', '2022-10-29 19:53:30.000000'),
('3990cb44-d1e0-4259-b6df-4261617625c2', '2022-10-30 00:09:29.000000', '/assets/uploads/bo-quan-ao-thun-tay-dai-be-gai-1-9-tuoi-zakids/00180265-791a-4864-a3af-0b177173a564.jpg', b'1', '2022-10-30 00:09:29.000000'),
('39a6aaae-7dc1-4a49-be4f-102e2f6db5c8', '2022-11-03 15:52:18.000000', '/assets/uploads/bo-trang-suc-day-chuyen-khuyen-tai-nhan-nu-bac-ta-nguyen-chat-s999-lavesta-mat-vuong-inh-pha-le-lap-lanh-sun595/240e7f7f-7904-4bfb-a858-4984bd9bd71c.jpg', b'1', '2022-11-03 15:52:18.000000'),
('3b07184b-c788-45fd-a39f-c790672ece5b', '2022-11-03 08:26:32.000000', '/assets/uploads/giay-the-duc-hoc-sinh-nu-sieu-nhe-kieu-dang-hop-thoi-trang/2ca718a2-544d-4465-babb-8ad22e01bc7d.jpg', b'1', '2022-11-03 08:26:32.000000'),
('3dbfac72-bb08-4efa-8288-da293e0c9de2', '2022-11-04 07:36:51.000000', '/assets/uploads/thinh-hanhsexy-women-body-leather-harness-chest-bra-straps-belt-punk-gothic-corsets/f862a7a2-afca-4960-af73-477942680d8c.jpg', b'1', '2022-11-04 07:36:51.000000'),
('3e252587-ce1c-4881-ab2b-022d200703b6', '2022-11-04 09:25:04.000000', '/assets/uploads/nuoc-hoa-nu-quen-tram/a30ac44c-ea4b-48ca-b529-48da0302c39f.jpg', b'1', '2022-11-04 09:25:04.000000'),
('3e8166e1-045e-4c6e-b2b6-671dc973f2a4', '2022-11-03 08:39:15.000000', '/assets/uploads/hs006-giay-hoc-sinh-oxford-phong-cach-nhat-ban-cosplay-jk-seifuku/36d16ec1-d5be-4d15-ae7a-33926354809d.jpg', b'1', '2022-11-03 08:39:15.000000'),
('3ea1633c-919d-4fe8-acef-479cec70e3e2', '2022-11-04 09:30:29.000000', '/assets/uploads/nuoc-hoa-nu-my-burberry-new-seal-mui-huong-diu-dang-tinh-te-sang-trong---90ml/7ef42123-dfe1-44de-be1f-9148ba58a1c8.jpg', b'1', '2022-11-04 09:30:29.000000'),
('3f462678-e766-4c6a-8382-1f7fd390484a', '2022-10-29 20:48:23.000000', '/assets/uploads/spring-and-autumn-2022-womens-new-hong-kong-style-retro-v-neck-slim-high-waist-chic-skirt-sequin-fishtail-dress-fashion/64f4ea79-80af-41da-b669-ec48f75d1005.jpg', b'1', '2022-10-29 20:48:23.000000'),
('40a89252-6bfe-4f45-8c08-ad97d002badb', '2022-11-03 09:20:54.000000', '/assets/uploads/kep-toc-inh-pha-le-phong-cach-co-ien-nhat-ban-va-han-quoc-trang-suc-ngot-ngao-cho-phu-nu/03826221-f9f2-4c45-9f70-ed4acb70f569.jpg', b'1', '2022-11-03 09:20:54.000000'),
('40e5786c-b7d7-467c-8eca-cf2bf02b94b1', '2022-11-03 16:32:39.000000', '/assets/uploads/vong-tay-bac-nu-the-sky-vt1022-hai-day-soi-manh-kem-mat-hinh-trai-tim/37fec7b9-605e-4fec-909f-ed14d1457342.jpg', b'1', '2022-11-03 16:32:39.000000'),
('41d2caae-5474-421b-8e80-eda87cbc4cb1', '2022-11-03 16:25:28.000000', '/assets/uploads/choker-nu-day-chuyen-nu-chocker-inh-a-du-tiec-sang-chanh-trang-suc-her-accessories/a4bcf41e-5bf2-40be-8a87-8f7a14cae4e3.jpg', b'1', '2022-11-03 16:25:28.000000'),
('41ed40aa-ad90-441d-8a79-497151e9aa7b', '2022-11-03 08:39:15.000000', '/assets/uploads/hs006-giay-hoc-sinh-oxford-phong-cach-nhat-ban-cosplay-jk-seifuku/1a6a18ec-893e-4d09-8450-5eb12baf5667.jpg', b'1', '2022-11-03 08:39:15.000000'),
('42c74092-15f3-4829-b2b0-29e3062513c1', '2022-11-04 07:42:51.000000', '/assets/uploads/chest-mount-harness-strap-holder-with-phone-clip-for-mobile-phones/bae9df0e-a1a0-419c-89b9-5a7c02b97257.jpg', b'1', '2022-11-04 07:42:51.000000'),
('441dc204-b634-4b08-8b29-34cb73a8c451', '2022-11-04 08:31:11.000000', '/assets/uploads/nhan-bac-nu-tlee-snow-princess-nam-a-lap-lanh-tleejewelry/d0258747-e0a2-47d8-990a-f53a9c5e9246.jpg', b'1', '2022-11-04 08:31:11.000000'),
('445ea22f-013a-4409-b7d4-b1142c5ad143', '2022-11-04 07:06:18.000000', '/assets/uploads/kep-toc-tua-rua-hinh-buom-inh-hat-cao-cap-thoi-trang-cho-nu-dtonline-b4day/8642ad56-4e95-4a80-b6e0-f315fae00eb1.jpg', b'1', '2022-11-04 07:06:18.000000'),
('450d4882-4a7c-4d01-ab6c-6b4e00ee4ee6', '2022-11-04 07:42:51.000000', '/assets/uploads/chest-mount-harness-strap-holder-with-phone-clip-for-mobile-phones/46b242d6-d044-40c0-8453-88b787f3e2a1.jpg', b'1', '2022-11-04 07:42:51.000000'),
('45ad7aa7-e1fe-44c0-8faa-b092455d780d', '2022-11-04 08:37:37.000000', '/assets/uploads/nhan-thep-titan-mau-vang-hongbac-inh-a-thoi-trang-danh-cho-nu/d145bede-7447-4481-b2a6-0b2ae5670a85.jpg', b'1', '2022-11-04 08:37:37.000000'),
('45c1760e-a5e4-435d-a217-dfcd30ffd7fc', '2022-11-04 07:45:13.000000', '/assets/uploads/zzzone-durable-car-baby-safety-seat-strap-belt-harness-chest-child-clip-safe-buckle/f9bade67-96a4-4a12-9af5-da104ccbba3d.jpg', b'1', '2022-11-04 07:45:13.000000'),
('4645f3ce-3883-41b4-86f1-cf00d4c9dfd5', '2022-11-03 08:26:32.000000', '/assets/uploads/giay-the-duc-hoc-sinh-nu-sieu-nhe-kieu-dang-hop-thoi-trang/70c3afc2-0956-47ad-b29d-1f190583a025.jpg', b'1', '2022-11-03 08:26:32.000000'),
('4661bb3f-c279-4dda-aadf-f3f9ba48bc3a', '2022-11-04 07:56:36.000000', '/assets/uploads/oi-khuyen-tai-chot-bac-925-kieu-dang-hinh-hoc-inh-a-sang-trong-cho-nu/e49af797-fca3-4c5f-b5b5-67aadf384755.jpg', b'1', '2022-11-04 07:56:36.000000'),
('473dded6-9e4d-4ad9-a222-c3ca9a0d8ca5', '2022-11-04 08:31:11.000000', '/assets/uploads/nhan-bac-nu-tlee-snow-princess-nam-a-lap-lanh-tleejewelry/0df9dac1-bec4-474d-a365-e34d576a52c0.jpg', b'1', '2022-11-04 08:31:11.000000'),
('47836454-76a5-403c-bb71-76ecdae42b30', '2022-10-30 00:15:27.000000', '/assets/uploads/am-cong-chua-lua-y-cao-cap-phoi-voan/713e37cf-88d8-4de2-b644-d35fd9534c0a.jpg', b'1', '2022-10-30 00:15:27.000000'),
('48ebe017-8235-47cd-b205-7c492fdaf2eb', '2022-10-29 18:28:31.000000', '/assets/uploads/korean-fashion-mens-long-sleeve-solid-color-shirt/aa45b6d4-1190-4bc5-bf26-29b31076800d.jpg', b'1', '2022-10-29 18:28:31.000000'),
('492c8202-ddd2-4cee-84d8-459f6bfded32', '2022-11-04 09:00:31.000000', '/assets/uploads/nuoc-hoa-nam-dubai-100ml-mp/9f7e2a7f-5a0b-4c6e-a20f-15da9775cf08.jpg', b'1', '2022-11-04 09:00:31.000000'),
('4a81addf-a82c-40f2-bf0c-f4ea8d2dfc87', '2022-11-04 08:40:39.000000', '/assets/uploads/nhan-ho-hinh-ngoi-sao-mat-trang-12-thang-thoi-trang-han-quoc-thich-hop-lam-qua-tang-sinh-nhat-tot-nhat-cho-nam-va-nu/fd594731-f16e-48b3-b330-0349e1e49eb1.jpg', b'1', '2022-11-04 08:40:39.000000'),
('4abff1af-42a4-4ce9-8b12-e36d9e3d321b', '2022-10-29 22:22:58.000000', '/assets/uploads/ao-khoac-in-hinh-batman-sau-lung-sieu-ngau-cho-be---destiny-kid---chat-ni-da-ca-day-dan--ung-form--de-phoi-o/c75505b7-5e02-45d9-a4ce-226902e81023.jpg', b'1', '2022-10-29 22:22:58.000000'),
('4ba134e8-746b-4f82-ba38-6da6d38320bd', '2022-11-04 07:06:18.000000', '/assets/uploads/kep-toc-tua-rua-hinh-buom-inh-hat-cao-cap-thoi-trang-cho-nu-dtonline-b4day/55d818cc-9ea5-4e1b-9519-b18bee7c784a.jpg', b'1', '2022-11-04 07:06:18.000000'),
('4d605d55-11cd-431a-917f-6e0a2e3c3f10', '2022-10-29 22:22:58.000000', '/assets/uploads/ao-khoac-in-hinh-batman-sau-lung-sieu-ngau-cho-be---destiny-kid---chat-ni-da-ca-day-dan--ung-form--de-phoi-o/5ec5cbaf-92f9-4ffb-a2e5-7819ea1caa66.jpg', b'1', '2022-10-29 22:22:58.000000'),
('4db7175e-b620-4fef-9860-a001fd9e83a4', '2022-11-03 16:32:39.000000', '/assets/uploads/vong-tay-bac-nu-the-sky-vt1022-hai-day-soi-manh-kem-mat-hinh-trai-tim/354488aa-1cef-405b-9764-558602a7b573.jpg', b'1', '2022-11-03 16:32:39.000000'),
('4dbfc433-27fd-4cfc-91b7-d970f2675fd0', '2022-11-03 15:58:01.000000', '/assets/uploads/vong-co-inh-ngoc-trai-thoi-trang-danh-cho-nu/32a33316-2b44-4a76-9297-7c9d57563bcb.jpg', b'1', '2022-11-03 15:58:01.000000'),
('4df95a9e-571d-498c-87f7-67918fc71078', '2022-11-04 08:40:39.000000', '/assets/uploads/nhan-ho-hinh-ngoi-sao-mat-trang-12-thang-thoi-trang-han-quoc-thich-hop-lam-qua-tang-sinh-nhat-tot-nhat-cho-nam-va-nu/16ff6ccc-83ff-472a-a8b1-6b70ae2ab5d2.jpg', b'1', '2022-11-04 08:40:39.000000'),
('4e39b8ca-b7f2-47d3-a1da-11c1492fa263', '2022-11-04 08:37:37.000000', '/assets/uploads/nhan-thep-titan-mau-vang-hongbac-inh-a-thoi-trang-danh-cho-nu/f226835d-8701-4cb7-b727-542402cda7e0.jpg', b'1', '2022-11-04 08:37:37.000000'),
('4e4719d6-d15f-40f1-a3d1-bc16ca02ceb1', '2022-11-03 09:20:53.000000', '/assets/uploads/kep-toc-inh-pha-le-phong-cach-co-ien-nhat-ban-va-han-quoc-trang-suc-ngot-ngao-cho-phu-nu/e3e82661-9d9c-4d03-b215-a25ae12f0548.jpg', b'1', '2022-11-03 09:20:53.000000'),
('4ebe1b59-aa19-48f8-8001-717d7312f3e6', '2022-11-04 07:15:26.000000', '/assets/uploads/kep-toc-hinh-buom-inh-ngoc-trai-sang-trong-cho-nu/e81d5602-22eb-458c-994d-f636e0e625b8.jpg', b'1', '2022-11-04 07:15:26.000000'),
('515ee1ab-fc6a-4b1a-980f-2473d8c0499e', '2022-11-04 07:49:23.000000', '/assets/uploads/pet-chest-back-rope-dog-leashing-strap-cartoon-small-and-medium-sized-dog-leashing-rope-strap/f2cfe0fe-8871-4a20-b69d-011b23433d76.jpg', b'1', '2022-11-04 07:49:23.000000'),
('51d6da05-3652-4a2d-8cc1-94d2665fd7c7', '2022-11-03 08:35:46.000000', '/assets/uploads/giay-oxford-nu-giay-bup-be-marry-jane-e-cao-got-vuong-mui-tron-may-chi-noi-5cm-hoc-sinh-lolita-chat-lieu-da-c1006/2a5faa8a-512e-4474-918e-6c54be59d599.jpg', b'1', '2022-11-03 08:35:46.000000'),
('528abcde-6fa5-46ba-8be9-e4f2ca6788bb', '2022-10-30 00:09:29.000000', '/assets/uploads/bo-quan-ao-thun-tay-dai-be-gai-1-9-tuoi-zakids/6287b0ea-1eb1-4ffd-a850-9caf576d8bd2.jpg', b'1', '2022-10-30 00:09:29.000000'),
('5362b9de-491c-4727-b062-4954b419b6aa', '2022-11-04 07:56:36.000000', '/assets/uploads/oi-khuyen-tai-chot-bac-925-kieu-dang-hinh-hoc-inh-a-sang-trong-cho-nu/7cc3dff4-9dd3-49f8-b20f-7489e1f30d9e.jpg', b'1', '2022-11-04 07:56:36.000000'),
('56abb21f-2211-48ea-b7df-41b85e2e5213', '2022-10-29 21:40:05.000000', '/assets/uploads/hannie-womens-casual-fashion-solid-color-tassel-chain-boat-neck-skinny-dress/bcdc2fc4-7887-4594-9eaa-bf9c62da8646.jpg', b'1', '2022-10-29 21:40:05.000000'),
('56dfb008-92b4-4fca-9713-9c274325ab6a', '2022-11-03 16:39:41.000000', '/assets/uploads/lac-tay-chuong-keu-leng-keng-chat-lieu-bac-y-mau-moi-hang-thiet-ke-the-sky-vt1030/a40e2418-aafc-4491-a271-e5fd1c8e6027.jpg', b'1', '2022-11-03 16:39:41.000000'),
('57048897-7a57-4f12-b80e-0d2116c91e07', '2022-11-04 08:40:39.000000', '/assets/uploads/nhan-ho-hinh-ngoi-sao-mat-trang-12-thang-thoi-trang-han-quoc-thich-hop-lam-qua-tang-sinh-nhat-tot-nhat-cho-nam-va-nu/8abf1c1e-485e-4058-adf5-7303fef245e8.jpg', b'1', '2022-11-04 08:40:39.000000'),
('5732e557-42b4-40a6-87e1-e65799d4ab8a', '2022-11-03 00:39:28.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-chinh-hang-versace-dau-thom-nam-body-sang-trong-quy-phai-huong-thom-cuon-hut-n56/8db3c742-0dd9-44c1-9e49-c4c1b7e8ade0.jpg', b'1', '2022-11-03 00:39:28.000000'),
('58dd7600-2b97-4b6d-b1ee-4bd090bfc757', '2022-11-04 09:44:08.000000', '/assets/uploads/sua-tam-safeguard-tui-620ml-hoa-hong-lo-hoichanhtrang-tinh-khiet/73f55179-41c2-46c0-bf99-8ba51f920e5e.jpg', b'1', '2022-11-04 09:44:08.000000'),
('5b4454d8-3624-4947-ac2a-3b3deffd7fd4', '2022-11-04 07:36:51.000000', '/assets/uploads/thinh-hanhsexy-women-body-leather-harness-chest-bra-straps-belt-punk-gothic-corsets/93e15da9-fe49-4c47-9e01-e648552a050b.jpg', b'1', '2022-11-04 07:36:51.000000'),
('5c00e3e0-178f-4a4b-aa0b-879207686111', '2022-10-29 20:34:57.000000', '/assets/uploads/sexy-womens-summer-fashion-colorful-knit-stretch-top/f84cb34d-f6d4-4780-856b-98af61bbdb98.jpg', b'1', '2022-10-29 20:34:57.000000'),
('5d0373a3-02e6-4fc3-bddc-6af373da11aa', '2022-11-04 06:52:38.000000', '/assets/uploads/vong-tay-day-ben-mat-hinh-chu-cho-cinnamon-mem-mai-mau-hong-xanh-duong-phong-cach-nhat-ban-xinh-xan/66a5de9f-1e1a-410d-ae35-7766727593b1.jpg', b'1', '2022-11-04 06:52:38.000000'),
('5d08ab12-5a52-4da0-bb0f-bb90d9050d26', '2022-11-02 13:31:10.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-100ml---dau-thom-nong-o-edp-thom-lau-chinh-hang-kem-tui/39ba5b78-358e-411e-9235-6e920b1dd3a3.jpg', b'1', '2022-11-02 13:31:10.000000'),
('5d4bdc0b-04d0-4cdb-b31a-10e30c4abbbf', '2022-10-29 23:19:32.000000', '/assets/uploads/vay-cho-be-gai-2-mau-dang-xoe-dai-tay-hoa-tiet-xinh-xan-thoi-trang-bello-land---kids-fashion/8db1e1d4-d7b8-42a2-9d1c-4ed21619a756.jpg', b'1', '2022-10-29 23:19:32.000000'),
('5d5f1ac8-5b3d-4ff8-873f-4e5da39c5623', '2022-11-04 09:02:35.000000', '/assets/uploads/nuoc-hoa-nam-john-varvatos-artisan-125ml/6a4e631c-a1ec-42e3-8171-bc57abda4139.jpg', b'1', '2022-11-04 09:02:35.000000'),
('5e3aa65b-0487-4046-91ac-15c28a5582e8', '2022-10-30 00:15:27.000000', '/assets/uploads/am-cong-chua-lua-y-cao-cap-phoi-voan/08168244-29d0-406d-8f21-420807701654.jpg', b'1', '2022-10-30 00:15:27.000000'),
('5ecde593-6b6c-4af9-bfe6-bed1562dfb29', '2022-10-29 22:29:06.000000', '/assets/uploads/kids-fashion-contrast-collar-baseball-jacket-coat-for-autumn/f2990a54-33de-44e1-9b19-6ce5bbc81de9.jpg', b'1', '2022-10-29 22:29:06.000000'),
('61ffc180-1f11-4a2c-9159-d8dab284eb35', '2022-10-29 23:19:32.000000', '/assets/uploads/vay-cho-be-gai-2-mau-dang-xoe-dai-tay-hoa-tiet-xinh-xan-thoi-trang-bello-land---kids-fashion/469b7a24-00e1-4d90-bb12-fa77b4ebd632.jpg', b'1', '2022-10-29 23:19:32.000000'),
('621f84f3-6a2c-45b0-9bad-ff9d554f02ca', '2022-10-29 20:34:57.000000', '/assets/uploads/sexy-womens-summer-fashion-colorful-knit-stretch-top/7b62eaea-4cae-464d-ac93-83c45606aca3.jpg', b'1', '2022-10-29 20:34:57.000000'),
('63f7bf56-ac82-4150-8fac-d6ffe297bd25', '2022-11-04 08:06:54.000000', '/assets/uploads/khuyen-tai-bac-tlee-chu-cai-nam-a-xinh-xan-tleejewelry-b0307/942a4819-4eca-4882-9510-d576765f5ab0.jpg', b'1', '2022-11-04 08:06:54.000000'),
('64df9507-13ea-4b89-be65-4cec0b946459', '2022-11-03 00:39:28.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-chinh-hang-versace-dau-thom-nam-body-sang-trong-quy-phai-huong-thom-cuon-hut-n56/2ffb706c-8f96-4c01-af6f-8e47852b5558.jpg', b'1', '2022-11-03 00:39:28.000000'),
('64eec78b-983d-4aad-b14a-a78c8143f950', '2022-11-04 08:45:51.000000', '/assets/uploads/nhan-mo-khac-chu-n-z-inh-a-pha-le-thoi-trang-cho-nu/9a391bf2-93c7-4fe6-9558-6d12ede2e530.jpg', b'1', '2022-11-04 08:45:51.000000'),
('654519d6-2b01-4904-8595-f838c51ec86a', '2022-11-04 09:04:36.000000', '/assets/uploads/-nuoc-hoa-nam-armaf-ventana-pour-homme-10ml-mau-thu/3eb8ad1b-ed0c-4e6a-9adf-85738d103711.jpg', b'1', '2022-11-04 09:04:36.000000'),
('6553835d-2eae-4e5c-8ffe-48adf3aa4026', '2022-11-04 09:44:08.000000', '/assets/uploads/sua-tam-safeguard-tui-620ml-hoa-hong-lo-hoichanhtrang-tinh-khiet/e19f1470-c563-459c-8446-47796c6ccd7e.jpg', b'1', '2022-11-04 09:44:08.000000'),
('6575c4d4-fd7c-4965-86e5-0f7b78515576', '2022-11-03 08:26:32.000000', '/assets/uploads/giay-the-duc-hoc-sinh-nu-sieu-nhe-kieu-dang-hop-thoi-trang/3bcb4190-041c-442c-ba83-c01ef116baac.jpg', b'1', '2022-11-03 08:26:32.000000'),
('66224e1d-8631-467e-bbed-f93c57f8ca87', '2022-10-29 19:46:18.000000', '/assets/uploads/men-fashion-crop-top-patchwork-sheer-sexy-short-sleeve-t-shirt-streetwear-vest/2b2796b4-7acb-44ae-9e96-19bae2c40956.jpg', b'1', '2022-10-29 19:46:18.000000'),
('6624879c-3b64-4fd2-bf02-f52ec33b265a', '2022-11-03 16:14:10.000000', '/assets/uploads/day-chuyen-bac-nu-925-canh-ao-nu-tinh-diu-dang-lavesta-sil29/042a75b2-7c70-49f4-bec6-f60b4494ebae.jpg', b'1', '2022-11-03 16:14:10.000000'),
('66f92bb3-b5c9-424e-9b34-aae94011cf78', '2022-10-29 20:34:57.000000', '/assets/uploads/sexy-womens-summer-fashion-colorful-knit-stretch-top/d2c6a18b-7545-424a-b6a4-fa6524ee9569.jpg', b'1', '2022-10-29 20:34:57.000000'),
('670c610b-aad6-45be-b72f-d6e177d13216', '2022-11-04 09:07:18.000000', '/assets/uploads/nuoc-hoa-nam-chinh-hang-thom-lau-mini-dark-brawn-chai-80ml-ang-cap-vuot-troi-luu-huong-en-10h/835a72c6-6517-4d9f-94ba-580469f383f9.jpg', b'1', '2022-11-04 09:07:18.000000'),
('670cfbf1-7af8-48d2-9410-71893e0654fd', '2022-10-29 21:40:05.000000', '/assets/uploads/hannie-womens-casual-fashion-solid-color-tassel-chain-boat-neck-skinny-dress/ea83defc-14f1-4322-8501-a13841c531b2.jpg', b'1', '2022-10-29 21:40:05.000000'),
('6727e92c-6acb-4c95-a0ce-6ce061660471', '2022-11-04 06:52:38.000000', '/assets/uploads/vong-tay-day-ben-mat-hinh-chu-cho-cinnamon-mem-mai-mau-hong-xanh-duong-phong-cach-nhat-ban-xinh-xan/feec6bf9-088f-4adc-b207-8b447cdac27f.jpg', b'1', '2022-11-04 06:52:38.000000'),
('676ae95e-181a-405b-9949-7daac59a5b53', '2022-10-30 00:15:27.000000', '/assets/uploads/am-cong-chua-lua-y-cao-cap-phoi-voan/7529fcda-04f0-4bff-b877-3e8e86808ec1.jpg', b'1', '2022-10-30 00:15:27.000000'),
('67fa9900-0b8f-4521-97e7-ce6f7ae62ce6', '2022-11-04 07:19:55.000000', '/assets/uploads/kep-noi-toc-chu-q-bang-kim-loai-chat-luong-cao/dec253a5-2478-4efb-8bb1-a29a52ca57d8.jpg', b'1', '2022-11-04 07:19:55.000000'),
('683f555f-2234-4dde-b9b7-45e7eb78ea79', '2022-11-03 00:30:53.000000', '/assets/uploads/nuoc-hoa-nam-bleu-de-chanel-100ml-lich-lam-quyen-ru-luu-huong-lau---dau-thom-nam-tinh-sang-trong-lich-su---daikon-store/96a40bd3-4d42-478c-a68a-5a5304dfef2a.jpg', b'1', '2022-11-03 00:30:53.000000'),
('6847acde-e217-45c5-bd4e-151e2800db46', '2022-10-29 19:46:18.000000', '/assets/uploads/men-fashion-crop-top-patchwork-sheer-sexy-short-sleeve-t-shirt-streetwear-vest/aae8b831-c512-49ac-935d-5ef0b79e7da2.jpg', b'1', '2022-10-29 19:46:18.000000'),
('684a5384-ba7e-4f5f-9281-0d42bc74d2e2', '2022-11-04 07:36:51.000000', '/assets/uploads/thinh-hanhsexy-women-body-leather-harness-chest-bra-straps-belt-punk-gothic-corsets/93b581d6-a0c3-46dc-8d80-27124c4b771b.jpg', b'1', '2022-11-04 07:36:51.000000'),
('68f03c97-da79-4ce1-8d87-d36f85a38b60', '2022-11-04 09:22:43.000000', '/assets/uploads/nuoc-hoa-nu-yves-saint-laurent--black-opium/f71fe8db-7b2c-4b5e-a84c-4ff429244206.jpg', b'1', '2022-11-04 09:22:43.000000'),
('69897c1f-d325-4b35-9d23-63438905846d', '2022-11-02 13:31:10.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-100ml---dau-thom-nong-o-edp-thom-lau-chinh-hang-kem-tui/6d3dd3db-594b-489e-8bc7-d0be33816583.jpg', b'1', '2022-11-02 13:31:10.000000'),
('6aa35e0a-bf8e-4cd0-b7fa-998ec1c5cb33', '2022-11-04 07:19:55.000000', '/assets/uploads/kep-noi-toc-chu-q-bang-kim-loai-chat-luong-cao/bbbbea76-d90d-4cb2-9c02-38f5a0c96178.jpg', b'1', '2022-11-04 07:19:55.000000'),
('6ab078b6-60d4-4f30-a96e-95f19eccdf89', '2022-11-04 07:32:12.000000', '/assets/uploads/dog-hand-holding-rope-reflective-chest-strap-dog-chain-medium-and-small-dogs-and-cats-out-breathable-teddy-bichon-corgi-new-hdyu/cae91ded-f8ee-497a-89a6-068680e9b1fc.jpg', b'1', '2022-11-04 07:32:12.000000'),
('6bcf23db-d0a1-4d63-96c1-28f1268cb2a7', '2022-10-29 18:03:09.000000', '/assets/uploads/ao-khoac-hoodie-ni-sieu-re-phu-hop-nam-nu-/b76f79be-cf92-4e09-acbc-b3e2cc3c9fa8.jpg', b'1', '2022-10-29 18:03:09.000000'),
('6c5369a7-0cab-4777-bc14-2319e77a1dc6', '2022-10-29 19:46:18.000000', '/assets/uploads/men-fashion-crop-top-patchwork-sheer-sexy-short-sleeve-t-shirt-streetwear-vest/60a8fc9e-7623-45a7-aae7-ed6f80045bdc.jpg', b'1', '2022-10-29 19:46:18.000000'),
('6c670ec2-fbe6-4a79-b80d-1c9553a7f246', '2022-11-04 07:19:55.000000', '/assets/uploads/kep-noi-toc-chu-q-bang-kim-loai-chat-luong-cao/4aaa5b9f-431c-4797-b665-4489f79fa76d.jpg', b'1', '2022-11-04 07:19:55.000000'),
('6c779049-dce4-4e3f-acdf-36c209a91aa8', '2022-10-29 18:03:09.000000', '/assets/uploads/ao-khoac-hoodie-ni-sieu-re-phu-hop-nam-nu-/0e60dec7-36ca-437b-b5c7-5a16e29e5b6c.jpg', b'1', '2022-10-29 18:03:09.000000'),
('6cd9fd5f-f008-4d13-be2f-f889c68f7dfa', '2022-11-04 07:15:26.000000', '/assets/uploads/kep-toc-hinh-buom-inh-ngoc-trai-sang-trong-cho-nu/f0e7c474-b283-4234-8693-36ab60a53b8b.jpg', b'1', '2022-11-04 07:15:26.000000'),
('6f0b7403-9dcc-4b76-ae25-eb7bab47bc99', '2022-11-03 08:16:21.000000', '/assets/uploads/giay_converse-en-cao-co-nam-nu-thoi-trang-giay-the-thao-en-cao-co-mui-bong-lot-xanh/e6bf341f-f6a1-49c0-8b99-f554a2b13490.jpg', b'1', '2022-11-03 08:16:21.000000'),
('6f3b3443-511d-4d73-944e-0f27e2bf15a2', '2022-10-29 19:31:23.000000', '/assets/uploads/men-sweater-sl-thick-warm-casual-fashion-knitwear-long-sleeve-polyester-cotton/70277cdc-852d-4a39-b91d-25b226366c01.jpg', b'1', '2022-10-29 19:31:23.000000'),
('703bfb0c-be9f-46b8-82ae-cac362bbd4d7', '2022-11-03 08:21:00.000000', '/assets/uploads/sandal-nu-air-phan-quang-hoc-sinh-2-mau-sieu-hot/3b5a884b-6f66-4f82-8ca6-a304ca807fa7.jpg', b'1', '2022-11-03 08:21:00.000000'),
('70be3b86-5110-4350-8321-f059f66330ba', '2022-11-04 08:40:39.000000', '/assets/uploads/nhan-ho-hinh-ngoi-sao-mat-trang-12-thang-thoi-trang-han-quoc-thich-hop-lam-qua-tang-sinh-nhat-tot-nhat-cho-nam-va-nu/8e6636ae-e04a-48af-82a3-3c474f8270f7.jpg', b'1', '2022-11-04 08:40:39.000000'),
('725cf77c-2a2f-465a-bf78-92247c307968', '2022-11-04 08:06:54.000000', '/assets/uploads/khuyen-tai-bac-tlee-chu-cai-nam-a-xinh-xan-tleejewelry-b0307/4304dbbe-e075-4a96-95e4-3b870789bd0e.jpg', b'1', '2022-11-04 08:06:54.000000'),
('72a4107a-77ef-474f-93dd-c6d9f166de0e', '2022-11-03 08:16:21.000000', '/assets/uploads/giay_converse-en-cao-co-nam-nu-thoi-trang-giay-the-thao-en-cao-co-mui-bong-lot-xanh/a4b26e35-fafc-4ed3-8489-039aca7e3f45.jpg', b'1', '2022-11-03 08:16:21.000000'),
('72d050bd-7c7d-4240-ac7f-c7f29170a8f4', '2022-10-29 19:53:30.000000', '/assets/uploads/mens-fashion-korean-style-short-pants-and-hoodie/7624f4c3-1558-4d7d-978e-6b1b3db4fd9a.jpg', b'1', '2022-10-29 19:53:30.000000'),
('72fb7bc2-fa8e-42f4-84c0-c7291e5a6f1f', '2022-10-29 19:46:18.000000', '/assets/uploads/men-fashion-crop-top-patchwork-sheer-sexy-short-sleeve-t-shirt-streetwear-vest/a0091bbe-c2b7-4513-a870-a312c8d56c50.jpg', b'1', '2022-10-29 19:46:18.000000'),
('7317b32f-9a2b-4cc5-9c74-0d3a37e5a047', '2022-11-04 07:06:18.000000', '/assets/uploads/kep-toc-tua-rua-hinh-buom-inh-hat-cao-cap-thoi-trang-cho-nu-dtonline-b4day/e43ba94b-a89f-4279-9607-77307bb6e5e7.jpg', b'1', '2022-11-04 07:06:18.000000'),
('73d93d0e-25de-4fd1-b52f-0a7432cc487b', '2022-10-29 18:13:03.000000', '/assets/uploads/am-cong-so-citi-mode-fashion-dang-xoe-thiet-ke-tay-ngan-co-ve/ad82cabc-9ff7-4adb-9f6d-617b2a9a226c.jpg', b'1', '2022-10-29 18:13:03.000000'),
('7516c5f0-b60f-4ccb-8097-2500b606c379', '2022-11-04 08:53:20.000000', '/assets/uploads/cuc-pham-nuoc-hoa-nam-chinh-hang-thom-lau-gentlemen-quyen-luc-nuoc-hoa-nam-chinh-hang-cong-nghe-moi/3fd311c9-4f89-436b-986a-76950d7d1b22.jpg', b'1', '2022-11-04 08:53:20.000000'),
('75244b89-f672-44ee-beaa-e508618f7cfd', '2022-11-04 08:15:42.000000', '/assets/uploads/bong-tai-dai-hinh-quat-inh-kim-cuong-trang-sang-trong/bf124a12-3afa-4475-afe1-59a1998f544b.jpg', b'1', '2022-11-04 08:15:42.000000'),
('7547a7fa-dde8-4c07-885c-9b1442bd2809', '2022-11-04 09:27:33.000000', '/assets/uploads/nuoc-hoa-nu-ccharme-sosexy-huong-hong-nhe-nhang-quyen-ru-50ml/dce65970-619a-4b99-ad44-f8f8cdc33fd8.jpg', b'1', '2022-11-04 09:27:33.000000'),
('7634a0eb-d59b-4b29-9f05-04d7b52dad82', '2022-10-29 20:34:57.000000', '/assets/uploads/sexy-womens-summer-fashion-colorful-knit-stretch-top/19c5bbb8-8289-413a-95d3-4e6c0f09e77b.jpg', b'1', '2022-10-29 20:34:57.000000'),
('76a27eaf-a12a-48bc-b639-5c66477bbf33', '2022-11-03 00:27:01.000000', '/assets/uploads/nuoc-hoa-nam-dau-thom-nam-tinh-gio-en-profumo-100ml-luu-huong-lau-manh-me-cuon-hut---shin-official/bef94a68-c2bd-4f0a-9e24-d75d91f60ae1.jpg', b'1', '2022-11-03 00:27:01.000000'),
('7857f3cd-4426-492f-a2dc-f22fb1a6e836', '2022-11-04 07:19:56.000000', '/assets/uploads/kep-noi-toc-chu-q-bang-kim-loai-chat-luong-cao/e7675497-e90b-4bc1-bcbb-50cddbeacd2d.jpg', b'1', '2022-11-04 07:19:56.000000'),
('794c3521-1d19-447a-a8d4-180bf9113a48', '2022-11-04 08:53:20.000000', '/assets/uploads/cuc-pham-nuoc-hoa-nam-chinh-hang-thom-lau-gentlemen-quyen-luc-nuoc-hoa-nam-chinh-hang-cong-nghe-moi/720573bd-162c-4d6e-91f3-5acc7f4f8628.jpg', b'1', '2022-11-04 08:53:20.000000'),
('7a27fe57-49ef-4576-a1da-dd2382c02c60', '2022-11-03 09:20:53.000000', '/assets/uploads/kep-toc-inh-pha-le-phong-cach-co-ien-nhat-ban-va-han-quoc-trang-suc-ngot-ngao-cho-phu-nu/5ac77597-85a1-489c-aa06-7f5ce17c9c6e.jpg', b'1', '2022-11-03 09:20:53.000000'),
('7a3ab5f0-f540-4792-a59b-439feb72af5a', '2022-11-03 09:20:53.000000', '/assets/uploads/kep-toc-inh-pha-le-phong-cach-co-ien-nhat-ban-va-han-quoc-trang-suc-ngot-ngao-cho-phu-nu/1f507619-a4c8-4f60-86f8-013e5f29e4e0.jpg', b'1', '2022-11-03 09:20:53.000000'),
('7b37af25-f870-4364-abc3-22f603bd0f1e', '2022-11-04 08:27:27.000000', '/assets/uploads/nhan-titan-nam-ca-tinh-nhan-nam-thoi-trang-nhieu-kieu-lua-chon-mau-bac/6fda8cae-f62d-406f-8dc1-432b51ce6364.jpg', b'1', '2022-11-04 08:27:27.000000'),
('7b4b1a11-e3b7-4014-8303-c6b6d5a15059', '2022-11-03 08:35:46.000000', '/assets/uploads/giay-oxford-nu-giay-bup-be-marry-jane-e-cao-got-vuong-mui-tron-may-chi-noi-5cm-hoc-sinh-lolita-chat-lieu-da-c1006/5919e5a2-04ab-41e9-9876-7a6d1fa9dd08.jpg', b'1', '2022-11-03 08:35:46.000000'),
('7bdcca89-52bb-4df7-a1d9-1d3a7efa1ff1', '2022-11-04 08:45:51.000000', '/assets/uploads/nhan-mo-khac-chu-n-z-inh-a-pha-le-thoi-trang-cho-nu/fa40bcd5-bd2f-476e-a528-4635e21b93c7.jpg', b'1', '2022-11-04 08:45:51.000000'),
('7c10851e-c454-44bb-9f4d-2518cdc746c3', '2022-11-04 09:04:36.000000', '/assets/uploads/-nuoc-hoa-nam-armaf-ventana-pour-homme-10ml-mau-thu/c35c06d9-5c91-4543-8219-002d7d0e73a7.jpg', b'1', '2022-11-04 09:04:36.000000'),
('7c9718bd-7c84-4267-84d4-c09a8589c215', '2022-11-03 08:08:28.000000', '/assets/uploads/nuoc-hoa-nam-suziko-aqua-bombshell-phong-o-manh-me-nuoc-hoa-mini-10ml-dang-xit-tien-loi/3b02940a-27a7-435d-8ae1-f813d8741643.jpg', b'1', '2022-11-03 08:08:28.000000'),
('7d03cda6-c3c8-43d5-af3a-43bccc9864fa', '2022-10-29 20:03:00.000000', '/assets/uploads/quan-kaki-dai-just-men-nam-tinh-va-thanh-lich/077bf115-0b9f-40aa-aee0-bcd928ac74b8.jpg', b'1', '2022-10-29 20:03:00.000000'),
('7d1f9ad8-4500-46d5-afc6-6fcb77c1b3b3', '2022-11-04 07:06:18.000000', '/assets/uploads/kep-toc-tua-rua-hinh-buom-inh-hat-cao-cap-thoi-trang-cho-nu-dtonline-b4day/03ea79d0-87ed-46ac-b5b3-74fa962f5874.jpg', b'1', '2022-11-04 07:06:18.000000'),
('7dde6608-b0eb-4d54-8d75-9f78d2ff1b73', '2022-11-03 16:32:39.000000', '/assets/uploads/vong-tay-bac-nu-the-sky-vt1022-hai-day-soi-manh-kem-mat-hinh-trai-tim/7f228f92-2076-4e2c-ac27-a75ecce4c7de.jpg', b'1', '2022-11-03 16:32:39.000000'),
('7e419a73-12b7-433c-8c25-caa34b443046', '2022-11-04 07:12:33.000000', '/assets/uploads/-kep-toc-inh-ngoc-trai-gia-thoi-trang/2c22659f-c633-4b78-b866-02587a1cebbb.jpg', b'1', '2022-11-04 07:12:33.000000'),
('7ec9e80e-ece7-42f4-86ae-b95f0c77e01e', '2022-10-30 00:09:29.000000', '/assets/uploads/bo-quan-ao-thun-tay-dai-be-gai-1-9-tuoi-zakids/ef169015-f2f9-4c3e-8b96-a1805fcc12ea.jpg', b'1', '2022-10-30 00:09:29.000000');
INSERT INTO `product_image` (`id`, `create_at`, `path`, `state`, `update_at`) VALUES
('7f813ba6-f406-4931-b670-f21c1cf8efc6', '2022-11-04 08:40:39.000000', '/assets/uploads/nhan-ho-hinh-ngoi-sao-mat-trang-12-thang-thoi-trang-han-quoc-thich-hop-lam-qua-tang-sinh-nhat-tot-nhat-cho-nam-va-nu/fb7e6be5-f7fc-4ad6-a168-55640a1d8832.jpg', b'1', '2022-11-04 08:40:39.000000'),
('7f8beda6-0fe6-44ce-a840-8f1212faf2b6', '2022-11-03 16:25:28.000000', '/assets/uploads/choker-nu-day-chuyen-nu-chocker-inh-a-du-tiec-sang-chanh-trang-suc-her-accessories/5ecee29e-1dd1-4282-aeb7-82d78a8af713.jpg', b'1', '2022-11-03 16:25:28.000000'),
('7fdab5e6-7bed-4947-8ebd-2ac8c8b59534', '2022-11-04 07:19:56.000000', '/assets/uploads/kep-noi-toc-chu-q-bang-kim-loai-chat-luong-cao/ee89a905-3979-4e08-8b1c-673eb2ed53dc.jpg', b'1', '2022-11-04 07:19:56.000000'),
('80a4bdfd-fe87-4a72-85fa-e9481a64b23b', '2022-11-04 07:42:51.000000', '/assets/uploads/chest-mount-harness-strap-holder-with-phone-clip-for-mobile-phones/0c31cc7e-b251-4cf2-a753-921c681c01db.jpg', b'1', '2022-11-04 07:42:51.000000'),
('81abfb83-8d14-4067-9d39-4e919b9e3676', '2022-10-29 20:30:09.000000', '/assets/uploads/jkwomens-fashion-solid-color-boat-neck-skinny-dress/e9455c4f-d67e-4807-8f6c-47436c163bfa.jpg', b'1', '2022-10-29 20:30:09.000000'),
('824f4b5a-4a6d-4f0a-b12b-198d8a832d4b', '2022-11-03 16:14:10.000000', '/assets/uploads/day-chuyen-bac-nu-925-canh-ao-nu-tinh-diu-dang-lavesta-sil29/bebe835c-62ee-40b7-ae12-d6be272b495b.jpg', b'1', '2022-11-03 16:14:10.000000'),
('82855ace-f592-4db0-8b12-e845e46b319e', '2022-11-04 09:34:07.000000', '/assets/uploads/nuoc-hoa-nu-prola-la-angel-nu-tinh-tinh-khoi-thanh-lich-thich-hop-i-lam-i-hoc-i-hen-ho-pl04---dang-xit-15ml/d38e9714-078b-450a-b869-cee296dd941b.jpg', b'1', '2022-11-04 09:34:07.000000'),
('82c59cd9-2f8b-4150-91bc-f74e410d1be9', '2022-10-29 18:13:03.000000', '/assets/uploads/am-cong-so-citi-mode-fashion-dang-xoe-thiet-ke-tay-ngan-co-ve/7d898e67-2413-44f1-9214-1e5e0b910f5e.jpg', b'1', '2022-10-29 18:13:03.000000'),
('82ca3157-e6b4-4ae5-a4b9-4dfc9fa71117', '2022-11-04 08:06:54.000000', '/assets/uploads/khuyen-tai-bac-tlee-chu-cai-nam-a-xinh-xan-tleejewelry-b0307/2d903acb-6b7a-48c3-b206-9a2b32f82bcf.jpg', b'1', '2022-11-04 08:06:54.000000'),
('82e11605-fb7a-4a02-b8b1-6a7c9f6d69a3', '2022-11-04 07:12:33.000000', '/assets/uploads/-kep-toc-inh-ngoc-trai-gia-thoi-trang/1c9468e9-0fd1-4155-b396-639886dab228.jpg', b'1', '2022-11-04 07:12:33.000000'),
('82e32f38-9f21-4846-ba10-4161b2f9ec34', '2022-11-04 06:56:25.000000', '/assets/uploads/vong-tay-chuoi-hat-ngoc-bich-hinh-chiec-la-nho-on-gian-sang-trong-cho-nu/8432ea4f-6ca2-42d0-a7b1-e39dde83c6fa.jpg', b'1', '2022-11-04 06:56:25.000000'),
('838ee0b6-3592-43d0-ab03-30eccad390bc', '2022-11-04 08:40:39.000000', '/assets/uploads/nhan-ho-hinh-ngoi-sao-mat-trang-12-thang-thoi-trang-han-quoc-thich-hop-lam-qua-tang-sinh-nhat-tot-nhat-cho-nam-va-nu/8d9e7246-4264-431a-b5e9-9e4b4f0a04b3.jpg', b'1', '2022-11-04 08:40:39.000000'),
('83c3a31a-082b-45dc-99d4-c9867cd47035', '2022-11-04 08:53:20.000000', '/assets/uploads/cuc-pham-nuoc-hoa-nam-chinh-hang-thom-lau-gentlemen-quyen-luc-nuoc-hoa-nam-chinh-hang-cong-nghe-moi/dd7c43b2-db9a-4cb2-af7f-1cca29dd96f2.jpg', b'1', '2022-11-04 08:53:20.000000'),
('83d3fe3a-ee94-4994-9983-c5f0d2a714e5', '2022-11-03 00:30:53.000000', '/assets/uploads/nuoc-hoa-nam-bleu-de-chanel-100ml-lich-lam-quyen-ru-luu-huong-lau---dau-thom-nam-tinh-sang-trong-lich-su---daikon-store/6b0f8204-3aff-4d7e-a40f-eaba55343f4f.jpg', b'1', '2022-11-03 00:30:53.000000'),
('841a1a1b-80f8-47cd-8fad-3720d7e2cd8a', '2022-11-04 07:36:51.000000', '/assets/uploads/thinh-hanhsexy-women-body-leather-harness-chest-bra-straps-belt-punk-gothic-corsets/16d138e7-c169-475c-8e9a-a71d0dd85aa0.jpg', b'1', '2022-11-04 07:36:51.000000'),
('841acfa6-b17f-4820-92db-ab1457afab99', '2022-10-30 00:15:27.000000', '/assets/uploads/am-cong-chua-lua-y-cao-cap-phoi-voan/d5af3efc-f669-490b-a4f0-acebc922df48.jpg', b'1', '2022-10-30 00:15:27.000000'),
('8482fd7a-bed1-4fe6-bc4e-3e8938fb350e', '2022-11-04 08:12:42.000000', '/assets/uploads/khuyen-tai-bac-nu-tlee-tron-chot-bam-tua-hat-a-nho-xinh-xan-tleejewelry/331eaab0-7438-49cd-b96e-da5f4811ed55.jpg', b'1', '2022-11-04 08:12:42.000000'),
('8584c245-4b82-4896-9763-bc78b04a1b7d', '2022-10-29 22:29:06.000000', '/assets/uploads/kids-fashion-contrast-collar-baseball-jacket-coat-for-autumn/b5bf3014-d8d8-4d6f-8a7a-8340de8b3c4a.jpg', b'1', '2022-10-29 22:29:06.000000'),
('859ccf36-0512-454b-b0fa-e68777c0dfe0', '2022-11-03 00:39:28.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-chinh-hang-versace-dau-thom-nam-body-sang-trong-quy-phai-huong-thom-cuon-hut-n56/1f306ae2-401a-4454-bf51-eaff03f0339f.jpg', b'1', '2022-11-03 00:39:28.000000'),
('8612c5f2-c585-4291-9571-891b56c56ebe', '2022-10-29 22:22:58.000000', '/assets/uploads/ao-khoac-in-hinh-batman-sau-lung-sieu-ngau-cho-be---destiny-kid---chat-ni-da-ca-day-dan--ung-form--de-phoi-o/687cc6ea-a9da-448a-96fe-1724513d5b73.jpg', b'1', '2022-10-29 22:22:58.000000'),
('8644b72b-e78f-48e8-95bf-a9181cc2afce', '2022-10-30 00:09:29.000000', '/assets/uploads/bo-quan-ao-thun-tay-dai-be-gai-1-9-tuoi-zakids/12b52515-c40f-43bf-bbe0-e7c09cf7768e.jpg', b'1', '2022-10-30 00:09:29.000000'),
('86c18973-2cd7-42c9-8743-70f0c0483b7a', '2022-11-03 16:17:13.000000', '/assets/uploads/vong-co-choker-bang-da-thoi-trang-ca-tinh-danh-cho-nu-/b5062e53-a697-4a05-af27-a3fc6e2538bc.jpg', b'1', '2022-11-03 16:17:13.000000'),
('86d5af10-bb60-4163-a1d7-ac77a43eda1f', '2022-10-29 18:03:09.000000', '/assets/uploads/ao-khoac-hoodie-ni-sieu-re-phu-hop-nam-nu-/c1f79612-f0f0-4d62-a32c-03201fe56767.jpg', b'1', '2022-10-29 18:03:09.000000'),
('87d47c70-ebc2-4bf2-be79-1c0266c1ba09', '2022-11-04 08:31:11.000000', '/assets/uploads/nhan-bac-nu-tlee-snow-princess-nam-a-lap-lanh-tleejewelry/f8254c56-5b39-4784-8b28-8a3309b6e02b.jpg', b'1', '2022-11-04 08:31:11.000000'),
('882f9873-d9b8-4953-be73-ed8734263983', '2022-10-29 22:22:58.000000', '/assets/uploads/ao-khoac-in-hinh-batman-sau-lung-sieu-ngau-cho-be---destiny-kid---chat-ni-da-ca-day-dan--ung-form--de-phoi-o/f2d132fe-d381-499e-9462-22b8837d780a.jpg', b'1', '2022-10-29 22:22:58.000000'),
('884ab4a0-94d8-431b-96ee-324d8c5a4ecc', '2022-11-04 07:15:25.000000', '/assets/uploads/kep-toc-hinh-buom-inh-ngoc-trai-sang-trong-cho-nu/a8df16ea-159a-4543-894d-dcc63c86573d.jpg', b'1', '2022-11-04 07:15:25.000000'),
('8866750f-b67e-45a4-ae71-30fd1cd9bf27', '2022-10-29 19:31:23.000000', '/assets/uploads/men-sweater-sl-thick-warm-casual-fashion-knitwear-long-sleeve-polyester-cotton/d37df8ba-e021-4666-bf2c-bb3fbf2e6c92.jpg', b'1', '2022-10-29 19:31:23.000000'),
('887a0c3f-d6a7-427d-b443-0e535c94d0e2', '2022-11-04 08:37:37.000000', '/assets/uploads/nhan-thep-titan-mau-vang-hongbac-inh-a-thoi-trang-danh-cho-nu/eedd5d95-3b31-4151-9712-cceed539e106.jpg', b'1', '2022-11-04 08:37:37.000000'),
('889724f7-8bd0-47a9-93b5-c874bf4b2ab0', '2022-11-03 00:39:28.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-chinh-hang-versace-dau-thom-nam-body-sang-trong-quy-phai-huong-thom-cuon-hut-n56/6039dda4-d24c-4862-80cd-d807bc367d37.jpg', b'1', '2022-11-03 00:39:28.000000'),
('88a628c5-c6a1-4e8f-8070-0779c2c61e9e', '2022-11-03 16:25:28.000000', '/assets/uploads/choker-nu-day-chuyen-nu-chocker-inh-a-du-tiec-sang-chanh-trang-suc-her-accessories/cb0d9418-e8dd-43bb-9cba-efbb71ec6d0f.jpg', b'1', '2022-11-03 16:25:28.000000'),
('88ae0902-f1c1-4b32-807e-e18a262a6dc3', '2022-11-03 00:27:01.000000', '/assets/uploads/nuoc-hoa-nam-dau-thom-nam-tinh-gio-en-profumo-100ml-luu-huong-lau-manh-me-cuon-hut---shin-official/7a58f6f1-c134-4d03-a0ab-02228639710d.jpg', b'1', '2022-11-03 00:27:01.000000'),
('8908d6a3-6a3c-4937-b2ce-8ca0aae56065', '2022-10-29 18:28:31.000000', '/assets/uploads/korean-fashion-mens-long-sleeve-solid-color-shirt/0ffa27b6-104e-457c-8626-cdd062dcc71c.jpg', b'1', '2022-10-29 18:28:31.000000'),
('89637b7a-3b62-47f8-bb1b-7de9fd1c83b1', '2022-11-03 16:32:39.000000', '/assets/uploads/vong-tay-bac-nu-the-sky-vt1022-hai-day-soi-manh-kem-mat-hinh-trai-tim/17b8c854-2122-4bde-9ff3-27ac272f1e92.jpg', b'1', '2022-11-03 16:32:39.000000'),
('899b8766-e44c-4672-888b-29a2df00a816', '2022-11-03 16:39:41.000000', '/assets/uploads/lac-tay-chuong-keu-leng-keng-chat-lieu-bac-y-mau-moi-hang-thiet-ke-the-sky-vt1030/3cfac602-3d6f-4581-88b6-ff747b1ddf74.jpg', b'1', '2022-11-03 16:39:41.000000'),
('8ab0251a-906a-4dc6-ab85-742013bf8021', '2022-11-03 15:58:01.000000', '/assets/uploads/vong-co-inh-ngoc-trai-thoi-trang-danh-cho-nu/49f3cbba-d2c0-4521-a227-fcc9ebb5e9a0.jpg', b'1', '2022-11-03 15:58:01.000000'),
('8ad410c9-842f-454a-a24f-97baea33ea80', '2022-11-04 08:01:15.000000', '/assets/uploads/-bong-tai-hinh-hoa-inh-ngoc-trai-cao-cap-phong-cach-phap-co-ien-danh-cho-nu/951319d8-ce33-4516-bc3d-8a9422373b5a.jpg', b'1', '2022-11-04 08:01:15.000000'),
('8ba13bec-c35b-4fd9-ae93-8e886b11029d', '2022-11-04 07:06:18.000000', '/assets/uploads/kep-toc-tua-rua-hinh-buom-inh-hat-cao-cap-thoi-trang-cho-nu-dtonline-b4day/228c1274-58ac-4b55-86a6-966cb2a12dc9.jpg', b'1', '2022-11-04 07:06:18.000000'),
('8cbbc786-4ca2-459d-a9e6-733923aa3476', '2022-11-04 06:52:38.000000', '/assets/uploads/vong-tay-day-ben-mat-hinh-chu-cho-cinnamon-mem-mai-mau-hong-xanh-duong-phong-cach-nhat-ban-xinh-xan/4d16fbe1-f098-4a11-91ef-9f0564cc6fda.jpg', b'1', '2022-11-04 06:52:38.000000'),
('8cc1a6d3-dea7-40e3-9dd3-cc0eb4258b2e', '2022-11-04 09:22:43.000000', '/assets/uploads/nuoc-hoa-nu-yves-saint-laurent--black-opium/68cad9de-26d5-4287-8c9b-98e828f3fda0.jpg', b'1', '2022-11-04 09:22:43.000000'),
('8ea4f85a-4114-4199-95a0-899137ce7c18', '2022-11-04 09:22:43.000000', '/assets/uploads/nuoc-hoa-nu-yves-saint-laurent--black-opium/38ef2df2-2423-4aa9-bfa9-54409ce79cd9.jpg', b'1', '2022-11-04 09:22:43.000000'),
('8ebdc02b-1164-4e06-8218-8372a88a0861', '2022-11-03 16:17:13.000000', '/assets/uploads/vong-co-choker-bang-da-thoi-trang-ca-tinh-danh-cho-nu-/76d27b0b-0988-4c45-b121-210a1451e5b6.jpg', b'1', '2022-11-03 16:17:13.000000'),
('8fe0a579-128d-41a1-8e4b-1a4786055704', '2022-11-04 07:12:33.000000', '/assets/uploads/-kep-toc-inh-ngoc-trai-gia-thoi-trang/f801a7ad-fa19-4ec7-beb1-657682fcf26f.jpg', b'1', '2022-11-04 07:12:33.000000'),
('90aa3258-b7fb-476c-99cc-f5cd327b3b42', '2022-11-02 13:31:10.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-100ml---dau-thom-nong-o-edp-thom-lau-chinh-hang-kem-tui/3202a66f-8ea1-409d-92b0-ea5e490e30a4.jpg', b'1', '2022-11-02 13:31:10.000000'),
('90c26cfc-2dce-42c4-af9d-5691f2204b1f', '2022-11-04 09:07:18.000000', '/assets/uploads/nuoc-hoa-nam-chinh-hang-thom-lau-mini-dark-brawn-chai-80ml-ang-cap-vuot-troi-luu-huong-en-10h/2c2b0cd3-f2d1-4cbe-a21e-bfd97ccb88a3.jpg', b'1', '2022-11-04 09:07:18.000000'),
('91f86040-d588-4e0a-9e44-1948644e5d50', '2022-11-04 09:22:43.000000', '/assets/uploads/nuoc-hoa-nu-yves-saint-laurent--black-opium/6cd1b3b5-dd9c-4ff9-9d73-294a0096f2f4.jpg', b'1', '2022-11-04 09:22:43.000000'),
('923eb26b-dbf8-411c-b531-3a1954790a72', '2022-11-02 13:31:10.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-100ml---dau-thom-nong-o-edp-thom-lau-chinh-hang-kem-tui/c357ff7f-16a7-462d-ae18-69ad93b23d9d.jpg', b'1', '2022-11-02 13:31:10.000000'),
('939e62e3-2c9b-4249-bbe9-2db4b986a087', '2022-11-04 08:15:42.000000', '/assets/uploads/bong-tai-dai-hinh-quat-inh-kim-cuong-trang-sang-trong/efd3c82c-8f34-4dda-b937-1212c3586eda.jpg', b'1', '2022-11-04 08:15:42.000000'),
('94b659c8-9261-4ebf-b153-312678f706bb', '2022-10-29 22:22:58.000000', '/assets/uploads/ao-khoac-in-hinh-batman-sau-lung-sieu-ngau-cho-be---destiny-kid---chat-ni-da-ca-day-dan--ung-form--de-phoi-o/59257849-ba8a-4a86-9124-28072e368a29.jpg', b'1', '2022-10-29 22:22:58.000000'),
('956dd6ec-3ab5-4c40-9277-255a6c12ed20', '2022-11-04 09:27:33.000000', '/assets/uploads/nuoc-hoa-nu-ccharme-sosexy-huong-hong-nhe-nhang-quyen-ru-50ml/3f271255-d577-479d-85b8-7286d906e2aa.jpg', b'1', '2022-11-04 09:27:33.000000'),
('95e0fac2-9700-444f-affb-9c6a077b532b', '2022-10-29 19:53:30.000000', '/assets/uploads/mens-fashion-korean-style-short-pants-and-hoodie/723d1f97-bc02-4401-a180-6241f9a35755.jpg', b'1', '2022-10-29 19:53:30.000000'),
('96c0215f-9823-48be-bd63-5df348ba7a89', '2022-10-29 20:03:00.000000', '/assets/uploads/quan-kaki-dai-just-men-nam-tinh-va-thanh-lich/5419f9a0-e4f9-4a1f-b4b2-4ebcc48691e0.jpg', b'1', '2022-10-29 20:03:00.000000'),
('973d01f9-f825-4421-b87d-b06abd83211a', '2022-11-04 08:45:51.000000', '/assets/uploads/nhan-mo-khac-chu-n-z-inh-a-pha-le-thoi-trang-cho-nu/efad9e25-51c7-46ea-a9ae-12cd67645095.jpg', b'1', '2022-11-04 08:45:51.000000'),
('9795ab7f-e952-4d53-a7bc-aae53bd1cdef', '2022-11-04 07:32:12.000000', '/assets/uploads/dog-hand-holding-rope-reflective-chest-strap-dog-chain-medium-and-small-dogs-and-cats-out-breathable-teddy-bichon-corgi-new-hdyu/cb0ec10d-bfde-4a39-9f66-44f469226601.jpg', b'1', '2022-11-04 07:32:12.000000'),
('97dab63a-7e91-4eda-883f-66404e9c1a03', '2022-11-03 15:58:01.000000', '/assets/uploads/vong-co-inh-ngoc-trai-thoi-trang-danh-cho-nu/31e3cb2c-c7e7-4cea-9518-4fbdaf33eb1e.jpg', b'1', '2022-11-03 15:58:01.000000'),
('97edc222-d611-42f2-b776-6520350c5187', '2022-11-04 09:02:35.000000', '/assets/uploads/nuoc-hoa-nam-john-varvatos-artisan-125ml/b8fa23be-51d5-4ece-8f0e-01364d666ae8.jpg', b'1', '2022-11-04 09:02:35.000000'),
('98309815-4399-4c68-8bd5-242975487a55', '2022-11-04 07:56:36.000000', '/assets/uploads/oi-khuyen-tai-chot-bac-925-kieu-dang-hinh-hoc-inh-a-sang-trong-cho-nu/5ee4473e-c979-4048-abe7-d3685a40f31c.jpg', b'1', '2022-11-04 07:56:36.000000'),
('98a5f78b-8072-41cb-a35e-7b5b99285151', '2022-10-29 19:31:23.000000', '/assets/uploads/men-sweater-sl-thick-warm-casual-fashion-knitwear-long-sleeve-polyester-cotton/419ca339-0f31-4e0e-ae98-842f0d8694d1.jpg', b'1', '2022-10-29 19:31:23.000000'),
('99528c53-2a0e-4110-a96e-a14e9108d9b4', '2022-10-29 18:28:31.000000', '/assets/uploads/korean-fashion-mens-long-sleeve-solid-color-shirt/fac19447-18a0-4fc2-9ab6-a52b747b0f0a.jpg', b'1', '2022-10-29 18:28:31.000000'),
('9b2e5b6a-6a17-4562-a2f8-35fabde2f4a3', '2022-11-03 08:21:00.000000', '/assets/uploads/sandal-nu-air-phan-quang-hoc-sinh-2-mau-sieu-hot/348a69d2-fb3f-44b3-bcb1-5dad1b5497cf.jpg', b'1', '2022-11-03 08:21:00.000000'),
('9b39d789-43cc-4f3c-a450-d2650c9799ab', '2022-11-04 09:27:33.000000', '/assets/uploads/nuoc-hoa-nu-ccharme-sosexy-huong-hong-nhe-nhang-quyen-ru-50ml/6d2834f5-ed23-44b5-8608-3718cb25a9cc.jpg', b'1', '2022-11-04 09:27:33.000000'),
('9b55bbc9-c3bb-47bf-88c9-b9257ba23a98', '2022-11-04 09:34:07.000000', '/assets/uploads/nuoc-hoa-nu-prola-la-angel-nu-tinh-tinh-khoi-thanh-lich-thich-hop-i-lam-i-hoc-i-hen-ho-pl04---dang-xit-15ml/d31eab3e-49e4-4351-9377-45d294e47ca0.jpg', b'1', '2022-11-04 09:34:07.000000'),
('9bcb062f-5ab7-4768-8825-6eedda2aa149', '2022-11-03 08:26:32.000000', '/assets/uploads/giay-the-duc-hoc-sinh-nu-sieu-nhe-kieu-dang-hop-thoi-trang/d648236f-1a81-45ab-b9cc-eb50b7c6aa7c.jpg', b'1', '2022-11-03 08:26:32.000000'),
('9c2a1ebd-7ab4-4adc-89d9-80e8ce3f062d', '2022-11-04 09:27:33.000000', '/assets/uploads/nuoc-hoa-nu-ccharme-sosexy-huong-hong-nhe-nhang-quyen-ru-50ml/2d2cf6e1-7049-41dd-bbb1-fdc459344461.jpg', b'1', '2022-11-04 09:27:33.000000'),
('9d170403-3950-4a86-b681-c3cb6dd0774f', '2022-11-03 08:16:21.000000', '/assets/uploads/giay_converse-en-cao-co-nam-nu-thoi-trang-giay-the-thao-en-cao-co-mui-bong-lot-xanh/01002a5f-76b8-4c29-a990-6d88563e919f.jpg', b'1', '2022-11-03 08:16:21.000000'),
('9dae2cca-2d14-4726-8391-d622541211a2', '2022-11-03 08:35:46.000000', '/assets/uploads/giay-oxford-nu-giay-bup-be-marry-jane-e-cao-got-vuong-mui-tron-may-chi-noi-5cm-hoc-sinh-lolita-chat-lieu-da-c1006/a91e40f4-533f-4db0-a156-2e36b0808e79.jpg', b'1', '2022-11-03 08:35:46.000000'),
('9dc7e4b2-54b2-495b-89f2-92cfdf6e77de', '2022-11-03 16:39:41.000000', '/assets/uploads/lac-tay-chuong-keu-leng-keng-chat-lieu-bac-y-mau-moi-hang-thiet-ke-the-sky-vt1030/d6ce8e72-c8bf-43c0-9c4c-34299bdc8ccf.jpg', b'1', '2022-11-03 16:39:41.000000'),
('9e063ae7-ad37-45aa-bb26-b76415682493', '2022-11-04 07:15:26.000000', '/assets/uploads/kep-toc-hinh-buom-inh-ngoc-trai-sang-trong-cho-nu/b6acd15a-ec73-4c3d-bc14-231e82c6a9dc.jpg', b'1', '2022-11-04 07:15:26.000000'),
('9ee37b60-9095-4236-9a61-8b646446f2a8', '2022-10-29 19:53:30.000000', '/assets/uploads/mens-fashion-korean-style-short-pants-and-hoodie/44ab3ed7-f243-4de3-a844-8925d555419f.jpg', b'1', '2022-10-29 19:53:30.000000'),
('9f0be047-0274-4cae-b560-9e1851317032', '2022-11-04 08:27:27.000000', '/assets/uploads/nhan-titan-nam-ca-tinh-nhan-nam-thoi-trang-nhieu-kieu-lua-chon-mau-bac/78aa17fc-2488-448f-91ee-0e0e53084bd1.jpg', b'1', '2022-11-04 08:27:27.000000'),
('a0034579-9ca9-40f9-8e1a-daca45567d03', '2022-10-29 19:46:18.000000', '/assets/uploads/men-fashion-crop-top-patchwork-sheer-sexy-short-sleeve-t-shirt-streetwear-vest/ae2e11f2-b4a4-407b-8b87-98d82e171e7e.jpg', b'1', '2022-10-29 19:46:18.000000'),
('a0725505-b60d-4ac3-b9b7-07b06c8dd989', '2022-10-29 22:22:58.000000', '/assets/uploads/ao-khoac-in-hinh-batman-sau-lung-sieu-ngau-cho-be---destiny-kid---chat-ni-da-ca-day-dan--ung-form--de-phoi-o/db77d9cf-a6d8-4a9e-adcd-5e332dbf1f04.jpg', b'1', '2022-10-29 22:22:58.000000'),
('a1c454b7-2b35-41e8-8cdb-a0ef92797821', '2022-11-04 07:49:23.000000', '/assets/uploads/pet-chest-back-rope-dog-leashing-strap-cartoon-small-and-medium-sized-dog-leashing-rope-strap/27195eb1-d7b9-481e-bfd6-59639b1f67fb.jpg', b'1', '2022-11-04 07:49:23.000000'),
('a24e7bc9-fb53-4814-b1ea-dc21ecec1fa1', '2022-10-29 18:03:09.000000', '/assets/uploads/ao-khoac-hoodie-ni-sieu-re-phu-hop-nam-nu-/f4299809-c13d-40e9-b4b0-b40beae06031.jpg', b'1', '2022-10-29 18:03:09.000000'),
('a2c06968-aa36-4a6f-b294-8b8798e4d5ea', '2022-10-30 00:15:27.000000', '/assets/uploads/am-cong-chua-lua-y-cao-cap-phoi-voan/d105da98-b723-4866-9ef4-704ea66209fc.jpg', b'1', '2022-10-30 00:15:27.000000'),
('a3553502-f150-47f4-85bc-f958b85c55ea', '2022-11-04 07:42:51.000000', '/assets/uploads/chest-mount-harness-strap-holder-with-phone-clip-for-mobile-phones/a0a18a34-9943-4140-9a0a-2d9c34d3faba.jpg', b'1', '2022-11-04 07:42:51.000000'),
('a4a15984-a4dc-48ac-8134-40a95c25024a', '2022-11-04 09:04:36.000000', '/assets/uploads/-nuoc-hoa-nam-armaf-ventana-pour-homme-10ml-mau-thu/056ab0c2-94bc-424f-93c7-903b879864ca.jpg', b'1', '2022-11-04 09:04:36.000000'),
('a4a6b24c-8b4a-4a5a-a52c-667fc25471b2', '2022-10-29 20:30:09.000000', '/assets/uploads/jkwomens-fashion-solid-color-boat-neck-skinny-dress/67c8d4b5-027f-4259-92fc-a509ea7082ae.jpg', b'1', '2022-10-29 20:30:09.000000'),
('a4ff683a-fb05-4120-b2ec-4e15ce9fe935', '2022-10-29 18:03:09.000000', '/assets/uploads/ao-khoac-hoodie-ni-sieu-re-phu-hop-nam-nu-/3821fe55-7110-4fe3-b507-2b3a858b51d6.jpg', b'1', '2022-10-29 18:03:09.000000'),
('a5a55137-219b-4b6b-a4a1-397113f40e1e', '2022-11-04 08:27:27.000000', '/assets/uploads/nhan-titan-nam-ca-tinh-nhan-nam-thoi-trang-nhieu-kieu-lua-chon-mau-bac/4716b796-fa9d-4da7-a7b4-f9f795931265.jpg', b'1', '2022-11-04 08:27:27.000000'),
('a5fe4a60-20d1-4837-ba09-f68e97762d79', '2022-11-04 09:02:35.000000', '/assets/uploads/nuoc-hoa-nam-john-varvatos-artisan-125ml/776177cf-1076-419d-904f-cc050888d4e2.jpg', b'1', '2022-11-04 09:02:35.000000'),
('a624af1b-0fbd-4556-a186-b7c33cfe6d81', '2022-11-04 08:45:51.000000', '/assets/uploads/nhan-mo-khac-chu-n-z-inh-a-pha-le-thoi-trang-cho-nu/784fdbf0-0d55-4e3a-97a9-400a9cfdaa60.jpg', b'1', '2022-11-04 08:45:51.000000'),
('a6b6e9d5-6bef-47a7-98c4-3b20b7cde452', '2022-11-04 08:06:54.000000', '/assets/uploads/khuyen-tai-bac-tlee-chu-cai-nam-a-xinh-xan-tleejewelry-b0307/15a25270-9a6f-47e8-b416-69e88018b26c.jpg', b'1', '2022-11-04 08:06:54.000000'),
('a70f3657-36ae-4e7c-bacf-26b4f4e178f6', '2022-11-03 00:39:28.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-chinh-hang-versace-dau-thom-nam-body-sang-trong-quy-phai-huong-thom-cuon-hut-n56/c987e2e3-13fd-4adc-bf43-fcfd3af33d2f.jpg', b'1', '2022-11-03 00:39:28.000000'),
('a9537d5a-d854-429b-89a9-14fa0737f645', '2022-11-04 09:07:18.000000', '/assets/uploads/nuoc-hoa-nam-chinh-hang-thom-lau-mini-dark-brawn-chai-80ml-ang-cap-vuot-troi-luu-huong-en-10h/32edc31c-885f-4d89-9068-8b4b2682aecc.jpg', b'1', '2022-11-04 09:07:18.000000'),
('a9b8e0b6-cdc9-48f3-9a6f-bded44736958', '2022-11-04 08:37:37.000000', '/assets/uploads/nhan-thep-titan-mau-vang-hongbac-inh-a-thoi-trang-danh-cho-nu/37280552-3c0d-46e9-bef7-9a69d7af282e.jpg', b'1', '2022-11-04 08:37:37.000000'),
('aab97017-3721-477a-8504-5c597a362d41', '2022-11-04 09:04:36.000000', '/assets/uploads/-nuoc-hoa-nam-armaf-ventana-pour-homme-10ml-mau-thu/18cefdfb-330e-4ca8-a24d-cb8812aaa03c.jpg', b'1', '2022-11-04 09:04:36.000000'),
('abba5fb6-a44c-412a-9d86-b36a195493e1', '2022-11-04 08:12:42.000000', '/assets/uploads/khuyen-tai-bac-nu-tlee-tron-chot-bam-tua-hat-a-nho-xinh-xan-tleejewelry/7b2c9757-699e-49ef-b30b-c85d74fa110c.jpg', b'1', '2022-11-04 08:12:42.000000'),
('ae3eb2e2-f6f0-404c-a3d1-d114bfcb1cf5', '2022-11-04 09:00:31.000000', '/assets/uploads/nuoc-hoa-nam-dubai-100ml-mp/f268ee01-533f-455e-bd95-2d9a8c32a614.jpg', b'1', '2022-11-04 09:00:31.000000'),
('ae7e594c-dcc0-4929-870b-466fdfb69f57', '2022-11-03 08:16:21.000000', '/assets/uploads/giay_converse-en-cao-co-nam-nu-thoi-trang-giay-the-thao-en-cao-co-mui-bong-lot-xanh/855b1044-c514-4984-8fc5-d1b4ab33667c.jpg', b'1', '2022-11-03 08:16:21.000000'),
('af0e868c-df06-44c5-8f95-974c559680eb', '2022-11-03 15:52:18.000000', '/assets/uploads/bo-trang-suc-day-chuyen-khuyen-tai-nhan-nu-bac-ta-nguyen-chat-s999-lavesta-mat-vuong-inh-pha-le-lap-lanh-sun595/8c94650d-d2fc-4e6d-b4d0-41ee2127618c.jpg', b'1', '2022-11-03 15:52:18.000000'),
('af3254a3-f20c-4d40-ae79-4a27a9b8c309', '2022-11-04 09:34:07.000000', '/assets/uploads/nuoc-hoa-nu-prola-la-angel-nu-tinh-tinh-khoi-thanh-lich-thich-hop-i-lam-i-hoc-i-hen-ho-pl04---dang-xit-15ml/371a085d-4afd-4ab3-a76c-c2769714ba27.jpg', b'1', '2022-11-04 09:34:07.000000'),
('afb82dd0-81b0-4587-8e16-631b11e6f8ac', '2022-11-04 09:02:35.000000', '/assets/uploads/nuoc-hoa-nam-john-varvatos-artisan-125ml/81c4bc3e-5254-4456-ab65-3a0c306050ed.jpg', b'1', '2022-11-04 09:02:35.000000'),
('afd1425d-8f88-470e-9b64-2e1b34a27350', '2022-11-04 08:37:37.000000', '/assets/uploads/nhan-thep-titan-mau-vang-hongbac-inh-a-thoi-trang-danh-cho-nu/7d79853a-1199-4001-925a-a01835a14ddf.jpg', b'1', '2022-11-04 08:37:37.000000'),
('b08a6732-acce-42e0-a8d9-b90fe9869609', '2022-11-04 07:56:36.000000', '/assets/uploads/oi-khuyen-tai-chot-bac-925-kieu-dang-hinh-hoc-inh-a-sang-trong-cho-nu/e94605ca-db34-4cd0-ac5c-f3d13662ac2f.jpg', b'1', '2022-11-04 07:56:36.000000'),
('b14f2951-d17c-46b6-b844-04baf26322ec', '2022-10-29 20:34:57.000000', '/assets/uploads/sexy-womens-summer-fashion-colorful-knit-stretch-top/13adf6e4-098c-4066-b612-5d51a3c55e09.jpg', b'1', '2022-10-29 20:34:57.000000'),
('b23beaa9-e1b3-4aea-a010-51e0c8fb9dd6', '2022-10-29 20:48:23.000000', '/assets/uploads/spring-and-autumn-2022-womens-new-hong-kong-style-retro-v-neck-slim-high-waist-chic-skirt-sequin-fishtail-dress-fashion/06a9401c-67f6-4456-bcc4-08096828c67e.jpg', b'1', '2022-10-29 20:48:23.000000'),
('b274b00c-bb0a-4c88-86b4-0322b5a8d620', '2022-11-03 16:25:28.000000', '/assets/uploads/choker-nu-day-chuyen-nu-chocker-inh-a-du-tiec-sang-chanh-trang-suc-her-accessories/af5f87e9-bc26-432e-8fdc-75ac09369fb1.jpg', b'1', '2022-11-03 16:25:28.000000'),
('b2d03ebe-c4b0-488b-be5d-dace1c9d2523', '2022-10-29 20:30:09.000000', '/assets/uploads/jkwomens-fashion-solid-color-boat-neck-skinny-dress/e983f004-e9b0-43ec-8eaf-56644f4ef7a2.jpg', b'1', '2022-10-29 20:30:09.000000'),
('b39f5f48-8272-4ae2-af55-f8ead26528f2', '2022-10-29 21:40:05.000000', '/assets/uploads/hannie-womens-casual-fashion-solid-color-tassel-chain-boat-neck-skinny-dress/0a91cf40-60c9-4bd9-ace4-6386dc46029b.jpg', b'1', '2022-10-29 21:40:05.000000'),
('b3e11da9-3502-45c4-945f-851c81cf54e2', '2022-10-29 23:19:32.000000', '/assets/uploads/vay-cho-be-gai-2-mau-dang-xoe-dai-tay-hoa-tiet-xinh-xan-thoi-trang-bello-land---kids-fashion/bfc2701f-515d-4483-a68c-16b0d0381fa5.jpg', b'1', '2022-10-29 23:19:32.000000'),
('b3ed95aa-e2b5-4bcd-a4f4-b0a42c7fb08c', '2022-11-04 09:25:04.000000', '/assets/uploads/nuoc-hoa-nu-quen-tram/063df570-ee2d-41f6-9ecf-e8a882c55373.jpg', b'1', '2022-11-04 09:25:04.000000'),
('b4056a5f-076f-4f31-b60b-d238dd3b1ef4', '2022-10-29 20:30:09.000000', '/assets/uploads/jkwomens-fashion-solid-color-boat-neck-skinny-dress/eeba6799-a52c-4ca1-ac93-578268aa6c81.jpg', b'1', '2022-10-29 20:30:09.000000'),
('b4e93a66-c3af-4655-b35e-5ddea6587b5f', '2022-11-04 07:12:33.000000', '/assets/uploads/-kep-toc-inh-ngoc-trai-gia-thoi-trang/7cda6368-4cba-4a56-93a5-9a166f7565fe.jpg', b'1', '2022-11-04 07:12:33.000000'),
('b531da91-e014-4770-b3ac-1e9f17601cff', '2022-11-03 15:52:18.000000', '/assets/uploads/bo-trang-suc-day-chuyen-khuyen-tai-nhan-nu-bac-ta-nguyen-chat-s999-lavesta-mat-vuong-inh-pha-le-lap-lanh-sun595/664b049d-5502-4661-9ce2-aab5ab23fed2.jpg', b'1', '2022-11-03 15:52:18.000000'),
('b5951bce-a995-45d5-a56a-7bb2bb3bde24', '2022-11-04 08:31:11.000000', '/assets/uploads/nhan-bac-nu-tlee-snow-princess-nam-a-lap-lanh-tleejewelry/a0fc5bfe-6d13-473b-878e-437471f25b84.jpg', b'1', '2022-11-04 08:31:11.000000'),
('b5bef88e-0109-430b-bb17-de1203aa83d5', '2022-11-04 09:25:04.000000', '/assets/uploads/nuoc-hoa-nu-quen-tram/62072f9c-f8f7-4bf2-aee6-ff84e27e8147.jpg', b'1', '2022-11-04 09:25:04.000000'),
('b62bfb6b-cbaa-4507-ac1c-9c68f2fc152e', '2022-10-29 20:34:57.000000', '/assets/uploads/sexy-womens-summer-fashion-colorful-knit-stretch-top/b3fc65d0-d19f-4957-b056-309754911205.jpg', b'1', '2022-10-29 20:34:57.000000'),
('b6997801-3775-4690-ac8c-c076fabe6952', '2022-11-03 00:30:53.000000', '/assets/uploads/nuoc-hoa-nam-bleu-de-chanel-100ml-lich-lam-quyen-ru-luu-huong-lau---dau-thom-nam-tinh-sang-trong-lich-su---daikon-store/4fc3a6d8-4bda-4ffd-867d-5985e9ed0a0e.jpg', b'1', '2022-11-03 00:30:53.000000'),
('b7add554-476c-4757-8361-5a244c96e9b0', '2022-11-04 09:34:07.000000', '/assets/uploads/nuoc-hoa-nu-prola-la-angel-nu-tinh-tinh-khoi-thanh-lich-thich-hop-i-lam-i-hoc-i-hen-ho-pl04---dang-xit-15ml/c92b45e6-c1ff-4d4c-872a-b146a2d7ae3c.jpg', b'1', '2022-11-04 09:34:07.000000'),
('b7cecfb2-69aa-4895-a9ad-d3827f32e6ae', '2022-11-04 07:45:13.000000', '/assets/uploads/zzzone-durable-car-baby-safety-seat-strap-belt-harness-chest-child-clip-safe-buckle/041ca3a3-9916-4d6b-b196-9449aab5035c.jpg', b'1', '2022-11-04 07:45:13.000000'),
('b83129f1-dee7-4a88-ace3-436528725efd', '2022-11-03 16:14:10.000000', '/assets/uploads/day-chuyen-bac-nu-925-canh-ao-nu-tinh-diu-dang-lavesta-sil29/1578e619-c25d-42d8-80cd-af0d7136f680.jpg', b'1', '2022-11-03 16:14:10.000000'),
('b8875ab1-55da-40c5-bec1-2e7fe5c6a677', '2022-10-29 18:13:03.000000', '/assets/uploads/am-cong-so-citi-mode-fashion-dang-xoe-thiet-ke-tay-ngan-co-ve/810d2978-12e2-44bf-9c21-99f519dbd036.jpg', b'1', '2022-10-29 18:13:03.000000'),
('b979dfd5-1a4b-4360-8619-98ab73a96830', '2022-10-29 18:13:03.000000', '/assets/uploads/am-cong-so-citi-mode-fashion-dang-xoe-thiet-ke-tay-ngan-co-ve/cd5cd6f0-c4bb-4214-983e-cdc0686ed1b2.jpg', b'1', '2022-10-29 18:13:03.000000'),
('ba7156c0-1f25-4d6e-bb16-3a9a0c2452cd', '2022-11-04 06:52:38.000000', '/assets/uploads/vong-tay-day-ben-mat-hinh-chu-cho-cinnamon-mem-mai-mau-hong-xanh-duong-phong-cach-nhat-ban-xinh-xan/7b1cc627-d08f-4987-8063-ecba04daa436.jpg', b'1', '2022-11-04 06:52:38.000000'),
('bab774bb-2bac-4a33-98c4-9d0a8713cec8', '2022-10-29 21:40:05.000000', '/assets/uploads/hannie-womens-casual-fashion-solid-color-tassel-chain-boat-neck-skinny-dress/d8b56f59-7a29-4535-8724-2173e5939aa0.png', b'1', '2022-10-29 21:40:05.000000'),
('bad4c530-ff5b-4287-867a-e630cc024d07', '2022-11-04 09:34:07.000000', '/assets/uploads/nuoc-hoa-nu-prola-la-angel-nu-tinh-tinh-khoi-thanh-lich-thich-hop-i-lam-i-hoc-i-hen-ho-pl04---dang-xit-15ml/acec5645-24f2-48e6-aa13-45298dcf520f.jpg', b'1', '2022-11-04 09:34:07.000000'),
('baee4b8e-73b9-40ed-a543-6a142cd12533', '2022-11-04 08:53:20.000000', '/assets/uploads/cuc-pham-nuoc-hoa-nam-chinh-hang-thom-lau-gentlemen-quyen-luc-nuoc-hoa-nam-chinh-hang-cong-nghe-moi/926a6e75-d53f-4446-b9db-4210a294bfdc.jpg', b'1', '2022-11-04 08:53:20.000000'),
('bb256965-54be-4d12-a25e-7cef0e2872d4', '2022-11-03 08:35:46.000000', '/assets/uploads/giay-oxford-nu-giay-bup-be-marry-jane-e-cao-got-vuong-mui-tron-may-chi-noi-5cm-hoc-sinh-lolita-chat-lieu-da-c1006/bf9f4073-5c4c-4bf0-87bd-f7cfdf2e288f.jpg', b'1', '2022-11-03 08:35:46.000000'),
('bb362e18-d4a9-4578-befe-3f17adc6ba40', '2022-11-03 09:20:53.000000', '/assets/uploads/kep-toc-inh-pha-le-phong-cach-co-ien-nhat-ban-va-han-quoc-trang-suc-ngot-ngao-cho-phu-nu/09f69897-dfcc-41c9-91ba-4be5e86c12dc.jpg', b'1', '2022-11-03 09:20:53.000000'),
('bbeb7d68-6210-4b1e-a5f6-43ce4bb62a38', '2022-11-03 08:39:15.000000', '/assets/uploads/hs006-giay-hoc-sinh-oxford-phong-cach-nhat-ban-cosplay-jk-seifuku/d5f28191-fda4-4870-9a6e-177c1232a481.jpg', b'1', '2022-11-03 08:39:15.000000'),
('bc2985f2-47f6-4416-81f4-2f5cb0c66f7a', '2022-11-03 15:58:01.000000', '/assets/uploads/vong-co-inh-ngoc-trai-thoi-trang-danh-cho-nu/dcb95f33-eb97-4f45-bdd5-45d130d0115b.jpg', b'1', '2022-11-03 15:58:01.000000'),
('bc65b177-416e-42d7-85f7-775c96a0744a', '2022-11-03 08:08:28.000000', '/assets/uploads/nuoc-hoa-nam-suziko-aqua-bombshell-phong-o-manh-me-nuoc-hoa-mini-10ml-dang-xit-tien-loi/c2700806-aab2-40f2-907d-54700351298f.jpg', b'1', '2022-11-03 08:08:28.000000'),
('bcbbd5f9-83eb-455e-9a1b-781a5b34f49f', '2022-10-29 20:48:23.000000', '/assets/uploads/spring-and-autumn-2022-womens-new-hong-kong-style-retro-v-neck-slim-high-waist-chic-skirt-sequin-fishtail-dress-fashion/17d70e1a-86b6-45e3-a57b-0e5018827c56.jpg', b'1', '2022-10-29 20:48:23.000000'),
('bdece02e-5049-4932-af36-70985c2c9720', '2022-11-04 07:15:25.000000', '/assets/uploads/kep-toc-hinh-buom-inh-ngoc-trai-sang-trong-cho-nu/18d6e2a0-6bda-4a7b-9c6b-ea5ded56db03.jpg', b'1', '2022-11-04 07:15:25.000000'),
('be6d6be7-92bd-486b-965d-319c1b81a40b', '2022-11-04 06:56:25.000000', '/assets/uploads/vong-tay-chuoi-hat-ngoc-bich-hinh-chiec-la-nho-on-gian-sang-trong-cho-nu/b0f54691-4da2-4bbd-b44b-4c9ee297987a.jpg', b'1', '2022-11-04 06:56:25.000000'),
('be8fa0a9-b1a2-4f66-8476-4b39f0430d57', '2022-11-03 08:39:15.000000', '/assets/uploads/hs006-giay-hoc-sinh-oxford-phong-cach-nhat-ban-cosplay-jk-seifuku/1f58cc78-d859-4c88-800f-190886b070a4.jpg', b'1', '2022-11-03 08:39:15.000000'),
('bfc06cdc-7142-4bf7-821d-e938e88d5d5b', '2022-11-03 16:17:13.000000', '/assets/uploads/vong-co-choker-bang-da-thoi-trang-ca-tinh-danh-cho-nu-/67427508-7f8e-4dc2-aaaa-5d27f552af6f.jpg', b'1', '2022-11-03 16:17:13.000000'),
('c056210c-9b78-43db-ac8a-507ea49e0f86', '2022-11-03 09:20:54.000000', '/assets/uploads/kep-toc-inh-pha-le-phong-cach-co-ien-nhat-ban-va-han-quoc-trang-suc-ngot-ngao-cho-phu-nu/9e5b056d-f794-45a5-86c9-121b68c0ede4.jpg', b'1', '2022-11-03 09:20:54.000000'),
('c22b3deb-ab06-4fc4-8351-42761d03e97a', '2022-11-04 07:45:13.000000', '/assets/uploads/zzzone-durable-car-baby-safety-seat-strap-belt-harness-chest-child-clip-safe-buckle/7817c55c-42ea-4761-bd4a-d098472793e6.jpg', b'1', '2022-11-04 07:45:13.000000'),
('c28b2026-3c3b-486e-bc84-a4be7cfab18f', '2022-11-03 16:14:10.000000', '/assets/uploads/day-chuyen-bac-nu-925-canh-ao-nu-tinh-diu-dang-lavesta-sil29/f5598e82-5f21-44a8-ad39-79334601f52b.jpg', b'1', '2022-11-03 16:14:10.000000'),
('c2e2df49-4090-46b8-9921-dcde33586b90', '2022-10-29 18:28:31.000000', '/assets/uploads/korean-fashion-mens-long-sleeve-solid-color-shirt/547e5f57-c5a2-49d6-bccb-e9873228fdd4.jpg', b'1', '2022-10-29 18:28:31.000000'),
('c2eeac29-13e2-48a3-8a20-a31c0ced25c8', '2022-11-03 16:17:13.000000', '/assets/uploads/vong-co-choker-bang-da-thoi-trang-ca-tinh-danh-cho-nu-/9d551957-ba2c-4033-8602-d9d7d498f8e8.jpg', b'1', '2022-11-03 16:17:13.000000'),
('c3104c92-4a47-432c-9dd1-77fbb5747fc7', '2022-10-30 00:15:27.000000', '/assets/uploads/am-cong-chua-lua-y-cao-cap-phoi-voan/8db84245-91fa-4183-b830-86c96c5a7096.jpg', b'1', '2022-10-30 00:15:27.000000'),
('c3cb59a5-e50e-42fb-a021-0ed646f97d68', '2022-11-04 08:53:20.000000', '/assets/uploads/cuc-pham-nuoc-hoa-nam-chinh-hang-thom-lau-gentlemen-quyen-luc-nuoc-hoa-nam-chinh-hang-cong-nghe-moi/550c76ac-a3e9-4324-acd4-f6d744dcd2e4.jpg', b'1', '2022-11-04 08:53:20.000000'),
('c4c21222-c9cc-4468-b238-b3f91a9c3cdf', '2022-11-04 08:15:42.000000', '/assets/uploads/bong-tai-dai-hinh-quat-inh-kim-cuong-trang-sang-trong/eae57ee8-bb13-4382-9e7b-fae357d8d607.jpg', b'1', '2022-11-04 08:15:42.000000'),
('c4c38cfd-5ad1-473a-9455-0b8191729866', '2022-11-04 07:49:23.000000', '/assets/uploads/pet-chest-back-rope-dog-leashing-strap-cartoon-small-and-medium-sized-dog-leashing-rope-strap/c6a0c43d-0fcf-40e6-9d87-0ddfe0dad02a.jpg', b'1', '2022-11-04 07:49:23.000000'),
('c521b376-1dd6-413f-aebf-49b895c087fc', '2022-11-02 13:31:10.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-100ml---dau-thom-nong-o-edp-thom-lau-chinh-hang-kem-tui/c022f819-75b5-476e-892e-96929338f02c.jpg', b'1', '2022-11-02 13:31:10.000000'),
('c52dfaa6-4e93-48df-9ddc-287629dfe44b', '2022-11-04 08:45:51.000000', '/assets/uploads/nhan-mo-khac-chu-n-z-inh-a-pha-le-thoi-trang-cho-nu/63bbc6d5-7f75-42fa-93e8-73028f4014f2.jpg', b'1', '2022-11-04 08:45:51.000000'),
('c52eec1f-9585-425b-a3d9-8ecaa6e5b49a', '2022-11-03 08:21:00.000000', '/assets/uploads/sandal-nu-air-phan-quang-hoc-sinh-2-mau-sieu-hot/e6dfff4b-868c-45dd-af8d-b5ba2c68157a.jpg', b'1', '2022-11-03 08:21:00.000000'),
('c55e7826-61e5-4034-abbc-1360b47d6d6b', '2022-11-04 08:01:15.000000', '/assets/uploads/-bong-tai-hinh-hoa-inh-ngoc-trai-cao-cap-phong-cach-phap-co-ien-danh-cho-nu/35a7a8ac-eaa7-471c-9b11-a7249e20c57c.jpg', b'1', '2022-11-04 08:01:15.000000'),
('c5aa6345-4e70-4d3f-819f-b03f09370ebb', '2022-11-03 00:30:53.000000', '/assets/uploads/nuoc-hoa-nam-bleu-de-chanel-100ml-lich-lam-quyen-ru-luu-huong-lau---dau-thom-nam-tinh-sang-trong-lich-su---daikon-store/28c3ff46-46b8-4cdb-8825-6c6ee8a2d1b7.jpg', b'1', '2022-11-03 00:30:53.000000'),
('c6e013f1-f64c-4b05-aaa5-9cd4204f7844', '2022-11-03 00:27:01.000000', '/assets/uploads/nuoc-hoa-nam-dau-thom-nam-tinh-gio-en-profumo-100ml-luu-huong-lau-manh-me-cuon-hut---shin-official/399b1485-cb95-453c-9ccd-9992c572e2d4.jpg', b'1', '2022-11-03 00:27:01.000000'),
('c7e56e92-408d-4d4b-bfe5-13c597acac11', '2022-11-04 09:07:18.000000', '/assets/uploads/nuoc-hoa-nam-chinh-hang-thom-lau-mini-dark-brawn-chai-80ml-ang-cap-vuot-troi-luu-huong-en-10h/eb0c0f28-e860-40bb-af9a-dcd5b9c2129d.jpg', b'1', '2022-11-04 09:07:18.000000'),
('c8d884f9-f285-4340-a38a-6cc1ead243f9', '2022-11-04 09:04:35.000000', '/assets/uploads/-nuoc-hoa-nam-armaf-ventana-pour-homme-10ml-mau-thu/7217fd97-98b5-4eab-8048-ec43fc98919c.jpg', b'1', '2022-11-04 09:04:35.000000'),
('c9538c45-84fe-493c-80e1-41c112c7aac5', '2022-11-04 09:22:43.000000', '/assets/uploads/nuoc-hoa-nu-yves-saint-laurent--black-opium/126dcbfa-69b7-4539-8538-a3d7b6b2c693.jpg', b'1', '2022-11-04 09:22:43.000000'),
('cb16419d-a3da-43c7-baa1-959dbaed79aa', '2022-11-04 09:25:04.000000', '/assets/uploads/nuoc-hoa-nu-quen-tram/439912b7-b4be-4523-adc6-7807b72b7a36.jpg', b'1', '2022-11-04 09:25:04.000000'),
('cbfdb0f6-f8b2-4807-95d8-fee0af6a64f9', '2022-11-02 13:31:10.000000', '/assets/uploads/nuoc-hoa-nam-cao-cap-100ml---dau-thom-nong-o-edp-thom-lau-chinh-hang-kem-tui/e5f0409f-0015-453c-9ccd-5ba130a14577.jpg', b'1', '2022-11-02 13:31:10.000000'),
('cd1afc1d-9111-49eb-9299-311ab4ea7e26', '2022-11-04 08:12:42.000000', '/assets/uploads/khuyen-tai-bac-nu-tlee-tron-chot-bam-tua-hat-a-nho-xinh-xan-tleejewelry/2bd9cb37-8eac-4094-a5c3-f571f4815dd6.jpg', b'1', '2022-11-04 08:12:42.000000'),
('cd3bb19e-1ddb-4568-ac5a-b6f7afff7da5', '2022-11-03 16:39:41.000000', '/assets/uploads/lac-tay-chuong-keu-leng-keng-chat-lieu-bac-y-mau-moi-hang-thiet-ke-the-sky-vt1030/26b28a27-c74d-4ace-a721-7ea648f30d51.jpg', b'1', '2022-11-03 16:39:41.000000'),
('cd96a5cf-c792-4a1f-be72-11a3e85499b9', '2022-11-04 08:15:42.000000', '/assets/uploads/bong-tai-dai-hinh-quat-inh-kim-cuong-trang-sang-trong/8cb61875-2596-472c-a469-4f1ab537d7aa.jpg', b'1', '2022-11-04 08:15:42.000000'),
('cdb820db-89a2-43ba-a984-005a25e9f343', '2022-11-04 08:01:15.000000', '/assets/uploads/-bong-tai-hinh-hoa-inh-ngoc-trai-cao-cap-phong-cach-phap-co-ien-danh-cho-nu/08bb4fa9-98b0-4001-80b4-896173dfb26b.jpg', b'1', '2022-11-04 08:01:15.000000'),
('d0268268-866c-443a-a0c2-1ad8126833d9', '2022-10-29 22:29:06.000000', '/assets/uploads/kids-fashion-contrast-collar-baseball-jacket-coat-for-autumn/2e495e51-f547-488f-ab53-eff186493b7b.jpg', b'1', '2022-10-29 22:29:06.000000'),
('d02e9ace-aad4-40a5-8ada-292e57dd0370', '2022-11-04 08:45:51.000000', '/assets/uploads/nhan-mo-khac-chu-n-z-inh-a-pha-le-thoi-trang-cho-nu/a0c948bb-a119-4afb-91e1-5c302514b0c8.jpg', b'1', '2022-11-04 08:45:51.000000'),
('d03ff0a1-8807-4e43-8b11-34924c2540c6', '2022-11-04 06:56:25.000000', '/assets/uploads/vong-tay-chuoi-hat-ngoc-bich-hinh-chiec-la-nho-on-gian-sang-trong-cho-nu/aa03b48d-5964-41e5-90d3-47b138440495.jpg', b'1', '2022-11-04 06:56:25.000000'),
('d08a43dc-d0d1-4dad-8ef1-ffe1c0aafcd4', '2022-11-04 06:52:38.000000', '/assets/uploads/vong-tay-day-ben-mat-hinh-chu-cho-cinnamon-mem-mai-mau-hong-xanh-duong-phong-cach-nhat-ban-xinh-xan/23a54f4b-0b5f-43a4-95c9-ffe1040b54de.jpg', b'1', '2022-11-04 06:52:38.000000'),
('d10a76f8-f8bd-43aa-81dd-83d1081ebb08', '2022-10-29 19:46:18.000000', '/assets/uploads/men-fashion-crop-top-patchwork-sheer-sexy-short-sleeve-t-shirt-streetwear-vest/920973e6-a308-4381-b03a-a085004e0430.jpg', b'1', '2022-10-29 19:46:18.000000'),
('d1429cc8-b3d7-4f7d-8ca0-3e7e460d6c53', '2022-11-04 07:06:18.000000', '/assets/uploads/kep-toc-tua-rua-hinh-buom-inh-hat-cao-cap-thoi-trang-cho-nu-dtonline-b4day/2f552f28-7176-4987-bb1c-80d1aa3125fd.jpg', b'1', '2022-11-04 07:06:18.000000'),
('d1b4fca0-31cd-4b5a-b364-894e8cb5dc50', '2022-10-29 22:29:06.000000', '/assets/uploads/kids-fashion-contrast-collar-baseball-jacket-coat-for-autumn/2919e780-7279-4f20-8a50-7b751a37638e.jpg', b'1', '2022-10-29 22:29:06.000000'),
('d221ae2a-f1e2-46d4-a46a-6f75eae7028d', '2022-11-04 08:12:42.000000', '/assets/uploads/khuyen-tai-bac-nu-tlee-tron-chot-bam-tua-hat-a-nho-xinh-xan-tleejewelry/dd74f692-597c-4167-8f63-9aa7bfcc7c7b.jpg', b'1', '2022-11-04 08:12:42.000000'),
('d28e843a-2017-49a8-9d2f-e12960537319', '2022-11-04 07:45:13.000000', '/assets/uploads/zzzone-durable-car-baby-safety-seat-strap-belt-harness-chest-child-clip-safe-buckle/cca27ec0-3ee8-4f27-b5dd-1a9d757e1ea7.jpg', b'1', '2022-11-04 07:45:13.000000'),
('d2966cb3-c8c7-4dbc-b6e0-742ba1ef6ccf', '2022-11-04 08:06:54.000000', '/assets/uploads/khuyen-tai-bac-tlee-chu-cai-nam-a-xinh-xan-tleejewelry-b0307/ef40b070-d995-4572-a1e5-8c5c2a31ff0d.jpg', b'1', '2022-11-04 08:06:54.000000'),
('d2d503ef-879c-427e-8afb-61ebec24aec4', '2022-11-04 08:01:15.000000', '/assets/uploads/-bong-tai-hinh-hoa-inh-ngoc-trai-cao-cap-phong-cach-phap-co-ien-danh-cho-nu/d3d17c80-f76a-4ac0-8481-a8bc72b76d1e.jpg', b'1', '2022-11-04 08:01:15.000000'),
('d30a4750-0fcf-4cbe-8ac0-857a310bd546', '2022-11-04 09:02:35.000000', '/assets/uploads/nuoc-hoa-nam-john-varvatos-artisan-125ml/aefc0188-780c-4725-b8fe-843ad05f637a.jpg', b'1', '2022-11-04 09:02:35.000000'),
('d35918f9-fe8d-4354-9c72-06d60cbd1307', '2022-11-03 16:32:39.000000', '/assets/uploads/vong-tay-bac-nu-the-sky-vt1022-hai-day-soi-manh-kem-mat-hinh-trai-tim/78024c68-ab5d-4bb2-bb82-5dc182b7d935.jpg', b'1', '2022-11-03 16:32:39.000000'),
('d363f463-663d-45ca-a9e5-4c25eb8df7f5', '2022-10-29 19:53:30.000000', '/assets/uploads/mens-fashion-korean-style-short-pants-and-hoodie/d6a9211f-5e52-497c-886a-93ca65a6a35d.jpg', b'1', '2022-10-29 19:53:30.000000'),
('d40c5010-ccbc-4fb5-948f-c81885bbeaa7', '2022-11-04 09:30:29.000000', '/assets/uploads/nuoc-hoa-nu-my-burberry-new-seal-mui-huong-diu-dang-tinh-te-sang-trong---90ml/07e62252-b8de-43f8-bdb5-796d88c9f0f3.jpg', b'1', '2022-11-04 09:30:29.000000'),
('d4b135e2-7389-4f69-9287-a29ac0ec1523', '2022-11-03 00:27:01.000000', '/assets/uploads/nuoc-hoa-nam-dau-thom-nam-tinh-gio-en-profumo-100ml-luu-huong-lau-manh-me-cuon-hut---shin-official/b18af6fc-3446-4187-8110-0deb7c382aee.jpg', b'1', '2022-11-03 00:27:01.000000'),
('d531ce5e-7107-4da0-9a8b-aeafd164fffc', '2022-10-29 22:22:58.000000', '/assets/uploads/ao-khoac-in-hinh-batman-sau-lung-sieu-ngau-cho-be---destiny-kid---chat-ni-da-ca-day-dan--ung-form--de-phoi-o/0ef45b4f-143e-4fe4-ac0b-ee35232624f6.jpg', b'1', '2022-10-29 22:22:58.000000'),
('d59ec140-587b-4236-b8f4-5168e44766ef', '2022-11-04 07:49:23.000000', '/assets/uploads/pet-chest-back-rope-dog-leashing-strap-cartoon-small-and-medium-sized-dog-leashing-rope-strap/595b204c-a594-439d-bdad-e542e7c90036.jpg', b'1', '2022-11-04 07:49:23.000000'),
('d5b6b0f8-159e-46ee-b86a-f4f5680e77b5', '2022-11-03 08:21:00.000000', '/assets/uploads/sandal-nu-air-phan-quang-hoc-sinh-2-mau-sieu-hot/4367bea1-4d18-4040-a31b-016d842c9735.jpg', b'1', '2022-11-03 08:21:00.000000'),
('d615ce43-3328-4b2f-883f-2525b819bff8', '2022-11-03 16:17:13.000000', '/assets/uploads/vong-co-choker-bang-da-thoi-trang-ca-tinh-danh-cho-nu-/f1bf9834-781d-4030-a3ad-28e2d1fe4880.jpg', b'1', '2022-11-03 16:17:13.000000'),
('d62e56c3-131f-4310-ba89-80b76eb18377', '2022-11-03 16:39:41.000000', '/assets/uploads/lac-tay-chuong-keu-leng-keng-chat-lieu-bac-y-mau-moi-hang-thiet-ke-the-sky-vt1030/9b0b2f14-a559-461f-a705-2319761e0c77.jpg', b'1', '2022-11-03 16:39:41.000000'),
('d68aba93-da53-4598-bbb6-16d907495de6', '2022-11-03 16:17:13.000000', '/assets/uploads/vong-co-choker-bang-da-thoi-trang-ca-tinh-danh-cho-nu-/546cb44c-ed3d-4e6c-b95b-e9910842d6cc.jpg', b'1', '2022-11-03 16:17:13.000000'),
('d76707c7-0c82-4765-901d-9d68790bd513', '2022-10-29 23:19:32.000000', '/assets/uploads/vay-cho-be-gai-2-mau-dang-xoe-dai-tay-hoa-tiet-xinh-xan-thoi-trang-bello-land---kids-fashion/f4260daf-5feb-4252-aa3c-c4c5650d7499.jpg', b'1', '2022-10-29 23:19:32.000000'),
('d791d841-4910-40ab-bb8e-056c6dae2385', '2022-11-04 08:31:11.000000', '/assets/uploads/nhan-bac-nu-tlee-snow-princess-nam-a-lap-lanh-tleejewelry/57d95172-a2b6-40df-9f79-fb9aa77f3373.jpg', b'1', '2022-11-04 08:31:11.000000'),
('d8c2726a-3b0a-4a4c-ac39-e10cb5efa029', '2022-11-04 09:07:18.000000', '/assets/uploads/nuoc-hoa-nam-chinh-hang-thom-lau-mini-dark-brawn-chai-80ml-ang-cap-vuot-troi-luu-huong-en-10h/bf93bd83-e092-4a5b-97c4-ba7d50e52318.jpg', b'1', '2022-11-04 09:07:18.000000'),
('d8f572be-6833-4001-948c-1fba4dded01e', '2022-11-04 08:37:37.000000', '/assets/uploads/nhan-thep-titan-mau-vang-hongbac-inh-a-thoi-trang-danh-cho-nu/bb050abd-0832-459c-910f-ab44acc8702e.jpg', b'1', '2022-11-04 08:37:37.000000'),
('d953d6b4-e653-4c57-8c5b-931b3082a7d8', '2022-11-04 07:32:12.000000', '/assets/uploads/dog-hand-holding-rope-reflective-chest-strap-dog-chain-medium-and-small-dogs-and-cats-out-breathable-teddy-bichon-corgi-new-hdyu/40248095-f1d9-496b-bb3e-bab56a608e3b.jpg', b'1', '2022-11-04 07:32:12.000000'),
('d98f50c6-e2b4-4958-b8fd-781af5581633', '2022-11-04 06:52:38.000000', '/assets/uploads/vong-tay-day-ben-mat-hinh-chu-cho-cinnamon-mem-mai-mau-hong-xanh-duong-phong-cach-nhat-ban-xinh-xan/4bf1ebaa-f972-41dc-a3ce-529b4f24dbfa.jpg', b'1', '2022-11-04 06:52:38.000000'),
('dabae9e7-2787-489c-85b7-7612ba035f70', '2022-10-29 19:31:23.000000', '/assets/uploads/men-sweater-sl-thick-warm-casual-fashion-knitwear-long-sleeve-polyester-cotton/2e548cd4-0bba-42f9-b4ba-ef416d3a3793.jpg', b'1', '2022-10-29 19:31:23.000000'),
('daee8cd5-e43e-43d4-aa8c-c363da168e65', '2022-11-03 15:58:01.000000', '/assets/uploads/vong-co-inh-ngoc-trai-thoi-trang-danh-cho-nu/69816f77-99f9-4cfd-8b05-8dd00d311087.jpg', b'1', '2022-11-03 15:58:01.000000'),
('dbc2ef7e-657f-466d-bd54-da765749169d', '2022-10-29 18:28:31.000000', '/assets/uploads/korean-fashion-mens-long-sleeve-solid-color-shirt/0f877eb6-8c05-40d4-9c0a-3eb6da706e01.jpg', b'1', '2022-10-29 18:28:31.000000'),
('dbe74efb-8b4b-49e8-a627-2821b2039c42', '2022-11-03 08:21:00.000000', '/assets/uploads/sandal-nu-air-phan-quang-hoc-sinh-2-mau-sieu-hot/62358995-e392-4029-8b1a-40af0e370356.jpg', b'1', '2022-11-03 08:21:00.000000'),
('dbf5c184-4cd3-4661-a690-0f0a06a43af2', '2022-11-04 07:12:33.000000', '/assets/uploads/-kep-toc-inh-ngoc-trai-gia-thoi-trang/91fe24b9-b0b5-4508-ac1f-f03741ffb462.jpg', b'1', '2022-11-04 07:12:33.000000'),
('dc50d0db-7e96-42c7-8bdc-f7f7b764d041', '2022-11-03 15:58:01.000000', '/assets/uploads/vong-co-inh-ngoc-trai-thoi-trang-danh-cho-nu/cee81a72-703a-4a06-957f-4ded3d5a67bc.jpg', b'1', '2022-11-03 15:58:01.000000'),
('dc982891-8894-4657-a8a0-5a044dc6bf88', '2022-11-03 08:26:32.000000', '/assets/uploads/giay-the-duc-hoc-sinh-nu-sieu-nhe-kieu-dang-hop-thoi-trang/5c9d7ae0-1deb-45f4-a52c-b3a8b09e2066.jpg', b'1', '2022-11-03 08:26:32.000000'),
('dcb62d36-fd59-4525-981b-cbd6d0a1c9d4', '2022-11-04 08:31:11.000000', '/assets/uploads/nhan-bac-nu-tlee-snow-princess-nam-a-lap-lanh-tleejewelry/f04b5d57-0c1e-4e58-a38c-565a2dc83360.jpg', b'1', '2022-11-04 08:31:11.000000'),
('dccfbaaf-9026-4037-a08e-eca8fa23cea1', '2022-11-03 08:08:28.000000', '/assets/uploads/nuoc-hoa-nam-suziko-aqua-bombshell-phong-o-manh-me-nuoc-hoa-mini-10ml-dang-xit-tien-loi/d2d32b6e-233b-4c89-9c16-181a95ee14c5.jpg', b'1', '2022-11-03 08:08:28.000000'),
('dcffa314-5972-4591-8f9f-ac81921bd684', '2022-11-03 16:50:14.000000', '/assets/uploads/lac-tay-nam-nu-bac-s925---vong-tay-bac-y-nam-nu-on-gian-ca-tinh-tre-trung-hien-ai-zaza-accessories-zz-vt01/d22619a1-0b96-4bd0-a45b-6f60e3807808.jpg', b'1', '2022-11-03 16:50:14.000000'),
('dd2e46a3-9eda-453e-b8d9-5f352eb66fff', '2022-10-29 19:53:30.000000', '/assets/uploads/mens-fashion-korean-style-short-pants-and-hoodie/58d739b0-248e-425c-a40e-fd0e7cb9a4e8.jpg', b'1', '2022-10-29 19:53:30.000000'),
('dd657cdd-1d06-4b4f-98d0-5f06d0e6058a', '2022-10-29 20:03:00.000000', '/assets/uploads/quan-kaki-dai-just-men-nam-tinh-va-thanh-lich/d1b2e967-6f1c-408c-9a9f-608e40465c51.jpg', b'1', '2022-10-29 20:03:00.000000'),
('dde7ddaa-d492-4a19-af6a-255f692f6a24', '2022-11-04 08:12:42.000000', '/assets/uploads/khuyen-tai-bac-nu-tlee-tron-chot-bam-tua-hat-a-nho-xinh-xan-tleejewelry/eecf6f6f-e17f-45d4-9b86-39e4dfb3beff.jpg', b'1', '2022-11-04 08:12:42.000000'),
('de085550-4408-4c90-af31-699d62478ea3', '2022-11-03 16:50:14.000000', '/assets/uploads/lac-tay-nam-nu-bac-s925---vong-tay-bac-y-nam-nu-on-gian-ca-tinh-tre-trung-hien-ai-zaza-accessories-zz-vt01/5c083fc6-6d7b-43bb-a1f3-807990bf7830.jpg', b'1', '2022-11-03 16:50:14.000000'),
('dea6a2c9-0a53-4913-b6ab-51da44d156e2', '2022-10-29 19:31:23.000000', '/assets/uploads/men-sweater-sl-thick-warm-casual-fashion-knitwear-long-sleeve-polyester-cotton/75c24a62-4263-415d-8261-376d1773cee6.jpg', b'1', '2022-10-29 19:31:23.000000'),
('deb901e0-d85b-4709-99a0-8cd902f8f2a7', '2022-10-29 18:03:09.000000', '/assets/uploads/ao-khoac-hoodie-ni-sieu-re-phu-hop-nam-nu-/5c764494-12f5-4b8e-8fbd-10d45f6dfe4f.jpg', b'1', '2022-10-29 18:03:09.000000'),
('ded8299a-84c6-41af-9c16-a85f972558c8', '2022-11-03 15:58:01.000000', '/assets/uploads/vong-co-inh-ngoc-trai-thoi-trang-danh-cho-nu/32de21ef-9859-4db5-a6c6-0e1ff6f491cc.jpg', b'1', '2022-11-03 15:58:01.000000'),
('df2be915-bdc7-4ff1-8db2-c4315ccc0d12', '2022-11-04 09:25:04.000000', '/assets/uploads/nuoc-hoa-nu-quen-tram/129b68bb-9bdd-4055-a23d-0bd0c303c37f.jpg', b'1', '2022-11-04 09:25:04.000000'),
('df5926fb-cbe3-4385-9a62-a3b9f41faca3', '2022-11-03 16:50:14.000000', '/assets/uploads/lac-tay-nam-nu-bac-s925---vong-tay-bac-y-nam-nu-on-gian-ca-tinh-tre-trung-hien-ai-zaza-accessories-zz-vt01/646ca82f-9df7-4f3d-b338-760eecc9026f.jpg', b'1', '2022-11-03 16:50:14.000000'),
('df9d1c33-d2d6-40cb-bf46-ecc3df5a706f', '2022-11-03 16:14:10.000000', '/assets/uploads/day-chuyen-bac-nu-925-canh-ao-nu-tinh-diu-dang-lavesta-sil29/44815dd8-2385-4bae-bba3-623768010420.jpg', b'1', '2022-11-03 16:14:10.000000'),
('dfc5ce1d-cd7c-4007-b94b-e43499d7f6b0', '2022-11-03 08:26:32.000000', '/assets/uploads/giay-the-duc-hoc-sinh-nu-sieu-nhe-kieu-dang-hop-thoi-trang/83a0c6af-e15c-44a8-ae44-383732243946.jpg', b'1', '2022-11-03 08:26:32.000000'),
('e0bf2c0a-33e8-4abe-9e7c-157082538ffe', '2022-11-04 07:32:12.000000', '/assets/uploads/dog-hand-holding-rope-reflective-chest-strap-dog-chain-medium-and-small-dogs-and-cats-out-breathable-teddy-bichon-corgi-new-hdyu/fa67df0d-32dc-465d-bc0e-f97c4c023c3b.jpg', b'1', '2022-11-04 07:32:12.000000'),
('e1dc9950-41c3-494a-bfd4-739fcac7d149', '2022-11-03 00:27:01.000000', '/assets/uploads/nuoc-hoa-nam-dau-thom-nam-tinh-gio-en-profumo-100ml-luu-huong-lau-manh-me-cuon-hut---shin-official/3ff5a390-2d01-4cab-8c49-6623083dbfe5.jpg', b'1', '2022-11-03 00:27:01.000000'),
('e24dbe77-52dc-404c-9dba-796a05d7d388', '2022-11-04 08:01:15.000000', '/assets/uploads/-bong-tai-hinh-hoa-inh-ngoc-trai-cao-cap-phong-cach-phap-co-ien-danh-cho-nu/30f6df9b-0a60-40f1-96a1-0bbda606bc11.jpg', b'1', '2022-11-04 08:01:15.000000'),
('e27f1639-ba70-4e26-8bdf-087daeb65106', '2022-10-29 19:31:23.000000', '/assets/uploads/men-sweater-sl-thick-warm-casual-fashion-knitwear-long-sleeve-polyester-cotton/5666f209-410d-4eea-b9ca-b6d5a3c7f88b.jpg', b'1', '2022-10-29 19:31:23.000000'),
('e28c0386-624f-4042-8a63-f330a59a94ca', '2022-11-04 09:00:31.000000', '/assets/uploads/nuoc-hoa-nam-dubai-100ml-mp/c92e3357-3dca-4f78-9de7-656cb1676e05.jpg', b'1', '2022-11-04 09:00:31.000000'),
('e299e5de-ab98-4209-b875-80c4b8050057', '2022-11-04 09:25:04.000000', '/assets/uploads/nuoc-hoa-nu-quen-tram/88400f05-88e8-4ce6-a45e-12c7ea894c65.jpg', b'1', '2022-11-04 09:25:04.000000'),
('e29d7dd1-e89b-4a10-bd63-ca354bfdae8c', '2022-10-29 21:40:05.000000', '/assets/uploads/hannie-womens-casual-fashion-solid-color-tassel-chain-boat-neck-skinny-dress/6887b434-8b85-4017-b3ac-e8dec7460134.jpg', b'1', '2022-10-29 21:40:05.000000'),
('e2fba8ad-85fa-45e6-8363-979d76985327', '2022-11-04 08:12:42.000000', '/assets/uploads/khuyen-tai-bac-nu-tlee-tron-chot-bam-tua-hat-a-nho-xinh-xan-tleejewelry/5f9ae136-9871-4340-9c91-de51df133613.jpg', b'1', '2022-11-04 08:12:42.000000'),
('e32dd449-a893-4027-a0a6-d06e59925012', '2022-11-03 08:35:46.000000', '/assets/uploads/giay-oxford-nu-giay-bup-be-marry-jane-e-cao-got-vuong-mui-tron-may-chi-noi-5cm-hoc-sinh-lolita-chat-lieu-da-c1006/418d58ac-7800-4b83-8e13-d4e00282bcf7.jpg', b'1', '2022-11-03 08:35:46.000000'),
('e34a45ea-0ccc-4a95-bc26-9336706ec0bd', '2022-10-30 00:09:29.000000', '/assets/uploads/bo-quan-ao-thun-tay-dai-be-gai-1-9-tuoi-zakids/e83fce7d-7b1b-4cbb-bb8e-81a5cebccb3e.jpg', b'1', '2022-10-30 00:09:29.000000');
INSERT INTO `product_image` (`id`, `create_at`, `path`, `state`, `update_at`) VALUES
('e3ec74d9-50ad-42a2-a55f-bd34bafb44bc', '2022-10-29 20:48:23.000000', '/assets/uploads/spring-and-autumn-2022-womens-new-hong-kong-style-retro-v-neck-slim-high-waist-chic-skirt-sequin-fishtail-dress-fashion/ed455f06-f714-49ed-ac92-333883e38725.jpg', b'1', '2022-10-29 20:48:23.000000'),
('e50ea9ca-7a42-443a-b1f3-af81a38c8d8a', '2022-11-03 16:50:14.000000', '/assets/uploads/lac-tay-nam-nu-bac-s925---vong-tay-bac-y-nam-nu-on-gian-ca-tinh-tre-trung-hien-ai-zaza-accessories-zz-vt01/d669a3a4-f664-4b2b-9875-82828338414c.jpg', b'1', '2022-11-03 16:50:14.000000'),
('e74c7027-5b84-47ed-941a-b315eb4ad436', '2022-11-03 08:08:28.000000', '/assets/uploads/nuoc-hoa-nam-suziko-aqua-bombshell-phong-o-manh-me-nuoc-hoa-mini-10ml-dang-xit-tien-loi/1fe8b367-e70f-4f28-908a-2f64e0fd172b.jpg', b'1', '2022-11-03 08:08:28.000000'),
('e7bd84dd-3d36-4393-9da4-35a6b9bff5c5', '2022-11-03 16:50:14.000000', '/assets/uploads/lac-tay-nam-nu-bac-s925---vong-tay-bac-y-nam-nu-on-gian-ca-tinh-tre-trung-hien-ai-zaza-accessories-zz-vt01/2f787733-5d38-42af-b8da-e7899917fc79.jpg', b'1', '2022-11-03 16:50:14.000000'),
('e7e2d645-9dd8-434d-9e64-4b20548bc0b8', '2022-11-04 07:32:12.000000', '/assets/uploads/dog-hand-holding-rope-reflective-chest-strap-dog-chain-medium-and-small-dogs-and-cats-out-breathable-teddy-bichon-corgi-new-hdyu/d172cd27-1340-45b6-ad39-7cf85c80361c.jpg', b'1', '2022-11-04 07:32:12.000000'),
('e9d75e9b-b71a-4224-a7dd-9366dc529cad', '2022-11-03 16:50:14.000000', '/assets/uploads/lac-tay-nam-nu-bac-s925---vong-tay-bac-y-nam-nu-on-gian-ca-tinh-tre-trung-hien-ai-zaza-accessories-zz-vt01/4fb73c25-7d51-4bc0-95fc-87ee96502a8f.jpg', b'1', '2022-11-03 16:50:14.000000'),
('ea86ab65-f87f-4f16-b8d8-a36ad85c8a9d', '2022-10-29 22:29:06.000000', '/assets/uploads/kids-fashion-contrast-collar-baseball-jacket-coat-for-autumn/f123aa8e-60fd-47d7-a3ae-1010dd75e633.jpg', b'1', '2022-10-29 22:29:06.000000'),
('ec65342d-380c-46c4-80d6-ea3fa4e37741', '2022-10-29 23:19:32.000000', '/assets/uploads/vay-cho-be-gai-2-mau-dang-xoe-dai-tay-hoa-tiet-xinh-xan-thoi-trang-bello-land---kids-fashion/db62791e-a85f-46b5-b424-9c83e97aea9c.jpg', b'1', '2022-10-29 23:19:32.000000'),
('ed55ae72-79d7-417b-9a16-758908f15e1c', '2022-11-03 00:30:53.000000', '/assets/uploads/nuoc-hoa-nam-bleu-de-chanel-100ml-lich-lam-quyen-ru-luu-huong-lau---dau-thom-nam-tinh-sang-trong-lich-su---daikon-store/b0c9728f-ddcf-4bc2-b334-a0c4679bda81.jpg', b'1', '2022-11-03 00:30:53.000000'),
('ed8320e1-9ee7-4719-b24f-7f53885b9a71', '2022-10-29 21:40:05.000000', '/assets/uploads/hannie-womens-casual-fashion-solid-color-tassel-chain-boat-neck-skinny-dress/89547663-7471-4c01-b642-9ca99990a525.png', b'1', '2022-10-29 21:40:05.000000'),
('edc4ee54-56e8-439f-ae8e-4313a9ca2460', '2022-11-04 07:42:51.000000', '/assets/uploads/chest-mount-harness-strap-holder-with-phone-clip-for-mobile-phones/ce04d143-b42e-4304-9e30-92f1dc0954be.jpg', b'1', '2022-11-04 07:42:51.000000'),
('ee42a557-71a6-4753-bb7c-bc5f3adfc76e', '2022-11-04 08:01:15.000000', '/assets/uploads/-bong-tai-hinh-hoa-inh-ngoc-trai-cao-cap-phong-cach-phap-co-ien-danh-cho-nu/728f624f-56f0-433b-8b61-125c08eb77c7.jpg', b'1', '2022-11-04 08:01:15.000000'),
('eef1c850-b92a-4bf5-bb25-b1bce8a43e6b', '2022-11-04 09:30:29.000000', '/assets/uploads/nuoc-hoa-nu-my-burberry-new-seal-mui-huong-diu-dang-tinh-te-sang-trong---90ml/b1a0f4c4-b467-43f3-88e0-9c598e3da9ea.jpg', b'1', '2022-11-04 09:30:29.000000'),
('ef540fa4-7808-471c-a1d6-461299334f2c', '2022-11-04 07:36:51.000000', '/assets/uploads/thinh-hanhsexy-women-body-leather-harness-chest-bra-straps-belt-punk-gothic-corsets/f74d4215-0295-49c0-8358-f87062c0ad54.jpg', b'1', '2022-11-04 07:36:51.000000'),
('ef93229f-1ac0-437a-9cfb-709c8f29df02', '2022-11-04 09:44:08.000000', '/assets/uploads/sua-tam-safeguard-tui-620ml-hoa-hong-lo-hoichanhtrang-tinh-khiet/964c0b3a-3ddd-47af-acfc-8eb4abbf9509.jpg', b'1', '2022-11-04 09:44:08.000000'),
('eff8b313-2c8d-4623-ad3f-116292cbfe6e', '2022-10-29 18:28:31.000000', '/assets/uploads/korean-fashion-mens-long-sleeve-solid-color-shirt/d5bfdee2-5010-45d5-8b08-ef9375c835e8.jpg', b'1', '2022-10-29 18:28:31.000000'),
('f0700ae7-fdb8-4e47-aefa-0614f48a5051', '2022-11-03 08:21:00.000000', '/assets/uploads/sandal-nu-air-phan-quang-hoc-sinh-2-mau-sieu-hot/82bde75f-6e20-48bc-be1d-376e31ba0681.jpg', b'1', '2022-11-03 08:21:00.000000'),
('f0a4d369-b767-42dd-a8b6-633e5725cf43', '2022-11-04 09:07:18.000000', '/assets/uploads/nuoc-hoa-nam-chinh-hang-thom-lau-mini-dark-brawn-chai-80ml-ang-cap-vuot-troi-luu-huong-en-10h/ebc7b918-c37f-414d-8397-3e718a1ae1a6.jpg', b'1', '2022-11-04 09:07:18.000000'),
('f1b7f9c8-b5a2-48ab-8c4d-ee1d4d38b78b', '2022-10-29 20:48:23.000000', '/assets/uploads/spring-and-autumn-2022-womens-new-hong-kong-style-retro-v-neck-slim-high-waist-chic-skirt-sequin-fishtail-dress-fashion/d3943e5b-ea49-4cc0-b61c-2e7b49990278.jpg', b'1', '2022-10-29 20:48:23.000000'),
('f2c8442a-f02b-4664-ba7a-003070d9559e', '2022-11-03 00:30:53.000000', '/assets/uploads/nuoc-hoa-nam-bleu-de-chanel-100ml-lich-lam-quyen-ru-luu-huong-lau---dau-thom-nam-tinh-sang-trong-lich-su---daikon-store/10bed312-7d43-4433-bd5f-bce47fc51be6.jpg', b'1', '2022-11-03 00:30:53.000000'),
('f2ee5553-ea55-45f8-9fbc-52042c11f18e', '2022-11-04 09:30:29.000000', '/assets/uploads/nuoc-hoa-nu-my-burberry-new-seal-mui-huong-diu-dang-tinh-te-sang-trong---90ml/aac618ae-e08f-4665-b0d3-1d6e2998082d.jpg', b'1', '2022-11-04 09:30:29.000000'),
('f31f043f-500e-4fd3-9e58-d8efeb53a237', '2022-11-04 09:27:33.000000', '/assets/uploads/nuoc-hoa-nu-ccharme-sosexy-huong-hong-nhe-nhang-quyen-ru-50ml/3773573b-5c8d-4394-9a6e-738e431ff36e.jpg', b'1', '2022-11-04 09:27:33.000000'),
('f33107d1-f8d6-41e7-8749-0afb622a0fb1', '2022-11-04 09:44:08.000000', '/assets/uploads/sua-tam-safeguard-tui-620ml-hoa-hong-lo-hoichanhtrang-tinh-khiet/dfda8322-36f8-4a69-86e2-ca5b960c809d.jpg', b'1', '2022-11-04 09:44:08.000000'),
('f37a32cc-e4e6-4a09-9fcd-910f2b876457', '2022-11-04 09:02:35.000000', '/assets/uploads/nuoc-hoa-nam-john-varvatos-artisan-125ml/b01ccffa-a221-452d-a1f5-ac87f57183b9.jpg', b'1', '2022-11-04 09:02:35.000000'),
('f404941e-064d-440a-840c-1f805fde3d74', '2022-10-29 22:29:06.000000', '/assets/uploads/kids-fashion-contrast-collar-baseball-jacket-coat-for-autumn/b7b006bd-0eaa-4b36-9e20-65d0c473c2dd.jpg', b'1', '2022-10-29 22:29:06.000000'),
('f40bd1aa-6374-4199-a563-26bb0bde1b83', '2022-11-04 07:56:36.000000', '/assets/uploads/oi-khuyen-tai-chot-bac-925-kieu-dang-hinh-hoc-inh-a-sang-trong-cho-nu/4134611c-874a-4c66-9e72-6097451f4a3f.jpg', b'1', '2022-11-04 07:56:36.000000'),
('f52fe9a2-2d3e-4420-9469-887a9a048634', '2022-11-04 08:06:54.000000', '/assets/uploads/khuyen-tai-bac-tlee-chu-cai-nam-a-xinh-xan-tleejewelry-b0307/c94e6663-5bbe-4339-8343-01b3dfc13ec4.jpg', b'1', '2022-11-04 08:06:54.000000'),
('f58b7aba-b513-4b01-a834-75c2ab1eb5fb', '2022-11-04 07:56:36.000000', '/assets/uploads/oi-khuyen-tai-chot-bac-925-kieu-dang-hinh-hoc-inh-a-sang-trong-cho-nu/0fa35830-a6e9-49de-8d0c-74f1577b6989.jpg', b'1', '2022-11-04 07:56:36.000000'),
('f599b9f8-c313-4dcd-ab1d-3580c9a265b0', '2022-11-03 00:27:01.000000', '/assets/uploads/nuoc-hoa-nam-dau-thom-nam-tinh-gio-en-profumo-100ml-luu-huong-lau-manh-me-cuon-hut---shin-official/e32612fd-63db-4717-883e-bcd5d95481fb.jpg', b'1', '2022-11-03 00:27:01.000000'),
('f5c6a8ac-119a-4f3b-b8a1-e10d80dbee26', '2022-11-03 08:39:15.000000', '/assets/uploads/hs006-giay-hoc-sinh-oxford-phong-cach-nhat-ban-cosplay-jk-seifuku/4af20fbc-8aab-489c-ba19-fde07809b3bb.jpg', b'1', '2022-11-03 08:39:15.000000'),
('f6224ec0-26c5-4037-99ec-2623fcbddb26', '2022-11-03 16:50:14.000000', '/assets/uploads/lac-tay-nam-nu-bac-s925---vong-tay-bac-y-nam-nu-on-gian-ca-tinh-tre-trung-hien-ai-zaza-accessories-zz-vt01/a702c63d-cb77-4883-920e-a17e0d1fc9a1.jpg', b'1', '2022-11-03 16:50:14.000000'),
('f65daa7d-4916-481d-baa0-df2109b5a982', '2022-11-04 09:30:29.000000', '/assets/uploads/nuoc-hoa-nu-my-burberry-new-seal-mui-huong-diu-dang-tinh-te-sang-trong---90ml/8b8f8227-f402-48b1-87fd-4fda94b9ed3e.jpg', b'1', '2022-11-04 09:30:29.000000'),
('f6863132-4cba-4a40-8481-ed29e04f0f12', '2022-11-04 07:15:26.000000', '/assets/uploads/kep-toc-hinh-buom-inh-ngoc-trai-sang-trong-cho-nu/4b2f2c1b-7098-4a53-a06c-02b439c6797a.jpg', b'1', '2022-11-04 07:15:26.000000'),
('f8372dcb-21f4-4dcf-81e8-be3acb72ae38', '2022-10-29 19:53:30.000000', '/assets/uploads/mens-fashion-korean-style-short-pants-and-hoodie/94ded412-a43e-4374-a22e-1005bf265c31.jpg', b'1', '2022-10-29 19:53:30.000000'),
('f887c7b5-bf8d-42b7-b214-abc60c1ec515', '2022-10-29 20:30:09.000000', '/assets/uploads/jkwomens-fashion-solid-color-boat-neck-skinny-dress/e86651aa-425c-401b-b649-8ffd5c2828dd.jpg', b'1', '2022-10-29 20:30:09.000000'),
('f8c7d454-18ff-44ec-98c0-0e858e06ccdf', '2022-11-03 08:39:15.000000', '/assets/uploads/hs006-giay-hoc-sinh-oxford-phong-cach-nhat-ban-cosplay-jk-seifuku/97f7db49-ac60-43fd-a9a8-74484660f32f.jpg', b'1', '2022-11-03 08:39:15.000000'),
('f99c6ad9-5dd7-4236-b678-a5b395d8288e', '2022-11-04 08:06:54.000000', '/assets/uploads/khuyen-tai-bac-tlee-chu-cai-nam-a-xinh-xan-tleejewelry-b0307/5b9fab46-4b0c-4f00-a316-8112222c28c1.jpg', b'1', '2022-11-04 08:06:54.000000'),
('f9ed4dc1-6835-4bf1-ab96-f3a83d849560', '2022-11-03 15:52:18.000000', '/assets/uploads/bo-trang-suc-day-chuyen-khuyen-tai-nhan-nu-bac-ta-nguyen-chat-s999-lavesta-mat-vuong-inh-pha-le-lap-lanh-sun595/4e8c07b1-85c1-4f8a-a21b-293c5cea240d.jpg', b'1', '2022-11-03 15:52:18.000000'),
('f9f3be48-e411-4cf4-bbac-17936413f46e', '2022-11-04 07:36:51.000000', '/assets/uploads/thinh-hanhsexy-women-body-leather-harness-chest-bra-straps-belt-punk-gothic-corsets/d2be456b-9edd-48a1-a55c-272846b376e4.jpg', b'1', '2022-11-04 07:36:51.000000'),
('faa08fa7-7552-40ac-a68b-9fd36da4c43d', '2022-11-04 07:06:18.000000', '/assets/uploads/kep-toc-tua-rua-hinh-buom-inh-hat-cao-cap-thoi-trang-cho-nu-dtonline-b4day/dbb1fff2-885b-4017-ab71-8219013a0626.jpg', b'1', '2022-11-04 07:06:18.000000'),
('fabdc7e7-97aa-410d-b401-de4d9b69c4ce', '2022-11-04 06:56:25.000000', '/assets/uploads/vong-tay-chuoi-hat-ngoc-bich-hinh-chiec-la-nho-on-gian-sang-trong-cho-nu/33bfbda6-f6c1-470e-a399-56af84111dd9.jpg', b'1', '2022-11-04 06:56:25.000000'),
('fad46a98-8455-44a0-873a-6ea9713c0037', '2022-11-04 07:49:23.000000', '/assets/uploads/pet-chest-back-rope-dog-leashing-strap-cartoon-small-and-medium-sized-dog-leashing-rope-strap/22d8368c-3f99-40fc-9014-da5816d877ca.jpg', b'1', '2022-11-04 07:49:23.000000'),
('fb6aadc8-bc09-4572-aef9-c54f38a1cb64', '2022-10-29 20:03:00.000000', '/assets/uploads/quan-kaki-dai-just-men-nam-tinh-va-thanh-lich/9622acc7-d50a-4f4d-ab91-e002baa65ab8.jpg', b'1', '2022-10-29 20:03:00.000000'),
('fc1adc55-b3e6-419d-93e2-be4158319962', '2022-11-04 08:45:51.000000', '/assets/uploads/nhan-mo-khac-chu-n-z-inh-a-pha-le-thoi-trang-cho-nu/f7aaee1d-e033-4692-b826-57ab6d6f2204.jpg', b'1', '2022-11-04 08:45:51.000000'),
('fcf19399-fc40-4f0a-882d-459c76979d33', '2022-11-04 09:02:35.000000', '/assets/uploads/nuoc-hoa-nam-john-varvatos-artisan-125ml/6921dbe4-7000-4ea1-8b5c-008b0060f9b5.jpg', b'1', '2022-11-04 09:02:35.000000'),
('fd654700-ae7a-4bf8-9124-67bf6149d9ae', '2022-11-03 16:32:39.000000', '/assets/uploads/vong-tay-bac-nu-the-sky-vt1022-hai-day-soi-manh-kem-mat-hinh-trai-tim/d6c02ec8-a329-48ca-9583-c1bcb04dc336.jpg', b'1', '2022-11-03 16:32:39.000000'),
('fd9a2b3e-018e-44eb-b279-ee437e790c22', '2022-11-04 07:49:23.000000', '/assets/uploads/pet-chest-back-rope-dog-leashing-strap-cartoon-small-and-medium-sized-dog-leashing-rope-strap/490c63cf-9b5c-4d8b-91da-1f9b025dc3be.jpg', b'1', '2022-11-04 07:49:23.000000'),
('fe3a153a-1daf-4b05-b965-1f52f4e8b218', '2022-10-29 20:48:23.000000', '/assets/uploads/spring-and-autumn-2022-womens-new-hong-kong-style-retro-v-neck-slim-high-waist-chic-skirt-sequin-fishtail-dress-fashion/9b1cf2d8-61b7-4d26-a32f-7b722e6d887a.jpg', b'1', '2022-10-29 20:48:23.000000'),
('ff33c289-2ba7-43d8-bd11-f9beca45bb35', '2022-11-03 08:16:21.000000', '/assets/uploads/giay_converse-en-cao-co-nam-nu-thoi-trang-giay-the-thao-en-cao-co-mui-bong-lot-xanh/e076175d-68c7-4e90-b5d0-f3f46e09fc71.jpg', b'1', '2022-11-03 08:16:21.000000'),
('ffc2d0f9-8807-481e-89de-c83619c9a80a', '2022-11-03 08:08:28.000000', '/assets/uploads/nuoc-hoa-nam-suziko-aqua-bombshell-phong-o-manh-me-nuoc-hoa-mini-10ml-dang-xit-tien-loi/89775df4-7fdd-427e-b123-71497c26967e.jpg', b'1', '2022-11-03 08:08:28.000000');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `product_id` varchar(255) NOT NULL,
  `size_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`product_id`, `size_id`) VALUES
('002824ea-9641-4409-8e3d-acc2cabb6a77', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('00f5b40f-c6df-4466-a95d-69697c986a59', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('00f5b40f-c6df-4466-a95d-69697c986a59', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'ff728ad2-5627-4e47-8820-156d4c2d8237'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('0b590666-a985-4fac-b374-f7b4189f88d2', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'ff728ad2-5627-4e47-8820-156d4c2d8237'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('2792d341-30e2-4710-915f-808d0366ffee', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('2792d341-30e2-4710-915f-808d0366ffee', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('29b889f7-e946-4664-9c66-a31b3e744d42', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('38f72114-9854-4778-916e-70a11162d727', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('38f72114-9854-4778-916e-70a11162d727', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('3efd776a-436d-43d0-ab02-edec0c68183e', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('3efd776a-436d-43d0-ab02-edec0c68183e', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('67aadb06-bb43-4b78-9232-829915a598ee', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('67aadb06-bb43-4b78-9232-829915a598ee', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('67aadb06-bb43-4b78-9232-829915a598ee', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('67aadb06-bb43-4b78-9232-829915a598ee', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('75b937cb-3421-4c3d-b1a5-51584747d198', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'ff728ad2-5627-4e47-8820-156d4c2d8237'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', 'ff728ad2-5627-4e47-8820-156d4c2d8237'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('a2714e34-764b-47a2-af2c-887f84a4c646', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('a2714e34-764b-47a2-af2c-887f84a4c646', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('a2714e34-764b-47a2-af2c-887f84a4c646', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('a3e0540f-4622-47e3-873d-548c132537d2', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('a3e0540f-4622-47e3-873d-548c132537d2', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('a3e0540f-4622-47e3-873d-548c132537d2', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('a7136ea1-1404-496a-a732-2f2458d6db17', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('a7136ea1-1404-496a-a732-2f2458d6db17', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('ae786d5c-34a6-4f86-9042-465af777092c', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('ae786d5c-34a6-4f86-9042-465af777092c', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('ae786d5c-34a6-4f86-9042-465af777092c', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('bf610986-28ec-4239-a386-606e68682ff9', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('bf610986-28ec-4239-a386-606e68682ff9', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', 'ff728ad2-5627-4e47-8820-156d4c2d8237'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'ff728ad2-5627-4e47-8820-156d4c2d8237'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('f397dee0-7dae-4b20-bb98-f76719611a79', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '34f7a3ae-040f-4528-8109-aee9d910d7f8'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'b00da2df-0994-49ac-ae9e-87036ac39ada'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'b0e4178a-b2be-4628-b34d-86d5f2056286'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'ba900484-fbc9-4d2c-b5b0-b4a98cd90796'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'ff728ad2-5627-4e47-8820-156d4c2d8237');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` varchar(255) NOT NULL,
  `tags_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`product_id`, `tags_id`) VALUES
('002824ea-9641-4409-8e3d-acc2cabb6a77', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', '2854ff55-89d1-4004-9f23-8d82a35a2e7e'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', '42d7b142-3f98-42fb-a17f-73d02e8f6517'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', '4cc7f279-b57d-4d79-a69f-9f0343fa7cce'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', '97f5a902-ae0c-455f-9baf-0723927a99b9'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '3ee0dd92-d16c-40f1-a78c-0d9df01183ad'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '436fb31b-6e65-4854-95be-ee4bcd799d1e'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '4cc7f279-b57d-4d79-a69f-9f0343fa7cce'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '760dd672-0dd9-4ae6-926d-aa02f6968717'),
('00f5b40f-c6df-4466-a95d-69697c986a59', 'b332c38f-b78c-4589-a806-f100ee6af52d'),
('00f5b40f-c6df-4466-a95d-69697c986a59', 'bfafaa71-2a1e-4ffc-947e-08190473db56'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '50543146-db7c-4739-9bd8-95e632d9e2f5'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '50e1c22e-aac2-4a69-8775-114b660b57d9'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '7fbfc4be-6224-466b-9716-76474272ffd4'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'b359503b-73f7-4c3f-bd5e-884bb53d534c'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'b83cc055-402d-40ca-97c6-132fd899eccc'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '43b15ddc-d69d-45c0-8b4e-f83d575b9170'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '63caf8c0-2325-4ac5-afd7-8b7fbd06f962'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '760dd672-0dd9-4ae6-926d-aa02f6968717'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'c80282b9-2ec2-42b4-a8fc-6466f77b1470'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '50e1c22e-aac2-4a69-8775-114b660b57d9'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', 'feba65f1-7476-4ba9-ac5c-72ac166026db'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '7765c843-c6a1-48ad-b400-101837b8215c'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'bfafaa71-2a1e-4ffc-947e-08190473db56'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '1948f571-aed1-4cdf-b5d5-cb952390af9c'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '63caf8c0-2325-4ac5-afd7-8b7fbd06f962'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', 'bfafaa71-2a1e-4ffc-947e-08190473db56'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', 'e3a2b861-973e-440a-8942-81e16ab4c70a'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', '3fc23b6d-39a8-4c95-a35f-698b364f2322'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '4803ef53-e1e9-4ad1-a8c5-f70084fd0d75'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '7765c843-c6a1-48ad-b400-101837b8215c'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'bfafaa71-2a1e-4ffc-947e-08190473db56'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '42d7b142-3f98-42fb-a17f-73d02e8f6517'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '48b7b59b-5d83-4e77-a200-93204ab8fbe9'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '995b386c-9e52-40b9-ab39-5bcaa80bf263'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', 'ebe2b14a-b83b-42b3-b3f1-48f41c96fd8c'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '622116db-2622-4165-9a67-e0f03624fe81'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '0e19ed86-bcbe-40dd-a1ac-7044d535611c'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '27ce0375-bf5c-494d-a14f-7b86dce31d91'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '3ee0dd92-d16c-40f1-a78c-0d9df01183ad'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '436fb31b-6e65-4854-95be-ee4bcd799d1e'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', 'c9b2fea4-c035-45eb-a616-1cf321b55346'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', 'ebe2b14a-b83b-42b3-b3f1-48f41c96fd8c'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '5fbd700a-9fef-4775-9852-b1aacd8a5cf7'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '7cbe24fe-a351-4685-bc49-b4b15d290bd9'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'd5205879-7fec-4fbc-9c67-77e6857ed263'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'f7dd517e-bb36-45be-9305-c0d8cbe20fec'),
('2792d341-30e2-4710-915f-808d0366ffee', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('2792d341-30e2-4710-915f-808d0366ffee', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('2792d341-30e2-4710-915f-808d0366ffee', 'c68e2ef4-b0e3-41d3-ae86-fffcad501385'),
('2792d341-30e2-4710-915f-808d0366ffee', 'd64972e2-6d94-4b71-9a08-b2b0fc917787'),
('2792d341-30e2-4710-915f-808d0366ffee', 'f468d544-2848-454e-bda6-dc1716a83045'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '10aa4c54-5161-42eb-b632-14ac2e3368e2'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('29b889f7-e946-4664-9c66-a31b3e744d42', 'd64972e2-6d94-4b71-9a08-b2b0fc917787'),
('38f72114-9854-4778-916e-70a11162d727', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('38f72114-9854-4778-916e-70a11162d727', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('38f72114-9854-4778-916e-70a11162d727', '83d7fe9c-b84e-411e-8ff2-fb33a805b8cc'),
('38f72114-9854-4778-916e-70a11162d727', 'b47c19c5-281e-4259-bbb8-82d3f7660e66'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '25707559-195a-403c-8422-c765fd83f217'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '50e1c22e-aac2-4a69-8775-114b660b57d9'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '7fbfc4be-6224-466b-9716-76474272ffd4'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '3ee0dd92-d16c-40f1-a78c-0d9df01183ad'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '436fb31b-6e65-4854-95be-ee4bcd799d1e'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '760dd672-0dd9-4ae6-926d-aa02f6968717'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '3ee0dd92-d16c-40f1-a78c-0d9df01183ad'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '760dd672-0dd9-4ae6-926d-aa02f6968717'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '83d7fe9c-b84e-411e-8ff2-fb33a805b8cc'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', 'c4a05c82-3d96-4745-813e-aad427006f53'),
('67aadb06-bb43-4b78-9232-829915a598ee', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('67aadb06-bb43-4b78-9232-829915a598ee', '244c1833-d3b7-41ae-a5d5-704ba1a775ef'),
('67aadb06-bb43-4b78-9232-829915a598ee', '436fb31b-6e65-4854-95be-ee4bcd799d1e'),
('67aadb06-bb43-4b78-9232-829915a598ee', '7765c843-c6a1-48ad-b400-101837b8215c'),
('67aadb06-bb43-4b78-9232-829915a598ee', 'c80282b9-2ec2-42b4-a8fc-6466f77b1470'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '42d7b142-3f98-42fb-a17f-73d02e8f6517'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '48b7b59b-5d83-4e77-a200-93204ab8fbe9'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', 'd5205879-7fec-4fbc-9c67-77e6857ed263'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', 'e05f3162-993f-4794-9bd9-44b76ba171e6'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '7765c843-c6a1-48ad-b400-101837b8215c'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', 'bfafaa71-2a1e-4ffc-947e-08190473db56'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '43b15ddc-d69d-45c0-8b4e-f83d575b9170'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', 'aa99e826-3c91-4248-817f-cc826ea7caf5'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', 'c68e2ef4-b0e3-41d3-ae86-fffcad501385'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '7fbfc4be-6224-466b-9716-76474272ffd4'),
('75b937cb-3421-4c3d-b1a5-51584747d198', 'c4a05c82-3d96-4745-813e-aad427006f53'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '5fbd700a-9fef-4775-9852-b1aacd8a5cf7'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '658024ff-e025-4453-9cf3-298e0d95141c'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', 'f7dd517e-bb36-45be-9305-c0d8cbe20fec'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '7fbfc4be-6224-466b-9716-76474272ffd4'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', 'c4a05c82-3d96-4745-813e-aad427006f53'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '233731ee-76f6-4fe6-b3f8-05ab170e60e7'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '7765c843-c6a1-48ad-b400-101837b8215c'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '7765c843-c6a1-48ad-b400-101837b8215c'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', 'b359503b-73f7-4c3f-bd5e-884bb53d534c'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', 'b83cc055-402d-40ca-97c6-132fd899eccc'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '12ece2f0-dd05-4291-a2b3-ff905987858b'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '54ff698c-a62a-40aa-93f9-99bca7684c19'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '5fbd700a-9fef-4775-9852-b1aacd8a5cf7'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', 'f7dd517e-bb36-45be-9305-c0d8cbe20fec'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', '83d7fe9c-b84e-411e-8ff2-fb33a805b8cc'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'b359503b-73f7-4c3f-bd5e-884bb53d534c'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'c4a05c82-3d96-4745-813e-aad427006f53'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '12ece2f0-dd05-4291-a2b3-ff905987858b'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '5fbd700a-9fef-4775-9852-b1aacd8a5cf7'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'd5205879-7fec-4fbc-9c67-77e6857ed263'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'f7dd517e-bb36-45be-9305-c0d8cbe20fec'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '707e1453-528f-465c-91f9-69d3ee5a703f'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', 'b359503b-73f7-4c3f-bd5e-884bb53d534c'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', 'b83cc055-402d-40ca-97c6-132fd899eccc'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', 'a7f1b9f3-aa5d-499f-a77a-255f5b2dcffb'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '3bd3c934-4744-42ca-8198-e724f0fa1383'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '83d7fe9c-b84e-411e-8ff2-fb33a805b8cc'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '63caf8c0-2325-4ac5-afd7-8b7fbd06f962'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'c9b2fea4-c035-45eb-a616-1cf321b55346'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'e3a2b861-973e-440a-8942-81e16ab4c70a'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '45679c8b-854e-4a9a-a87a-c4b162640344'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '5738a902-c243-4894-8084-e32b9aefcaf5'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', 'ac2ba7de-474b-444c-a7a2-e486e4d6da62'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '144c9485-50df-489b-8e61-aae7f67a2fc7'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '2854ff55-89d1-4004-9f23-8d82a35a2e7e'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '7765c843-c6a1-48ad-b400-101837b8215c'),
('a2714e34-764b-47a2-af2c-887f84a4c646', 'ea4d741c-0b6c-4e12-86f7-b8b10166c155'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '43b15ddc-d69d-45c0-8b4e-f83d575b9170'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'c68e2ef4-b0e3-41d3-ae86-fffcad501385'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'dd67e0a7-8c17-4ae7-8286-a8e6637003b1'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'e70b3c5c-1e00-42c8-b714-d6ae5f26247c'),
('a3e0540f-4622-47e3-873d-548c132537d2', '12ece2f0-dd05-4291-a2b3-ff905987858b'),
('a3e0540f-4622-47e3-873d-548c132537d2', '54ff698c-a62a-40aa-93f9-99bca7684c19'),
('a3e0540f-4622-47e3-873d-548c132537d2', '5fbd700a-9fef-4775-9852-b1aacd8a5cf7'),
('a3e0540f-4622-47e3-873d-548c132537d2', 'f7dd517e-bb36-45be-9305-c0d8cbe20fec'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '436fb31b-6e65-4854-95be-ee4bcd799d1e'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '5ed0e289-eadb-4aec-987c-5fbf4a160e59'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '63caf8c0-2325-4ac5-afd7-8b7fbd06f962'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '42d7b142-3f98-42fb-a17f-73d02e8f6517'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '48b7b59b-5d83-4e77-a200-93204ab8fbe9'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '6d3353d8-4e58-4cc8-8a21-0dc2c2c9c542'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', 'c68e2ef4-b0e3-41d3-ae86-fffcad501385'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', 'd64972e2-6d94-4b71-9a08-b2b0fc917787'),
('ae786d5c-34a6-4f86-9042-465af777092c', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('ae786d5c-34a6-4f86-9042-465af777092c', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('ae786d5c-34a6-4f86-9042-465af777092c', '4742347d-3023-4dc8-a53f-cbaaf42661ab'),
('ae786d5c-34a6-4f86-9042-465af777092c', '50e1c22e-aac2-4a69-8775-114b660b57d9'),
('ae786d5c-34a6-4f86-9042-465af777092c', 'feba65f1-7476-4ba9-ac5c-72ac166026db'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '38edcfb8-9955-449f-8996-4b1036d6c0b9'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '42d7b142-3f98-42fb-a17f-73d02e8f6517'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '48b7b59b-5d83-4e77-a200-93204ab8fbe9'),
('bf610986-28ec-4239-a386-606e68682ff9', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('bf610986-28ec-4239-a386-606e68682ff9', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('bf610986-28ec-4239-a386-606e68682ff9', '9466c82e-7429-472f-bb9e-5c2fd81b5db4'),
('bf610986-28ec-4239-a386-606e68682ff9', 'c68e2ef4-b0e3-41d3-ae86-fffcad501385'),
('bf610986-28ec-4239-a386-606e68682ff9', 'd64972e2-6d94-4b71-9a08-b2b0fc917787'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '489ab5fb-cc7f-4050-b818-732c13fe02b6'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '9ae085a7-2641-49b8-aeb3-6763956e49c6'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', 'b359503b-73f7-4c3f-bd5e-884bb53d534c'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '7765c843-c6a1-48ad-b400-101837b8215c'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '86c8d805-0cee-4d9d-8d68-5a5905c90e44'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', 'ebe2b14a-b83b-42b3-b3f1-48f41c96fd8c'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '83d7fe9c-b84e-411e-8ff2-fb33a805b8cc'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', 'c4a05c82-3d96-4745-813e-aad427006f53'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '6b778064-9c19-4f86-9356-b6dd0735d4a0'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', 'b359503b-73f7-4c3f-bd5e-884bb53d534c'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', 'b83cc055-402d-40ca-97c6-132fd899eccc'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '41d91fa1-5a9f-4c24-b906-2c6180b26d67'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '42d7b142-3f98-42fb-a17f-73d02e8f6517'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '48b7b59b-5d83-4e77-a200-93204ab8fbe9'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'e05f3162-993f-4794-9bd9-44b76ba171e6'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '3ee0dd92-d16c-40f1-a78c-0d9df01183ad'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '760dd672-0dd9-4ae6-926d-aa02f6968717'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '4742347d-3023-4dc8-a53f-cbaaf42661ab'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '7765c843-c6a1-48ad-b400-101837b8215c'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '43b15ddc-d69d-45c0-8b4e-f83d575b9170'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', 'b359503b-73f7-4c3f-bd5e-884bb53d534c'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '43b15ddc-d69d-45c0-8b4e-f83d575b9170'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', 'aafe8ee4-20b7-4077-a60c-5137fee5625d'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '7765c843-c6a1-48ad-b400-101837b8215c'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', 'd64972e2-6d94-4b71-9a08-b2b0fc917787'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '17279152-680b-47c9-88ef-d329b8a1b66c'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '7fbfc4be-6224-466b-9716-76474272ffd4'),
('f397dee0-7dae-4b20-bb98-f76719611a79', 'c4a05c82-3d96-4745-813e-aad427006f53'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', 'ff9ad884-96d7-4f33-8796-45568ff8e4e5'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '10b4d7e5-2335-443c-beaf-169cd43ac99b'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '27ce0375-bf5c-494d-a14f-7b86dce31d91'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '312ca8a6-46e1-4feb-802b-0e26c2c7273d'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '50e1c22e-aac2-4a69-8775-114b660b57d9'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'feba65f1-7476-4ba9-ac5c-72ac166026db');

-- --------------------------------------------------------

--
-- Table structure for table `product_thumbnails`
--

CREATE TABLE `product_thumbnails` (
  `product_id` varchar(255) NOT NULL,
  `thumbnails_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_thumbnails`
--

INSERT INTO `product_thumbnails` (`product_id`, `thumbnails_id`) VALUES
('002824ea-9641-4409-8e3d-acc2cabb6a77', '2020944b-c1b8-447c-b51d-2d19462df097'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', '6bcf23db-d0a1-4d63-96c1-28f1268cb2a7'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', '6c779049-dce4-4e3f-acdf-36c209a91aa8'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', '86d5af10-bb60-4163-a1d7-ac77a43eda1f'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', 'a24e7bc9-fb53-4814-b1ea-dc21ecec1fa1'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', 'a4ff683a-fb05-4120-b2ec-4e15ce9fe935'),
('002824ea-9641-4409-8e3d-acc2cabb6a77', 'deb901e0-d85b-4709-99a0-8cd902f8f2a7'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '001b5ad0-2ac1-447a-86e9-02a76a94c486'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '005ffd8b-cae9-40ab-9145-2da9978a90fd'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '2f9aaa86-89e1-49fd-9d33-c451036c1083'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '73d93d0e-25de-4fd1-b52f-0a7432cc487b'),
('00f5b40f-c6df-4466-a95d-69697c986a59', '82c59cd9-2f8b-4150-91bc-f74e410d1be9'),
('00f5b40f-c6df-4466-a95d-69697c986a59', 'b8875ab1-55da-40c5-bec1-2e7fe5c6a677'),
('00f5b40f-c6df-4466-a95d-69697c986a59', 'b979dfd5-1a4b-4360-8619-98ab73a96830'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '09459cbf-26ed-40e1-8c57-deff34a36978'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '703bfb0c-be9f-46b8-82ae-cac362bbd4d7'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', '9b2e5b6a-6a17-4562-a2f8-35fabde2f4a3'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'c52eec1f-9585-425b-a3d9-8ecaa6e5b49a'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'd5b6b0f8-159e-46ee-b86a-f4f5680e77b5'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'dbe74efb-8b4b-49e8-a627-2821b2039c42'),
('03786fd2-73f1-4dbf-8a2a-98fac0475dfc', 'f0700ae7-fdb8-4e47-aefa-0614f48a5051'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '2f5029ce-bea9-4556-8035-4a07de262bd0'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '86c18973-2cd7-42c9-8743-70f0c0483b7a'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', '8ebdc02b-1164-4e06-8218-8372a88a0861'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', 'bfc06cdc-7142-4bf7-821d-e938e88d5d5b'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', 'c2eeac29-13e2-48a3-8a20-a31c0ced25c8'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', 'd615ce43-3328-4b2f-883f-2525b819bff8'),
('05c6d1f0-1179-47c4-aec6-b4c44af089b1', 'd68aba93-da53-4598-bbb6-16d907495de6'),
('0b590666-a985-4fac-b374-f7b4189f88d2', '5d5f1ac8-5b3d-4ff8-873f-4e5da39c5623'),
('0b590666-a985-4fac-b374-f7b4189f88d2', '97edc222-d611-42f2-b776-6520350c5187'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'a5fe4a60-20d1-4837-ba09-f68e97762d79'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'afb82dd0-81b0-4587-8e16-631b11e6f8ac'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'd30a4750-0fcf-4cbe-8ac0-857a310bd546'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'f37a32cc-e4e6-4a09-9fcd-910f2b876457'),
('0b590666-a985-4fac-b374-f7b4189f88d2', 'fcf19399-fc40-4f0a-882d-459c76979d33'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '08a57afb-32e5-4f5d-b655-5ac17b315ebc'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '4a81addf-a82c-40f2-bf0c-f4ea8d2dfc87'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '4df95a9e-571d-498c-87f7-67918fc71078'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '57048897-7a57-4f12-b80e-0d2116c91e07'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '70be3b86-5110-4350-8321-f059f66330ba'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '7f813ba6-f406-4931-b670-f21c1cf8efc6'),
('0bfa4e2f-8d58-4b1b-ad15-e8f32dccbbea', '838ee0b6-3592-43d0-ab03-30eccad390bc'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '1ab912a2-3de6-48c9-8fbb-ce6c8b700abe'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '34a4b875-358e-448f-9985-a49ff463daf2'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '5d4bdc0b-04d0-4cdb-b31a-10e30c4abbbf'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', '61ffc180-1f11-4a2c-9159-d8dab284eb35'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'b3e11da9-3502-45c4-945f-851c81cf54e2'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'd76707c7-0c82-4765-901d-9d68790bd513'),
('0c5aaab8-22f7-4bd6-85c6-4bd27edf13b8', 'ec65342d-380c-46c4-80d6-ea3fa4e37741'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '153bd5fe-27fe-4ce5-9f19-a5e694bb26ea'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '17d9c88c-ff54-4deb-863b-552f1c936c7e'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '51d6da05-3652-4a2d-8cc1-94d2665fd7c7'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '7b4b1a11-e3b7-4014-8303-c6b6d5a15059'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', '9dae2cca-2d14-4726-8391-d622541211a2'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', 'bb256965-54be-4d12-a25e-7cef0e2872d4'),
('0d061f9f-8690-4cc4-aa08-73d38f8291c0', 'e32dd449-a893-4027-a0a6-d06e59925012'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '0a0d8399-e907-46ef-8d91-e95f08681a94'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '683f555f-2234-4dde-b9b7-45e7eb78ea79'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', '83d3fe3a-ee94-4994-9983-c5f0d2a714e5'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'b6997801-3775-4690-ac8c-c076fabe6952'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'c5aa6345-4e70-4d3f-819f-b03f09370ebb'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'ed55ae72-79d7-417b-9a16-758908f15e1c'),
('118c9b4c-1cf6-4462-abee-9ec0230afc4a', 'f2c8442a-f02b-4664-ba7a-003070d9559e'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '316f417d-3c8e-4bf5-a4c3-12e99b32d511'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', '3e252587-ce1c-4881-ab2b-022d200703b6'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', 'b3ed95aa-e2b5-4bcd-a4f4-b0a42c7fb08c'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', 'b5bef88e-0109-430b-bb17-de1203aa83d5'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', 'cb16419d-a3da-43c7-baa1-959dbaed79aa'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', 'df2be915-bdc7-4ff1-8db2-c4315ccc0d12'),
('19e89f39-a04c-4bb4-87e0-f807e9a0c4c0', 'e299e5de-ab98-4209-b875-80c4b8050057'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '4abff1af-42a4-4ce9-8b12-e36d9e3d321b'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '4d605d55-11cd-431a-917f-6e0a2e3c3f10'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '8612c5f2-c585-4291-9571-891b56c56ebe'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '882f9873-d9b8-4953-be73-ed8734263983'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', '94b659c8-9261-4ebf-b153-312678f706bb'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', 'a0725505-b60d-4ac3-b9b7-07b06c8dd989'),
('1d351324-8c4b-4820-a8df-f04eda1ccdbd', 'd531ce5e-7107-4da0-9a8b-aeafd164fffc'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', '069e3a89-460d-46bb-9cc6-34131791f07a'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', '1eaea4c4-3c68-427c-97ed-88520fae7f50'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', '3ea1633c-919d-4fe8-acef-479cec70e3e2'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', 'd40c5010-ccbc-4fb5-948f-c81885bbeaa7'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', 'eef1c850-b92a-4bf5-bb25-b1bce8a43e6b'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', 'f2ee5553-ea55-45f8-9fbc-52042c11f18e'),
('1e2c4a4e-cd55-406d-bf14-7adeaf05b556', 'f65daa7d-4916-481d-baa0-df2109b5a982'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '1ae1872f-46ed-4baf-bae3-56ead3824807'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '48ebe017-8235-47cd-b205-7c492fdaf2eb'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '8908d6a3-6a3c-4937-b2ce-8ca0aae56065'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', '99528c53-2a0e-4110-a96e-a14e9108d9b4'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'c2e2df49-4090-46b8-9921-dcde33586b90'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'dbc2ef7e-657f-466d-bd54-da765749169d'),
('1eb51aac-61d4-4317-8fbc-a2064b46d5b9', 'eff8b313-2c8d-4623-ad3f-116292cbfe6e'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '2f87a9bf-592a-46d8-a4d8-4dc01fb77b9d'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '3dbfac72-bb08-4efa-8288-da293e0c9de2'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '5b4454d8-3624-4947-ac2a-3b3deffd7fd4'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '684a5384-ba7e-4f5f-9281-0d42bc74d2e2'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', '841a1a1b-80f8-47cd-8fad-3720d7e2cd8a'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', 'ef540fa4-7808-471c-a1d6-461299334f2c'),
('22ce0a52-5eed-46a7-94c1-3db627a1492d', 'f9f3be48-e411-4cf4-bbac-17936413f46e'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '0b57ad2d-7cbd-47b4-9a23-9d2734e47772'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '354dc3df-633c-4543-bae7-e931de74e9ee'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '68f03c97-da79-4ce1-8d87-d36f85a38b60'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '8cc1a6d3-dea7-40e3-9dd3-cc0eb4258b2e'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '8ea4f85a-4114-4199-95a0-899137ce7c18'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', '91f86040-d588-4e0a-9e44-1948644e5d50'),
('23a3b740-2a9e-4ed3-b87a-b3f7a8d22297', 'c9538c45-84fe-493c-80e1-41c112c7aac5'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '015b8ef9-29ab-496d-8f55-fe5b3a0fc56b'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '5c00e3e0-178f-4a4b-aa0b-879207686111'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '621f84f3-6a2c-45b0-9bad-ff9d554f02ca'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '66f92bb3-b5c9-424e-9b34-aae94011cf78'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', '7634a0eb-d59b-4b29-9f05-04d7b52dad82'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', 'b14f2951-d17c-46b6-b844-04baf26322ec'),
('24d47da2-e70a-4daf-ae0c-5b3160eaa1ab', 'b62bfb6b-cbaa-4507-ac1c-9c68f2fc152e'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '2458bc9d-5086-4ee6-b6cd-836ef0aaa5b5'),
('26ec959d-07a6-4301-805b-8bd9ee819779', '8482fd7a-bed1-4fe6-bc4e-3e8938fb350e'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'abba5fb6-a44c-412a-9d86-b36a195493e1'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'cd1afc1d-9111-49eb-9299-311ab4ea7e26'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'd221ae2a-f1e2-46d4-a46a-6f75eae7028d'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'dde7ddaa-d492-4a19-af6a-255f692f6a24'),
('26ec959d-07a6-4301-805b-8bd9ee819779', 'e2fba8ad-85fa-45e6-8363-979d76985327'),
('2792d341-30e2-4710-915f-808d0366ffee', '0a655d9a-e75a-440c-93d5-fc2e80cd767f'),
('2792d341-30e2-4710-915f-808d0366ffee', '1ecdad92-ad7f-4197-ad29-8da1c810ca35'),
('2792d341-30e2-4710-915f-808d0366ffee', '67fa9900-0b8f-4521-97e7-ce6f7ae62ce6'),
('2792d341-30e2-4710-915f-808d0366ffee', '6aa35e0a-bf8e-4cd0-b7fa-998ec1c5cb33'),
('2792d341-30e2-4710-915f-808d0366ffee', '6c670ec2-fbe6-4a79-b80d-1c9553a7f246'),
('2792d341-30e2-4710-915f-808d0366ffee', '7857f3cd-4426-492f-a2dc-f22fb1a6e836'),
('2792d341-30e2-4710-915f-808d0366ffee', '7fdab5e6-7bed-4947-8ebd-2ac8c8b59534'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '445ea22f-013a-4409-b7d4-b1142c5ad143'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '4ba134e8-746b-4f82-ba38-6da6d38320bd'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '7317b32f-9a2b-4cc5-9c74-0d3a37e5a047'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '7d1f9ad8-4500-46d5-afc6-6fcb77c1b3b3'),
('29b889f7-e946-4664-9c66-a31b3e744d42', '8ba13bec-c35b-4fd9-ae93-8e886b11029d'),
('29b889f7-e946-4664-9c66-a31b3e744d42', 'd1429cc8-b3d7-4f7d-8ca0-3e7e460d6c53'),
('29b889f7-e946-4664-9c66-a31b3e744d42', 'faa08fa7-7552-40ac-a68b-9fd36da4c43d'),
('38f72114-9854-4778-916e-70a11162d727', '121ec973-9beb-4676-a832-b9db90d84024'),
('38f72114-9854-4778-916e-70a11162d727', '5d0373a3-02e6-4fc3-bddc-6af373da11aa'),
('38f72114-9854-4778-916e-70a11162d727', '6727e92c-6acb-4c95-a0ce-6ce061660471'),
('38f72114-9854-4778-916e-70a11162d727', '8cbbc786-4ca2-459d-a9e6-733923aa3476'),
('38f72114-9854-4778-916e-70a11162d727', 'ba7156c0-1f25-4d6e-bb16-3a9a0c2452cd'),
('38f72114-9854-4778-916e-70a11162d727', 'd08a43dc-d0d1-4dad-8ef1-ffe1c0aafcd4'),
('38f72114-9854-4778-916e-70a11162d727', 'd98f50c6-e2b4-4958-b8fd-781af5581633'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '0e629388-f835-44b4-b502-54a693495942'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '3b07184b-c788-45fd-a39f-c790672ece5b'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '4645f3ce-3883-41b4-86f1-cf00d4c9dfd5'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '6575c4d4-fd7c-4965-86e5-0f7b78515576'),
('3efd776a-436d-43d0-ab02-edec0c68183e', '9bcb062f-5ab7-4768-8825-6eedda2aa149'),
('3efd776a-436d-43d0-ab02-edec0c68183e', 'dc982891-8894-4657-a8a0-5a044dc6bf88'),
('3efd776a-436d-43d0-ab02-edec0c68183e', 'dfc5ce1d-cd7c-4007-b94b-e43499d7f6b0'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '4dbfc433-27fd-4cfc-91b7-d970f2675fd0'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '8ab0251a-906a-4dc6-ab85-742013bf8021'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', '97dab63a-7e91-4eda-883f-66404e9c1a03'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', 'bc2985f2-47f6-4416-81f4-2f5cb0c66f7a'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', 'daee8cd5-e43e-43d4-aa8c-c363da168e65'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', 'dc50d0db-7e96-42c7-8bdc-f7f7b764d041'),
('5370bed4-f5a5-43b9-b681-17ba8137e2e2', 'ded8299a-84c6-41af-9c16-a85f972558c8'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '23511a32-3964-419a-862f-da5c59583b4f'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', '3f462678-e766-4c6a-8382-1f7fd390484a'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', 'b23beaa9-e1b3-4aea-a010-51e0c8fb9dd6'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', 'bcbbd5f9-83eb-455e-9a1b-781a5b34f49f'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', 'e3ec74d9-50ad-42a2-a55f-bd34bafb44bc'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', 'f1b7f9c8-b5a2-48ab-8c4d-ee1d4d38b78b'),
('5a8ae1b6-e0ee-43ca-8b2d-924b5aad5cf9', 'fe3a153a-1daf-4b05-b965-1f52f4e8b218'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '117a1d33-6218-4571-b65b-ff8b463df911'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '56abb21f-2211-48ea-b7df-41b85e2e5213'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', '670cfbf1-7af8-48d2-9410-71893e0654fd'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', 'b39f5f48-8272-4ae2-af55-f8ead26528f2'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', 'bab774bb-2bac-4a33-98c4-9d0a8713cec8'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', 'e29d7dd1-e89b-4a10-bd63-ca354bfdae8c'),
('5cc8a489-e027-4b1e-8ae4-9e7361d36a54', 'ed8320e1-9ee7-4719-b24f-7f53885b9a71'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '3741ea0e-22dc-4893-9d34-d9765bfdc123'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '40e5786c-b7d7-467c-8eca-cf2bf02b94b1'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '4db7175e-b620-4fef-9860-a001fd9e83a4'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '7dde6608-b0eb-4d54-8d75-9f78d2ff1b73'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', '89637b7a-3b62-47f8-bb1b-7de9fd1c83b1'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', 'd35918f9-fe8d-4354-9c72-06d60cbd1307'),
('64f025eb-6792-4373-b8f3-0b2b29e44392', 'fd654700-ae7a-4bf8-9124-67bf6149d9ae'),
('67aadb06-bb43-4b78-9232-829915a598ee', '1b23076c-c604-4d6d-8212-2e70975668f7'),
('67aadb06-bb43-4b78-9232-829915a598ee', '6f3b3443-511d-4d73-944e-0f27e2bf15a2'),
('67aadb06-bb43-4b78-9232-829915a598ee', '8866750f-b67e-45a4-ae71-30fd1cd9bf27'),
('67aadb06-bb43-4b78-9232-829915a598ee', '98a5f78b-8072-41cb-a35e-7b5b99285151'),
('67aadb06-bb43-4b78-9232-829915a598ee', 'dabae9e7-2787-489c-85b7-7612ba035f70'),
('67aadb06-bb43-4b78-9232-829915a598ee', 'dea6a2c9-0a53-4913-b6ab-51da44d156e2'),
('67aadb06-bb43-4b78-9232-829915a598ee', 'e27f1639-ba70-4e26-8bdf-087daeb65106'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '088300b7-42bf-4323-8670-438b70b2c61e'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '0e138c16-51aa-4983-9102-6da8331871b8'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '6ab078b6-60d4-4f30-a96e-95f19eccdf89'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', '9795ab7f-e952-4d53-a7bc-aae53bd1cdef'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', 'd953d6b4-e653-4c57-8c5b-931b3082a7d8'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', 'e0bf2c0a-33e8-4abe-9e7c-157082538ffe'),
('69d9d7dc-b43e-49d9-adc5-0363cd2dd053', 'e7e2d645-9dd8-434d-9e64-4b20548bc0b8'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '12156e13-bfb5-4ce0-90b6-e146fc29b896'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '28f4f893-b648-44af-992b-1aa0b91c0e58'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '5732e557-42b4-40a6-87e1-e65799d4ab8a'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '64df9507-13ea-4b89-be65-4cec0b946459'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '859ccf36-0512-454b-b0fa-e68777c0dfe0'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', '889724f7-8bd0-47a9-93b5-c874bf4b2ab0'),
('6da1a482-62b3-42d4-8c9f-c1ee74ee8ff5', 'a70f3657-36ae-4e7c-bacf-26b4f4e178f6'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '64eec78b-983d-4aad-b14a-a78c8143f950'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '7bdcca89-52bb-4df7-a1d9-1d3a7efa1ff1'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', '973d01f9-f825-4421-b87d-b06abd83211a'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', 'a624af1b-0fbd-4556-a186-b7c33cfe6d81'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', 'c52dfaa6-4e93-48df-9ddc-287629dfe44b'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', 'd02e9ace-aad4-40a5-8ada-292e57dd0370'),
('75387a77-22d7-4132-b4ec-4ecdaf630d72', 'fc1adc55-b3e6-419d-93e2-be4158319962'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '08f12eae-424c-44c6-8742-a67f83c11908'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '24e363f6-f011-4d73-b3ec-187531cdb9f6'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '6624879c-3b64-4fd2-bf02-f52ec33b265a'),
('75b937cb-3421-4c3d-b1a5-51584747d198', '824f4b5a-4a6d-4f0a-b12b-198d8a832d4b'),
('75b937cb-3421-4c3d-b1a5-51584747d198', 'b83129f1-dee7-4a88-ace3-436528725efd'),
('75b937cb-3421-4c3d-b1a5-51584747d198', 'c28b2026-3c3b-486e-bc84-a4be7cfab18f'),
('75b937cb-3421-4c3d-b1a5-51584747d198', 'df9d1c33-d2d6-40cb-bf46-ecc3df5a706f'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '0e70cd21-7b58-43b6-8357-78526c1aff51'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '4661bb3f-c279-4dda-aadf-f3f9ba48bc3a'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '5362b9de-491c-4727-b062-4954b419b6aa'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', '98309815-4399-4c68-8bd5-242975487a55'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', 'b08a6732-acce-42e0-a8d9-b90fe9869609'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', 'f40bd1aa-6374-4199-a563-26bb0bde1b83'),
('75d0b5ef-ca1e-44b7-b06e-04c01fd2cf08', 'f58b7aba-b513-4b01-a834-75c2ab1eb5fb'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '154176e7-caa6-4d1f-b9ce-6fcb0eab086e'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '198d0428-8b47-4736-9c4c-86f3c907096a'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '2d6434b6-776c-4c32-9aa1-51b420c98beb'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '41d2caae-5474-421b-8e80-eda87cbc4cb1'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '7f8beda6-0fe6-44ce-a840-8f1212faf2b6'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', '88a628c5-c6a1-4e8f-8070-0779c2c61e9e'),
('78cbe336-e200-4eaa-9554-43cfdbb5eb2f', 'b274b00c-bb0a-4c88-86b4-0322b5a8d620'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '380914c2-6ece-4592-9d3b-ec808335b54b'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '72d050bd-7c7d-4240-ac7f-c7f29170a8f4'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '95e0fac2-9700-444f-affb-9c6a077b532b'),
('85d79f2a-27d0-43fe-8187-703932b40a66', '9ee37b60-9095-4236-9a61-8b646446f2a8'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'd363f463-663d-45ca-a9e5-4c25eb8df7f5'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'dd2e46a3-9eda-453e-b8d9-5f352eb66fff'),
('85d79f2a-27d0-43fe-8187-703932b40a66', 'f8372dcb-21f4-4dcf-81e8-be3acb72ae38'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '01dc7181-d327-48a2-b72e-8f86b2bb8dc4'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '76a27eaf-a12a-48bc-b639-5c66477bbf33'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', '88ae0902-f1c1-4b32-807e-e18a262a6dc3'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', 'c6e013f1-f64c-4b05-aaa5-9cd4204f7844'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', 'd4b135e2-7389-4f69-9287-a29ac0ec1523'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', 'e1dc9950-41c3-494a-bfd4-739fcac7d149'),
('89c74f4c-9afb-4342-a354-1f9e8fc72942', 'f599b9f8-c313-4dcd-ab1d-3580c9a265b0'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '02f19bdf-9329-446c-84c7-33d9b936a772'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '1f06c530-5031-4331-8153-4cbe06acf093'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '654519d6-2b01-4904-8595-f838c51ec86a'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', '7c10851e-c454-44bb-9f4d-2518cdc746c3'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', 'a4a15984-a4dc-48ac-8134-40a95c25024a'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', 'aab97017-3721-477a-8504-5c597a362d41'),
('8a6dce6c-f8f4-45a5-906b-7975a57d96a5', 'c8d884f9-f285-4340-a38a-6cc1ead243f9'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '03f712c7-75c1-45eb-8a92-8d923119d26e'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', '8ad410c9-842f-454a-a24f-97baea33ea80'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', 'c55e7826-61e5-4034-abbc-1360b47d6d6b'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', 'cdb820db-89a2-43ba-a984-005a25e9f343'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', 'd2d503ef-879c-427e-8afb-61ebec24aec4'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', 'e24dbe77-52dc-404c-9dba-796a05d7d388'),
('8c2d2ef7-eee2-4113-be69-4a5bc6889b15', 'ee42a557-71a6-4753-bb7c-bc5f3adfc76e'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'dcffa314-5972-4591-8f9f-ac81921bd684'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'de085550-4408-4c90-af31-699d62478ea3'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'df5926fb-cbe3-4385-9a62-a3b9f41faca3'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'e50ea9ca-7a42-443a-b1f3-af81a38c8d8a'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'e7bd84dd-3d36-4393-9da4-35a6b9bff5c5'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'e9d75e9b-b71a-4224-a7dd-9366dc529cad'),
('8cdd9d4c-588e-4451-9e91-7c35d4c09793', 'f6224ec0-26c5-4037-99ec-2623fcbddb26'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '63f7bf56-ac82-4150-8fac-d6ffe297bd25'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '725cf77c-2a2f-465a-bf78-92247c307968'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', '82ca3157-e6b4-4ae5-a4b9-4dfc9fa71117'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'a6b6e9d5-6bef-47a7-98c4-3b20b7cde452'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'd2966cb3-c8c7-4dbc-b6e0-742ba1ef6ccf'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'f52fe9a2-2d3e-4420-9469-887a9a048634'),
('8cfecf53-8ffd-4c49-9dc5-1e0476f1905a', 'f99c6ad9-5dd7-4236-b678-a5b395d8288e'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '0dc8509a-1520-4149-979b-e49a55c87043'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '670c610b-aad6-45be-b72f-d6e177d13216'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', '90c26cfc-2dce-42c4-af9d-5691f2204b1f'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', 'a9537d5a-d854-429b-89a9-14fa0737f645'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', 'c7e56e92-408d-4d4b-bfe5-13c597acac11'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', 'd8c2726a-3b0a-4a4c-ac39-e10cb5efa029'),
('8ff0e722-f1bc-4195-a14b-cb0ce11de7b5', 'f0a4d369-b767-42dd-a8b6-633e5725cf43'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '03cd77e0-f237-48f7-9df1-77e1d1cb7f1e'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '275c3f94-30ff-4eae-a354-571a8f77551a'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '82855ace-f592-4db0-8b12-e845e46b319e'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', '9b55bbc9-c3bb-47bf-88c9-b9257ba23a98'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', 'af3254a3-f20c-4d40-ae79-4a27a9b8c309'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', 'b7add554-476c-4757-8361-5a244c96e9b0'),
('9124af23-1559-445a-ad69-fcef7abb7f4a', 'bad4c530-ff5b-4287-867a-e630cc024d07'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '0e771465-1e84-42d5-894d-979337e2f92f'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '11dfa446-27e6-4b6c-a95d-e504a5edb425'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '2ffdb032-2654-49ce-b874-32fa972ddabd'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', '82e32f38-9f21-4846-ba10-4161b2f9ec34'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', 'be6d6be7-92bd-486b-965d-319c1b81a40b'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', 'd03ff0a1-8807-4e43-8b11-34924c2540c6'),
('9246beea-9f31-495c-8e37-ed9a7f9357ba', 'fabdc7e7-97aa-410d-b401-de4d9b69c4ce'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '20f7d19a-a881-4b98-9e8f-cba79028734f'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '5ecde593-6b6c-4af9-bfe6-bed1562dfb29'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', '8584c245-4b82-4896-9763-bc78b04a1b7d'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'd0268268-866c-443a-a0c2-1ad8126833d9'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'd1b4fca0-31cd-4b5a-b364-894e8cb5dc50'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'ea86ab65-f87f-4f16-b8d8-a36ad85c8a9d'),
('95abdbc0-f854-44be-bc8d-5f19a771870d', 'f404941e-064d-440a-840c-1f805fde3d74'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '04447f0c-dec4-4732-84b1-45ed81468791'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '0cf968d8-ab92-4336-9e0a-257500bbb8aa'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '3154322c-64b6-4d7b-8b83-05f9d18f51b1'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '58dd7600-2b97-4b6d-b1ee-4bd090bfc757'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', '6553835d-2eae-4e5c-8ffe-48adf3aa4026'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', 'ef93229f-1ac0-437a-9cfb-709c8f29df02'),
('9d8b0ee0-7ee8-421a-9fc2-97aee131fb7a', 'f33107d1-f8d6-41e7-8749-0afb622a0fb1'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '1f5ffbb4-085c-457f-a816-15ca9693f717'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '1f90d6c3-7a17-4a12-92c1-17821a93d9a1'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '3222720b-8e45-49f5-a117-3caf9352f124'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '7d03cda6-c3c8-43d5-af3a-43bccc9864fa'),
('a2714e34-764b-47a2-af2c-887f84a4c646', '96c0215f-9823-48be-bd63-5df348ba7a89'),
('a2714e34-764b-47a2-af2c-887f84a4c646', 'dd657cdd-1d06-4b4f-98d0-5f06d0e6058a'),
('a2714e34-764b-47a2-af2c-887f84a4c646', 'fb6aadc8-bc09-4572-aef9-c54f38a1cb64'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '058f2f24-2d19-44ec-9c38-0a9489580c02'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '45ad7aa7-e1fe-44c0-8faa-b092455d780d'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '4e39b8ca-b7f2-47d3-a1da-11c1492fa263'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', '887a0c3f-d6a7-427d-b443-0e535c94d0e2'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'a9b8e0b6-cdc9-48f3-9a6f-bded44736958'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'afd1425d-8f88-470e-9b64-2e1b34a27350'),
('a32a7cdd-27dd-4e46-bc6c-a7b7a2aac92b', 'd8f572be-6833-4001-948c-1fba4dded01e'),
('a3e0540f-4622-47e3-873d-548c132537d2', '1342bfcf-9167-466b-b0e0-a21297707388'),
('a3e0540f-4622-47e3-873d-548c132537d2', '1d4e80bd-843b-4239-a225-23d8ef45f49e'),
('a3e0540f-4622-47e3-873d-548c132537d2', '2d1c8ead-6970-43ce-9b72-b1345b602fb2'),
('a3e0540f-4622-47e3-873d-548c132537d2', '75244b89-f672-44ee-beaa-e508618f7cfd'),
('a3e0540f-4622-47e3-873d-548c132537d2', '939e62e3-2c9b-4249-bbe9-2db4b986a087'),
('a3e0540f-4622-47e3-873d-548c132537d2', 'c4c21222-c9cc-4468-b238-b3f91a9c3cdf'),
('a3e0540f-4622-47e3-873d-548c132537d2', 'cd96a5cf-c792-4a1f-be72-11a3e85499b9'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '0ac5f65d-5be8-4835-b170-740fc63edc57'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '23bf9f84-b7f0-4ff3-9f27-8bee5e8a05fe'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '3990cb44-d1e0-4259-b6df-4261617625c2'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '528abcde-6fa5-46ba-8be9-e4f2ca6788bb'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '7ec9e80e-ece7-42f4-86ae-b95f0c77e01e'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', '8644b72b-e78f-48e8-95bf-a9181cc2afce'),
('a441005a-da1d-42e4-b6a9-21bfe4c73719', 'e34a45ea-0ccc-4a95-bc26-9336706ec0bd'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '02ce699b-c3a9-42c1-ae53-b9fba871119e'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '0bf34a34-b206-4a0e-9008-b85752d4998b'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '2a2b8063-04d1-4eae-b9c3-66d1a6f42eb3'),
('a7136ea1-1404-496a-a732-2f2458d6db17', '45c1760e-a5e4-435d-a217-dfcd30ffd7fc'),
('a7136ea1-1404-496a-a732-2f2458d6db17', 'b7cecfb2-69aa-4895-a9ad-d3827f32e6ae'),
('a7136ea1-1404-496a-a732-2f2458d6db17', 'c22b3deb-ab06-4fc4-8351-42761d03e97a'),
('a7136ea1-1404-496a-a732-2f2458d6db17', 'd28e843a-2017-49a8-9d2f-e12960537319'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '1679545f-281d-4e5f-8da6-09230e782115'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '371b49c9-1ad5-4e36-95c0-0833a779953d'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '7e419a73-12b7-433c-8c25-caa34b443046'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '82e11605-fb7a-4a02-b8b1-6a7c9f6d69a3'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', '8fe0a579-128d-41a1-8e4b-1a4786055704'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', 'b4e93a66-c3af-4655-b35e-5ddea6587b5f'),
('aad8751d-1831-495f-b23d-b278a3cb27ed', 'dbf5c184-4cd3-4661-a690-0f0a06a43af2'),
('ae786d5c-34a6-4f86-9042-465af777092c', '1a65f542-5637-43f8-9100-ccd5426547ae'),
('ae786d5c-34a6-4f86-9042-465af777092c', '2d9c834f-ea2f-449e-9717-1ed23dcdcf80'),
('ae786d5c-34a6-4f86-9042-465af777092c', '6f0b7403-9dcc-4b76-ae25-eb7bab47bc99'),
('ae786d5c-34a6-4f86-9042-465af777092c', '72a4107a-77ef-474f-93dd-c6d9f166de0e'),
('ae786d5c-34a6-4f86-9042-465af777092c', '9d170403-3950-4a86-b681-c3cb6dd0774f'),
('ae786d5c-34a6-4f86-9042-465af777092c', 'ae7e594c-dcc0-4929-870b-466fdfb69f57'),
('ae786d5c-34a6-4f86-9042-465af777092c', 'ff33c289-2ba7-43d8-bd11-f9beca45bb35'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '00ecd715-e373-40cc-8eee-7e4b3d86c161'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '046839ae-3ed9-4c25-aebc-b9c675f4d5db'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '42c74092-15f3-4829-b2b0-29e3062513c1'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '450d4882-4a7c-4d01-ab6c-6b4e00ee4ee6'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', '80a4bdfd-fe87-4a72-85fa-e9481a64b23b'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', 'a3553502-f150-47f4-85bc-f958b85c55ea'),
('b3caa7e4-f397-4bbf-a589-abc8ab396c8e', 'edc4ee54-56e8-439f-ae8e-4313a9ca2460'),
('bf610986-28ec-4239-a386-606e68682ff9', '16640219-6aef-4001-96c3-0559dc82397d'),
('bf610986-28ec-4239-a386-606e68682ff9', '4ebe1b59-aa19-48f8-8001-717d7312f3e6'),
('bf610986-28ec-4239-a386-606e68682ff9', '6cd9fd5f-f008-4d13-be2f-f889c68f7dfa'),
('bf610986-28ec-4239-a386-606e68682ff9', '884ab4a0-94d8-431b-96ee-324d8c5a4ecc'),
('bf610986-28ec-4239-a386-606e68682ff9', '9e063ae7-ad37-45aa-bb26-b76415682493'),
('bf610986-28ec-4239-a386-606e68682ff9', 'bdece02e-5049-4932-af36-70985c2c9720'),
('bf610986-28ec-4239-a386-606e68682ff9', 'f6863132-4cba-4a40-8481-ed29e04f0f12'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '0017e462-05fc-4fbb-8953-e55b814adb34'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '0566f452-0257-4e13-bb51-4b139a281627'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '20a2598f-df17-423d-8b4a-8260fb7e4122'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '351a2b44-5719-4ee2-81ed-3c070e7da70d'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', '492c8202-ddd2-4cee-84d8-459f6bfded32'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', 'ae3eb2e2-f6f0-404c-a3d1-d114bfcb1cf5'),
('c05dda95-6b2d-439d-8ee3-84fb4045129b', 'e28c0386-624f-4042-8a63-f330a59a94ca'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '106c851f-e43e-4c79-97ae-1c91911a352b'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '66224e1d-8631-467e-bbed-f93c57f8ca87'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '6847acde-e217-45c5-bd4e-151e2800db46'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '6c5369a7-0cab-4777-bc14-2319e77a1dc6'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', '72fb7bc2-fa8e-42f4-84c0-c7291e5a6f1f'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', 'a0034579-9ca9-40f9-8e1a-daca45567d03'),
('c38d5dd3-c20c-4950-a15f-a59a55434690', 'd10a76f8-f8bd-43aa-81dd-83d1081ebb08'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '103a8261-dc70-49eb-a91e-2dcf2414a565'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '2851c15c-8679-41f3-901d-b99b2b52fbe5'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '56dfb008-92b4-4fca-9713-9c274325ab6a'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '899b8766-e44c-4672-888b-29a2df00a816'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', '9dc7e4b2-54b2-495b-89f2-92cfdf6e77de'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', 'cd3bb19e-1ddb-4568-ac5a-b6f7afff7da5'),
('c456a71f-e507-49cb-9cc1-9d77b6e341f7', 'd62e56c3-131f-4310-ba89-80b76eb18377'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '30f11271-23b5-4338-a548-e442c6f57ef2'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '47836454-76a5-403c-bb71-76ecdae42b30'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '5e3aa65b-0487-4046-91ac-15c28a5582e8'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '676ae95e-181a-405b-9949-7daac59a5b53'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', '841acfa6-b17f-4820-92db-ab1457afab99'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', 'a2c06968-aa36-4a6f-b294-8b8798e4d5ea'),
('c6be5205-006b-40c6-bd79-4c78824e2f65', 'c3104c92-4a47-432c-9dd1-77fbb5747fc7'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '25194593-7577-431d-8a42-f4a19b84274c'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '311ecce3-05fd-42df-b541-413808be0238'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '7516c5f0-b60f-4ccb-8097-2500b606c379'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '794c3521-1d19-447a-a8d4-180bf9113a48'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', '83c3a31a-082b-45dc-99d4-c9867cd47035'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', 'baee4b8e-73b9-40ed-a543-6a142cd12533'),
('d4b55458-8db0-4eae-8f47-6e36fc57bfda', 'c3cb59a5-e50e-42fb-a021-0ed646f97d68'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '0e27580d-65b7-487d-9102-cc909b207c81'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', '515ee1ab-fc6a-4b1a-980f-2473d8c0499e'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'a1c454b7-2b35-41e8-8cdb-a0ef92797821'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'c4c38cfd-5ad1-473a-9455-0b8191729866'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'd59ec140-587b-4236-b8f4-5168e44766ef'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'fad46a98-8455-44a0-873a-6ea9713c0037'),
('ddec6953-5513-42bf-a9ee-487dde4498ff', 'fd9a2b3e-018e-44eb-b279-ee437e790c22'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '297cdf0a-9eaf-4fd7-b609-e6c4f9cb17a2'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '2c8a801a-a4fe-4505-91a2-af731c9bb834'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', '81abfb83-8d14-4067-9d39-4e919b9e3676'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', 'a4a6b24c-8b4a-4a5a-a52c-667fc25471b2'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', 'b2d03ebe-c4b0-488b-be5d-dace1c9d2523'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', 'b4056a5f-076f-4f31-b60b-d238dd3b1ef4'),
('e37c2523-d4cd-47ca-a38b-3d52d37989f8', 'f887c7b5-bf8d-42b7-b214-abc60c1ec515'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '21ad1e23-65fa-4c58-a2ab-97b85d15eb33'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '3802355c-3829-48ae-b431-9aaf3d691390'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', '7c9718bd-7c84-4267-84d4-c09a8589c215'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', 'bc65b177-416e-42d7-85f7-775c96a0744a'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', 'dccfbaaf-9026-4037-a08e-eca8fa23cea1'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', 'e74c7027-5b84-47ed-941a-b315eb4ad436'),
('e5bf337b-37ba-4778-841e-8242b15c1ae2', 'ffc2d0f9-8807-481e-89de-c83619c9a80a'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '0f5a7f68-22bb-4778-b9a6-960c8211ce8b'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '1322f543-f507-42c9-b585-cc13342bf0cc'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '2ccf8277-6dcd-4366-8b00-48552b5e3612'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '2ecdddad-ac5d-47f5-963a-e87e0faa00fc'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '7b37af25-f870-4364-abc3-22f603bd0f1e'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', '9f0be047-0274-4cae-b560-9e1851317032'),
('ea7397ec-1a6e-4b66-9157-adc4e8a21188', 'a5a55137-219b-4b6b-a4a1-397113f40e1e'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '2daabda6-d30b-46b6-94e5-97d4be9b748e'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '441dc204-b634-4b08-8b29-34cb73a8c451'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '473dded6-9e4d-4ad9-a222-c3ca9a0d8ca5'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', '87d47c70-ebc2-4bf2-be79-1c0266c1ba09'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', 'b5951bce-a995-45d5-a56a-7bb2bb3bde24'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', 'd791d841-4910-40ab-bb8e-056c6dae2385'),
('eab5dcd7-e1cc-47b5-8a87-f0489185ef8b', 'dcb62d36-fd59-4525-981b-cbd6d0a1c9d4'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '192dbe83-5cb3-451b-b9d4-7cb3da111f37'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '5d08ab12-5a52-4da0-bb0f-bb90d9050d26'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '69897c1f-d325-4b35-9d23-63438905846d'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '90aa3258-b7fb-476c-99cc-f5cd327b3b42'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', '923eb26b-dbf8-411c-b531-3a1954790a72'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', 'c521b376-1dd6-413f-aebf-49b895c087fc'),
('ee00f5f6-1c81-4554-b710-29b4d0c92d61', 'cbfdb0f6-f8b2-4807-95d8-fee0af6a64f9'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '047f1b2d-de83-4adf-91ce-ca15c82ebfc3'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '40a89252-6bfe-4f45-8c08-ad97d002badb'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '4e4719d6-d15f-40f1-a3d1-bc16ca02ceb1'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '7a27fe57-49ef-4576-a1da-dd2382c02c60'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', '7a3ab5f0-f540-4792-a59b-439feb72af5a'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', 'bb362e18-d4a9-4578-befe-3f17adc6ba40'),
('ef2fff78-ccb1-417d-a77b-6953f1f9d78e', 'c056210c-9b78-43db-ac8a-507ea49e0f86'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '16446086-9af5-48d5-8d60-dcf043e66ae2'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '17ae4540-cbc0-4ee3-b30d-41d806a4fa1f'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '29c56f37-aaaa-47e7-b7bc-a807b57ac4f6'),
('f397dee0-7dae-4b20-bb98-f76719611a79', '39a6aaae-7dc1-4a49-be4f-102e2f6db5c8'),
('f397dee0-7dae-4b20-bb98-f76719611a79', 'af0e868c-df06-44c5-8f95-974c559680eb'),
('f397dee0-7dae-4b20-bb98-f76719611a79', 'b531da91-e014-4770-b3ac-1e9f17601cff'),
('f397dee0-7dae-4b20-bb98-f76719611a79', 'f9ed4dc1-6835-4bf1-ab96-f3a83d849560'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '12f1be94-2ddf-4c89-8386-80df7523ec39'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '34a82e8b-be87-43b3-924e-236c0340effb'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '7547a7fa-dde8-4c07-885c-9b1442bd2809'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '956dd6ec-3ab5-4c40-9277-255a6c12ed20'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '9b39d789-43cc-4f3c-a450-d2650c9799ab'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', '9c2a1ebd-7ab4-4adc-89d9-80e8ce3f062d'),
('f735e1d7-886a-4a32-ba62-0d2ea808ba3b', 'f31f043f-500e-4fd3-9e58-d8efeb53a237'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '07150a36-6857-4a32-935b-626d34538711'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '3e8166e1-045e-4c6e-b2b6-671dc973f2a4'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', '41ed40aa-ad90-441d-8a79-497151e9aa7b'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'bbeb7d68-6210-4b1e-a5f6-43ce4bb62a38'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'be8fa0a9-b1a2-4f66-8476-4b39f0430d57'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'f5c6a8ac-119a-4f3b-b8a1-e10d80dbee26'),
('f7b28717-758d-4dae-98c9-87a690da0e2a', 'f8c7d454-18ff-44ec-98c0-0e858e06ccdf');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` varchar(255) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `update_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `create_at`, `role_name`, `state`, `update_at`) VALUES
('422d991b-7e0a-4d00-9a70-1f293f494911', '2022-10-29 10:27:09.000000', 'role_user', b'1', '2022-10-29 10:27:09.000000'),
('dd250baf-0f59-4b14-aeac-a4f759722bc6', '2022-10-29 10:27:09.000000', 'role_admin', b'1', '2022-10-29 10:27:09.000000');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` varchar(255) NOT NULL,
  `size_name` varchar(255) DEFAULT NULL,
  `state` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size_name`, `state`) VALUES
('34f7a3ae-040f-4528-8109-aee9d910d7f8', '1', b'1'),
('b00da2df-0994-49ac-ae9e-87036ac39ada', '2', b'1'),
('b0e4178a-b2be-4628-b34d-86d5f2056286', '4', b'1'),
('ba900484-fbc9-4d2c-b5b0-b4a98cd90796', '3', b'1'),
('ff728ad2-5627-4e47-8820-156d4c2d8237', '5', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` varchar(255) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `create_at`, `state`, `tag_name`, `update_at`) VALUES
('0e19ed86-bcbe-40dd-a1ac-7044d535611c', '2022-10-29 20:34:57.000000', b'1', 'Sweatshirts', '2022-10-29 20:34:57.000000'),
('10aa4c54-5161-42eb-b632-14ac2e3368e2', '2022-11-04 07:06:18.000000', b'1', 'canifa', '2022-11-04 07:06:18.000000'),
('10b4d7e5-2335-443c-beaf-169cd43ac99b', '2022-10-29 18:28:31.000000', b'1', 'black', '2022-10-29 18:28:31.000000'),
('12ece2f0-dd05-4291-a2b3-ff905987858b', '2022-11-04 08:01:15.000000', b'1', ' Pearl', '2022-11-04 08:01:15.000000'),
('144c9485-50df-489b-8e61-aae7f67a2fc7', '2022-10-29 20:03:00.000000', b'1', 'kaki', '2022-10-29 20:03:00.000000'),
('17279152-680b-47c9-88ef-d329b8a1b66c', '2022-10-29 18:03:09.000000', b'1', 'white', '2022-10-29 18:03:09.000000'),
('1948f571-aed1-4cdf-b5d5-cb952390af9c', '2022-11-04 09:25:04.000000', b'1', ' queen', '2022-11-04 09:25:04.000000'),
('233731ee-76f6-4fe6-b3f8-05ab170e60e7', '2022-10-29 19:53:30.000000', b'1', 'hoodie', '2022-10-29 19:53:30.000000'),
('244c1833-d3b7-41ae-a5d5-704ba1a775ef', '2022-10-29 19:31:23.000000', b'1', 'Sweater', '2022-10-29 19:31:23.000000'),
('25707559-195a-403c-8422-c765fd83f217', '2022-11-03 08:26:32.000000', b'1', 'chools', '2022-11-03 08:26:32.000000'),
('27ce0375-bf5c-494d-a14f-7b86dce31d91', '2022-10-29 20:34:57.000000', b'1', 'brown', '2022-10-29 20:34:57.000000'),
('2854ff55-89d1-4004-9f23-8d82a35a2e7e', '2022-10-29 18:03:09.000000', b'1', 'gray', '2022-10-29 18:03:09.000000'),
('312ca8a6-46e1-4feb-802b-0e26c2c7273d', '2022-11-03 08:21:00.000000', b'1', 'girl', '2022-11-03 08:21:00.000000'),
('38edcfb8-9955-449f-8996-4b1036d6c0b9', '2022-11-04 07:42:51.000000', b'1', ' phone', '2022-11-04 07:42:51.000000'),
('3bd3c934-4744-42ca-8198-e724f0fa1383', '2022-11-04 06:56:25.000000', b'1', ' Jade', '2022-11-04 06:56:25.000000'),
('3ee0dd92-d16c-40f1-a78c-0d9df01183ad', '2022-10-29 18:13:03.000000', b'1', 'women', '2022-10-29 18:13:03.000000'),
('3fc23b6d-39a8-4c95-a35f-698b364f2322', '2022-11-04 09:30:29.000000', b'1', 'p', '2022-11-04 09:30:29.000000'),
('41d91fa1-5a9f-4c24-b906-2c6180b26d67', '2022-11-04 07:49:23.000000', b'1', ' pet', '2022-11-04 07:49:23.000000'),
('42d7b142-3f98-42fb-a17f-73d02e8f6517', '2022-10-29 18:03:09.000000', b'1', ' black', '2022-10-29 18:03:09.000000'),
('436fb31b-6e65-4854-95be-ee4bcd799d1e', '2022-10-29 18:13:03.000000', b'1', 'pink', '2022-10-29 18:13:03.000000'),
('43b15ddc-d69d-45c0-8b4e-f83d575b9170', '2022-11-04 08:27:27.000000', b'1', 'ring', '2022-11-04 08:27:27.000000'),
('45679c8b-854e-4a9a-a87a-c4b162640344', '2022-11-04 09:44:08.000000', b'1', 'Healthy', '2022-11-04 09:44:08.000000'),
('4742347d-3023-4dc8-a53f-cbaaf42661ab', '2022-11-03 08:08:28.000000', b'1', 'vietnam', '2022-11-03 08:08:28.000000'),
('4803ef53-e1e9-4ad1-a8c5-f70084fd0d75', '2022-10-29 18:28:31.000000', b'1', 'shirt', '2022-10-29 18:28:31.000000'),
('489ab5fb-cc7f-4050-b818-732c13fe02b6', '2022-11-04 09:00:32.000000', b'1', 'dubai', '2022-11-04 09:00:32.000000'),
('48b7b59b-5d83-4e77-a200-93204ab8fbe9', '2022-11-04 07:32:12.000000', b'1', 'Chest Strap', '2022-11-04 07:32:12.000000'),
('4cc7f279-b57d-4d79-a69f-9f0343fa7cce', '2022-10-29 18:03:09.000000', b'1', 'clothes', '2022-10-29 18:03:09.000000'),
('50543146-db7c-4739-9bd8-95e632d9e2f5', '2022-11-03 08:21:00.000000', b'1', 'schools', '2022-11-03 08:21:00.000000'),
('50e1c22e-aac2-4a69-8775-114b660b57d9', '2022-11-03 08:16:21.000000', b'1', 'shoes', '2022-11-03 08:16:21.000000'),
('54ff698c-a62a-40aa-93f9-99bca7684c19', '2022-11-04 08:01:15.000000', b'1', ' chanel', '2022-11-04 08:01:15.000000'),
('5738a902-c243-4894-8084-e32b9aefcaf5', '2022-11-04 09:44:09.000000', b'1', ' soap', '2022-11-04 09:44:09.000000'),
('5ed0e289-eadb-4aec-987c-5fbf4a160e59', '2022-10-30 00:09:29.000000', b'1', 'sleepwear', '2022-10-30 00:09:29.000000'),
('5fbd700a-9fef-4775-9852-b1aacd8a5cf7', '2022-11-04 07:56:36.000000', b'1', 'earring', '2022-11-04 07:56:36.000000'),
('622116db-2622-4165-9a67-e0f03624fe81', '2022-11-04 09:22:43.000000', b'1', ' black opium', '2022-11-04 09:22:43.000000'),
('63caf8c0-2325-4ac5-afd7-8b7fbd06f962', '2022-10-29 22:22:58.000000', b'1', 'kid', '2022-10-29 22:22:58.000000'),
('658024ff-e025-4453-9cf3-298e0d95141c', '2022-11-04 07:56:36.000000', b'1', ' Dior', '2022-11-04 07:56:36.000000'),
('6b778064-9c19-4f86-9356-b6dd0735d4a0', '2022-10-30 00:15:27.000000', b'1', 'kid.dress.white', '2022-10-30 00:15:27.000000'),
('6d3353d8-4e58-4cc8-8a21-0dc2c2c9c542', '2022-11-04 07:45:13.000000', b'1', ' baby', '2022-11-04 07:45:13.000000'),
('707e1453-528f-465c-91f9-69d3ee5a703f', '2022-11-04 09:07:18.000000', b'1', 'dior', '2022-11-04 09:07:18.000000'),
('760dd672-0dd9-4ae6-926d-aa02f6968717', '2022-10-29 18:13:03.000000', b'1', 'dress', '2022-10-29 18:13:03.000000'),
('7765c843-c6a1-48ad-b400-101837b8215c', '2022-10-29 18:28:31.000000', b'1', 'men', '2022-10-29 18:28:31.000000'),
('7cbe24fe-a351-4685-bc49-b4b15d290bd9', '2022-11-04 08:12:42.000000', b'1', 'Pearl', '2022-11-04 08:12:42.000000'),
('7fbfc4be-6224-466b-9716-76474272ffd4', '2022-11-03 15:52:18.000000', b'1', 'choker', '2022-11-03 15:52:18.000000'),
('83d7fe9c-b84e-411e-8ff2-fb33a805b8cc', '2022-11-03 16:32:39.000000', b'1', 'bacelet', '2022-11-03 16:32:39.000000'),
('86c8d805-0cee-4d9d-8d68-5a5905c90e44', '2022-10-29 19:46:18.000000', b'1', 'underwear', '2022-10-29 19:46:18.000000'),
('9466c82e-7429-472f-bb9e-5c2fd81b5db4', '2022-11-04 07:15:26.000000', b'1', 'chanel', '2022-11-04 07:15:26.000000'),
('97f5a902-ae0c-455f-9baf-0723927a99b9', '2022-10-29 18:03:09.000000', b'1', ' hoodie', '2022-10-29 18:03:09.000000'),
('995b386c-9e52-40b9-ab39-5bcaa80bf263', '2022-11-04 07:36:51.000000', b'1', 'gỉl', '2022-11-04 07:36:51.000000'),
('9ae085a7-2641-49b8-aeb3-6763956e49c6', '2022-11-04 09:00:32.000000', b'1', ' manp', '2022-11-04 09:00:32.000000'),
('a7f1b9f3-aa5d-499f-a77a-255f5b2dcffb', '2022-11-04 09:34:08.000000', b'1', 'girlp', '2022-11-04 09:34:08.000000'),
('aa99e826-3c91-4248-817f-cc826ea7caf5', '2022-11-04 08:45:51.000000', b'1', ' girlr', '2022-11-04 08:45:51.000000'),
('aafe8ee4-20b7-4077-a60c-5137fee5625d', '2022-11-04 08:31:11.000000', b'1', ' girl', '2022-11-04 08:31:11.000000'),
('ac2ba7de-474b-444c-a7a2-e486e4d6da62', '2022-11-04 09:44:08.000000', b'1', ' body', '2022-11-04 09:44:08.000000'),
('b332c38f-b78c-4589-a806-f100ee6af52d', '2022-10-29 18:13:03.000000', b'1', 'office', '2022-10-29 18:13:03.000000'),
('b359503b-73f7-4c3f-bd5e-884bb53d534c', '2022-11-03 16:50:14.000000', b'1', ' boy', '2022-11-03 16:50:14.000000'),
('b47c19c5-281e-4259-bbb8-82d3f7660e66', '2022-11-04 06:52:38.000000', b'1', ' elise', '2022-11-04 06:52:38.000000'),
('b83cc055-402d-40ca-97c6-132fd899eccc', '2022-11-04 08:53:20.000000', b'1', ' man', '2022-11-04 08:53:20.000000'),
('bfafaa71-2a1e-4ffc-947e-08190473db56', '2022-10-29 18:13:03.000000', b'1', 'blue', '2022-10-29 18:13:03.000000'),
('c4a05c82-3d96-4745-813e-aad427006f53', '2022-11-03 15:52:18.000000', b'1', ' silver', '2022-11-03 15:52:18.000000'),
('c68e2ef4-b0e3-41d3-ae86-fffcad501385', '2022-11-04 07:12:33.000000', b'1', 'silver', '2022-11-04 07:12:33.000000'),
('c80282b9-2ec2-42b4-a8fc-6466f77b1470', '2022-10-29 19:31:23.000000', b'1', 'green', '2022-10-29 19:31:23.000000'),
('c9b2fea4-c035-45eb-a616-1cf321b55346', '2022-10-29 20:34:57.000000', b'1', 'red', '2022-10-29 20:34:57.000000'),
('d5205879-7fec-4fbc-9c67-77e6857ed263', '2022-11-04 07:32:12.000000', b'1', ' ', '2022-11-04 07:32:12.000000'),
('d64972e2-6d94-4b71-9a08-b2b0fc917787', '2022-11-03 09:20:54.000000', b'1', 'hairclip', '2022-11-03 09:20:54.000000'),
('dd67e0a7-8c17-4ae7-8286-a8e6637003b1', '2022-11-04 08:37:37.000000', b'1', 'boy', '2022-11-04 08:37:37.000000'),
('e05f3162-993f-4794-9bd9-44b76ba171e6', '2022-11-04 07:32:12.000000', b'1', ' dog', '2022-11-04 07:32:12.000000'),
('e3a2b861-973e-440a-8942-81e16ab4c70a', '2022-10-29 22:22:58.000000', b'1', 'coat', '2022-10-29 22:22:58.000000'),
('e70b3c5c-1e00-42c8-b714-d6ae5f26247c', '2022-11-04 08:37:37.000000', b'1', 'gorl', '2022-11-04 08:37:37.000000'),
('ea4d741c-0b6c-4e12-86f7-b8b10166c155', '2022-10-29 20:03:00.000000', b'1', 'trousers', '2022-10-29 20:03:00.000000'),
('ebe2b14a-b83b-42b3-b3f1-48f41c96fd8c', '2022-10-29 19:46:18.000000', b'1', 'sexy', '2022-10-29 19:46:18.000000'),
('f468d544-2848-454e-bda6-dc1716a83045', '2022-11-04 07:19:56.000000', b'1', 'gold', '2022-11-04 07:19:56.000000'),
('f7dd517e-bb36-45be-9305-c0d8cbe20fec', '2022-11-04 07:56:36.000000', b'1', ' girle', '2022-11-04 07:56:36.000000'),
('feba65f1-7476-4ba9-ac5c-72ac166026db', '2022-11-03 08:16:21.000000', b'1', 'shools', '2022-11-03 08:16:21.000000'),
('ff9ad884-96d7-4f33-8796-45568ff8e4e5', '2022-11-02 13:31:10.000000', b'1', 'perfume', '2022-11-02 13:31:10.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `state` bit(1) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `verify` bit(1) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `address`, `avatar`, `create_at`, `email`, `password`, `phone_number`, `state`, `update_at`, `username`, `verify`, `role_id`) VALUES
('63856f12-4932-4803-b931-effa89bbbc61', 'Hà Nội', NULL, '2022-10-29 12:09:31.000000', 'Xuanhieu.t187@gmail.com', '$2a$10$ymTezh8AD9LruwlfCXjaYObw7emCE8Db0dL0IJS8vOwmlMmvPovje', '0919362187', b'1', '2022-10-29 12:09:31.000000', 'seidai_haru', b'0', '422d991b-7e0a-4d00-9a70-1f293f494911'),
('81d25dfb-b665-46c2-8903-a4258f927b77', 'Ha Noi', NULL, '2022-10-29 16:38:39.000000', 'hieu.dbutcl@gmail.com', '$2a$10$EeRBGWJSnhUBRCbeYW3KMeplS.jAwuQ4HPFs0i.hL5FFQfZMUVrYy', '0919362188', b'1', '2022-10-29 16:38:39.000000', 'Lucifer_Shinoe', b'0', 'dd250baf-0f59-4b14-aeac-a4f759722bc6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5ubwme5r3t8aa4xv9f9f24r2p` (`admin_id`),
  ADD KEY `FK3anm32qidktjwo0pko91ce2in` (`order_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_hsu7w3m7wxvplg49ip7g0v5rr` (`brand_name`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_cj8imr5hevbk387csjkjydwlr` (`brand_thumbnail`),
  ADD UNIQUE KEY `UK_m71ky4c00ebk7p2euicr5wiv6` (`card_brand`),
  ADD UNIQUE KEY `UK_by1nk98m2hq5onhl68bo09sc1` (`card_number`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKl70asp4l4w0jmbm1tqyofho4o` (`user_id`);

--
-- Indexes for table `cart_product_carts`
--
ALTER TABLE `cart_product_carts`
  ADD PRIMARY KEY (`cart_id`,`product_carts_id`),
  ADD UNIQUE KEY `UK_4ql8c1qtpwt4s7t1gdbs7u3lq` (`product_carts_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_lroeo5fvfdeg4hpicn4lw7x9b` (`category_name`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_entity`
--
ALTER TABLE `order_entity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_swfm9obd8bx1omfldevva2hjy` (`order_name`),
  ADD KEY `FKdikderaycp8pwoigw489wohfa` (`user_id`);

--
-- Indexes for table `order_entity_product_cart`
--
ALTER TABLE `order_entity_product_cart`
  ADD UNIQUE KEY `UK_eo9h7pvup4ov432yrvg0o8q42` (`product_cart_id`),
  ADD KEY `FKbf0w59hauaamfc433ik2oysjk` (`order_entity_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_383i0awxqlq7pc33hil7afbgo` (`product_name`),
  ADD KEY `FKs6cydsualtsrprvlf2bb3lcam` (`brand_id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhpnrxdy3jhujameyod08ilvvw` (`product_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`product_id`,`color_id`),
  ADD KEY `FK3iys6jgmsdkw7w5ncgm55wgj3` (`color_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`product_id`,`size_id`),
  ADD KEY `FKnlkh5xcjuopsnoimdvmumioia` (`size_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tags_id`),
  ADD KEY `FK37nayk23lk8ibkhrfy8wwbvyo` (`tags_id`);

--
-- Indexes for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  ADD PRIMARY KEY (`product_id`,`thumbnails_id`),
  ADD UNIQUE KEY `UK_2b3wy8qq2fxtmt7w07wmeja5l` (`thumbnails_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_iubw515ff0ugtm28p8g3myt0h` (`role_name`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_i51gh8nlw8i1f92to9pvnqq7s` (`size_name`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_1r1tyf6uga9k6jwdqnoqwtk2a` (`tag_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  ADD UNIQUE KEY `UK_4bgmpi98dylab6qdvf9xyaxu4` (`phone_number`),
  ADD KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `FK3anm32qidktjwo0pko91ce2in` FOREIGN KEY (`order_id`) REFERENCES `order_entity` (`id`),
  ADD CONSTRAINT `FK5ubwme5r3t8aa4xv9f9f24r2p` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `cart_product_carts`
--
ALTER TABLE `cart_product_carts`
  ADD CONSTRAINT `FKambim0icwti7pxiqg27ta9px8` FOREIGN KEY (`product_carts_id`) REFERENCES `product_cart` (`id`),
  ADD CONSTRAINT `FKe37nj893bwyqposruoyp2r05j` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`);

--
-- Constraints for table `order_entity`
--
ALTER TABLE `order_entity`
  ADD CONSTRAINT `FKdikderaycp8pwoigw489wohfa` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order_entity_product_cart`
--
ALTER TABLE `order_entity_product_cart`
  ADD CONSTRAINT `FK7st90ua1wx63snbaj7m8qwvh7` FOREIGN KEY (`product_cart_id`) REFERENCES `product_cart` (`id`),
  ADD CONSTRAINT `FKbf0w59hauaamfc433ik2oysjk` FOREIGN KEY (`order_entity_id`) REFERENCES `order_entity` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Constraints for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD CONSTRAINT `FKhpnrxdy3jhujameyod08ilvvw` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `FK3iys6jgmsdkw7w5ncgm55wgj3` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `FKqb6lncpndi0w5po3rr5r9up5e` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `FK8i3jm2ctt0lsyeik2wt76yvv0` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKnlkh5xcjuopsnoimdvmumioia` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`);

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `FK37nayk23lk8ibkhrfy8wwbvyo` FOREIGN KEY (`tags_id`) REFERENCES `tag` (`id`),
  ADD CONSTRAINT `FK8gmf959fnpxtkagtk56mbaj0e` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_thumbnails`
--
ALTER TABLE `product_thumbnails`
  ADD CONSTRAINT `FK2sq8b0xufg7bxhqf7amkpowl6` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKo48wmhkjrtfnytheqkbpm3y5d` FOREIGN KEY (`thumbnails_id`) REFERENCES `product_image` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
