-- phpMyAdmin SQL Dump
-- version 4.0.10.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2014 at 11:38 AM
-- Server version: 5.5.40-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cloudcom_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE IF NOT EXISTS `billers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `invoice_footer` varchar(1000) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `logo`, `invoice_footer`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(1, 'Matt', '12Three', 'Address', 'City', 'Sate', '0000', 'Australia', '012345678', 'matt.langford@12three.com.au', 'logo.png', '', '', '', '', '', '', ''),
(2, 'Steven White', 'Always Prompt Appliance Repairs', '14 Geodorum Street', 'Shailer Park', 'Queensland', '4128', 'Australia', '61411845615', 'stephanos18@hotmail.com', 'logo.png', '', '', '', '', '', '', ''),
(3, 'test sales', 'lo7ol7l', '7ol 35h35hy5', 'Melbourne', 'Vic', '3121', 'Australia', '55858585855', 'hh@w.com', 'logo.png', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `date` date NOT NULL,
  `data` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`date`, `data`, `user_id`) VALUES
('2014-08-18', 'Testing Beta Today', 1),
('2014-08-20', 'Test job', 1),
('2014-08-26', 'No Jobs\n', 1),
('2014-08-28', 'Beta test', 1),
('2014-08-29', 'New job', 1),
('2014-08-30', 'Some Suburb Fridge Repair\n\nSome Suburb Fridge Repair\n\nSome Suburb Fridge Repair', 1),
('2014-08-31', 'No Work', 1),
('2014-09-01', 'Shailer Park', 9),
('2014-09-02', 'It;s Tuesday', 1),
('2014-09-04', 'Sell more dazza', 1),
('2014-09-10', 'zfghgh', 1),
('2014-10-04', 'First Match', 1),
('2014-10-05', 'xcghgh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`) VALUES
(1, 'C1', 'Category 1'),
(2, 'cat1', 'Category 2'),
(3, 'cat2', 'Category 3'),
(4, 'cat3', 'Category 4');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment`) VALUES
('');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=909 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(1, 'Test Customer', 'Customer Company Name', 'Customer Address', 'Melbourne', 'Victoria', '3121', 'Australia', '0123456789', 'customer@test.com', '', '', '', '', '', ''),
(2, 'Jones', 'ABCD Company', '30 Cremorne st', 'Richmond', 'Victoria', '3121', 'Australia', '0421623179', 'jones@test.com', '', '', '', '', '', ''),
(3, 'mo', 'def co', 'qweqqq', 'melbourne', 'vic', '3121', 'aus', '0123456789', 'mo@mo.com', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'IQ ELECTRICAL', 'Tecdiary IT Solutions', '85 VICTORIA STREET', 'KERANG', 'Victoria', '3579', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Anne-Marie Thierry', '', '18 Poloni Place', 'Wellington Point', 'Queensland', '', 'Australia', '402488679', 'thierrydna@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Lillian Attwood', '', '9 Equestrain Drive', 'Yamanto', 'Queensland', '4305', 'Australia', '437200251', 'attwoodL@optusnet.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Robert Wiley', '', '42 Riverina Street', 'Calamvale', 'Queensland', '4116', 'Australia', '424701150', '', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Mitch Sadleir', '', '2/18 Chelmsford Avenue', 'Lutwyche', 'Queensland', '4051', 'Australia', '401619287', '', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Australian Boarding Schools Association', '', '6/3 Hinkler Court', 'Brendale', 'Queensland', '4500', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Matthew Kelly', '', '62 Kitchener Street', 'Sherwood', 'Queensland', '4075', 'Australia', '431917496', '', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Ross Mcdonald', '', '1257 Waterworks Road', 'The Gap', 'Queensland', '', 'Australia', '418369701', '', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Rick Anderson', '', '68/42 Ferry Street', 'Kangaroo Point', 'Queensland', '4169', 'Australia', '404405885', '', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Lisha Steele', '', '32 Couple Street', 'North Lakes', 'Queensland', '4509', 'Australia', '400128493', '', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Daniel James', '', '3/98 Cunningham Street', 'Taringa', 'Queensland', '4068', 'Australia', '417485881', '', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Paul Buckby', '', '37 Demille Street', 'McDowall', 'Queensland', '4053', 'Australia', '419758430', '', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Gai Buchanan', '', '41/8 Peninsula Ave', 'Cornubia', 'Queensland', '4130', 'Australia', '422175466', '', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Georgia Moriarty', '', '507/113 Commercial Road', 'Newstead', 'Queensland', '4006', 'Australia', '418181040', '', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Nicole Packman', '', '1 Amanda Street', 'Burpengary', 'Queensland', '', 'Australia', '410589608', '', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Paul Buchanan', '', '5 Goldsmith Court', 'Petrie', 'Queensland', '4502', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Marina Roberts', '', '15 Moy Street', 'Kelvin Grove', 'Queensland', '4059', 'Australia', '437930911', '', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Bodene Dingwall', '', '17 Everest street', 'Warner', 'Queensland', '', 'Australia', '413632818', '', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Eloise Roberts', '', '243/82 Boundary Street', 'Brisbane CBD', 'Queensland', '4000', 'Australia', '406122401', 'eloise.roberts@au.pwc.com', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Jennifer Harms', '', '12 Maidenhair Drive', 'Narangba', 'Queensland', '', 'Australia', '477816708', '', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Robyn & Robert Mallett', '', '56 Cutts Street', 'Margate', 'Queensland', '4019', 'Australia', '408884475', '', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Chris Saville', '', '33 Walton Cres', 'Murumbia Downs', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(26, '1) COD', '', 'Chris Saville', '', '9/10/2014 5:45', '34919515', '', 'FALSE', '9/08/2014 5:54', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Nick Copeland', '', '106 Erica Street', 'Cannon Hill', 'Queensland', '', 'Australia', '412788042', '', NULL, NULL, NULL, NULL, NULL, NULL),
(28, '1) COD', '', 'Nick Copeland', '', '9/16/2014 4:44:09 AM', '', '', 'FALSE', '9/08/2014 22:14', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Naomi Visscher', '', '48 Seventh Ave', 'St Lucia', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Chloe Stubbings ', '', '15 Oldbury Place', 'Forest Lakes', 'Queensland', '4078', 'Australia', '400105899', '', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Darren Kelly', '', '8 Czarnecki Street', 'Camira', 'Queensland', '4300', 'Australia', '418195013', '', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Dani Partoredjo', '', '24 Percy Street', 'Taragindi', 'Queensland', '', 'Australia', '403593245', '', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Darren Boots', '', '51 Lockyer Place', 'Drewvale', 'Queensland', '', 'Australia', '434484918', '', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Garry Carter', '', '40 Ballater Street', 'Sunnybank Hills', 'Queensland', '', 'Australia', '407630590', '', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Karen Beauchamp', '', '3 Corinto Court', 'Dakabin', 'Queensland', '4503', 'Australia', '0422676547 B', '', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Mary Ryan', '', '21 Laurel Street', 'Highgate Hill', 'Queensland', '4101', 'Australia', '411221162', 'maryryan29@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(37, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(38, '1) COD', '', '', '', '9/10/2014 5:01', '', '', 'FALSE', '9/09/2014 1:44', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Samantha Jennings', '', '4/237 Pickering Street', 'Enoggera', 'Queensland', '4051', 'Australia', '404329460', 'samantha8121@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'John Tooney', '', '521 Honour Ave', 'Sherwood', 'Queensland', '', 'Australia', '427032666', '', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Ben Carroll', '', '61 Amanda Street', 'Wynnum West', 'Queensland', '4178', 'Australia', '417007241', '', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Lorena Tomasi', '', '5/68 Heidelberg Street', 'East Brisbane', 'Queensland', '', 'Australia', '418422799', '', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Natalie Dean', '', '9 Wendy Crescent', 'Clontarf', 'Queensland', '4019', 'Australia', '430373802', '', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Stephanie Paterson', '', '193 Shafton Avenue', 'Kangaroo Point', 'Queensland', '4169', 'Australia', '402052213', '', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Michelle Harrison', '', '5 Victoria Terrace', 'Gordon Park', 'Queensland', '4031', 'Australia', '411585222', '', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Damien White', '', '167 Pioneer Road', 'Sheldon', 'Queensland', '4157', 'Australia', '0418163891 (D)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(47, '1) COD', '', 'Damien White', '', '9/09/2014 4:12', '', '', 'FALSE', '9/09/2014 4:05', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Sonya Wilson', '', '125 Middle Street', 'Coopers Plains', 'Queensland', '4108', 'Australia', '408673323', '', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Len Lindeque', '', '24 Birchwood Crescent', 'Brookwater', 'Queensland', '4300', 'Australia', '413046555', '', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Reece Butler', '', '5 O\\''Connell Street', 'Redcliffe', 'Queensland', '', 'Australia', '419284993', '', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Fleetmatics Test', '', 'test street', '', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Megan Juran', '', '344 California Creek Road', 'Cornubia', 'Queensland', '', 'Australia', '413137454', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Philip Swinsburg', '', '4 Andress Street', 'McDowall', 'Queensland', '4053', 'Australia', '425000370', 'philsemail@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Joseph McKinnon', '', '22/6-32 University Drive', 'Meadowbrook', 'Queensland', '', 'Australia', '417748349', 'joe.mckinnon@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Malcolm Thornton', '', '36 Barokee Street', 'Stafford', 'Queensland', '', 'Australia', '432233872', '', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Doug McKercher', '', '23 Higgs Circuit', 'Wynnum West', 'Queensland', '', 'Australia', '401672671', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Robyn Laurie', '', '16 Douglas Street', 'Enoggera', 'Queensland', '', 'Australia', '406065523', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Allan Blake', '', '15 Anakie Drive', 'Cornubia', 'Queensland', '', 'Australia', '412570960', '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Debra Vaughan', '', '47 Esplanade', 'Yeronga', 'Queensland', '', 'Australia', '418787020', '', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Tania Granzin', '', '22 Elamang Close', 'Sinnamon Park', 'Queensland', '', 'Australia', '409276753', '', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Micah Holloway', '', '1/170 Gympie Street', 'Northgate', 'Queensland', '', 'Australia', '430244946', '', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Margaret Hurley', '', '90 Woodlands Blvd', 'Waterford', 'Queensland', '', 'Australia', '407011154', '', NULL, NULL, NULL, NULL, NULL, NULL),
(63, '1) COD', '', 'Margaret Hurley', '', '9/14/2014 10:12:37 PM', '', '', 'FALSE', '9/09/2014 23:59', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Nina Gibson', '', '35 Ronayne Circle', 'One Mile', 'Queensland', '4305', 'Australia', '407029029', '', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Danielle Hoffmann', '', '64 Collings Street', 'Geebung', 'Queensland', '', 'Australia', '432317165', '', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Jess Bujeya', '', '26 Warringah Grove', 'Petrie', 'Queensland', '', 'Australia', '412416966', '', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Finbar Mills', '', '1/8 Cintra Road', 'Bowen Hills', 'Queensland', '', 'Australia', '422979823', '', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Noami Cole', '', '5 David Street', 'Morningside', 'Queensland', '', 'Australia', '409599446', '', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'David Elston', '', '5 Milletta Court', 'Albany Creek', 'Queensland', '', 'Australia', '412078005', '', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Katherine McDougall', '', '16 Murton Avenue', 'Holland Park', 'Queensland', '', 'Australia', '402271310', '', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Julie Margaglione', '', '108 Copeland Drive', 'North Lakes', 'Queensland', '', 'Australia', '402323118', '', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Chris Austen', '', '4/1 Sydney Street', 'Redcliffe', 'Queensland', '', 'Australia', '448191038', '', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Elsbeth Sutherland', '', '3 Saphire Court', 'Kenmore', 'Queensland', '', 'Australia', '422650042', '', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Lynda James', '', '5 Kilroe Court', 'Ormiston', 'Queensland', '', 'Australia', '434368602', '', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Sandy Parsons', '', '96 Central Ave', 'Sherwood', 'Queensland', '', 'Australia', '407539278', '', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Jason Podlich', '', '22 Nullarbor Circuit', 'Forest Lake', 'Queensland', '', 'Australia', '428734553', '', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Nathan Fraser', '', '511/38 Warner Street', 'Fortitude Valley', 'Queensland', '', 'Australia', '416981596', '', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Patrick Balfe', '', '38/341 Bowen Tce', 'New Farm', 'Queensland', '4005', 'Australia', '0448768159P', '', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Danielle Alderman', '', '4 Themeda Court', 'Victoria Point', 'Queensland', '', 'Australia', '417709541', 'danielle@pctv.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Jim Eldridge', '', '4 Victoria street', 'Brighton', 'Queensland', '', 'Australia', '418989058', '', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Stewart Carvin', '', '731 Waterworks Road', 'The Gap', 'Queensland', '4061', 'Australia', '418337225', '', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Jennifer Dodds', '', '59 Grange Road', 'Grange', 'Queensland', '', 'Australia', '408871077', '', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Caroline Burnett', '', '33 Kildonan Street', 'Aspley', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Danielle Aldridge', '', '23 Columbia Street', 'Chapel Hill', 'Queensland', '', 'Australia', '447816389', 'danielle_aldridge@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Trever Gordon', '', '32 Lockerbie Street', 'Kangaroo Point', 'Queensland', '', 'Australia', '421750272', '', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Paul Stapelton', '', '12 Manly Close', 'Albany Creek', 'Queensland', '', 'Australia', '417750560', '', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Catherine Mckay', '', '45 Oberon St', 'Morningside', 'Queensland', '4017', 'Australia', '402306095', '', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Cleo Jackson', '', '11 Christopher Place', 'Sinnamon Park', 'Queensland', '', 'Australia', '428334745', '', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Aeron', '', '2304/21 Mary Street', 'Brisbane CBD', 'Queensland', '', 'Australia', '412092047', 'btyegi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Graham Anderson', '', '232 Herston Road', 'Herston', 'Queensland', '', 'Australia', '477720969', '', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Rebecca Woolmer', '', '135 Cedar Creek Road', 'Kedron', 'Queensland', '4055', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Bob Pink', '', '11 Margaret Cres', 'Wakerley', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Jim Cooper', '', '11/112 Oxlade Drive', 'New Farm', 'Queensland', '', 'Australia', '427823163', '', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Liberty Estate Agents', '', 'PO BOX 3654', 'Burleigh Town', 'Queensland', '4220', 'Australia', '', 'admin@libertyestateagents.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Brad Pickersgill', '', '7 Edward Place', 'Sinnamon Park', 'Queensland', '', 'Australia', '488035902', '', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Gareth Walcroft', '', '18 Clare Ave', 'Wynnum West', 'Queensland', '', 'Australia', '422281967', '', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Raylene Bolic', '', '14 Barcelona Street', 'Wishart', 'Queensland', '', 'Australia', '417079011', '', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Kyile', '', '30 Fairlane Street', 'Joyner', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Gail', '', '18 Blue Hills Drive', 'Bunya', 'Queensland', '4055', 'Australia', '403125615', '', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Fabian', '', '81 Upper Lancaster Rd', 'Ascot', 'Queensland', '', 'Australia', '402414826', '', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Len', '', '14 Maddocks St', 'Virginia', 'Queensland', '', 'Australia', '419739480', '', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Mark Sayers ', '', '15 Eccleston', 'Fig Tree Pocket ', 'Queensland', '', 'Australia', '0418 742 642', '', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'joe blogs', '', '5 rachael crt', 'Wynnum west', 'Queensland', '4178', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Key', '', '3A Blythe st ', 'Kelvin Grove ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Marton Volep ', '', '2/18 Pine St ', 'Bulimba ', 'Queensland', '', 'Australia', '402028503', '', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Perach Nuriel ', '', '1/42 Clive St ', 'Annerly ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'isabel ', '', '50 Boblynne st ', 'Chapel Hill ', 'Queensland', '4069', 'Australia', '0424 066 617', '', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Dan', '', '46 Ivy st ', 'Indooroopilly ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Jenna ', '', '12 Wentworh Pl ', 'Carindale ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Jo ', '', '35 Endevour St ', 'Capalaba', 'Queensland', '', 'Australia', '0400 666 186', '', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Antonia ', '', '29 Mar St ', 'Holland Park ', 'Queensland', '', 'Australia', '0408 018 016', '', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'Chris ', '', '189 Leichart St ', 'Spring Hill ', 'Queensland', '', 'Australia', '0417 773 270', '', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Luke ', '', '528/38 Warner St ', 'Fortitude Valley ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Julie', '', '1 Oakwood Way ', 'Carindale ', 'Queensland', '', 'Australia', '0428 875 362', '', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Kay Tumtaroa', '', '129 Adelaide St ', 'Carina ', 'Queensland', '', 'Australia', '0433 758 968', '', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Jane Morgan ', '', '43 Davies rd ', 'Ashgrove ', 'Queensland', '', 'Australia', '0412 727 083', '', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Kera', '', '15 Talwain St ', 'Aspley ', 'Queensland', '', 'Australia', '0412 753 653', '', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Tony', '', '3/14 Lemnos St ', 'Red Hill ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Johanna ', '', '28 Brender Crt ', 'Collingwood Park ', 'Queensland', '', 'Australia', '0418 790 679', '', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'George ', '', '11 Tangadee Crt ', 'Shailer Park ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'Naz & Tarique', '', '18/7 Helen St', 'Newstead', 'Queensland', '', 'Australia', 'T: 0400 905 411', '', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Naz & Tarique', '', '18/7 Helen St', 'Newstead', 'Queensland', '', 'Australia', 'T: 0400 905 411', '', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'brenda & Wayne', '', '105 Clifford st', 'Stafford Heights ', 'Queensland', '', 'Australia', '0402 655 468', '', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Kathleen', '', '31 Sauterne St ', 'Carseldine', 'Queensland', '', 'Australia', '418885964', '', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Janelle Barnes', '', '40/140 Baringa St', 'Morningside', 'Queensland', '', 'Australia', '0409 435 559', '', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Dee Jeffery', '', '8 Brinley Pl', 'Sinamon Park ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Noel Williams ', '', '23 cropthorne st', 'Tarragindi', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'Jane & Ivan Smith ', '', '4 cosmos St ', 'Magregor', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Bethany', '', '9 Murson St ', 'Taigum ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Barry ', '', '90 Deagon St ', 'Sandgate', 'Queensland', '', 'Australia', '38690078', '', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Angela O\\''Sullavin', '', '27 Livingstone St ', 'Yerongpilly', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'Edward', '', '22 Bentleigh St ', 'Calamvale', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Edward', '', '22 Bentleigh St ', 'Calamvale', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Belinda & Steven ', '', '29 Laraine St ', 'Braken Ridge ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Jessica \\"ML Design\\" ', '', 'Level 8, 333 Ann St ', 'CBD', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Jenny', '', '12 Greenwich Crt ', 'Alexandra Hills ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'greg', '', '1 Ashbury Crt ', 'Alexandra Hills ', 'Queensland', '', 'Australia', '417751497', '', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'rachael ', '', '66 Dagmar St ', 'Holland Park ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Belinda ', '', '14/9 Doggart St', 'Fortitude Valley ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Jackie ', '', '3 Topham Crt ', 'Hillcrest', 'Queensland', '', 'Australia', '0433 978 880', '', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Kathy Huf ', '', '11 Sunsail Pl ', 'Thornelands ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Joanne Bennette ', '', 'miles Villas', 'Runcorn ', 'Queensland', '', 'Australia', '0423 052 353', '', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Megan and Phil', '', '45 Terowi Steet', 'Sunnybank Hills', 'Queensland', '', 'Australia', '402797071', '', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'Sharon', '', '17 Waterline Crescent', 'Waterford', 'Queensland', '', 'Australia', '407147091', '', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'Carlos ', '', '20/93-99 Logan St ', 'Beenleigh ', 'Queensland', '', 'Australia', '0402 009 657', '', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'Tom Gibson', '', '45 Brisbane St ', 'Annerly', 'Queensland', '', 'Australia', '0467 040 003', '', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Ryan KEndall', '', '9 Keaton St ', 'Macdowall ', 'Queensland', '', 'Australia', '0412 741 706', '', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'Sam Parkinson', '', '14 Toreffiam Pl', 'Cashmere ', 'Queensland', '', 'Australia', '0405 077 156', '', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'barry ', '', '90 Deagon st ', 'SANDGATE ', 'Queensland', '', 'Australia', '0447 191 335', '', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'Joan ', '', 'North Tower \\"john Oxley Centre\\"', 'Milton ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Letita', '', '33 George Holt Drive', 'Mount Crosby ', 'Queensland', '', 'Australia', '0427 392 967', '', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Tenant: Renee & Katie ', '', '1895 Waterford-tamborine Rd', 'Tamborine', 'Queensland', '', 'Australia', '0400 839 531 K', '', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'sam', '', '10 Brackbut St ', 'Cornubia ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Jenny ', '', '12 Greenwich Crt', 'Alexandra Hills', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(155, 't: Antonio & Jenny', '', '77 Johnathan Rd', 'Sheldon', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Greg ', '', '11 Ronnex Pl ', 'Aspley', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'Nicole \\"Montezumers\\"', '', 'Shop 4, 25 fergason St ', 'Albany Creek', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Helen & Berny', '', '18 Mirbelia St ', 'Everton Hills', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'James ', '', '8 Moyry St ', 'The Gap ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Liam ', '', '81 Glen Morgan St ', 'Kaparra ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Joshua Aria ', '', '21 The Esplanade ', 'Forest Lake ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Rosie ', '', '13 Adina St ', 'Norman Park ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'David And Elizabeth ', '', '35 John St', 'Manly West', 'Queensland', '', 'Australia', '0408 457 365', '', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Donna ', '', '413 Esplanard ', 'Manly ', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Angela Houghton', '', '18 Satainwood crt', 'Bardon', 'Queensland', '', 'Australia', '418728567', '', NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'Geraldo Sansone, QFLOW International Pty Ltd', '', '10/191 Parramatta Rd', 'Auburn', 'Queensland', '2144', 'Australia', '405535703', 'geraldo@qflow.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Steven White', '', '14 Geodorum Street', 'Shailer Park', 'Queensland', '4128', 'Australia', '411845615', '', NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'Job Smith Shailer Park', '', '14 Geodorum Street', 'Shailer Park', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'Cindy-Leigh White', '', '14 Geodorum Street', 'Shailer Park', 'Queensland', '4128', 'Australia', '424098074', '', NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'Shailer Park, Cindy-Leigh White ', '', '14 Geodorum Street', 'Shailer Park', 'Queensland', '4128', 'Australia', '424098074', '', NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'John Costello', '', '11 Garden Dr', 'Burpengary', 'Queensland', '4505', 'Australia', '437549877', '', NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'Christian Missionary Franciscan Sisters', '', '115 Turner Rd', 'Kedron', 'Queensland', '4031', 'Australia', '418730966', '', NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'Christian Missionary Franciscan Sisters', '', '115 Turner Rd', 'Kedron', 'Queensland', '4031', 'Australia', '418730966', '', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'Christian Missionary Franciscan Sisters', '', '115 Turner Rd', 'Kedron', 'Queensland', '4031', 'Australia', '418730966', '', NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'Carmel Purcell', '', '16 Carson Dr', 'Bunya', 'Queensland', '4055', 'Australia', '408559994', '', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'Michelle Thompson', '', '20 Fairweather Close', 'Manly West', 'Queensland', '4179', 'Australia', '434994613', '', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'Tony Farrugia', '', '60 Bunker Rd', 'Victoria Point', 'Queensland', '4165', 'Australia', '428880428', '', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'RAY WHITE Victoria Point', '', '1/27 Colburn Ave', 'Victoria Point', 'Queensland', '4165', 'Australia', '', 'Kelly.barker@raywhite.com', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'RAY WHITE Victoria Point', '', '1/27 Colburn Ave', 'Victoria Point', 'Queensland', '4165', 'Australia', '', 'Kelly.barker@raywhite.com', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'RAY WHITE Victoria Point', '', '1/27 Colburn Ave', 'Victoria Point', 'Queensland', '4165', 'Australia', '', 'Kelly.barker@raywhite.com', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'Bevan & Helen Hall', '', '3 Lanaglen Dr', 'Birkdale', 'Queensland', '4159', 'Australia', '416340322', 'bev_hel@tpg.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'Sue Buntine', '', '56 Heaslop Terrace', 'Annerley', 'Queensland', '4103', 'Australia', '422627927', '', NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'START MARKER Aaron', '', '12 Ringtail Street', 'Northlakes', 'Queensland', '4509', 'Australia', '401505069', 'a.hauraki@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'START MARKER Cyril', '', '42 Trump Circuit', 'North Lakes', 'Queensland', '4509', 'Australia', '400913379', 'cyrilbaggerman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'START MARKER Ryan', '', '49 Marland Street', 'Kenmore', 'Queensland', '4069', 'Australia', '422758400', 'battyrye@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'START MARKER Shanan', '', '39 Jupiter Street', 'Wulkuraka', 'Queensland', '4305', 'Australia', '402542868', 'shananm2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'Ray White Manly', '', '457 Esplanade', 'Manly', 'Queensland', '4179', 'Australia', '', 'sonya.hayward@raywhite.com', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'Ray White Manly', '', '457 Esplanade', 'Manly', 'Queensland', '4179', 'Australia', '', 'sonya.hayward@raywhite.com', NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'Claudia U\\''Prichard', '', '2/2 Beaconsfield Street', 'Margate', 'Queensland', '4019', 'Australia', '413294052', 'claudia@quiltessentials.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'Kerry Lawson', '', '49 Blackall Rd', 'Murrumba Downs', 'Queensland', '4503', 'Australia', '400534540', 'klawson@mmtc.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'Geraldine Donoghue', '', '3/69 Prince Edward Parade', 'Redcliffe', 'Queensland', '4020', 'Australia', '415800511', '', NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'Warwick Weeks', '', '34 Talisker Pl', 'Parkinson', 'Queensland', '4115', 'Australia', '434605109', '', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'Tracey Jaques', '', '46 Dry Dock Circuit', 'Springfield Lakes', 'Queensland', '4300', 'Australia', '416345800', '', NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'Doug Middelton', '', '23 Warabi Crescent', 'North Lakes', 'Queensland', '4509', 'Australia', '457731868', '', NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'Debbie Jefferies', '', '16-18 Thorn Street', 'Ormiston', 'Queensland', '4160', 'Australia', '408458385', '', NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'Debbie Jefferies', '', '16-18 Thorn Street', 'Ormiston', 'Queensland', '4160', 'Australia', '408458385', '', NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'David Hay', '', '118 Plumer St', 'Sherwood', 'Queensland', '4075', 'Australia', '414443140', '', NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'Ed Power', '', '112-126 Camp Cable Rd', 'Jimboomba', 'Queensland', '4280', 'Australia', '413432457', '', NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'Dan Young', '', '137 Browns Rd', 'Kurwongbah', 'Queensland', '4503', 'Australia', '4036502614', '', NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'Sue Bayes', '', '2/19 Primrose Dr', 'Thornlands', 'Queensland', '4164', 'Australia', '411822904', '', NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'Nick & Maria Kalokerinos', '', '18 Sandringham St, Mansfield, 4122', '', 'Queensland', '', 'Australia', '408027327', '', NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'Charissa Jones', '', '3 Fiesole Pl', 'Bridgeman Downs ', 'Queensland', '4035', 'Australia', '419701408', '', NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'Kylie Matthews', '', '108 German Church Rd ', 'Carbrook ', 'Queensland', '4130', 'Australia', '423040517', '', NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'Christine Fisher', '', '18 Margaret Rd, ', 'Jimboomba', 'Queensland', '4280', 'Australia', '407375103', '', NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Claire Wright', '', '63 Lloyd St', 'Camp Hill', 'Queensland', '4152', 'Australia', '408719036', '', NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'Yvette Dollar', '', '6 Coolmunda Pl, Albany Creek, 4035', '', 'Queensland', '', 'Australia', '422110078', '', NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'Mark Sullivan', '', '42-44 Beenleigh-Redland Bay Rd, Loganholme, 4129', '', 'Queensland', '', 'Australia', '402420951', '', NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'Leah Gaffney', '', '1 Commodore St, Sunnybank Hills, 4109', '', 'Queensland', '', 'Australia', '414564788', '', NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'Rachael Adams', '', '63 Melbourne Ave, Camp Hill, 4152', '', 'Queensland', '', 'Australia', '419040838', '', NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'Renee Trevaskis', '', '41 Rose Ln, Gordon Park, 4031', '', 'Queensland', '', 'Australia', '415801350', '', NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'Trish Gillan', '', '28 Glenwood Pl, Hemmant, 4174', '', 'Queensland', '', 'Australia', '408065985', '', NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'Rob Schmitz', '', '7 Lorimer St, Springwood, 4127', '', 'Queensland', '', 'Australia', '414545832', ' robsueschmitz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'Sharon McGrory', '', '11 Brelox St, Chermside West, 4032', '', 'Queensland', '', 'Australia', '414624552', '', NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'Margaret Crombie', '', '8 Glasnevin St, Indooroopilly, 4068', '', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'Helen Pennington', '', '31 Jarup St, Jindalee, 4074', '', 'Queensland', '', 'Australia', '4009937238', 'themewtons@bigpond.com', NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'Ailsa Thompson, Logan River Tree Farm', '', '59/63 Chapman Dr, Beenleigh, 4207', '', 'Queensland', '', 'Australia', '435793135', '', NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'John Gardner', '', '356 Richmond Rd, Cannon Hill, 4170', '', 'Queensland', '', 'Australia', '431164926', '', NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'Shanan Leave', '', 'Jupiter Street', 'Shailer Park', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'Heather Streatfield', '', '39 Castlewellan Circuit, Warner, 4500', '', 'Queensland', '', 'Australia', '432858430', 'heather_streatfeild@yahoo.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'Erin Jackson', '', '37 Harold St, Stafford, 4053', '', 'Queensland', '', 'Australia', '408123187', '', NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'Andrew Engery Skills QLD', '', ' 70 Sylvan Rd, Toowong, 4066', '', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'Jane / Deb John Hollands PTY LTD', '', '3/1000 Ann St', 'Fortitude Valley', 'Queensland', '4006', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'Glen & Stacey Hickling', '', '81 Scanlan Rd, Mitchelton, 4053', '', 'Queensland', '', 'Australia', '0466348490 (S) ', '', NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'Shelly Pritchard', '', '181 Smiths Rd, Wights Mountain, 4520', '', 'Queensland', '', 'Australia', '423283074', '', NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'Brendan Egan', '', '6/28 Grantson St, Windsor, 4030', '', 'Queensland', '', 'Australia', '424345301', '', NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'Glen Thomas', '', '31 Coolana St, Lota, 4179', '', 'Queensland', '', 'Australia', '419815699', 'glen.thomas@laminex.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'Cathy Pruss', '', '9 Pampas Ct, Capalaba, 4157', '', 'Queensland', '', 'Australia', '408605249', '', NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'Kendy Stevens', '', '5/10 Pittwin Rd, Capalaba, 4157', '', 'Queensland', '', 'Australia', '421507775', '', NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'Craig Sharp', '', '34 Twigg St, Indooroopilly, 4068', '', 'Queensland', '', 'Australia', '408887169', '', NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'Sue Buchanan', '', '208/19 Wicklow St, Kangaroo Point, 4169', '', 'Queensland', '', 'Australia', '409745480', '', NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'Bill Hogarth', '', '3 Gralunga St, Mansfield, 4122', '', 'Queensland', '', 'Australia', '407759745', '', NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'Queensland Gas Company QGC', '', '275 George St', 'Brisbane', 'Queensland', '4000', 'Australia', '', 'michelle.knowles@bg-group.com', NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'Queensland Gas Company QGC', '', '275 George St', 'Brisbane', 'Queensland', '4000', 'Australia', '', 'michelle.knowles@bg-group.com', NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'Denis Smith', '', '9 Grovely Terrace', 'Mitchelton', 'Queensland', '4053', 'Australia', '421334732', '', NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'Sharon Hillas', '', '32 St Clair Crescent', 'Wishart', 'Queensland', '4122', 'Australia', '438258732', '', NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'Steve 2', '', '14 Geodorum St, Shailer Park', '', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'Pat French', '', '10 Charles St', 'Bundamba', 'Queensland', '4304', 'Australia', '438077698', '', NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'Kerry Carroll', '', '4', 'Victoria Point', 'Queensland', '4165', 'Australia', '411552036', '', NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'Adam Hawkes', '', '8', 'Murarrie', 'Queensland', '4172', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'Lisa Kavanagh', '', '13 Warnambul Road', 'Shailer Park', 'Queensland', '4128', 'Australia', '411163871', '', NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'Russell Dakin', '', '104 Evelyn Street', 'Grange', 'Queensland', '4051', 'Australia', '418192843', '', NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'Jess MacNaught', '', '13 Moriarty Pl, Bald Hills, 4036', '', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'Jessica Lucas', '', '320 Gardner Road', 'Rochedale ', 'Queensland', '4123', 'Australia', '424294304', '', NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'Elizabeth Geldard', '', 'R40/356 Blunder Rd, Durack, 4077', '', 'Queensland', '', 'Australia', '407749136', '', NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'Srinivasa Eda', '', '84 Bradman Street', 'Sunnybank Hills', 'Queensland', '4109', 'Australia', '431601947', '', NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'Roger & Wendy Jaques', '', '13 Tennyson St, Norman Park, 4170', '', 'Queensland', '', 'Australia', '408001586', '', NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'David Billington', '', '15', 'Warner', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'Grant and Rebbecka Hine', '', '6 Dickens St, Norman Park, 4170', '', 'Queensland', '', 'Australia', '402235829', '', NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'Claire Wall', '', '39 Moorrinya Circuit', 'North Lakes', 'Queensland', '4509', 'Australia', '438743704', '', NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'Lisa Woolgar', '', '9 Worden St, Morningside, 4170', '', 'Queensland', '', 'Australia', '412741279', '', NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'Kuldip Singh', '', '40/28 Holmead Road', 'Eight Mile Plains', 'Queensland', '4113', 'Australia', '459093497', 'wg13_13@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(252, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(253, '1) COD', '', 'Kuldip Singh', 'wg13_13@hotmail.com', '9/16/2014 4:47:39 AM', '31084558', '', 'FALSE', '8/26/2014 12:50:04 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'SENTIS', '', 'BUILDING 2', 'MURRARIE', 'Queensland', '4172', 'Australia', '', 'michelle.tekani@sentis.net', NULL, NULL, NULL, NULL, NULL, NULL),
(255, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(256, '1) COD', '', 'Michelle', '', '9/08/2014 5:23', '', '', 'FALSE', '8/26/2014 12:51:06 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'Donna Goodman', '', '21 musgrave st, north ipswich, 4305', '', 'Queensland', '', 'Australia', '412651584', '', NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'Joanne Adams', '', '63 Mareeba Road', 'Ashgrove', 'Queensland', '4060', 'Australia', '417609507', '', NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'Pat French', '', '10 Charles Street', 'Bundamba', 'Queensland', '4304', 'Australia', '438077698', '', NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'Cam Saunders', '', '8 Satch Court', 'Eight Mile Plains', 'Queensland', '4113', 'Australia', '434361956', '', NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'Trish Popadynec', '', '10 Ferres Street', 'Grange', 'Queensland', '4051', 'Australia', '410400915', '', NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'Trish Popadynec', '', '10 Ferres Street', 'Grange', 'Queensland', '4051', 'Australia', '410400915', '', NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'Trish Popadynec', '', '10 Ferres Street', 'Grange', 'Queensland', '4051', 'Australia', '410400915', '', NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'Sean Trotter', '', '9 Jean Street', 'Grange', 'Queensland', '4051', 'Australia', '438391186', '', NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'Brett Davidson', '', '6/30 Weller Rd', 'Tarragindi', 'Queensland', '4121', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'Chris Urry', '', '51 Grandview St, Kuraby, 4112', '', 'Queensland', '', 'Australia', '402803662', '', NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'Richard Gillies', '', '32 Tomkins Road', 'Riverhills', 'Queensland', '4074', 'Australia', '431561435', ' richard1632numenor@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'Sarah Debono', '', '83 Agnew Street', 'Norman Park', 'Queensland', '4170', 'Australia', '409418062', 'sarahdebono2000@yahoo.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'Janette Gyte', '', '74 Alexandra Street', 'Sandgate', 'Queensland', '4017', 'Australia', '419641490', '', NULL, NULL, NULL, NULL, NULL, NULL),
(270, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(271, '1) COD', '', 'Janette Gyte', '', '9/18/2014 11:33:35 PM', '', '', 'FALSE', '8/26/2014 3:28:19 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'Mark Maieroni', '', '2/37 Barrymore Street', 'Everton Park', 'Queensland', '4053', 'Australia', '422769586', 'mmaieroni@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'Cyndy McConnell', '', '70 Herron Road', 'Pullenvale', 'Queensland', '4069', 'Australia', '412162654', '', NULL, NULL, NULL, NULL, NULL, NULL),
(274, '1) COD', '', '', '', '9/09/2014 0:03', '', '', 'FALSE', '8/26/2014 3:59:44 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'Jenny Christie', '', '33 Fryar Street', 'Camp Hill', 'Queensland', '4152', 'Australia', '428148056', '', NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'Coralie Muddle', '', '41 Acacia Avenue', 'Northgate', 'Queensland', '4013', 'Australia', '439771509', '', NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'Karen Mahoney', '', '9 Bogunda street', 'the gap', 'Queensland', '4061', 'Australia', '417007322', '', NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'Bree Zannes', '', '118 Albion Road', 'Windsor', 'Queensland', '4030', 'Australia', '403860350', '', NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'Rialette Eezuieenhout', '', '35 Balaton Street', 'Westlake', 'Queensland', '4074', 'Australia', '435087441', '', NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'Cindy Fish', '', '19 Rolland pde', 'Warner', 'Queensland', '4500', 'Australia', '433541111', '', NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'Tanya Edge', '', '29/94 Prince Edward Parade', 'Redcliffe', 'Queensland', '4020', 'Australia', '417728580', '', NULL, NULL, NULL, NULL, NULL, NULL),
(282, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(283, '1) COD', '', 'Tanya Edge', '', '9/02/2014 0:18', '38804723', '', 'FALSE', '8/26/2014 5:19:12 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'Susan Coh', '', '33A Sunningdale Ave', 'Rochedale South', 'Queensland', '4123', 'Australia', '418787806', '', NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'Laurey Ryan', '', '14 Buckra Street', 'Bracken Ridge', 'Queensland', '4017', 'Australia', '403890249', '', NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'Lea McKnoulty', '', '14/78 Cairns Street', 'Kangaroo Point', 'Queensland', '4169', 'Australia', '409475539', '', NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'Jo Ewart', '', '12 Duchess Place', 'Cleveland', 'Queensland', '4163', 'Australia', '414236837', '', NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'Cameron Woodrow', '', '90 Parkwood Place', 'Anstead', 'Queensland', '', 'Australia', '405424246', '', NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'Cindy White', '', '14 Geodorum Street', 'Shailer Park', 'Queensland', '4128', 'Australia', '424098074', '', NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'Therese Selfridge', '', '963 Brunswick Street', 'New Farm', 'Queensland', '4005', 'Australia', '414694149', '', NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'Michelle Millar', '', '38 Cottonwood Circuit', 'North Lakes', 'Queensland', '4509', 'Australia', '498727544', 'shaunmichelle68@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(292, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(293, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(294, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(295, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(296, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(297, '1) COD', '', 'Michelle Millar', 'shaunmichelle68@gmail.com', '9/12/2014 0:13', '34812307', '', 'FALSE', '8/26/2014 10:03:12 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'CAROLINE BIDDLE', '', '30 CARRINGTON ROAD', 'INDOOROOPILLY', 'Queensland', '4068', 'Australia', '417001218', '', NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'Robert Velthuis', '', '1/58 Fifth Avenue', 'Kedron', 'Queensland', '4031', 'Australia', '419646367', '', NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'Emma Cameron', '', '85 Wynnum Road', 'Norman Park', 'Queensland', '4170', 'Australia', '438878948', '', NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'Steven Feeney', '', '3 Brendena Terrace', 'Carina Heights', 'Queensland', '4152', 'Australia', '411575273', '', NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'Bob Hughes', '', '44/23 Griffith Street', 'New Farm', 'Queensland', '4005', 'Australia', '417718276', '', NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'Melody Olsson', '', '4 Williton Court', 'Carseldine', 'Queensland', '4034', 'Australia', '488170013', '', NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'David Reynolds', '', '36 Curlew Street', 'Toowoong', 'Queensland', '', 'Australia', '408665933', 'davidr@fairclothreynolds.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'Al Hanna', '', '27 Gertrude McLeod Crescent', 'Middle Park', 'Queensland', '4074', 'Australia', '405671971', '', NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'Power By Watts', '', '30 Headlam Rd', 'Moss Vale', 'Queensland', '2577', 'Australia', '', 'admin@powerbywatts.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'Pamela Beattie / Footprints in Brisbane', '', '105 Commercial Road', 'Newstead', 'Queensland', '4006', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'Kate Zahnleiter', '', '205/8 Land Street', 'Toowong', 'Queensland', '4066', 'Australia', '402384827', '', NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'Fleur Kingham', '', '41 Sexton Street', 'Highgate Hill', 'Queensland', '4101', 'Australia', '407445806', '', NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'Nara Kulig', '', '949 South Pine Road', 'Everton Park', 'Queensland', '4053', 'Australia', '417703702', '', NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'Luke Hutchinson', '', '403/31 Longland St, Newstead, 4006', '', 'Queensland', '', 'Australia', '430075069', '', NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'Kellie Baker', '', '24 Amy Dr, Beenleigh, 4207', '', 'Queensland', '', 'Australia', '409849850', 'bakegogs@hotmail.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'Ingrid Elms', '', '719 Esplande ', 'Lota', 'Queensland', '4179', 'Australia', '407481701', '', NULL, NULL, NULL, NULL, NULL, NULL),
(314, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(315, '1) COD', '', 'Ingrid Elms', '', '9/02/2014 5:06', '33964949', '', 'FALSE', '8/27/2014 1:27:55 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(316, ' Michael Kerr', '', '37 Joyner Circuit, ', 'Caboolture', 'Queensland', '4510', 'Australia', '434565096', '', NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'Annie Goodman', '', '10 Chalmers Ct, ,', 'Samford Village', 'Queensland', '4520', 'Australia', '418719262', '', NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'Kenny Wuan', '', '3/120 Queens Rd', 'Everton Park', 'Queensland', '4053', 'Australia', '425526699', '', NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'Taren Cooper', '', '43 Coronata Crescent', 'Narangba', 'Queensland', '4504', 'Australia', '418190627', '', NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'Melanie Safonoff', '', '72 Davidson Street', 'Newmarket', 'Queensland', '4051', 'Australia', '412488168', '', NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'LJ HOOKER BRISBANE CENTRAL', '', 'PO BOX 20', 'BRISBANE', 'Queensland', '4001', 'Australia', '', 'hwaldburger.brisbanecentral@ljh.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(322, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(323, '3) 7 Days', '', 'Harina', '	 hwaldburger.brisbanecentral@ljh.com.au', '8/27/2014 3:58:34 AM', '(07) 323', '', 'FALSE', '8/27/2014 3:54:10 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'Danelle Edwards', '', '167 Edenbrooke Drive', 'Seventeen Miles Rocks', 'Queensland', '4074', 'Australia', '414799431', 'danelle_edwards14@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'Kitty Chow', '', '23 Harlequin Street', 'Sunnybank Hills', 'Queensland', '4109', 'Australia', '412655858', '', NULL, NULL, NULL, NULL, NULL, NULL),
(326, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(327, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(328, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(329, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(330, '1) COD', '', 'Kitty Chow', '', '9/15/2014 5:17:29 AM', '', '', 'FALSE', '8/27/2014 4:52:09 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'Debra Theodoros', '', '16 Greenford Street', 'Chapel Hill', 'Queensland', '4069', 'Australia', '411090681', '', NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'Bright Beginings / Jeanine', '', '687 Hamilton Road', 'Chermside West', 'Queensland', '4032', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'Rachael Moore', '', 'Bahrs Scrub', '', 'Queensland', '', 'Australia', '428571548', 'kirakatana@bigpond.com', NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'Tanya Aaskov', '', '78 Datton Street', 'Mt Gravatt East', 'Queensland', '4122', 'Australia', '409597616', '', NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'Cathy Credic', '', '19 Coach Street', 'Slacks Creek', 'Queensland', '', 'Australia', '421519832', '', NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'Cathy Credic', '', '19 Coach Street', 'Slacks Creek', 'Queensland', '', 'Australia', '421519832', '', NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'Christy Marriott', '', '11 Galahad Street', 'Marsden', 'Queensland', '4132', 'Australia', '412317968', '', NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'Danielle Rack', '', '30 Highridge Road', 'Springfield', 'Queensland', '4300', 'Australia', '478612831', '', NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'Kerryn Grice', '', '63 Toombul Terrace', 'Nundah', 'Queensland', '4012', 'Australia', '431755158', '', NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'Simone Musgrave', '', '1/4 Emsworth Street', 'Wynnum', 'Queensland', '4178', 'Australia', '416072723', '', NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'Geoff Gray', '', '11 Jenkins Court', 'Goodna', 'Queensland', '', 'Australia', '438770356', 'geoffpgray@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'Geoff Gray', '', '11 Jenkins Court', 'Goodna', 'Queensland', '', 'Australia', '438770356', 'geoffpgray@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'Danielle Toshack', '', '14 Uther Street', 'Carindale', 'Queensland', '4152', 'Australia', '407787597', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(344, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(345, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(346, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(347, '1) COD', '', '', '', '8/28/2014 4:49:34 AM', '', '', 'FALSE', '8/27/2014 11:51:12 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'Danielle Toshack', '', '14 Uther Street', 'Carindale', 'Queensland', '4152', 'Australia', '407787597', '', NULL, NULL, NULL, NULL, NULL, NULL),
(349, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(350, '1) COD', '', '', '', '8/27/2014 11:56:25 PM', '', '', 'FALSE', '8/27/2014 11:56:25 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'Susan Dobell', '', '2/20-22 Finney Road', 'Indooroopilly', 'Queensland', '4068', 'Australia', '400850662', '', NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'Jane King', '', '15 Jerrold Street', 'Sherwood', 'Queensland', '4075', 'Australia', '407372290', '', NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'Loretta Rodgers', '', '322 Stanbrough Road', 'Belmont', 'Queensland', '4153', 'Australia', '418788147', '', NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'Maria Flemming', '', '5 Mayfield St', 'Ascot', 'Queensland', '4007', 'Australia', '433547962', '', NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'Jodie Eade', '', '43 Pryde Street', 'Camp Hill', 'Queensland', '4152', 'Australia', '407177798', '', NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'Sandra Elliott', '', '73 Twilight Street', 'Kenmore', 'Queensland', '4069', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(357, '1) COD', '', '', '', '8/29/2014 5:18:07 AM', '', '', 'FALSE', '8/28/2014 12:58:34 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'Workpac', '', '168 Robertson Street', 'Fortitude Valley', 'Queensland', '4006', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'Rosanne Stuart', '', '100 George Holt Drive', 'Mt Crosby', 'Queensland', '4306', 'Australia', '428156688', 'rosanne@stuartbuildingcertification.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'Rosanne Stuart', '', '100 George Holt Drive', 'Mt Crosby', 'Queensland', '4306', 'Australia', '428156688', 'rosanne@stuartbuildingcertification.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(361, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(362, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(363, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(364, '1) COD', '', '', '', '9/09/2014 1:09', '', '', 'FALSE', '8/28/2014 1:22:39 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'Lynda Watson', '', '87 Huet St, Nundah, 4012', '', 'Queensland', '', 'Australia', '407758783', '', NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'Blessing Gijimani', '', '7 Leonie Place', 'Doolandella', 'Queensland', '4077', 'Australia', '410412171', '', NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'Naomi Doak', '', '27 -29 Blue Heeler Drive', 'New Beith', 'Queensland', '4124', 'Australia', '415941089', '', NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'Marry Clark', '', '21 Slaney Place, Aspley 4034', '', 'Queensland', '', 'Australia', '427241048', '', NULL, NULL, NULL, NULL, NULL, NULL),
(369, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(370, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(371, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(372, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(373, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(374, '1) COD', '', 'Alicia', '', '9/09/2014 22:46', '', '', 'FALSE', '8/28/2014 1:56:37 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'Den Callanan', '', '16 Emerald Street', 'Kedron', 'Queensland', '', 'Australia', '409577355', '', NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'Geoff Steele', '', '34 Burgin Road', 'Ferny Grove', 'Queensland', '4055', 'Australia', '412193333', '', NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'ST Francis College', '', '64 Julie Street', 'Creastmead', 'Queensland', '4132', 'Australia', '408768826', '', NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'Nikki Temple', '', '19 Franklin Crescent', 'Morayfield', 'Queensland', '4506', 'Australia', '422453788', '', NULL, NULL, NULL, NULL, NULL, NULL),
(379, '1) COD', '', '', '', '8/28/2014 4:40:30 AM', '', '', 'FALSE', '8/28/2014 3:54:01 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'Jon Regazzoli', '', '15/12 Mailey Street', 'Mansfield', 'Queensland', '4122', 'Australia', '431844373', '', NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'Mitch Hayes', '', '7/11 Onslow Street', 'Ascot', 'Queensland', '4007', 'Australia', '487887277', '', NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'Helen Reid', '', '5/68 York Street', 'Coorparoo', 'Queensland', '4151', 'Australia', '424943001', '', NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'Holly Mullen', '', '27 Lewis Street', 'Clayfield', 'Queensland', '4011', 'Australia', '410250955', '', NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'Richard & Rebecca Todd', '', '297 Beaconsfield Terrace', 'Brighton', 'Queensland', '4017', 'Australia', '423223339', '', NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'Edith Edlin', '', '5 Mirandi Street', 'The Gap', 'Queensland', '4061', 'Australia', '419786625', '', NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'Stacey Irving', '', '20 Freshwater Creek Road', 'Mango Hill', 'Queensland', '', 'Australia', '432972893', '', NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'Trent & Candice Smith', '', '13 Tawny Court', 'Bray Park', 'Queensland', '4500', 'Australia', '0409956207 (T)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'Moby Ng', '', '55 Hill Road', 'Runcorn', 'Queensland', '', 'Australia', '401137248', 'mobyng@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(389, '1) COD', '', 'Moby Ng', 'mobyng@gmail.com', '9/03/2014 1:08', '', '', 'FALSE', '8/28/2014 10:04:40 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'Frank Jacobson', '', '72/1 Linear Drive', 'Mango Hill', 'Queensland', '4509', 'Australia', '448394123', '', NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'Arcare Warrigal', '', '549 Warrigal Rd', 'Eight Mile Plains', 'Queensland', '4113', 'Australia', '402031965', '', NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'Trish Nutter', '', '46-50 Hayes Avenue', 'Camira', 'Queensland', '4300', 'Australia', '451511911', '', NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'Dig It Landscapes', '', '60 Baxter Street', 'Fortitude Valley', 'Queensland', '4006', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'Ian Ross', '', '4 Morgan Street', 'Norman Park', 'Queensland', '4170', 'Australia', '414849943', '', NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'Kelly Bailey', '', '71 Macaulay Street', 'Coorparoo', 'Queensland', '4151', 'Australia', '497077570', '', NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'Good News Lutheran Church', '', '45 Horizon Drive', 'Middle Park', 'Queensland', '4074', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'Karen Smith', '', '18 O\\''Connell Place', 'Enoggera', 'Queensland', '4051', 'Australia', '417618545', '', NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'Anthony Borys', '', '16 Barkcrest Court', 'Crestmead', 'Queensland', '4132', 'Australia', '498976617', '', NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'Christine Jackson', '', '39 Montgomery Drive', 'Wellington Point', 'Queensland', '4160', 'Australia', '410574551', '', NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'Claire Ford', '', '2 Fawkner Street', 'Slacks Crrek', 'Queensland', '4127', 'Australia', '433157633', '', NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'Jo & Wayne Grisdale', '', '4 Mindip Court', 'Carindale', 'Queensland', '4152', 'Australia', '421834099', 'grizjo@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'Mitchel Jenkins', '', '2/77 Park Road', 'Slacks Creek', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'JAMES Kijas', '', '42 Lizzie Street', 'Bardon', 'Queensland', '4065', 'Australia', '32142442 (work)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'Peter Carmichael', '', '134 Dickman Road', 'Forestdale', 'Queensland', '4118', 'Australia', '411875652', '', NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'Emily Pryor', '', '18 Laura Street', 'Highgate Hill', 'Queensland', '', 'Australia', '415200643', '', NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'Samantha Gilbert', '', '12 Ambrose Drive', 'Augustine Heights', 'Queensland', '4300', 'Australia', '458813030', '', NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'Margaret Partridge', '', '14 Darling Terace', 'Wakerley', 'Queensland', '4154', 'Australia', '417199859', 'essendon02@dodo.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(408, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(409, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(410, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(411, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(412, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(413, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(414, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(415, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(416, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(417, '1) COD', '', 'Margaret Cartridge', '', '9/19/2014 12:21:26 AM', '33483505', '', 'FALSE', '8/29/2014 4:39:05 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'Tatiely Fleming', '', '66 Torbay Road', 'Chandler', 'Queensland', '4155', 'Australia', '402237220', 'selectearthmoving@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'Peter Muldoon', '', '6 Renoir Court', 'Rothwell', 'Queensland', '', 'Australia', '488110850', '', NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'Christine & Rob McLeod', '', '99/2 Goodwin Street', 'Kangaroo Point', 'Queensland', '4169', 'Australia', '0431909292 (C)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'Elissa Saffery', '', '24/26 Stay Place', 'Carseldine', 'Queensland', '4034', 'Australia', '413948074', '', NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'Tony Danieli', '', '5 Minerva Lane', 'Seven Hills', 'Queensland', '4170', 'Australia', '408746410', '', NULL, NULL, NULL, NULL, NULL, NULL),
(423, '1) COD', '', 'Tony Danieli', '', '9/09/2014 22:18', '', '', 'FALSE', '8/31/2014 10:13:00 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'Linda Stallard', '', '1 Bauple Street', 'Albany Creek', 'Queensland', '', 'Australia', '428843438', 'lyndastallard@bigpond.com', NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'Mark Verx', '', '43 Selwyn Street', 'North Booval', 'Queensland', '', 'Australia', '409333327', '', NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'Paul Adams', '', '75 Fletcher Parade', 'Bardon', 'Queensland', '4065', 'Australia', '400024156', '', NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'Naomi Malouf', '', '4/2316 Sandgate Road', 'Boondall', 'Queensland', '', 'Australia', '417456322', '', NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'Helen Williams', '', '11 Twists Road', 'Burpengary', 'Queensland', '4505', 'Australia', '418746011', '', NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'Judy Fagan', '', '3 Telaska Court', 'Capalaba', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'Myra Maxwell', '', '11/29 Oatland Crescent', 'Holland Park West', 'Queensland', '4121', 'Australia', '401226747', '', NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'George Moss', '', '21 Albert Street', 'Holland Park West', 'Queensland', '4121', 'Australia', '423139793', '', NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'Charles Ferguson', '', '32 Carmel Street', 'Bardon', 'Queensland', '4065', 'Australia', '410952285', '', NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'Jane Pocock', '', '9 Waverney Court', 'Carindale', 'Queensland', '4152', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'David Evans', '', '8 Trever Street', 'Keparra', 'Queensland', '4054', 'Australia', '419265863', '', NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'Diana Vidovic', '', '95 Munroe Streetq', 'St Lucia', 'Queensland', '4067', 'Australia', '416118943', '', NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'Cate Palmer', '', '109 Wickfield Street', 'Bracken Ridge', 'Queensland', '4017', 'Australia', '424823424', '', NULL, NULL, NULL, NULL, NULL, NULL),
(437, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(438, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(439, '1) COD', '', 'Cate Palmer', '', '9/10/2014 4:58', '32618785', '', 'FALSE', '9/01/2014 1:39', NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'Stanley Claydon', '', '20 Tea Tree Place', 'Raceview', 'Queensland', '4305', 'Australia', '432492245', '', NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'David Rowell', '', '11/40 Sedgebrook Street', 'Sping Hill', 'Queensland', '4000', 'Australia', '421321944', '', NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'Jeff Self', '', '49 Waterford Place', 'Bridgeman Downs', 'Queensland', '4035', 'Australia', '407638947', '', NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'Peter Dawson', '', '32 Brindle Street', 'Paddington', 'Queensland', '', 'Australia', '427773122', '', NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'Renai Grace', '', '11 Tarana Street', 'Camp Hill', 'Queensland', '4152', 'Australia', '411484222', '', NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'Cyril Baggerman', '', 'Trump Circuit', '', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'Margret Casey', '', '4 Mega Court', 'Banyo', 'Queensland', '4014', 'Australia', '427743337', '', NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'Jennifer Gray', '', '63 River Oak Way', 'Narangba', 'Queensland', '4504', 'Australia', '438355737', '', NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'Kathleen Dunnett', '', '48 Regency Place', 'Carindale', 'Queensland', '', 'Australia', '408617683', '', NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'Danielle Livingstone', '', 'F52/41 Gotha Street', 'Fortitude Valley', 'Queensland', '', 'Australia', '450022262', '', NULL, NULL, NULL, NULL, NULL, NULL),
(450, '1) COD', '', 'Danielle Livingstone', '', '9/03/2014 0:39', '', '', 'FALSE', '9/01/2014 5:05', NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'INK FOR HAIR', '', '375 NEWMARKET ROAD', 'NEWMARKET', 'Queensland', '', 'Australia', '411873359', '', NULL, NULL, NULL, NULL, NULL, NULL),
(452, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(453, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(454, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(455, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(456, '1) COD', '', 'INK FOR HAIR', '', '9/15/2014 4:23:30 AM', '', '', 'FALSE', '9/01/2014 5:12', NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'INK FOR HAIR', '', '375 NEWMARKET ROAD', 'NEWMARKET', 'Queensland', '', 'Australia', '411873359', '', NULL, NULL, NULL, NULL, NULL, NULL),
(458, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(459, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(460, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(461, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(462, '1) COD', '', 'WENDY', '', '9/15/2014 4:23:30 AM', '', '', 'FALSE', '9/01/2014 5:12', NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'INK FOR HAIR', '', '375 NEWMARKET ROAD', 'NEWMARKET', 'Queensland', '', 'Australia', '411873359', '', NULL, NULL, NULL, NULL, NULL, NULL),
(464, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(465, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(466, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(467, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(468, '1) COD', '', 'Wendy', '', '9/15/2014 4:23:30 AM', '', '', 'FALSE', '9/01/2014 5:12', NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'Bridgewater Terraces ', '', '3007/56 Whalf Street', 'Kangaroo Point', 'Queensland', '4169', 'Australia', '410685420', '', NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'Crystal Mulraney', '', '34 Dickson Street', 'Bald Hills', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'Gavin Brody', '', '3/1 Celestail Court', 'Carina', 'Queensland', '4152', 'Australia', '424099956', '', NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'Jennifer Spoto', '', '13 Gibson Cres', 'Holland Park', 'Queensland', '4121', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'Rebecca Jameson', '', '43 Ironbark Place', 'Bridgeman Downs', 'Queensland', '4035', 'Australia', '418881354', '', NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'Kelly Allen', '', '5/483 Hamilton Road', 'Chermside', 'Queensland', '4032', 'Australia', '429995768', '', NULL, NULL, NULL, NULL, NULL, NULL),
(475, ' Heath Cameron ', '', '31 Gloria Street', 'Cornubia', 'Queensland', '', 'Australia', '432511874', '', NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'Kym Bates', '', '9 Hanson Court', 'Ormiston', 'Queensland', '', 'Australia', '421602036', '', NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'Natalie Scott', '', '35 Toomey Street', 'Chermside West', 'Queensland', '4032', 'Australia', '406574988', '', NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'Cameron Compton', '', '27 Lynbrook Avenue', 'Ormeau', 'Queensland', '4208', 'Australia', '403822621', '', NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'Place New Farm', '', '5/572 Brunswick Street', 'New Farm', 'Queensland', '4005', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'Place New Farm', '', '5/572 Brunswick Street', 'New Farm', 'Queensland', '4005', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'OAKMONT MEWS', '', '100 Oakmont Avenue', '', 'Queensland', 'Oxley', 'Australia', '0408 588 268', 'tony@topsproperty.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'ELDERS SPRINGWOOD', '', '2/21 DENNIS ROAD', 'SPRINGWOOD', 'Queensland', '4127', 'Australia', '', 'reception@eldersspringwood.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(483, '3) 7 Days', '', 'Michele', 'michele.shepherd@eldersre.com.au', '9/15/2014 2:06:18 AM', '32084199', '', 'TRUE', '9/01/2014 23:54', NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'Glen Black', '', '53 Marsala Street', 'Kippa-Ring', 'Queensland', '4021', 'Australia', '413487901', '', NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'Kristin Gullvik', '', '6 Inchcape Street', 'Fairfield', 'Queensland', '4103', 'Australia', '466874903', 'kristin.gullvik@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'Andrew Hockey', '', '45 Sixth Ave', 'Sandgate', 'Queensland', '', 'Australia', '410194421', '', NULL, NULL, NULL, NULL, NULL, NULL),
(487, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(488, '1) COD', '', '', '', '9/08/2014 5:43', '', '', 'FALSE', '9/02/2014 1:23', NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'Tejas Narsinh', '', '15/58 Pimaru Cres', 'Eight Mile Plains', 'Queensland', '', 'Australia', '430330063', '', NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'Michael Drennan', '', '8 Orana Street', 'Arlie Beach', 'Queensland', '4802', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'Monique Coombes', '', 'NA', 'Kenmore', 'Queensland', '', 'Australia', '', 'moniquecoombes@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'Courtney Williamson', '', 'P O Box 309', 'Wellers Hill', 'Queensland', '4121', 'Australia', '403699021', 'co.williamson@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'Michelle Dean', '', '21 Malmrose Street', 'Wishart', 'Queensland', '4122', 'Australia', '405115183', '', NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'Barbara Jones', '', '18 Brown Street', 'Camp Hill', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'Bahar Durust', '', '14/239 Shafston Avenue', 'Kangaroo Point', 'Queensland', '4169', 'Australia', '410546334', '', NULL, NULL, NULL, NULL, NULL, NULL),
(496, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(497, '1) COD', '', 'Bahar Durust', '', '9/15/2014 10:40:56 PM', '', '', 'FALSE', '9/02/2014 5:20', NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'Tegan Coski', '', '20 Hartigan Street', 'Belmont', 'Queensland', '', 'Australia', '438763158', '', NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'Jennifer McDougall', '', '51 Wrights Place', 'Mt Cotton', 'Queensland', '4165', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(500, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(501, '1) COD', '', '', '', '9/08/2014 5:24', '', '', 'FALSE', '9/02/2014 5:48', NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'Jenny Harrison', '', '9 Braye Street', 'Coorparoo', 'Queensland', '4151', 'Australia', '410330754', '', NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'Matthew McAllister', '', '65 Southerden Drive', 'North Lakes', 'Queensland', '4509', 'Australia', '477430120', '', NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'Rebecca Kratz', '', '15 Wienholt Street', 'Auchenflower', 'Queensland', '4066', 'Australia', '424186684', '', NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'Steve Oconnel', '', '6/61 Fifth Ave', 'Wilston', 'Queensland', '4051', 'Australia', '415104207', '', NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'Dave Gibson', '', '1573 Mt Samson Road', 'Closeburn', 'Queensland', '4520', 'Australia', '408768854', '', NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'Kent Nestler', '', '19 Strezlecki Place', 'Drewvale', 'Queensland', '4116', 'Australia', '410492104', '', NULL, NULL, NULL, NULL, NULL, NULL),
(508, 'Anthony John Group', '', 'Riverside Centre', 'Brisbane CBD', 'Queensland', '', 'Australia', '', 'reception@anthonyjohngroup.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(509, 'Anthony John Group', '', 'Riverside Centre', 'Brisbane CBD', 'Queensland', '', 'Australia', '', 'reception@anthonyjohngroup.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(510, 'Kevin & Sharon Taylor', '', '14 Avesnes Street', 'Holland Park', 'Queensland', '4121', 'Australia', '0439763571 (K)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'JO HYSLOP', '', '30 BRADDON STREET', 'CORNUBIA', 'Queensland', '4130', 'Australia', '431642901', '', NULL, NULL, NULL, NULL, NULL, NULL),
(512, 'Kevin Hicks', '', '238 Preston Road', 'Wynnum West', 'Queensland', '4178', 'Australia', '418973375', '', NULL, NULL, NULL, NULL, NULL, NULL),
(513, 'Maureen Hollyoak', '', '15 Kate Street', 'Indooroopilly', 'Queensland', '4068', 'Australia', '424976411', '', NULL, NULL, NULL, NULL, NULL, NULL),
(514, 'Bronwyn Massavelli', '', '38/46 Playfield Street', 'Chermside', 'Queensland', '4032', 'Australia', '402338951', '', NULL, NULL, NULL, NULL, NULL, NULL),
(515, 'Annell Scherrenbard', '', '22 Copeton Crescent', 'Parkinson ', 'Queensland', '4115', 'Australia', '411587668', '', NULL, NULL, NULL, NULL, NULL, NULL),
(516, 'Robyn Du-Shane', '', '4 Carl Court', 'Banksia Beach', 'Queensland', '4507', 'Australia', '498703341', '', NULL, NULL, NULL, NULL, NULL, NULL),
(517, '1) COD', '', 'Robyn Du-Shane', '', '9/09/2014 3:51', '', '', 'FALSE', '9/03/2014 1:11', NULL, NULL, NULL, NULL, NULL, NULL),
(518, 'Scott Lutter', '', '5 Fyshick Street', 'Loganholme', 'Queensland', '4129', 'Australia', '401132146', '', NULL, NULL, NULL, NULL, NULL, NULL),
(519, 'YNIDAP SOLUTIONS', '', 'LEVEL4', 'SPRING HILL', 'Queensland', '', 'Australia', '403193678', '', NULL, NULL, NULL, NULL, NULL, NULL),
(520, 'YNIDAP SOLUTIONS', '', 'LEVEL4', 'SPRING HILL', 'Queensland', '', 'Australia', '403193678', '', NULL, NULL, NULL, NULL, NULL, NULL),
(521, 'Emanuel Kazoullis', '', '41 Orsova Road', 'Yeronga', 'Queensland', '4104', 'Australia', '411306303', '', NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'Sharon Rose', '', '32 Streamview Cres', 'Springfield', 'Queensland', '', 'Australia', '413678025', '', NULL, NULL, NULL, NULL, NULL, NULL),
(523, '1) COD', '', '', '', '9/09/2014 4:09', '', '', 'FALSE', '9/03/2014 2:12', NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'Andrew Mortiner', '', '23 Senden Crescent', 'Manly West', 'Queensland', '4179', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(525, 'Neesha Khatib', '', '37 Wallaroo Circuit', 'North Lakes ', 'Queensland', '', 'Australia', '414209420', '', NULL, NULL, NULL, NULL, NULL, NULL),
(526, 'Paul Clarke', '', '521 Ford Road', 'Burbank', 'Queensland', '', 'Australia', '427709602', '', NULL, NULL, NULL, NULL, NULL, NULL),
(527, 'Ross Williamson', '', '8 Brown Parade', 'Ashgrove', 'Queensland', '4060', 'Australia', '410558214', '', NULL, NULL, NULL, NULL, NULL, NULL),
(528, 'Tiffany Thomson', '', '9/14 Miltary Close', 'Annerley', 'Queensland', '4103', 'Australia', '428164269', '', NULL, NULL, NULL, NULL, NULL, NULL),
(529, '1) COD', '', 'Tiffany Thomson', '', '9/19/2014 3:25:18 AM', '38486227', '', 'FALSE', '9/03/2014 4:31', NULL, NULL, NULL, NULL, NULL, NULL),
(530, 'Andrew Dupere', '', '35 Cummin Street', 'Wishart', 'Queensland', '4122', 'Australia', '422894442', '', NULL, NULL, NULL, NULL, NULL, NULL),
(531, 'Ritesh Anand', '', '31 Severn Cres', 'North Lakes', 'Queensland', '', 'Australia', '411480801', '', NULL, NULL, NULL, NULL, NULL, NULL),
(532, 'Angie Roberts', '', '178 Hornsey Road', 'Anstead', 'Queensland', '4070', 'Australia', '422977559', '', NULL, NULL, NULL, NULL, NULL, NULL),
(533, 'Wendy Wasson', '', '118 Station Road', 'Deagon', 'Queensland', '4017', 'Australia', '408453257', '', NULL, NULL, NULL, NULL, NULL, NULL),
(534, 'Mark Pitts', '', '6 Hopkins Chase', 'Caboolture', 'Queensland', '4510', 'Australia', '421879218', '', NULL, NULL, NULL, NULL, NULL, NULL),
(535, 'Helen Lawlor', '', '6 Whepstead Avenue', 'Wellington Point', 'Queensland', '4160', 'Australia', '435315814', '', NULL, NULL, NULL, NULL, NULL, NULL),
(536, 'Pam Booth', '', '2/42 Adelaide Street', 'Carina', 'Queensland', '4152', 'Australia', '421059030', '', NULL, NULL, NULL, NULL, NULL, NULL),
(537, 'Lloyd Willamson', '', '19 Allister Cres', 'Rothwell', 'Queensland', '', 'Australia', '413389610', '', NULL, NULL, NULL, NULL, NULL, NULL),
(538, 'Sharon Lovitt', '', '37 Centenial Street', 'Underwood', 'Queensland', '', 'Australia', '428040345', '', NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'Jane Clarke', '', '27 Moorrinya Circuit', 'North Lakes', 'Queensland', '4509', 'Australia', '404480546', 'jane.clarke67@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'Shveta Kapur', '', '125 Leckie Road', 'Kedron', 'Queensland', '4031', 'Australia', '423274485', '', NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'James Dickson', '', '58 Twilight Street', 'Kenmore', 'Queensland', '', 'Australia', '0415599627 (B)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'Wendy Parks', '', '5 Hermitage Street', 'Eight Mile Plains', 'Queensland', '', 'Australia', '417799276', '', NULL, NULL, NULL, NULL, NULL, NULL),
(543, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(544, '1) COD', '', '', '', '9/08/2014 3:53', '', '', 'FALSE', '9/04/2014 0:28', NULL, NULL, NULL, NULL, NULL, NULL),
(545, 'Barry Lustombe', '', '11 Willow Street', 'Albany Creek', 'Queensland', '4035', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(546, 'Rebecca Pink', '', '29 Browns Gip Road', 'Enoggera', 'Queensland', '4051', 'Australia', '431847193', '', NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'Rohan Campbell', '', '33/27 Harbour Road (Lancaster Tower)', 'Hamilton', 'Queensland', '4007', 'Australia', '416246844', '', NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'Liam Roach', '', '20 Westhoff Road', 'Northgate', 'Queensland', '4013', 'Australia', '421484413', '', NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'Sanushka Wijayadasa', '', '27 Fiesole Place', 'Bridgeman Downs', 'Queensland', '', 'Australia', '410189309', '', NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'Talwalpin gardens', '', '19 crotona road', 'Capalaba', 'Queensland', '4157', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(551, 'Talwalpin gardens', '', '19 crotona road', 'Capalaba', 'Queensland', '4157', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(552, 'Sisko- Liisa Siiankoski', '', '17 Crotana Road', 'Capalaba', 'Queensland', '', 'Australia', '422804442', '', NULL, NULL, NULL, NULL, NULL, NULL),
(553, 'Karen Stevenson', '', '7 Balook Street', 'Redbank Plains', 'Queensland', '', 'Australia', '434409699', '', NULL, NULL, NULL, NULL, NULL, NULL),
(554, 'Justine Callus', '', '5 Markwell Court', 'Petrie', 'Queensland', '', 'Australia', '418743395', '', NULL, NULL, NULL, NULL, NULL, NULL),
(555, 'Foina Medhurst', '', '26 Sonanne Place', 'Fig Tree Pocket', 'Queensland', '', 'Australia', '438591888', '', NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'Susan Kieckhofel', '', '6 Ruggles Court', 'MacDowall', 'Queensland', '4053', 'Australia', '403410715', '', NULL, NULL, NULL, NULL, NULL, NULL),
(557, 'E Connect Communications', '', '14 Horan Street', 'West End', 'Queensland', '4101', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(558, 'Erroll Grant', '', '5 Glenview Street', 'Acacia Ridge', 'Queensland', '', 'Australia', '458170366', '', NULL, NULL, NULL, NULL, NULL, NULL),
(559, 'ANDREW Mortimer', '', '23 Senden Cres', 'Manly West', 'Queensland', '', 'Australia', '421800582', '', NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'Johanna Marsh', '', '10 Eginbah Court', 'Shailer Park', 'Queensland', '4128', 'Australia', '413462514', '', NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'Haines Electrical services', '', '86 Halletts Rd,', 'Redbank Plains', 'Queensland', '4301', 'Australia', '', 'annette@haineselectrical.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(562, 'Haines Electrical services', '', '86 Halletts Rd,', 'Redbank Plains', 'Queensland', '4301', 'Australia', '', 'annette@haineselectrical.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'Kylie Beard', '', '5/29 Nudgee Road', 'Hamilton', 'Queensland', '', 'Australia', '438557289', '', NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'Kim Reid', '', '103 Christen Drive', 'Beachmere', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'Donald Brent', '', '287 Todds Road', 'Lawnton', 'Queensland', '4501', 'Australia', '410737957', '', NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'Di Webb', '', '26 Bates Drive', 'Everton Hills', 'Queensland', '', 'Australia', '413263636', '', NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'LOCAL APPLIANCE RENTALS', '', 'SUITE13/188 STRATTON TCE', 'MANLY', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'Christine Garrett', '', '8 Draycott Street', 'Alexandra Hills', 'Queensland', '4161', 'Australia', '478078683', 'wayne.g006@optusnet.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'Leah Alston', '', '124 Albany Forest Drive', 'Albany Creek', 'Queensland', '', 'Australia', '439734329', '', NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'VICTOR SCROOBY', '', '89 AIRLIE ROAD', 'PULLENVALE', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'Paulette Archer', '', '101 Barlow Street', 'Clayfield', 'Queensland', '', 'Australia', '417750053', '', NULL, NULL, NULL, NULL, NULL, NULL),
(572, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(573, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(574, '1) COD', '', 'Paulette Archer', '', '9/09/2014 0:08', '32624949', '', 'FALSE', '9/05/2014 3:44', NULL, NULL, NULL, NULL, NULL, NULL),
(575, 'Dennis Lambart', '', '7 Real Ave', 'Norman Park', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'Sally French', '', '22 Thurlow Street', 'Newmarket', 'Queensland', '4051', 'Australia', '403139560', 'sallyfrench1@optusnet.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'Dean Hutchinson', '', '3 Greta Court', 'Camira', 'Queensland', '4300', 'Australia', '430109172', '', NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'Steve & Julie Siebuhr', '', '32 Sloop Street', 'Manly West', 'Queensland', '4179', 'Australia', '419679435', '', NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'Melanie Mitchell', '', '35 Kennedy Terrace', 'Paddington', 'Queensland', '4064', 'Australia', '432942121', 'melxmitchell@yahoo.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'Meagan Rocke', '', '7/24 Lima Street', 'Auchenflower', 'Queensland', '', 'Australia', '448321581', '', NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'Tome & Holli Evans', '', '40 Marsh Street', 'Cannon Hill', 'Queensland', '4170', 'Australia', '403874786', '', NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'Kester Hubbard', '', '21 Tooth Ave', 'Paddington', 'Queensland', '', 'Australia', '408727261', '', NULL, NULL, NULL, NULL, NULL, NULL),
(583, 'Christine Gowell', '', '15 Daulton Street', 'Calamvale', 'Queensland', '4116', 'Australia', '488313025', '', NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'Mirza Buana', '', '3/15 Foxton Street', 'Indooroopilly', 'Queensland', '4068', 'Australia', '426821588', '', NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'Ben Edwards', '', '13 Canopus Stret', 'Bridgeman Downs', 'Queensland', '', 'Australia', '411817505', 'bened70@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'Jordan & Jeniffer Emery', '', '5 Egan Street', 'Everton Park', 'Queensland', '4053', 'Australia', '0478812211 (Jordan)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'Erin Starke', '', '46 Daisy Street', 'Grange', 'Queensland', '', 'Australia', '412186315', '', NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'Kerry Pfingst', '', '9 Schnook Street', 'Everton Hills', 'Queensland', '4053', 'Australia', '415122773', '', NULL, NULL, NULL, NULL, NULL, NULL),
(589, 'Tony Cost', '', '32 Gracemere Cres', 'Pine Mountain', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(590, 'Lucy Bignall', '', '125 Brimblecombe CCt', 'Pullenvale', 'Queensland', '4069', 'Australia', '412465775', '', NULL, NULL, NULL, NULL, NULL, NULL),
(591, 'Malcolm Reynolds', '', '2/7 Miles Street', 'Hawthorne', 'Queensland', '', 'Australia', '457575790', 'malcolmreynolds@bigpond.com', NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'Julie Terangi', '', '36 Todd Street', 'Ashgrove', 'Queensland', '4064', 'Australia', '408748915', '', NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'Elizabeth Mackenzie', '', 'PO BOX 1138', 'COORPAROO DC', 'Queensland', '4151', 'Australia', '408192090', '', NULL, NULL, NULL, NULL, NULL, NULL),
(594, 'Elizabeth Mackenzie', '', 'PO BOX 1138', 'COORPAROO DC', 'Queensland', '4151', 'Australia', '408192090', '', NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'Rising Stars Early Learning Centre', '', '11 Collingwood Drive', 'Redbank', 'Queensland', '', 'Australia', '438180066', '', NULL, NULL, NULL, NULL, NULL, NULL),
(596, 'Rachel Crowley', '', 'Unit 4H', 'Highgate Hill', 'Queensland', '4101', 'Australia', '418208576', '', NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'Millennium 3 Financial Services', '', '5a/50 Borthwick Ave', 'Murarrie', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(598, 'Katrina Cinnamon', '', '23 Brimstone Court', 'Kallangur', 'Queensland', '', 'Australia', '438705899', '', NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'Garry Moore', '', '15 Utah Place', 'Parkinson', 'Queensland', '', 'Australia', '419777319', '', NULL, NULL, NULL, NULL, NULL, NULL),
(600, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(601, '1) COD', '', '', '', '9/15/2014 1:16:15 AM', '', '', 'FALSE', '9/11/2014 4:18', NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'Yordanoa Marko', '', '43/36 Philong Street', 'Doolandalla', 'Queensland', '4077', 'Australia', '413473944', '', NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'Jiesi Ng', '', '12 Birrimba Street', 'Alderley', 'Queensland', '', 'Australia', '401874724', '', NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'Charmaine Odonoghue', '', '32 Else Ave', 'Pullenvale', 'Queensland', '', 'Australia', '433258618', '', NULL, NULL, NULL, NULL, NULL, NULL),
(605, 'Fiona Stacheel', '', '36 Griffith St', 'Sangate', 'Queensland', '4017', 'Australia', '402694177', '', NULL, NULL, NULL, NULL, NULL, NULL),
(606, 'Jan Harburg', '', '75 Lisk Street', 'Pullenvale', 'Queensland', '', 'Australia', '422812802', '', NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'Peter Srey', '', '40 Tahan Cres', 'Tenah Merah', 'Queensland', '', 'Australia', '423664176', '', NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'Tamara Angus', '', '29 Warringah Grove', 'Petrie', 'Queensland', '', 'Australia', '401132597', 'ormond5_11@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'Natasha Howard', '', '.', '.', 'Queensland', '.', 'Australia', '434605821', 'natasha.howard@virginaustralia.com', NULL, NULL, NULL, NULL, NULL, NULL),
(610, '1) COD', '', 'Natasha Howard', 'natasha.howard@virginaustralia.com', '9/12/2014 1:39', '', '', 'FALSE', '9/12/2014 1:11', NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'Kirsty Porton-Delaney', '', '3 Orlando Crescent', 'Springwood', 'Queensland', '', 'Australia', '422484003', '', NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'Carol Turnball', '', 'St Helena Apartments', 'Kangaroo Point', 'Queensland', '', 'Australia', '409475539', '', NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'Barry Adams', '', '45 Whitehorse Street', 'Carseldine', 'Queensland', '', 'Australia', '406287455', '', NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'Lisa Bishop', '', '33 Norman Street', 'East Brisbane', 'Queensland', '4169', 'Australia', '423670607', '', NULL, NULL, NULL, NULL, NULL, NULL),
(615, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(616, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(617, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(618, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(619, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(620, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(621, '1) COD', '', 'Lisa Bishop', '', '9/23/2014 2:56:56 AM', '', '', 'FALSE', '9/12/2014 1:53', NULL, NULL, NULL, NULL, NULL, NULL),
(622, 'Adrian Coney', '', '21 Hermitage Place', 'Forest Lake', 'Queensland', '4078', 'Australia', '432311473', '', NULL, NULL, NULL, NULL, NULL, NULL),
(623, 'Jeremy Lodge', '', '25 Linkwood Drive', 'Ferny Hills', 'Queensland', '', 'Australia', '432669723', '', NULL, NULL, NULL, NULL, NULL, NULL),
(624, 'Travis Zealey', '', '3 Malanda Court', 'North Lakes', 'Queensland', '', 'Australia', '417761686', '', NULL, NULL, NULL, NULL, NULL, NULL),
(625, 'Brodie Robert', '', '6 Brimstone Court', 'Kallangur', 'Queensland', '4503', 'Australia', '458565359', '', NULL, NULL, NULL, NULL, NULL, NULL),
(626, 'Donna Turner', '', '4 Edwards Drive', 'Albany Creek', 'Queensland', '', 'Australia', '404883659', '', NULL, NULL, NULL, NULL, NULL, NULL),
(627, 'Joni McShane', '', '83 Diamantina Crescent', 'Fitzgibbon', 'Queensland', '', 'Australia', '439976852', '', NULL, NULL, NULL, NULL, NULL, NULL),
(628, '1) COD', '', '', '', '9/12/2014 6:25', '', '', 'FALSE', '9/12/2014 5:53', NULL, NULL, NULL, NULL, NULL, NULL),
(629, 'Libby Roberts', '', 'Lushington Unit 202', 'Tennyson', 'Queensland', '', 'Australia', '417877782', '', NULL, NULL, NULL, NULL, NULL, NULL),
(630, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(631, '1) COD', '', 'Libby Roberts', '', '9/19/2014 3:20:05 AM', '', '', 'FALSE', '9/12/2014 6:18', NULL, NULL, NULL, NULL, NULL, NULL),
(632, 'Haley Thompson', '', '8 Ritchie Court', 'Petrie', 'Queensland', '', 'Australia', '424082502', '', NULL, NULL, NULL, NULL, NULL, NULL),
(633, 'Rod O\\''Neill', '', '42/27 Griffith Street', 'New Farm', 'Queensland', '', 'Australia', '438932336', '', NULL, NULL, NULL, NULL, NULL, NULL),
(634, '1) COD', '', 'Rod O\\''Neill', '', '9/16/2014 4:54:22 AM', '', '', 'FALSE', '9/14/2014 9:41:26 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(635, 'Ralf Moser', '', '36 Woodlea Street', 'Moorooka', 'Queensland', '', 'Australia', '413780494', 'ralf_moser@gmx.net', NULL, NULL, NULL, NULL, NULL, NULL),
(636, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(637, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(638, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(639, '1) COD', '', 'Ralf Moser', 'ralf_moser@gmx.net', '9/23/2014 2:47:10 AM', '40055621', '', 'FALSE', '9/14/2014 9:57:48 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(640, 'Charmaine Renaud', '', '58 Regency Street', 'Brighton', 'Queensland', '', 'Australia', '418986552', '', NULL, NULL, NULL, NULL, NULL, NULL),
(641, 'Hulton King', '', '14/1 Golding Street', 'Toowoong', 'Queensland', '', 'Australia', '439724837', '', NULL, NULL, NULL, NULL, NULL, NULL),
(642, 'Richard Norris', '', '15 Angophora Street', 'Robertson', 'Queensland', '', 'Australia', '412171593', '', NULL, NULL, NULL, NULL, NULL, NULL),
(643, 'Marrion O\\''Mailley', '', '11/12 Bellevue Pde', 'Toowoong', 'Queensland', '', 'Australia', '409637728', '', NULL, NULL, NULL, NULL, NULL, NULL),
(644, 'Bob Bowler', '', '32 Wisteria Cres', 'Mount Gravatt East', 'Queensland', '', 'Australia', '418787792', 'bob.bowler@bmd.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(645, 'Davey Cawood', '', '69/128 Maryvale Street', 'South Brisbane', 'Queensland', '', 'Australia', '422547968', '', NULL, NULL, NULL, NULL, NULL, NULL),
(646, 'Tony Wilson', '', '13 Brookside Pl', 'Lota', 'Queensland', '', 'Australia', '418738888', '', NULL, NULL, NULL, NULL, NULL, NULL),
(647, 'Kathryn Winter', '', '16/43 sixth Ave', 'Wndsor', 'Queensland', '4030', 'Australia', '401283591', '', NULL, NULL, NULL, NULL, NULL, NULL),
(648, 'Jodie Dacey', '', '103 Hawdon Street', 'Wilston', 'Queensland', '', 'Australia', '401929871', '', NULL, NULL, NULL, NULL, NULL, NULL),
(649, 'Paul Rowland', '', '18 Wattletree Court', 'Brookwater', 'Queensland', '', 'Australia', '411117548', '', NULL, NULL, NULL, NULL, NULL, NULL),
(650, 'Tony Robertson', '', '23 Beau Vista Street', 'Geebung', 'Queensland', '', 'Australia', '409453301', '', NULL, NULL, NULL, NULL, NULL, NULL),
(651, '1) COD', '', 'Tony Robertson', '', '9/19/2014 5:08:27 AM', '', '', 'FALSE', '9/14/2014 11:58:23 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(652, 'Rebecca Francis', '', '19 Cooper Cres', 'Rochedale', 'Queensland', '', 'Australia', '426874232', '', NULL, NULL, NULL, NULL, NULL, NULL),
(653, 'Ainsley Hellen', '', '127 Dorrington Drive', 'Ashgrove', 'Queensland', '', 'Australia', '431422415', '', NULL, NULL, NULL, NULL, NULL, NULL),
(654, 'Kim Thomas', '', '10 Dombey Street', 'Bald Hills', 'Queensland', '', 'Australia', '420530155', '', NULL, NULL, NULL, NULL, NULL, NULL),
(655, 'Sam Burnett', '', '4 Raffin Crescent', 'Calamvale', 'Queensland', '', 'Australia', '432276165', '', NULL, NULL, NULL, NULL, NULL, NULL),
(656, '1) COD', '', 'Sam Burnett', '', '9/16/2014 6:16:23 AM', '', '', 'FALSE', '9/15/2014 12:27:14 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(657, 'Brett Grimston', '', '61 Lothian Street', 'Annerley', 'Queensland', '', 'Australia', '477726307', '', NULL, NULL, NULL, NULL, NULL, NULL),
(658, 'Melissa Hill', '', '...', 'Wellington Point', 'Queensland', '', 'Australia', '409094115', '', NULL, NULL, NULL, NULL, NULL, NULL),
(659, 'Elsbeth Peake', '', '....', 'Chelmer', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(660, '1) COD', '', '', '', '9/16/2014 12:45:23 AM', '', '', 'FALSE', '9/15/2014 12:48:20 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(661, 'Danella Down', '', '39 May Street', 'Mango Hill', 'Queensland', '', 'Australia', '410262917', '', NULL, NULL, NULL, NULL, NULL, NULL),
(662, 'Sonya Beech', '', '37 Chester Road', 'Eight Mile Plains', 'Queensland', '', 'Australia', '413436931', '', NULL, NULL, NULL, NULL, NULL, NULL),
(663, 'Shane Thompson', '', '5 Alstonia Street', 'Arana Hills', 'Queensland', '', 'Australia', '421057705', '', NULL, NULL, NULL, NULL, NULL, NULL),
(664, 'Public Holiday', '', '...', '', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(665, 'Michelle Jenkins', '', '33 Overlea Street', 'Nudgee', 'Queensland', '', 'Australia', '403958748', '', NULL, NULL, NULL, NULL, NULL, NULL),
(666, 'Rose Schalken', '', '28 11th Ave', 'Kedron', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(667, 'Janine Schokman', '', 'Bright Beginning Childcare', 'Chermside West', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(668, 'Jasmine Emery', '', '68 Pacey Road', 'Upper Brookfield', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(669, 'Cassandra Gauld', '', '1/33 Clarence Road', 'Indoorooplilly', 'Queensland', '4068', 'Australia', '422126106', '', NULL, NULL, NULL, NULL, NULL, NULL),
(670, 'Fiona Wishart', '', '15 Silverash Court', 'Capalaba', 'Queensland', '', 'Australia', '405579892', '', NULL, NULL, NULL, NULL, NULL, NULL),
(671, 'Sue-Ellen Howard', '', '11 Razorback Close', 'Carindale', 'Queensland', '', 'Australia', '411037245', '', NULL, NULL, NULL, NULL, NULL, NULL),
(672, 'Jade Ritchie', '', '5/211-213 Baroona Road', 'Paddington', 'Queensland', '', 'Australia', '0412372911 - rhonda', '', NULL, NULL, NULL, NULL, NULL, NULL),
(673, 'Linda Towers', '', '11 Shelford Court', 'Boronia Heights', 'Queensland', '', 'Australia', '423040186', '', NULL, NULL, NULL, NULL, NULL, NULL),
(674, 'Leanne Robertson', '', '6 Pepperberry Court', 'Cedar Creek/Samford', 'Queensland', '4520', 'Australia', '434389699', '', NULL, NULL, NULL, NULL, NULL, NULL),
(675, 'Michelle Le Bas', '', '5 Samson Cres', 'Hemmant', 'Queensland', '', 'Australia', '416134963', '', NULL, NULL, NULL, NULL, NULL, NULL),
(676, 'Theresa Wielesik', '', '14 Oldfield Place', 'Brookfield', 'Queensland', '', 'Australia', '417528770', '', NULL, NULL, NULL, NULL, NULL, NULL),
(677, 'Todd Whitehead', '', '40 Jevons Street', 'The Gap', 'Queensland', '', 'Australia', '418771732', '', NULL, NULL, NULL, NULL, NULL, NULL),
(678, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(679, '1) COD', '', 'Todd Whitehead', '', '9/22/2014 5:51:37 AM', '', '', 'FALSE', '9/15/2014 3:14:32 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(680, 'Kelly Blacksell', '', '280 Chapel Hill Road', 'Chapel Hill', 'Queensland', '', 'Australia', '403586991', '', NULL, NULL, NULL, NULL, NULL, NULL),
(681, 'Veronica Lee', '', '2405/16 Surbiton Court', 'Carindale', 'Queensland', '4152', 'Australia', '412645077', '', NULL, NULL, NULL, NULL, NULL, NULL),
(682, 'Robert James', '', '28 Prospero Circuit', 'Springfield Lakes', 'Queensland', '', 'Australia', '410674687', '', NULL, NULL, NULL, NULL, NULL, NULL),
(683, 'Sam Wilson', '', '4 Larwood Street', 'Upper Mt Gravatt', 'Queensland', '', 'Australia', '411957913', '', NULL, NULL, NULL, NULL, NULL, NULL),
(684, 'Kerryn Moloney', '', '46 Barnett Road', 'Bardon', 'Queensland', '', 'Australia', '405967103', 'jankerryn@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL),
(685, 'Seymour Whyte Constructions', '', 'Brisbane Technology Park', 'eight mile plains', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(686, 'Laurene Bisshop', '', '30 Lynch Crescent', 'Birkdale', 'Queensland', '', 'Australia', '4320021986', '', NULL, NULL, NULL, NULL, NULL, NULL),
(687, 'John Dial', '', '27 Ridgeway Street', 'The Ga[', 'Queensland', '4061', 'Australia', '409633834', '', NULL, NULL, NULL, NULL, NULL, NULL),
(688, 'Merry Manton', '', '.', 'Bundamba', 'Queensland', '', 'Australia', '', 'bjme.manton@bigpond.com', NULL, NULL, NULL, NULL, NULL, NULL),
(689, 'LJ HOOKER WYNNUM', '', '147 BAY TERRACE', 'WYNNUMN', 'Queensland', '4178', 'Australia', '', 'WYNNUM@LJH.COM.AU', NULL, NULL, NULL, NULL, NULL, NULL),
(690, 'LJ HOOKER WYNNUM', '', '147 BAY TERRACE', 'WYNNUMN', 'Queensland', '4178', 'Australia', '', 'WYNNUM@LJH.COM.AU', NULL, NULL, NULL, NULL, NULL, NULL),
(691, 'John Ferguson', '', '8 Stralock Street', 'Chapel Hill', 'Queensland', '', 'Australia', '418237187', '', NULL, NULL, NULL, NULL, NULL, NULL),
(692, 'Matthew Sames - Company JAG/ODPP', '', 'Level 2, 50 Ann Street', 'Brisbane CBD', 'Queensland', '4000', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(693, 'Melanie Harris', '', '15 Witty Road', 'Moggill', 'Queensland', '', 'Australia', '407696932', '', NULL, NULL, NULL, NULL, NULL, NULL),
(694, 'Elizabeth Collens', '', '4/803 Main St, Kangaroo Point', 'Kangaroo Point', 'Queensland', '4102', 'Australia', '411260891', '', NULL, NULL, NULL, NULL, NULL, NULL),
(695, 'Joanne Fleming @ Bolts n Bits', '', 'Unit6 ', 'Loganholme', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(696, 'Virginia Chapman-broadwith', '', '8/175 waterworks road', 'Ashgrove', 'Queensland', '', 'Australia', '412800201', '', NULL, NULL, NULL, NULL, NULL, NULL),
(697, 'Julie Boyd', '', '3/29 Dorset st', 'Ashgrove', 'Queensland', '', 'Australia', '414767379', '', NULL, NULL, NULL, NULL, NULL, NULL),
(698, 'Bronwyn Gray', '', '22 Petmar Street', 'The Gap', 'Queensland', '', 'Australia', '411515341', 'jngray@iinet.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(699, '1) COD', '', 'Bronwyn Gray', 'jngray@iinet.com.au', '9/19/2014 3:20:45 AM', '', '', 'FALSE', '9/15/2014 9:58:10 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'Liam Klein', '', '25 Pamphlett St', 'Oxley', 'Queensland', '', 'Australia', '407198872', '', NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'Kate Konukcu', '', '22 eeles drive', 'morayfield', 'Queensland', '', 'Australia', '434818719', '', NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'Jacinta O\\''connar', '', '135 Wondall Road', 'Wynnum West', 'Queensland', '', 'Australia', '417797689', '', NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'Larina Wilson', '', '14 Ridgeview Drive', 'Narangba', 'Queensland', '4504', 'Australia', '413912616', '', NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'Mandy Rees', '', '257 Moons Lane', 'Brookfield', 'Queensland', '4069', 'Australia', '411227009', '', NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'Nathan & Denni Kowitz', '', '13 Calder Court', 'Crestmead', 'Queensland', '', 'Australia', '0401167977 N', '', NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'Roxanne Marie', '', '11 Winnetts Road', 'Daisy Hill', 'Queensland', '', 'Australia', '404256876', '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(707, 'Alan Fogg', '', '65 Kilkivan Avenue', 'Kenmore', 'Queensland', '4069', 'Australia', 'na', '', NULL, NULL, NULL, NULL, NULL, NULL),
(708, 'Dominic Miller', '', '43 Somerset Street', 'Windsor', 'Queensland', '', 'Australia', '418151402', '', NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'Joan Young', '', '40 Rhyndarra Street', 'Yeronga', 'Queensland', '4104', 'Australia', '439670423', '', NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'Mike Haddon', '', '51 Kimruska Place', 'The Gap', 'Queensland', '4061', 'Australia', '447005045', '', NULL, NULL, NULL, NULL, NULL, NULL),
(711, 'Belinda Watt', '', '3 Hanlon Street', 'Tenah Merah', 'Queensland', '', 'Australia', '438800673', '', NULL, NULL, NULL, NULL, NULL, NULL),
(712, 'Kara Gardner', '', '73 Goodwood Street', 'Hendra', 'Queensland', '', 'Australia', '400440050', '', NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'Tracey Madsen', '', '15 Dennis vale Drive', 'Daisy Hill', 'Queensland', '4127', 'Australia', '432488464', '', NULL, NULL, NULL, NULL, NULL, NULL),
(714, 'Roz Baldwin', '', '5/14 Cintra Street', 'Eastern Heights', 'Queensland', '', 'Australia', '417767558', '', NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'Kylea Hart', '', '1 Julius Court', 'Marsden', 'Queensland', '', 'Australia', '433414603', '', NULL, NULL, NULL, NULL, NULL, NULL),
(716, 'David Meyer', '', '12 Waterlilly Court', 'Rothwell', 'Queensland', '', 'Australia', '432984234', '', NULL, NULL, NULL, NULL, NULL, NULL),
(717, 'Kathleen Pagaduan', '', '139 Meadowlands Road', 'Carindale', 'Queensland', '', 'Australia', '433346044', '', NULL, NULL, NULL, NULL, NULL, NULL),
(718, 'Andrew Smith', '', '.', 'Mt Gravatt East', 'Queensland', '', 'Australia', '401286702', 'andy@m5electrics.biz', NULL, NULL, NULL, NULL, NULL, NULL),
(719, 'Mirka Kudziela', '', '8 Haseler Crescent', 'Sunnybank Hills', 'Queensland', '', 'Australia', '425878312', '', NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'Thomas Wilson', '', '1/39 Sixth Ave', 'Kedron', 'Queensland', '', 'Australia', '410574551', '', NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'Marie Smith', '', '1 Rainbird Place', 'Bunya', 'Queensland', '', 'Australia', '417530453', '', NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'Dominic Brash', '', '2/7 Line Street', 'Wooloongabba', 'Queensland', '', 'Australia', '400497427', '', NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'Nathan & Leah James', '', '32 Torquay', 'Redland Bay', 'Queensland', '', 'Australia', '439978528', '', NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'Maria Parmiter', '', '32 Lancaster Street', 'Coorparoo', 'Queensland', '', 'Australia', '', 'smparmiter@bigpond.com', NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'Adriane Rayner', '', '11 Fred Campbell Drive', 'Albany Creek', 'Queensland', '', 'Australia', '415223361', '', NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'Rebecca White', '', '2/51 Junction Road', 'Clayfield', 'Queensland', '', 'Australia', '467517775', '', NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'Helen Hoptood', '', '2/34 Lowerson Street', 'Lutwyche', 'Queensland', '', 'Australia', '409338674', '', NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'Chelsea Price', '', '406/35 Campbell Street', 'Bowen Hills', 'Queensland', '', 'Australia', '423379437', '', NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'Mark Waugh', '', '69 Mcilwraith Ave', 'Norman Park', 'Queensland', '', 'Australia', '412851469', '', NULL, NULL, NULL, NULL, NULL, NULL),
(730, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(731, '1) COD', '', 'Mark Waugh', '', '9/19/2014 3:54:53 AM', '', '', 'FALSE', '9/16/2014 11:03:12 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'Shane Bovero', '', '2 Cairns Cres', 'Deception Bay', 'Queensland', '', 'Australia', '458216131', '', NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'Yvonne Pateriki', '', '91 Hamish Street', 'Calamvale', 'Queensland', '4116', 'Australia', '4501021124', 'yvonne.pateriki@dcs.qld.gov.au', NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'Bernaditte Manoo', '', '8 Cressbrook Court', 'Meadowbrook', 'Queensland', '', 'Australia', '474046246', '', NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'Paul McIntyre', '', '7 Nero Close', 'Jindalee', 'Queensland', '', 'Australia', '412814793', '', NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'Paul McIntyre', '', '7 Nero Close', 'Jindalee', 'Queensland', '', 'Australia', '412814793', '', NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'Leanne Achilles', '', '33 Daintree Place', 'Riverhills', 'Queensland', '', 'Australia', '412910534', '', NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'Heather Fiore', '', '142 Didbrook Street', 'Robertson', 'Queensland', '', 'Australia', '412170388', '', NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'Hugh McKenzie', '', 'Unit 39 \\"Riverstead Apartments\\"', 'Newstead', 'Queensland', '', 'Australia', '416728829', '', NULL, NULL, NULL, NULL, NULL, NULL),
(740, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(741, '1) COD', '', 'Hugh McKenzie', '', '9/19/2014 4:28:20 AM', '', '', 'FALSE', '9/17/2014 12:35:26 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'Michelle Smith', '', '17 Thornburgh Street', 'Oxley', 'Queensland', '', 'Australia', '409272426', '', NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'Ryan Leave', '', '49 Marland Street', 'Kenmore', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'Clare Ponsford', '', '88 Birdwood Tce', 'Auchenflower', 'Queensland', '', 'Australia', '403465170', '', NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'Catherine Power', '', '2/59 Wellington Street', 'Cooparoo', 'Queensland', '', 'Australia', '448744969', '', NULL, NULL, NULL, NULL, NULL, NULL),
(746, 'Mana Ranjit', '', 'TBA', 'Alderley', 'Queensland', '', 'Australia', '423040486', 'mana.ranjit@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(747, 'Sandra Berry', '', 'Unit 2115', 'West End', 'Queensland', '4101', 'Australia', '477664877', '', NULL, NULL, NULL, NULL, NULL, NULL),
(748, 'Sean & Marguerite Beraeley', '', '26 Tay Street', 'Ashgrove', 'Queensland', '4060', 'Australia', '417645422', '', NULL, NULL, NULL, NULL, NULL, NULL),
(749, '1) COD', '', 'Sean & Marguerite Beraeley', '', '9/19/2014 1:55:28 AM', '41968686', '', 'FALSE', '9/17/2014 2:23:12 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(750, 'Tyron', '', 'TBA', 'Hamilton', 'Queensland', '', 'Australia', '422857431', '', NULL, NULL, NULL, NULL, NULL, NULL),
(751, 'Greg Thompson', '', '32 Banya Street', 'Bulimba', 'Queensland', '', 'Australia', '452599157', '', NULL, NULL, NULL, NULL, NULL, NULL),
(752, 'Aaron Leave', '', '12 Ringtail Street', 'North Lakes', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(753, 'Ashley Rodgers', '', '66/19 O\\''RIELLY STREET', 'Wakerley', 'Queensland', '', 'Australia', '402768968', '', NULL, NULL, NULL, NULL, NULL, NULL),
(754, 'Ashley Rodgers', '', '66/19 O\\''RIELLY STREET', 'Wakerley', 'Queensland', '', 'Australia', '402768968', '', NULL, NULL, NULL, NULL, NULL, NULL),
(755, 'Dale Mullane', '', '11 Joseph Court', 'Browns Plains', 'Queensland', '', 'Australia', '403727445', '', NULL, NULL, NULL, NULL, NULL, NULL),
(756, 'Chris  Pingel', '', '68 Pine Mountain Road', 'North Ipswich', 'Queensland', '', 'Australia', '402353397', '', NULL, NULL, NULL, NULL, NULL, NULL),
(757, 'Maxine Russell', '', '10/236 River Tce', 'Kangaroo Point', 'Queensland', '', 'Australia', '427015102', '', NULL, NULL, NULL, NULL, NULL, NULL),
(758, 'Helen Savill', '', '15 Market Street', 'Newmarket', 'Queensland', '', 'Australia', '407588819', '', NULL, NULL, NULL, NULL, NULL, NULL),
(759, 'John Freer', '', '15 Harding Street', 'Auchenflower', 'Queensland', '', 'Australia', '438212442', '', NULL, NULL, NULL, NULL, NULL, NULL),
(760, 'Peter Thomas', '', '26 Eversden Street', 'Kenmore', 'Queensland', '', 'Australia', '449253094', '', NULL, NULL, NULL, NULL, NULL, NULL),
(761, 'Jeff Xuereb', '', '21w/28 Cordelia Street', 'South Brisbane', 'Queensland', '', 'Australia', '419656639', '', NULL, NULL, NULL, NULL, NULL, NULL),
(762, 'Norris Lewis', '', '164 Baroona Road', 'Paddington', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(763, 'Jason Millhouse', '', '1 Edmond Street', 'Coorparoo', 'Queensland', '', 'Australia', '410641196', '', NULL, NULL, NULL, NULL, NULL, NULL),
(764, 'Illy Dadabhoy', '', '28 Oaklands Place', 'Upper Kedron', 'Queensland', '', 'Australia', '0412840765 (H)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(765, 'John Miller', '', '109 Randall Road', 'Wynnum West', 'Queensland', '', 'Australia', '0407827727 (c)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(766, 'Cathy Lee', '', '24 Thomson Close', 'north lakes', 'Queensland', '', 'Australia', '402010904', '', NULL, NULL, NULL, NULL, NULL, NULL),
(767, 'Rae Parker', '', '....', '', 'Queensland', '', 'Australia', '417711668', 'rae_parker@optusnet.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(768, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(769, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(770, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(771, '1) COD', '', '', '', '9/17/2014 11:52:46 PM', '', '', 'FALSE', '9/17/2014 11:51:55 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(772, 'Jeff Salkeled', '', '36 Surround Street', 'Dakabin', 'Queensland', '', 'Australia', '417772542', '', NULL, NULL, NULL, NULL, NULL, NULL),
(773, 'Emma Knights', '', '8 Ridgecrest Street', 'Kenmore', 'Queensland', '', 'Australia', '420925466', '', NULL, NULL, NULL, NULL, NULL, NULL),
(774, 'Glenys Rogan', '', '19 Grimsby Street', 'The Gap', 'Queensland', '', 'Australia', '413910322', '', NULL, NULL, NULL, NULL, NULL, NULL),
(775, 'Kim Roberts', '', '35 Killarney Place', 'Chermside West', 'Queensland', '', 'Australia', '438799789', '', NULL, NULL, NULL, NULL, NULL, NULL),
(776, 'Vivienne Linnett - Brisbane Paediatric Clinic', '', ' 16a / 107 Miles Plating Road', 'Eight Mile Plains', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(777, 'Leanne Beamish', '', '24 Comus Ave', 'Ascot', 'Queensland', '', 'Australia', '417220060', 'l.beamish@bigpond.com', NULL, NULL, NULL, NULL, NULL, NULL),
(778, 'Sonic IT', '', '17 Brereton Street', 'South Brisbane', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(779, 'Bernice Waterer', '', '56/68 Beeston Street', 'Tenneriffe', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(780, 'Julie Walklate', '', '8 Barnstos Place', 'carindale', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(781, 'John Allen', '', '76 Cadogan Street', 'Carindale', 'Queensland', '', 'Australia', '412331020', '', NULL, NULL, NULL, NULL, NULL, NULL),
(782, 'Jody Griffiths', '', '10 Kurrowah Cres', 'Margate', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(783, 'Carol & Norman Pressey', '', '233 Maundrell Terrace', 'Aspley', 'Queensland', '4034', 'Australia', '466982199', '', NULL, NULL, NULL, NULL, NULL, NULL),
(784, 'Karina O\\''lery', '', '6 Longford Street', 'Everton Hills', 'Queensland', '4053', 'Australia', '400118970', '', NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'Allyson Avey', '', '55 Baronsfield Street', 'Graceville', 'Queensland', '', 'Australia', '402757497', '', NULL, NULL, NULL, NULL, NULL, NULL),
(786, 'Christine Amorsen', '', '6 Adelaide Street', 'Kallanguar', 'Queensland', '', 'Australia', '405306546', '', NULL, NULL, NULL, NULL, NULL, NULL),
(787, 'Phillippa Kingi', '', 'tba', 'tba', 'Queensland', '', 'Australia', '457468687', 'phillippakingi@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(788, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(789, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(790, '1) COD', '', '', '', '9/24/2014 4:03:58 AM', '', '', 'FALSE', '9/18/2014 5:08:02 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(791, 'Terry Rowan', '', '213 Cirks pocket Road', 'Ressville', 'Queensland', '4552', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(792, 'Claire Babbage', '', '47 Lockhart Street', 'Wooloongabba', 'Queensland', '', 'Australia', '423219792', '', NULL, NULL, NULL, NULL, NULL, NULL),
(793, 'Meagan Ritchie', '', '11 Whyalla Close', 'Bracken Ridge', 'Queensland', '', 'Australia', '43773418', '', NULL, NULL, NULL, NULL, NULL, NULL),
(794, 'Leslie Buffett', '', '2/19 Heather Street', 'Wilston', 'Queensland', '', 'Australia', '438572112', '', NULL, NULL, NULL, NULL, NULL, NULL),
(795, 'Rowan Slect', '', '34 Piremont Place', 'Cleveland', 'Queensland', '', 'Australia', '418883556', '', NULL, NULL, NULL, NULL, NULL, NULL),
(796, 'Richard  Jeffreys', '', 'Unit 5', 'Camp Hill', 'Queensland', '4152', 'Australia', '411511369', 'rickjeff1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(797, 'Budi Sulistiono', '', '29 Maple Street', 'Wavell Heights', 'Queensland', '', 'Australia', '423125715', '', NULL, NULL, NULL, NULL, NULL, NULL),
(798, 'Julie Minotto', '', '36 Frank st', 'Graceville', 'Queensland', '', 'Australia', '450395448', '', NULL, NULL, NULL, NULL, NULL, NULL),
(799, 'Evan Debenaham', '', 'need to update', 'Rocehdale South', 'Queensland', '', 'Australia', '488227999', 'evand@forkbiz.com', NULL, NULL, NULL, NULL, NULL, NULL),
(800, 'Jeannie Robinson', '', '17 Rinora Street', 'Corinda', 'Queensland', '', 'Australia', '407760676', '', NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'Stephen Hislop', '', '31 Windemere Road', 'Albany Creek', 'Queensland', '4035', 'Australia', '468958992', '', NULL, NULL, NULL, NULL, NULL, NULL),
(802, 'Emily Alexander', '', '66 Days Road', 'Grange', 'Queensland', '', 'Australia', '403476673', '', NULL, NULL, NULL, NULL, NULL, NULL),
(803, 'Chloe Alderman', '', '44 Hardgrave Road', 'West end', 'Queensland', '', 'Australia', '401428135', '', NULL, NULL, NULL, NULL, NULL, NULL),
(804, 'Sydney Williams', '', '23/232 Adelaide street', 'Brisbane CBD', 'Queensland', '', 'Australia', '407680354', '', NULL, NULL, NULL, NULL, NULL, NULL),
(805, 'Mathew Ostrofski', '', 'St Joseph College', 'Nudgee', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(806, 'Frances Denny', '', '103 Orchid Street', 'Enoggera', 'Queensland', '', 'Australia', '402196080', '', NULL, NULL, NULL, NULL, NULL, NULL),
(807, 'Katie Smith', '', '67 Castle Hill Drive', 'Murumbia Downs', 'Queensland', '', 'Australia', '401090657', '', NULL, NULL, NULL, NULL, NULL, NULL),
(808, 'Alexander Peddieson', '', '129 Cobalt Street', 'Keperra', 'Queensland', '', 'Australia', '408888963', '', NULL, NULL, NULL, NULL, NULL, NULL),
(809, 'Callum Buckmaster', '', '78 Fernberg Road', 'Paddington', 'Queensland', '', 'Australia', '435179763', '', NULL, NULL, NULL, NULL, NULL, NULL),
(810, 'Jennie Cosmo', '', '18 Green Mount Ave', 'Holland Park', 'Queensland', '', 'Australia', '0413135709 (Paul)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(811, 'Paul Tellford', '', '35 Louisa Street', 'Highgate Hill', 'Queensland', '', 'Australia', '0414391814 (Jennia)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(812, 'Tina Maroudas', '', '400 Boston Road', 'Belmont', 'Queensland', '4153', 'Australia', '408863799', '', NULL, NULL, NULL, NULL, NULL, NULL),
(813, 'Lorraine Parkin', '', '5/84 Kates Street', 'Morningside', 'Queensland', '', 'Australia', '412527250', '', NULL, NULL, NULL, NULL, NULL, NULL),
(814, 'Jane Robertson', '', '58 Sinclair Street', 'Kangaroo Point', 'Queensland', '4169', 'Australia', '402445749', '', NULL, NULL, NULL, NULL, NULL, NULL),
(815, 'Alice Nicholson', '', '....', 'Albion', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(816, 'Jan Eva', '', '34 Sylvie Street', 'Thornlands', 'Queensland', '4164', 'Australia', '407121584', '', NULL, NULL, NULL, NULL, NULL, NULL),
(817, 'Nicholas Cole', '', '83 Lamington Street', 'New Farm', 'Queensland', '4005', 'Australia', '413816618', '', NULL, NULL, NULL, NULL, NULL, NULL),
(818, '1) COD', '', 'Nicholas Cole', '', '9/22/2014 5:15:51 AM', '', '', 'FALSE', '9/21/2014 11:30:38 PM', NULL, NULL, NULL, NULL, NULL, NULL),
(819, 'Pasi Ihalainen', '', '16 Fuljames Lane', 'New Farm', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(820, 'John Reed', '', '11 Michelle Court', 'Cleveland', 'Queensland', '', 'Australia', '422546747', '', NULL, NULL, NULL, NULL, NULL, NULL),
(821, 'Ron Wilson', '', '30 Marley Court', 'Aspley', 'Queensland', '', 'Australia', '32635018', '', NULL, NULL, NULL, NULL, NULL, NULL),
(822, 'Susan Samuels', '', 'Unit 11', 'Tingalpa', 'Queensland', '4173', 'Australia', '409618902', '', NULL, NULL, NULL, NULL, NULL, NULL),
(823, 'Neeraj Chand', '', '26 Trevi Street', 'jindalee', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(824, 'Danny Arrow', '', '16 Angliss Street', 'Wilston', 'Queensland', '', 'Australia', '435847905', '', NULL, NULL, NULL, NULL, NULL, NULL),
(825, 'Darren Wilson', '', '39 Creek Road', 'Birkdale', 'Queensland', '', 'Australia', '427039801', '', NULL, NULL, NULL, NULL, NULL, NULL),
(826, 'Paul Maughan', '', '210 Stuartholme Road', 'Bardon', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(827, 'Lee Donaldson', '', '1084 south pine rd', 'everton hills', 'Queensland', '', 'Australia', '400061085', '', NULL, NULL, NULL, NULL, NULL, NULL),
(828, 'Andrew Bucley', '', '26 Chuter Street', 'Stafford Heights', 'Queensland', '', 'Australia', '424820901', '', NULL, NULL, NULL, NULL, NULL, NULL),
(829, 'Daniel Giankulos', '', '15 Hayward Street', 'Paddington', 'Queensland', '', 'Australia', '408945613', '', NULL, NULL, NULL, NULL, NULL, NULL),
(830, 'Romy Pham', '', '9 Allenby Drive', 'Meadowbrook', 'Queensland', '', 'Australia', '415371246', 'romypham_13@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(831, 'Susan Bell', '', '16 Thorne Street', 'Windsor', 'Queensland', '', 'Australia', '402746431', '', NULL, NULL, NULL, NULL, NULL, NULL),
(832, 'Stevan Dimitri', '', 'tba', 'Eight Mile Plains', 'Queensland', '', 'Australia', '407675639', 'stevan@dimix.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(833, '1) COD', '', '', '', '9/22/2014 2:28:50 AM', '', '', 'FALSE', '9/22/2014 1:59:34 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(834, 'Sue Blake', '', 'Sandgate Road', 'Nundah', 'Queensland', '', 'Australia', '33146770', '', NULL, NULL, NULL, NULL, NULL, NULL),
(835, 'Mark Hopwood', '', '20 Cootha Street', 'Everton Park', 'Queensland', '4053', 'Australia', '431133789', '', NULL, NULL, NULL, NULL, NULL, NULL),
(836, 'Jeanette Van Der Zee', '', '66 Ceasar Road', 'Ferny Hills', 'Queensland', '', 'Australia', '412612092', '', NULL, NULL, NULL, NULL, NULL, NULL),
(837, 'Laurie and Cheryl Hannah', '', '11 a Eugene Street', 'Bellbird Park', 'Queensland', '', 'Australia', '0432284774 (C)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(838, 'Doris Isacc', '', '19 Tandoor Street', 'Morningside', 'Queensland', '', 'Australia', '458197998', '', NULL, NULL, NULL, NULL, NULL, NULL),
(839, 'Rene Vandyk', '', '68 Seymour Road', 'Ascot', 'Queensland', '', 'Australia', '407309594', '', NULL, NULL, NULL, NULL, NULL, NULL),
(840, 'Jane Couche', '', '3 Valley Way', 'Mount Cotton', 'Queensland', '', 'Australia', '407872380', '', NULL, NULL, NULL, NULL, NULL, NULL),
(841, 'Natalie Glen', '', '69 Gordon Crescent', 'Wakerley', 'Queensland', '', 'Australia', '449996595', '', NULL, NULL, NULL, NULL, NULL, NULL),
(842, 'Amara Nazin', '', '63 / 11 Taigum Place', 'Taigum', 'Queensland', '', 'Australia', '407996282', '', NULL, NULL, NULL, NULL, NULL, NULL),
(843, 'Justin Gardner', '', '4 Lidgard Street', 'Thornelands', 'Queensland', '', 'Australia', '474264934', '', NULL, NULL, NULL, NULL, NULL, NULL),
(844, 'Jack King\\''scott', '', '36 Karri Place', 'Bridgeman Downs', 'Queensland', '', 'Australia', '430351075', '', NULL, NULL, NULL, NULL, NULL, NULL),
(845, 'DAVID GILMORE', '', '183 EDMOND STONE STREET', 'WILSTON', 'Queensland', '', 'Australia', '417771190', '', NULL, NULL, NULL, NULL, NULL, NULL),
(846, 'JOE PRICE', '', 'NA', '', 'Queensland', '', 'Australia', '418196816', '', NULL, NULL, NULL, NULL, NULL, NULL),
(847, 'Ann Hecker', '', '22 Calume Court', 'Logan Reserve', 'Queensland', '', 'Australia', '411876283', '', NULL, NULL, NULL, NULL, NULL, NULL),
(848, 'JOSIE MALATINO', '', '16 Gabrielll Place', 'Manly West', 'Queensland', '', 'Australia', '438660114', '', NULL, NULL, NULL, NULL, NULL, NULL),
(849, 'Gian Webb', '', '157 Wilruna Street', 'Wacol', 'Queensland', '4076', 'Australia', '435368452', '', NULL, NULL, NULL, NULL, NULL, NULL),
(850, '1) COD', '', '', '', '9/22/2014 6:53:11 AM', '', '', 'FALSE', '9/22/2014 6:44:58 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(851, 'Colin Beere', '', '22 Reardon Street', 'Calamvale', 'Queensland', '', 'Australia', '481134942', 'cbeere05@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(852, 'NORFOLK ST CHILDCARE CENTRE', '', '22 NORFOLK STREET', 'COORPAROO', 'Queensland', '', 'Australia', '413705398', '', NULL, NULL, NULL, NULL, NULL, NULL),
(853, 'Murph Briggs', '', '1 Wattlebrae Street', 'Kings Scrub', 'Queensland', '', 'Australia', '418737948', '', NULL, NULL, NULL, NULL, NULL, NULL),
(854, 'Ann-Marie Scafe', '', '37 Dutton Street', 'Hawthorne', 'Queensland', '4171', 'Australia', '407534425', '', NULL, NULL, NULL, NULL, NULL, NULL),
(855, 'Kathryn Boyle', '', '100 Barbour Road', 'Bracken Ridge', 'Queensland', '', 'Australia', '438696373', '', NULL, NULL, NULL, NULL, NULL, NULL),
(856, 'Jillian Hyland', '', '127 Chapel Hill Road', 'Chapel Hill', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(857, 'Angela Koulouris', '', '20/48 Addison Ave', 'Bulimba', 'Queensland', '', 'Australia', '408873183', '', NULL, NULL, NULL, NULL, NULL, NULL),
(858, 'Misty Hatfield', '', '67 Crown Road', 'Alexandra Hills', 'Queensland', '', 'Australia', '407102557', '', NULL, NULL, NULL, NULL, NULL, NULL),
(859, 'Cameron Reid', '', '36/8 Briggs Road', 'Springwood', 'Queensland', '', 'Australia', '457330001', '', NULL, NULL, NULL, NULL, NULL, NULL),
(860, 'Jeannie Pryde', '', '81 Olivia Place', 'Pullenvale', 'Queensland', '', 'Australia', '417741788', '', NULL, NULL, NULL, NULL, NULL, NULL),
(861, 'Donna Ricca', '', '49 Dowling Place', 'Manly West', 'Queensland', '', 'Australia', '414405939', 'rdricca@bigpond.net.au', NULL, NULL, NULL, NULL, NULL, NULL),
(862, 'Biljana Janknick', '', '7 wilclarke street', 'UPPER MOUNT GRAVATT', 'Queensland', '', 'Australia', '423969113', '', NULL, NULL, NULL, NULL, NULL, NULL),
(863, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(864, '1) COD', '', '', '', '9/23/2014 3:40:12 AM', '', '', 'FALSE', '9/23/2014 12:14:27 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(865, 'Cindy Brazil', '', '6 Butterfield Close', 'Victoria Point', 'Queensland', '', 'Australia', '403042620', 'cindy@betterwater.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(866, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(867, '1) COD', '', '', '', '9/23/2014 12:21:00 AM', '', '', 'FALSE', '9/23/2014 12:18:21 AM', NULL, NULL, NULL, NULL, NULL, NULL),
(868, 'Melinda Kerr', '', '63 Alexandra Street', 'Sandgate', 'Queensland', '', 'Australia', '401045858', '', NULL, NULL, NULL, NULL, NULL, NULL),
(869, 'Leeann Edwards', '', '4 Cherry Close', 'Sinnamon Park', 'Queensland', '4073', 'Australia', '417601207', '', NULL, NULL, NULL, NULL, NULL, NULL),
(870, 'RAINE & HORNE CHERMSIDE', '', '..', 'CHERMSIDE', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(871, 'Keith Joyce', '', '5 Abinger Street', 'Morningside', 'Queensland', '', 'Australia', '438515901', 'keith.joyce@bp.com', NULL, NULL, NULL, NULL, NULL, NULL),
(872, 'Kelli Wahry', '', '2 Traben Street', 'Tingalpa', 'Queensland', '', 'Australia', '405608938', '', NULL, NULL, NULL, NULL, NULL, NULL),
(873, 'Justine White', '', '273 Payne Road', 'The Gap', 'Queensland', '', 'Australia', '421506232', '', NULL, NULL, NULL, NULL, NULL, NULL),
(874, 'Thomas O\\''Dell', '', '33 Charles street', 'New Farm', 'Queensland', '', 'Australia', '499598413', '', NULL, NULL, NULL, NULL, NULL, NULL),
(875, 'Wanda Van der Wolf', '', '3 Bethania Street', 'Lota', 'Queensland', '', 'Australia', '407027333', '', NULL, NULL, NULL, NULL, NULL, NULL),
(876, 'Mary-Lyn Elvery', '', '72 Major Street', 'Manly West', 'Queensland', '', 'Australia', '423481407', '', NULL, NULL, NULL, NULL, NULL, NULL),
(877, 'Sarah Ferguson', '', '8 Nixon Street', 'Virginia', 'Queensland', '', 'Australia', '424416317', 'sarah@enginegroup.com.au', NULL, NULL, NULL, NULL, NULL, NULL),
(878, 'Devinka Wanigesekera', '', '50 Belclare Street', 'The Gap', 'Queensland', '', 'Australia', '412361790', '', NULL, NULL, NULL, NULL, NULL, NULL),
(879, 'Ashley Hill', '', '32 York Street', 'Morningside', 'Queensland', '', 'Australia', '430490379', '', NULL, NULL, NULL, NULL, NULL, NULL),
(880, 'Sharon Janssen', '', '16 Anstead Place', 'Mt Crosby', 'Queensland', '', 'Australia', '0410884305 (Peter)', '', NULL, NULL, NULL, NULL, NULL, NULL),
(881, 'Blair Thompson', '', 'TBA', 'TBA', 'Queensland', '', 'Australia', '411194439', 'blair.s.thompson@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(882, 'Mitch Barr', '', '193 Wilston Road', 'Grange', 'Queensland', '', 'Australia', '402991089', 'mjtbarr@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(883, 'Grant Williams', '', '17 Prenzler Street', 'Upper Mt Gravatt', 'Queensland', '', 'Australia', '400385804', '', NULL, NULL, NULL, NULL, NULL, NULL),
(884, 'John Johannesen', '', '17 Avingdon street', 'Wooloongabba', 'Queensland', '', 'Australia', '404011372', '', NULL, NULL, NULL, NULL, NULL, NULL),
(885, 'Helen Hatfield', '', '1 Drysdale Close', 'Thornlands', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(886, 'Joel White', '', '41 Pine Crest Drive', 'Kurwongbah', 'Queensland', '', 'Australia', '423038178', '', NULL, NULL, NULL, NULL, NULL, NULL),
(887, 'Jason', '', '....', 'Hattinvale', 'Queensland', '', 'Australia', '418371602', '', NULL, NULL, NULL, NULL, NULL, NULL),
(888, 'Joseph Reynolds', '', '204 Green Road', 'Heritage Park', 'Queensland', '', 'Australia', '430338771', '', NULL, NULL, NULL, NULL, NULL, NULL),
(889, 'Libby Reed', '', '.', 'Nundah', 'Queensland', '', 'Australia', '432721892', '', NULL, NULL, NULL, NULL, NULL, NULL),
(890, 'Susan Maide', '', '4/5 Branston Tce', 'Herston', 'Queensland', '', 'Australia', '423665775', '', NULL, NULL, NULL, NULL, NULL, NULL),
(891, 'David Paine', '', '40 Franz Road', 'Clayfield', 'Queensland', '', 'Australia', '38621844', '', NULL, NULL, NULL, NULL, NULL, NULL),
(892, 'Paula Atkinson', '', '40 Gordon Street', 'Greenslopes', 'Queensland', '', 'Australia', '435100371', '', NULL, NULL, NULL, NULL, NULL, NULL),
(893, 'Keith Willersdors', '', '..', 'CHERMSIDE', 'Queensland', '', 'Australia', '432339138', 'kwillers86@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(894, 'Kylie Peterken', '', '7 IAN st', 'Lota', 'Queensland', '4179', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(895, 'David Gow', '', '10 Great George Street', 'Paddington', 'Queensland', '', 'Australia', '410209668', '', NULL, NULL, NULL, NULL, NULL, NULL),
(896, 'Meredith Romig', '', '29 Nindethana Street', 'Indooropily', 'Queensland', '4068', 'Australia', '417729614', '', NULL, NULL, NULL, NULL, NULL, NULL),
(897, 'Tanya Donoughe', '', '9 Staaten Street', 'Chapel Hill', 'Queensland', '', 'Australia', '401869363', '', NULL, NULL, NULL, NULL, NULL, NULL),
(898, 'Maureen Hollyoak', '', '15 Kate Street', 'Indooroopilly', 'Queensland', '', 'Australia', '424976411', '', NULL, NULL, NULL, NULL, NULL, NULL),
(899, 'Mark and Karina Shield', '', '14 Parkway Street', 'Rothwell', 'Queensland', '', 'Australia', '408991046', '', NULL, NULL, NULL, NULL, NULL, NULL),
(900, 'John Collans', '', '42 Carrick Street', 'Rochedale South', 'Queensland', '', 'Australia', '400294290', '', NULL, NULL, NULL, NULL, NULL, NULL),
(901, 'Lesley Ingram', '', '..', 'Kangaroo Point', 'Queensland', '', 'Australia', '498130278', 'ljingram@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(902, 'VIib Larsen', '', '2 Gravillea Street', 'Sinnamon Park', 'Queensland', '', 'Australia', '409617880', '', NULL, NULL, NULL, NULL, NULL, NULL),
(903, 'Clay Knight', '', '843 Beams Road', 'Bridgeman downs', 'Queensland', '4035', 'Australia', '406487422', '', NULL, NULL, NULL, NULL, NULL, NULL),
(904, 'Bill Dickenson', '', '58 Outlook Crescent', '417757023', 'Queensland', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(905, 'Yvette Zischke', '', '25 Karloss Drive', 'Stafford', 'Queensland', '', 'Australia', '417488544', '', NULL, NULL, NULL, NULL, NULL, NULL),
(906, 'Raphy Alappatt', '', '7 Jethro Street', 'Aspley', 'Queensland', '4034', 'Australia', '433764643', '', NULL, NULL, NULL, NULL, NULL, NULL),
(907, 'Lombards', '', '84-88 Koala Way', 'Horsley Park', 'NSW', '2175', 'Australia', '417298833', 'mail@lombardproperty.com', NULL, NULL, NULL, NULL, NULL, NULL),
(908, 'Paul', '', '27 Brigadoon Cresent', 'Eatons Hill', '', '', 'Australia', '', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `damage_products`
--

CREATE TABLE IF NOT EXISTS `damage_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `date_format`
--

CREATE TABLE IF NOT EXISTS `date_format` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `js` varchar(20) NOT NULL,
  `php` varchar(20) NOT NULL,
  `sql` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `date_format`
--

INSERT INTO `date_format` (`id`, `js`, `php`, `sql`) VALUES
(1, 'mm-dd-yyyy', 'm-d-Y', '%m-%d-%Y'),
(2, 'mm/dd/yyyy', 'm/d/Y', '%m/%d/%Y'),
(3, 'mm.dd.yyyy', 'm.d.Y', '%m.%d.%Y'),
(4, 'dd-mm-yyyy', 'd-m-Y', '%d-%m-%Y'),
(5, 'dd/mm/yyyy', 'd/m/Y', '%d/%m/%Y'),
(6, 'dd.mm.yyyy', 'd.m.Y', '%d.%m.%Y');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE IF NOT EXISTS `deliveries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `reference_no` varchar(55) NOT NULL,
  `customer` varchar(55) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `date`, `time`, `reference_no`, `customer`, `address`, `note`, `user`, `updated_by`) VALUES
(2, '2014-09-03', '01:50 PM', 'SL-0010', 'Test Customer', 'Customer Address Melbourne Victoria 3121 Australia. \nTel: 0123456789', '', 'Owner Owner', NULL),
(3, '2014-09-03', '01:55 PM', 'SL-0006', 'Test Customer', 'Customer Address Melbourne Victoria 3121 Australia. \nTel: 0123456789', '', 'Owner Owner', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `discount`, `type`) VALUES
(1, 'No Discount', '0.00', '2'),
(2, '2.5 Percent', '2.50', '1'),
(3, '5 Percent', '5.00', '1'),
(4, '10 Percent', '10.00', '1'),
(5, 'test', '20.00', '2'),
(6, 'VIP', '10.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'owner', 'Owner'),
(2, 'admin', 'Administrator'),
(3, 'purchaser', 'Purchasing Staff'),
(4, 'salesman', 'Sales Staff'),
(5, 'viewer', 'View Only User');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_types`
--

CREATE TABLE IF NOT EXISTS `invoice_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, 'É³', 'account@12three.com.au', 1417390238),
(2, 'É³', 'matt@reloadgroup.com.au', 1417391955);

-- --------------------------------------------------------

--
-- Table structure for table `pos_settings`
--

CREATE TABLE IF NOT EXISTS `pos_settings` (
  `pos_id` int(1) NOT NULL,
  `cat_limit` int(11) NOT NULL,
  `pro_limit` int(11) NOT NULL,
  `default_category` int(11) NOT NULL,
  `default_customer` int(11) NOT NULL,
  `default_biller` int(11) NOT NULL,
  `display_time` varchar(3) NOT NULL DEFAULT 'yes',
  `cf_title1` varchar(255) DEFAULT NULL,
  `cf_title2` varchar(255) DEFAULT NULL,
  `cf_value1` varchar(255) DEFAULT NULL,
  `cf_value2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_settings`
--

INSERT INTO `pos_settings` (`pos_id`, `cat_limit`, `pro_limit`, `default_category`, `default_customer`, `default_biller`, `display_time`, `cf_title1`, `cf_title2`, `cf_value1`, `cf_value2`) VALUES
(1, 22, 14, 1, 1, 1, 'yes', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` char(255) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `size` varchar(55) NOT NULL,
  `cost` decimal(25,2) DEFAULT NULL,
  `price` decimal(25,2) NOT NULL,
  `alert_quantity` int(11) NOT NULL DEFAULT '20',
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `cf1` varchar(255) DEFAULT NULL,
  `cf2` varchar(255) DEFAULT NULL,
  `cf3` varchar(255) DEFAULT NULL,
  `cf4` varchar(255) DEFAULT NULL,
  `cf5` varchar(255) DEFAULT NULL,
  `cf6` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  `track_quantity` tinyint(4) DEFAULT '1',
  `details` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `category_id` (`category_id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `category_id_2` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=906 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `unit`, `size`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`) VALUES
(106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 'NA', '29.50', '53.71', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -13, 3, 1, NULL),
(107, 'SE-LG626', 'BREAK MOTOR', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -14, 3, 1, NULL),
(108, 'SE-SP001A', 'BREAK MOTOR', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -8, 3, 1, NULL),
(109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -15, 3, 1, NULL),
(110, 'NS-808893501', 'BUZZER BOX CONTROL ASSY', 'box', 'NA', '71.81', '98.34', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2, 3, 1, NULL),
(111, 'QT-8572717', 'CAPACITOR', 'box', 'NA', '45.00', '45.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -5, 3, 1, NULL),
(112, 'QT-BEN009', 'CAPACITOR 10MF', 'box', 'NA', '3.50', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1005, 3, 1, NULL),
(113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 'NA', '3.50', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -10, 3, 1, NULL),
(114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 'NA', '14.00', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -15, 3, 1, NULL),
(115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 'NA', '8.05', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -10, 3, 1, NULL),
(116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 'NA', '7.05', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -18, 3, 1, NULL),
(117, 'QT-CAP018', 'CAPACITOR 18 MF', 'box', 'NA', '8.40', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2, 3, 1, NULL),
(118, 'QT-CAP002', 'CAPACITOR 2 MF', 'box', 'NA', '9.00', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -3, 3, 1, NULL),
(119, 'QT-CAP020', 'CAPACITOR 20 MF', 'box', 'NA', '8.94', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -4, 3, 1, NULL),
(120, 'QT-CAP025', 'CAPACITOR 25 MF', 'box', 'NA', '12.00', '22.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -4, 3, 1, NULL),
(121, 'QT-CAP003', 'CAPACITOR 3 MF', 'box', 'NA', '8.00', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -6, 3, 1, NULL),
(122, 'QT-CAP030', 'CAPACITOR 30 MF', 'box', 'NA', '15.00', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2, 3, 1, NULL),
(123, 'QT-CAP035', 'CAPACITOR 35 MF', 'box', 'NA', '15.00', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(124, 'QT-CAP004', 'CAPACITOR 4 MF', 'box', 'NA', '3.50', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(125, 'QT-CAP040', 'CAPACITOR 40 MF', 'box', 'NA', '15.00', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 'NA', '19.00', '36.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -10, 3, 1, NULL),
(127, 'QT-CAP005', 'CAPACITOR 5 MF', 'box', 'NA', '3.50', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2, 3, 1, NULL),
(128, 'QT-CAP050', 'CAPACITOR 50 MF', 'box', 'NA', '18.00', '36.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(129, 'QT-CAP006', 'CAPACITOR 6 MF', 'box', 'NA', '3.50', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(130, 'QT-CAP060', 'CAPACITOR 60 MF', 'box', 'NA', '20.00', '36.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(131, 'QT-CAP007', 'CAPACITOR 7 MF', 'box', 'NA', '3.50', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(132, 'QT-CAP008', 'CAPACITOR 8 MF', 'box', 'NA', '3.50', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(133, 'QT-CAP080', 'CAPACITOR 80 MF', 'box', 'NA', '22.00', '36.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -2, 3, 1, NULL),
(134, 'QT-CAP010', 'CAPACITOR CAP10', 'box', 'NA', '18.00', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -3, 3, 1, NULL),
(135, 'INK-QI-FX9/10', 'COMPATIBLE CANON FX9/FX10 - 2000PGS', 'box', 'NA', '8.00', '8.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -3, 3, 1, NULL),
(136, 'QT-RF108GE', 'CONDENSOR FAN MOTOR', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -3, 3, 1, NULL),
(137, 'AP-CONSUMABLES', 'CONSUMABLES', 'box', 'NA', '9.09', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(138, 'NS-1560723-01/5', 'Contro Panel', 'box', 'NA', '50.00', '75.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(139, 'AS-8801232', 'Control Board', 'box', 'NA', '242.49', '315.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(140, 'NS-1448797', 'CONTROL BOARD', 'box', 'NA', '90.00', '127.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(141, 'ED-MA33002880', 'CONTROL BOARD MAYTAG DRYER', 'box', 'NA', '422.37', '605.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(142, 'NS-1434048R', 'Control Board Whse', 'box', 'NA', '146.00', '219.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(143, 'GLO-MSA-V03', 'CONTROL COOKTOP', 'box', 'NA', '89.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(144, 'GLO-50.55073.010', 'CONTROL COOKTOP ELEMENT', 'box', 'NA', '12.09', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(145, 'GLO-SWANN 5346', 'CONTROL COOKTOP ELEMENT', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(146, 'GLO-MSA-312', 'CONTROL DUAL COOKTOP', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(147, 'GLO-50.56078.007', 'CONTROL ELEMENT', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(148, 'GLO-EF50.56078.008', 'CONTROL ELEMENT', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(149, 'BSH-00647596', 'Control Module Programmed', 'box', 'NA', '244.33', '318.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(150, 'NS1560111-21/1', 'Control Panel', 'box', 'NA', '50.00', '70.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(151, 'NS-1560111-41/9', 'CONTROL PANEL COMPLETE SILVER', 'box', 'NA', '50.00', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(152, 'BWG-W10469016', 'CONTROL PCB', 'box', 'NA', '110.45', '180.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(153, 'FP-528397 NAP', 'CONTROL PCB', 'box', 'NA', '120.00', '180.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(154, 'GLO-M58314', 'CONTROL SINGLE POLE', 'box', 'NA', '10.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(155, 'SM-818731124', 'Control Themostat Smeg', 'box', 'NA', '48.52', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(156, 'GLO-55.17059.290', 'CONTROL THERMOSTAT', 'box', 'NA', '59.70', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(157, 'GLO-55.18064.090', 'CONTROL THERMOSTAT', 'box', 'NA', '40.04', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(158, 'GLO-55.13053.010', 'Control Thermostat 066072', 'box', 'NA', '52.70', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 3, 1, NULL),
(159, 'PRO-AK80010D', 'control thermostat BAUMATIC twin capillary for bottom oven', 'box', 'NA', '63.25', '95.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(160, 'GLO-818731124', 'Control Thermostat Smeg', 'box', 'NA', '36.75', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(161, 'GLO-818731127', 'Control Thermostat Smeg', 'box', 'NA', '35.25', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(162, 'SM-818731127', 'Control Thermostat Smeg', 'box', 'NA', '48.79', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(163, 'QT-DWF019', 'CONTROLLER', 'box', 'NA', '159.00', '159.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(164, 'FP-522843NAP', 'CONTROLLER PH5 (605) PCB 527715NAP', 'box', 'NA', '99.75', '149.62', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(165, 'DS-DO079025', 'COOLING FAN', 'box', 'NA', '56.14', '96.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(166, 'GLO-481893', 'COOLING FAN', 'box', 'NA', '110.74', '166.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(167, 'GLO-52354', 'COOLING FAN', 'box', 'NA', '29.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(168, 'GLO-55410', 'COOLING FAN', 'box', 'NA', '39.20', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(169, 'GLO-FZR240', 'COOLING FAN', 'box', 'NA', '29.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(170, 'GLO-FZR300', 'COOLING FAN', 'box', 'NA', '29.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(171, 'GLO-041199009903R', 'Cooling Fan Thermostat', 'box', 'NA', '14.50', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(172, 'QT-4901ER2001C', 'Damper Assembly', 'box', 'NA', '14.50', '29.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(173, 'SAM-DA97-01880W', 'Damper Assembly', 'box', 'NA', '41.00', '61.50', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(174, 'BWG-61005234', 'DEFROST ELEMENT', 'box', 'NA', '40.45', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(175, 'QT-RFP022', 'DEFROST ELEMENT', 'box', 'NA', '47.85', '100.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(176, 'SE-67005308', 'DEFROST ELEMENT', 'box', 'NA', '47.87', '71.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(177, 'SE-RF109D', 'DEFROST ELEMENT', 'box', 'NA', '69.00', '69.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(178, 'SE-RFP107', 'DEFROST ELEMENT', 'box', 'NA', '98.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(179, 'ED-61006079', 'DEFROST ELEMENT & THERMOSTAT', 'box', 'NA', '71.06', '107.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(180, 'SE-RF202', 'DEFROST ELEMENT FP', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(181, 'SAM-DA47-00247C', 'DEFROST ELEMENT SAMSUNG S/S', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(182, 'SE-RF110', 'DEFROST ELEMENT U TYPE', 'box', 'NA', '78.78', '118.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(183, 'SE-RF200A', 'DEFROST ELEMENT WHIRLPOOL', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(184, 'SAM-DA47-00247K', 'DEFROST ELEMNET', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(185, 'DS-RF922', 'DEFROST HEATER', 'box', 'NA', '53.80', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(186, 'QT-RF110D', 'DEFROST HEATER', 'box', 'NA', '16.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(187, 'QT-RFLG012', 'Defrost Heater', 'box', 'NA', '28.00', '59.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(188, 'QT-RFP014', 'DEFROST HEATER E442BL', 'box', 'NA', '50.72', '100.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(189, 'QT-5300JB1088B', 'DEFROST HEATER LG', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(190, 'QT-5300JB1091B', 'DEFROST HEATER LG', 'box', 'NA', '39.39', '59.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(191, 'SE-RF203', 'DEFROST HEATER LONG', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(192, 'QT-DA32-00006W', 'DEFROST SENSOR', 'box', 'NA', '26.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(193, 'QT-RFSM001', 'DEFROST SENSOR SAMSUNG', 'box', 'NA', '29.00', '29.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(194, 'SE-RF144A', 'DEFROST TERMINATION', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(195, 'NS-1448818', 'DEFROST THERMOSTAT', 'box', 'NA', '20.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(196, 'QT-RF027A', 'DEFROST THERMOSTAT', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(197, 'SE-RF027', 'DEFROST THERMOSTAT', 'box', 'NA', '44.54', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(198, 'SE-RF027A', 'DEFROST THERMOSTAT', 'box', 'NA', '62.72', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(199, 'SE-RF027L', 'DEFROST THERMOSTAT', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(200, 'ED-WR9X541', 'DEFROST TIMER', 'box', 'NA', '66.66', '100.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(201, 'NS-1407843', 'Defrost Timer', 'box', 'NA', '33.00', '70.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(202, 'NS-1415435', 'DEFROST TIMER', 'box', 'NA', '40.90', '71.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(203, 'SE-RF017A', 'DEFROST TIMER', 'box', 'NA', '10.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(204, 'SE-RF017D', 'DEFROST TIMER', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(205, 'SE-RF107A', 'DEFROST TIMER', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(206, 'QT-6914JB2006R', 'DEFROST TIMER 6HE 35MIN', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(207, 'QT-RF096AS', 'DEFROST TIMER 6HR 21 MIN', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(208, 'SE-RF096BM', 'DEFROST TIMER 6HR 21 MIN', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(209, 'SE-RF096BB', 'DEFROST TIMER 6HR 21MIN', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(210, 'QT-1407843', 'DEFROST TIMER 6HR CAM ASSY', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(211, 'SE-RF103', 'DEFROST TIMER 8 HR 24 MIN', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(212, 'QT-1448728', 'DEFROST TIMER 8HR', 'box', 'NA', '80.00', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(213, 'SE-TMDE503FC', 'DEFROST TIMER 8HR 12 MIN', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(214, 'DS-063100', 'Delonghi Door Hinges', 'box', 'NA', '19.16', '50.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500, 3, 1, NULL),
(215, 'NS-1401960', 'CONTROL THERMOSTAT KIT', 'box', 'NA', '50.00', '77.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(216, 'FP-821304P', 'COOLSPICE & CONNECTOR COVER (ADAPTOR KIT)', 'box', 'NA', '9.06', '10.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(217, 'QT-DA97-05290Q', 'COVER EVAPORATOR PC', 'box', 'NA', '60.64', '120.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 3, 1, NULL),
(218, 'SE-RF190', 'DEFROST BIMETAL & FUSE', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(219, 'SE-RF190E', 'DEFROST BIMETAL & FUSE', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(220, 'FP-821730P', 'DEFROST HEATER', 'box', 'NA', '66.66', '100.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(221, 'FP-820687P', 'DEFROST HEATER ADAPTERS', 'box', 'NA', '10.00', '10.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(222, 'QT-5311439 (RF112)', 'DEFROST HEATER ELECTROLUX', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(223, 'FP-818979', 'DEFROST HEATER KIT YELLOW', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(224, 'QT-5300JB1045B', 'DEFROST HEATER LG', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(225, 'QT-5300JB1054B', 'DEFROST HEATER LG', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(226, 'QT-5300JB1089B', 'DEFROST HEATER LG', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(227, 'QT-5300JB1092B', 'DEFROST HEATER LG', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(228, 'QT-61006079', 'DEFROST HEATER LONG WHIRLPOOL', 'box', 'NA', '84.84', '127.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(229, 'QT-61006152', 'DEFROST HEATER SHORT WHIRLPOOL', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(230, 'SE-FR201', 'DEFROST HEATER WITH PLUG F & P', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(231, 'SE-RF190A', 'DEFROST SENSOR & FUSE', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(232, 'SAM-DA32-00006W', 'DEFROST SENSOR FZ/PC', 'box', 'NA', '13.50', '29.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(233, 'QT-6615JB2005A', 'DEFROST SENSOR WITH FUSE', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(234, 'SE-RF145', 'DEFROST TERMINATION', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(235, 'QT-6615JB2002A', 'DEFROST THERMOSTAT', 'box', 'NA', '29.69', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(236, 'QT-J541-00001D', 'DEFROST THERMOSTAT', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(237, 'SE- RF103', 'DEFROST TIMER-DO NOT ORDER', 'box', 'NA', '15.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(238, 'GLO-050028.1', 'Delonghi Multi Switch', 'box', 'NA', '33.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(239, 'BWG-W10151378', 'DIFFUSER', 'box', 'NA', '107.27', '162.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(240, 'BWG-W10129864', 'DIFFUSER ASSEMBLY', 'box', 'NA', '78.50', '117.77', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(241, 'NS-40714059', 'DISCO MELT ELECTROLUX', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(242, 'DD81-01213A', 'Dishwasher Drain Hose', 'box', 'NA', '12.31', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(243, 'SAMDD81-01213A', 'Dishwasher Drain Hose', 'box', 'NA', '15.90', '31.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(244, 'SE-DWV114', 'Dishwasher Heating Element', 'box', 'NA', '89.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(245, 'SAMDD81-01211A', 'Dishwasher Inlet Valve Assy', 'box', 'NA', '56.30', '84.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(246, 'SAM-DC97-16005C', 'DISPENSER', 'box', 'NA', '43.60', '87.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(247, 'QT-DWU003', 'DISPENSER UNIVERSAL', 'box', 'NA', '999.00', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(248, 'PRO-303203101406', 'Display Board Assembly', 'box', 'NA', '97.75', '147.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(249, 'EN-71X0023', 'DISPLAY PCB', 'box', 'NA', '216.00', '281.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(250, 'QT-EBR42908702', 'DISPLAY PCB', 'box', 'NA', '59.00', '118.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(251, 'BSH-704288', 'DOOR & HANDLE SIMENS', 'box', 'NA', '999.00', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(252, 'PR-NPCNRBD365781', 'DOOR ASSY FGRIDGE PANASONIC', 'box', 'NA', '202.67', '304.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(253, 'DS-1750900100', 'DOOR CATCH', 'box', 'NA', '10.40', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(254, 'DS-1880300100', 'DOOR CATCH', 'box', 'NA', '10.40', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(255, 'PR-NPCNRBD365722', 'DOOR FREEZER PANASONIC', 'box', 'NA', '171.67', '527.50', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(256, 'BSH-00443455', 'DOOR GASKET', 'box', 'NA', '58.49', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(257, 'FP-473543P', 'DOOR GASKET', 'box', 'NA', '29.69', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(258, 'NS-0208400069', 'DOOR GASKET', 'box', 'NA', '20.90', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(259, 'NS-147110005', 'Door Gasket', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(260, 'PR-NPAXW2127SR0', 'DOOR GASKET', 'box', 'NA', '50.55', '71.82', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(261, 'QT-0208400069', 'DOOR GASKET', 'box', 'NA', '23.63', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(262, 'SM-754130475', 'Door Gasket', 'box', 'NA', '41.54', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(263, 'AZ-12002533', 'DOOR GASKET MAYTAG', 'box', 'NA', '50.20', '100.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(264, 'SM-766135921', 'DOOR HANDLE', 'box', 'NA', '19.26', '34.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(265, 'QT-3650ER3002B', 'DOOR HANDLE GREY', 'box', 'NA', '17.00', '17.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(266, 'SAM-DC64-02720A', 'DOOR HANDLE GREY', 'box', 'NA', '13.00', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(267, 'AN-9590178-00/013', 'DOOR HANDLE KIT LIEBHERR', 'box', 'NA', '51.51', '77.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(268, 'SAM-DC64-01524A', 'DOOR HANDLE LIGHT GREY', 'box', 'NA', '18.00', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(269, 'SAM-DC64-00561A', 'DOOR HANDLE WHITE', 'box', 'NA', '26.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(270, 'SAM-DC64-01524B', 'DOOR HANDLE WHITE', 'box', 'NA', '13.00', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(271, 'SAM-DC97-09760A', 'DOOR HANDLE WHITE', 'box', 'NA', '13.00', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(272, 'NS-C459002X', 'Door Handle/Latch', 'box', 'NA', '24.54', '49.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(273, 'EN-031499002402R', 'DOOR HEAD LOWER (L)', 'box', 'NA', '8.35', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(274, 'EN-031499002401R', 'DOOR HEAD LOWER (R)', 'box', 'NA', '8.35', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(275, 'EN-031499002405R', 'DOOR HEAD UPPER (L)', 'box', 'NA', '8.35', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(276, 'EN-031499002406R', 'DOOR HEAD UPPER (R)', 'box', 'NA', '8.35', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(277, 'AR-C00083113', 'DOOR HINGE', 'box', 'NA', '31.69', '53.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(278, 'DS-031199009941R', 'DOOR HINGE', 'box', 'NA', '53.80', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(279, 'NS-0045001051', 'DOOR HINGE', 'box', 'NA', '98.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(280, 'NS-0045300029', 'DOOR HINGE', 'box', 'NA', '11.81', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(281, 'SAM-DA97-06158A', 'DOOR HINGE', 'box', 'NA', '12.65', '19.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(282, 'SE-213', 'DOOR HINGE', 'box', 'NA', '18.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(283, 'PR-1260000153', 'DOOR HINGE (LH)', 'box', 'NA', '42.08', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(284, 'BS-00643913', 'Door hinge kit', 'box', 'NA', '114.29', '171.43', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(285, 'SE-SE213', 'DOOR HINGE OVEN', 'box', 'NA', '15.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(286, 'ED-50223858-00/7', 'DOOR HINGES', 'box', 'NA', '157.30', '218.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(287, 'ED-FC98D005B8', 'DOOR HINGES', 'box', 'NA', '50.00', '82.50', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(288, 'EN-931330551', 'DOOR HINGES', 'box', 'NA', '33.75', '53.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(289, 'GLO-03040078', 'Door Hinges', 'box', 'NA', '28.20', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(290, 'GLO-031199009912R', 'Door Hinges', 'box', 'NA', '23.50', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(291, 'GLO-031199009930R', 'DOOR HINGES', 'box', 'NA', '46.81', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(292, 'SE-SE213AF', 'DOOR HINGES (ELECTROLUX)', 'box', 'NA', '35.00', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(293, 'PR-12600030', 'DOOR HINGES BAUMATIC', 'box', 'NA', '98.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(294, 'BSH-00640012', 'Door Hinges Bosch Oven', 'box', 'NA', '31.49', '45.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(295, 'BWG-481228058044', 'DOOR INTERLOCK', 'box', 'NA', '999.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(296, 'FP-427225P', 'Door Kit Assembly', 'box', 'NA', '26.25', '52.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(297, 'AR-A195887', 'DOOR LATCH', 'box', 'NA', '999.00', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(298, 'DS-673001800214', 'DOOR LATCH', 'box', 'NA', '26.36', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(299, 'QT-4027ED3002B', 'DOOR LATCH ASSY', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(300, 'QT-4027FD3621S', 'DOOR LATCH ASSY', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(301, 'SAM-DC97-05111A', 'DOOR LATCH F/LOADER', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(302, 'QT-DC64-01538A', 'DOOR LOCK SAMSUNG', 'box', 'NA', '69.00', '69.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(303, 'HO12G6050032', 'DOOR MICROSWITCH', 'box', 'NA', '14.69', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(304, 'NS-0038002840', 'DOOR OVEN GLASS OUTER SS', 'box', 'NA', '77.27', '115.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(305, 'AR-A091946', 'DOOR SEAL', 'box', 'NA', '48.75', '72.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(306, 'AR-A141317', 'DOOR SEAL', 'box', 'NA', '11.67', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(307, 'ED-FCA7A001AZ', 'DOOR SEAL', 'box', 'NA', '43.89', '71.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(308, 'EN-090148009902R', 'DOOR SEAL', 'box', 'NA', '41.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(309, 'NS-0208003469', 'DOOR SEAL', 'box', 'NA', '30.00', '53.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(310, 'NS-0208400158G', 'DOOR SEAL', 'box', 'NA', '21.81', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(311, 'QT-4986EN1003A', 'Door Seal', 'box', 'NA', '48.00', '71.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(312, 'QT-DWS026', 'DOOR SEAL', 'box', 'NA', '35.00', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(313, 'BSH-056510', 'DOOR SEAL BOSCH/SIMENS', 'box', 'NA', '999.00', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(314, 'PR-NPCNRAD330981', 'DOOR SEAL FREEZER PANASONIC', 'box', 'NA', '30.80', '46.20', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(315, 'PR-NPCNRAD330972', 'Door Seal Fridge Panasonic', 'box', 'NA', '37.50', '56.25', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(316, 'BSH-00680768', 'DOOR SEAL SIMENS', 'box', 'NA', '999.00', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(317, 'AR-C00033769', 'DOOR SEALS', 'box', 'NA', '20.86', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(318, 'FP-521565P', 'DOOR SPRINGS', 'box', 'NA', '44.54', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, 3, 1, NULL),
(319, 'PR-NPCNRAD335500', 'DOOR STOP FRIDGE PANASONIC', 'box', 'NA', '5.24', '7.86', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(320, 'DS-398206700', 'DOOR STRING BLANCO (PKT 2)', 'box', 'NA', '44.54', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(321, 'ED-651068742', 'DOOR STRINGS BLANCO (PKT 2)', 'box', 'NA', '0.00', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(322, 'QT-4933ED3002A', 'DOOR STRINGS LG (SINGLE)', 'box', 'NA', '9.00', '9.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(323, 'SAM-DA34-10120E', 'DOOR SWITCH SAMSUNG', 'box', 'NA', '16.00', '16.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(324, 'SAM-DA34-10110E', 'DOOR SWITCH SAMSUNG FRIDGE', 'box', 'NA', '16.00', '16.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(325, 'SAM-DC97-0511A', 'DOORLATCH F/LOADER SAMSUNG', 'box', 'NA', '27.00', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(326, 'AS-246650', 'DRAIN HOSE, ASKO', 'box', 'NA', '0.00', '0.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(328, 'DS-1673000900269', 'DRAIN HOSE', 'box', 'NA', '14.99', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(329, 'END-1740160300', 'Drain Hose', 'box', 'NA', '22.50', '34.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(330, 'FP-522086', 'DRAIN HOSE', 'box', 'NA', '22.80', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(331, 'FP-5227137', 'DRAIN HOSE', 'box', 'NA', '35.75', '53.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(332, 'QT-5214FR3188G', 'Drain Hose', 'box', 'NA', '11.50', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(333, 'QT-AEM72912602', 'DRAIN HOSE', 'box', 'NA', '10.90', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(334, 'SAM-DC64-00561D', 'DOOR HANDLE SILVER', 'box', 'NA', '26.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(335, 'QT-HO12G6050032', 'DOOR MICROSWITCH', 'box', 'NA', '30.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(336, 'SM-814490257', 'DOOR SWITCH', 'box', 'NA', '23.28', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(337, 'QT-5215ED3001B', 'DRAIN HOSE', 'box', 'NA', '18.18', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(338, 'QT-LGDW025', 'DRAIN HOSE', 'box', 'NA', '16.00', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(339, 'SAM-DD01213A', 'DRAIN HOSE', 'box', 'NA', '15.90', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(340, 'SE-W041', 'DRAIN HOSE', 'box', 'NA', '18.18', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(341, 'AS-228293', 'ASKO DRAIN HOSE (no clamp)', 'box', 'NA', '35.56', '53.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -56, 3, 1, NULL),
(342, 'SE-W040', 'DRAIN HOSE 2.5M', 'box', 'NA', '18.18', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(343, 'DS-1740160300', 'DRAIN HOSE ASSY', 'box', 'NA', '9.41', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(344, 'NS-0571400166', 'DRAIN HOSE DW  2.4M Electrolux', 'box', 'NA', '14.54', '30.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(345, 'STO-049878', 'Drain hose DW Electroluc Proffesional', 'box', 'NA', '36.64', '54.96', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(346, 'FP-H0120201481', 'Drain Hose Haier DW', 'box', 'NA', '16.62', '24.94', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(347, 'BW-673000900039', 'Drain Hose', 'box', 'NA', '23.18', '34.77', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(348, 'BSH-00611332', 'DRAIN PUMP', 'box', 'NA', '49.03', '77.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(349, 'GLO-144978', 'Drain Pump', 'box', 'NA', '79.00', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(350, 'AS-269671', 'Drain Well', 'box', 'NA', '52.36', '78.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(351, 'NS-0238477064K', 'DRAWER WHEELS', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(352, 'NS-0198300011', 'DRIVE BELT', 'box', 'NA', '12.72', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(353, 'NS-1258288-107', 'Drive Belt Condensor Dryer', 'box', 'NA', '19.00', '28.50', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(354, 'ED-GN136914', 'Dryer Heating Element Assembly', 'box', 'NA', '98.36', '158.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(355, 'QT-5834ED2002', 'DRYING FAN', 'box', 'NA', '99.00', '99.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(356, 'GLO-55.19059.810', 'Dual Capillary Thermostat', 'box', 'NA', '61.00', '117.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(357, 'AR-00110333', 'DUAL INLET VALVE', 'box', 'NA', '26.32', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(358, 'AR-C00110333', 'DUAL INLET VALVE', 'box', 'NA', '26.32', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(359, 'ED-MA67006009', 'DUAL INLET VALVE', 'box', 'NA', '88.55', '132.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(360, 'NS-132441600', 'DUAL INLET VALVE', 'box', 'NA', '25.45', '50.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(361, 'QT-W001A', 'DUAL INLET VALVE', 'box', 'NA', '23.00', '46.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(362, 'NS-1526377161', 'DW LATCH DOOR LOCK', 'box', 'NA', '58.18', '87.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(363, 'AR-C00115012', 'EEPROM ARISTON', 'box', 'NA', '18.64', '27.96', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(364, 'GLO-50.57071.010', 'EGO SINGLE HOTPLATE CONTROL', 'box', 'NA', '29.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(365, 'NS-0214002118', 'ELECTROLUX FAN MOTOR', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(366, 'BWG-12868515', 'ELECTRONIC CONTROL', 'box', 'NA', '146.81', '190.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(367, 'DS-0122400009', 'ELEMENT', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(368, 'GLO-062066004', 'ELEMENT', 'box', 'NA', '15.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(369, 'GLO-74X2398', 'ELEMENT', 'box', 'NA', '15.00', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(370, 'SE-DWV110', 'ELEMENT', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(371, 'SE-DWV115', 'ELEMENT', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(372, 'NS-0353300002', 'ELEMENT & THERMOSTAT ASSY', 'box', 'NA', '50.00', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(373, 'NS-0122004420', 'ELEMENT 15OOW SMALL', 'box', 'NA', '31.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(374, 'NS-0122004421', 'ELEMENT 2000W LARGE', 'box', 'NA', '35.45', '71.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(375, 'NS-374063622', 'ELEMENT CERAMIC RH FRONT', 'box', 'NA', '40.90', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(376, 'GLO-4800338', 'ELEMENT COIL 8\\\\ 2050W\\"', 'box', 'NA', '18.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(377, 'GLO-EF20.40985.010', 'ELEMENT FAN 2100W', 'box', 'NA', '98.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(378, 'GLO-1011510', 'Element Fan Force', 'box', 'NA', '20.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(379, 'GLO-20.40411.010', 'Element Fan Force', 'box', 'NA', '21.70', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(380, 'GLO-GL081-02', 'ELEMENT FAN FORCE', 'box', 'NA', '33.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(381, 'GLO-20.35141.000', 'Element fan force 2200W', 'box', 'NA', '16.00', '80.91', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(382, 'GLO-20.35142.000', 'ELEMENT LOWER', 'box', 'NA', '29.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(383, 'GLO-81078', 'ELEMENT OVEN 1800W', 'box', 'NA', '24.60', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(384, 'SE-WO35E', 'ELTEK INLET VALVE 16L/MIN', 'box', 'NA', '10.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(385, 'SE-WV021V', 'ELTEK INLET VALVE 4L', 'box', 'NA', '8.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(386, 'WV021V', 'ELTEK INLET VALVE 4L', 'box', 'NA', '8.00', '44.54', 2, 'no_image.jpg', 1, 0, '', '', '', '', '', '', NULL, 3, 1, ''),
(387, 'SE-WV020V', 'ELTEK INLET VALVE 7 L', 'box', 'NA', '9.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(388, 'FP-521407', 'END CAP WHITE', 'box', 'NA', '22.72', '22.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(389, 'GLO-MS4-217', 'ENERGY REG (TS4-217c) 0534001642', 'box', 'NA', '29.40', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(390, 'GLO-M32314', 'ENERGY REGULATOR', 'box', 'NA', '35.50', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(391, 'GLO-MP101K', 'Energy Regulator', 'box', 'NA', '10.00', '49.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(392, 'HAP-601001006', 'ENERGY REGULATOR', 'box', 'NA', '47.33', '71.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(393, 'NS-M55314K (MS101)', 'ENERGY REGULATOR', 'box', 'NA', '29.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(394, 'SE-BT-404B EURO FIT BRUSHES 4MM THICK', 'EURO FIT BRUSHES 4MM THICK', 'box', 'NA', '15.00', '69.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(395, 'SE-T-404B', 'EURO FIT BRUSHES 4MM THICK', 'box', 'NA', '15.00', '69.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(396, 'SE-BT-404A EURO FIT BRUSHES 5MM THICK', 'Euro Fit Brushes 5mm thick', 'box', 'NA', '15.00', '69.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(397, 'SE-RFSM-998', 'EVAP FAN KIT UNIVERSAL', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(398, 'BW-4389148', 'Evap Fan Mtr 2154976 Whirl', 'box', 'NA', '66.81', '100.22', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(399, 'BWG-61002107', 'EVAP MOTOR', 'box', 'NA', '135.00', '208.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(400, 'SE-FP001B]', 'F & P 12V COLD/HOT VALVE 90 DEG', 'box', 'NA', '8.50', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(401, 'GLO-A/458/34', 'FAN ELEMENT', 'box', 'NA', '27.60', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(402, 'GLO-FE20.40985.010', 'FAN ELEMENT', 'box', 'NA', '25.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(403, 'GLO-GL0101-01', 'FAN ELEMENT', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(404, 'GLO-GLO101-01', 'FAN ELEMENT', 'box', 'NA', '30.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(405, 'GLO-GLO11-01', 'FAN ELEMENT', 'box', 'NA', '22.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(606, 'SAM-DC62-00217K', 'INLET VALVE SINGLE', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(607, 'SM-693050122', 'INLET VALVE SINGLE', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(608, 'BSH-00478073', 'INNER DOOR', 'box', 'NA', '294.29', '420.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(609, 'NS-0038001873', 'INNER DOOR ASSY INC HINGES', 'box', 'NA', '92.72', '162.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(610, 'NS-0038001859', 'INNER DOOR WITH HINGES', 'box', 'NA', '60.00', '102.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(611, 'AR-C00085194', 'INTERLOCK ARISTON', 'box', 'NA', '19.14', '28.71', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(612, 'SE-UNI093', 'INTERLOCK DOOR', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(613, 'SAM-DC64-00653A', 'INTERLOCK F/LOADER SAMSUNG', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(614, 'SE-UNI102', 'INTERLOCK SAMSUNG', 'box', 'NA', '62.00', '62.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(615, 'QT-6912JB2004E] Internal Light', 'Internal Light', 'box', 'NA', '22.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(616, 'SE-FP502220A', 'KIT LEVER OUT OF BALANCE', 'box', 'NA', '9.09', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(617, 'ED-32X1853', 'KLEENMAID DISHWASHER DOOR STRINGS 2 PACK', 'box', 'NA', '21.32', '40.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(618, 'GLO-BU-KN KIT BLACK', 'KNOB CONTROL UNIVERSAL BLACK', 'box', 'NA', '5.00', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(619, 'GLO-WU-KN KIT BLACK', 'KNOB CONTROL UNIVERSAL BLACK', 'box', 'NA', '5.00', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(620, 'GLO-WU-KN KIT', 'KNOB CONTROL UNIVERSAL WHITE', 'box', 'NA', '5.00', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(621, 'FP-522006', 'HARNES AND FAN ASSY', 'box', 'NA', '47.87', '71.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(622, 'NS-1441000', 'HEATER DEFROST ELEMENT', 'box', 'NA', '30.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(623, 'ED-WR51X10021', 'HEATER HARNESS DEFROST ASSY', 'box', 'NA', '133.33', '200.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(624, 'ED-WR13X10020', 'HINGE & CAM RISER BOTTOM REFRIGERATOR', 'box', 'NA', '43.28', '95.16', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(625, 'AS-252018', 'HOSE CLIP', 'box', 'NA', '9.55', '29.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL);
INSERT INTO `products` (`id`, `code`, `name`, `unit`, `size`, `cost`, `price`, `alert_quantity`, `image`, `category_id`, `subcategory_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `quantity`, `tax_rate`, `track_quantity`, `details`) VALUES
(626, 'SE-W046', 'HOSE INLET 2.5M GREY PALSTIC HOT/COLD', 'box', 'NA', '6.60', '20.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(627, 'INK-QI-H60BXL', 'HP REMANUFACTURED CC641WN BLACK XL 12ML', 'box', 'NA', '8.00', '8.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(628, 'INK-QI-H60CXL', 'HP REMANUFACTURED CC644WN-COLOUR XL 11ML', 'box', 'NA', '4.00', '4.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(629, 'SAM-DA98-00258K', 'ICE MAKER (8 PIN)', 'box', 'NA', '56.62', '0.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(630, 'GLO-424099', 'Impellar Bosch', 'box', 'NA', '22.00', '49.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(631, 'QT-W123', 'INLET HOSE 1.2M', 'box', 'NA', '9.09', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(632, 'PR-672030099107', 'INLET HOSE ASSY', 'box', 'NA', '49.21', '77.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(633, 'QT-VAL03', 'INLET VALVE DUAL 180DEG', 'box', 'NA', '29.69', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(634, 'SE-W035', 'INLET VALVE SINGLE 90DEG', 'box', 'NA', '29.69', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(635, 'QT-W025W', 'INLET VALVE SINGLW', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(636, 'AN-YS9666306400', 'INNER GLASS', 'box', 'NA', '999.00', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(637, 'FP-460547P', 'JOCKEY PULLEY', 'box', 'NA', '12.12', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(638, 'SE-BT-405', 'KIT BRUSH UNIVERSAL', 'box', 'NA', '80.00', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(639, 'SE-BT-416', 'KIT BRUSH UNIVERSAL', 'box', 'NA', '80.00', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(640, 'ED-KS35517', 'KLEENMAID SPEED QUEEN WASHING MACHINE DRIVE BELT', 'box', 'NA', '21.95', '56.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(641, 'GLO-FV11A000', 'Large Coil Element 0122004334', 'box', 'NA', '23.50', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(642, 'BSH-00173251', 'LATCH', 'box', 'NA', '11.69', '22.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(643, 'PR-NPCNRAE136513', 'LATCH DOOR FRIDGE PANASONIC', 'box', 'NA', '4.62', '6.93', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(644, 'FP-521810', 'LATCH KIT BLACK', 'box', 'NA', '44.54', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(645, 'BWG-22004238', 'LCD CONSOLE/MEMBRANE', 'box', 'NA', '281.81', '366.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(646, 'AN-YT482057', 'LENS', 'box', 'NA', '3.28', '8.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(647, 'FP-521556', 'LENSE KIT', 'box', 'NA', '9.09', '9.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(648, 'QT-EBR35457004', 'LG Dishwasher Display PCB', 'box', 'NA', '48.00', '74.55', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(649, 'QT-LGF032', 'LG Frontloader Door retainer front', 'box', 'NA', '3.80', '9.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(650, 'NS-ES6056', 'LID LOCK DAUGHTER BOARD', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(651, 'QT-ES8084', 'LID SWITCH NEW STYLE', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(652, 'FP-420429', 'LIDLOCK & HARNESS ASSY', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(653, 'GLO-E14-15W', 'LIGHT BULB 15W', 'box', 'NA', '2.50', '9.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(654, 'GLO-E514-15W', 'LIGHT BULB 15W', 'box', 'NA', '2.50', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(655, 'GLO-E14-25W', 'LIGHT BULB 25W', 'box', 'NA', '2.50', '9.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(656, 'GLO-E514', 'LIGHT BULB 25W', 'box', 'NA', '2.50', '13.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(657, 'ED-67004433', 'LIGHT COVER FREEZER', 'box', 'NA', '13.43', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(658, 'FP-528437', 'LINK SUPPORT KIT', 'box', 'NA', '35.75', '53.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(659, 'GLO212622', 'GLO212622, Lower Bake Element', 'box', 'NA', '125.00', '187.50', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(660, 'GLO-482290', 'GLO-482290, LOWER BAKE ELEMENT', 'box', 'NA', '41.50', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(661, 'GLO-VF61D000', 'GLO-VF61D000, LOWER BAKE ELEMENT', 'box', 'NA', '26.36', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(662, 'PRO32622-1', 'PRO32622-1, Lower Bake Element', 'box', 'NA', '58.99', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(663, 'PRO-IM102-01', 'PRO-IM102-01, Lower Bake Element', 'box', 'NA', '89.26', '131.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(664, 'GLO-10110496', 'LOWER ELEMENT', 'box', 'NA', '68.40', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(665, 'GLO-GLO52-01', 'LOWER ELEMENT', 'box', 'NA', '54.95', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(666, 'ED-GN616021', 'Lower element pearled', 'box', 'NA', '42.50', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(667, 'BSH-00797518', 'MAIN CONTROL BOARD', 'box', 'NA', '63.89', '100.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(668, 'FP-421232NAP', 'MAIN CONTROL BOARD', 'box', 'NA', '118.13', '162.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(669, 'FP-838196P', 'Main Control Board', 'box', 'NA', '105.67', '159.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(670, 'PRO-303203100988', 'Main Control Board Assembly', 'box', 'NA', '112.20', '169.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(671, 'QT-4681EN1010D', 'Main Motor', 'box', 'NA', '140.00', '210.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(672, 'BWG-W10527555', 'BWG-W10527555, MAIN PCB', 'box', 'NA', '82.72', '126.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -3, 3, 1, NULL),
(673, 'DS-1899390705', 'DS-1899390705, MAIN PCB', 'box', 'NA', '122.40', '182.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(674, 'EN-70X0023', 'EN-70X0023, MAIN PCB', 'box', 'NA', '173.79', '262.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(675, 'SAM-DA41-00099C', 'SAM-DA41-00099C, Main PCB', 'box', 'NA', '50.45', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(676, 'SAM-DA41-00205A', 'SAM-DA41-00205A, MAIN PCB', 'box', 'NA', '75.58', '153.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(677, 'QT-EBR35455701', 'MAIN PCB ASSY', 'box', 'NA', '109.00', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(678, 'SAM-DD82-01040A', 'MAIN PCB ASSY', 'box', 'NA', '88.07', '180.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(679, 'TEC-674001000480', 'MAIN PCB ASSY', 'box', 'NA', '49.12', '74.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(680, 'QT-EBR49014303', 'MAIN PCB LG', 'box', 'NA', '136.00', '204.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(681, 'GLO-040899009927R', 'MAIN SELECTOR SWITCH', 'box', 'NA', '73.50', '110.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(682, 'FP-792475', 'Main/Display PCB ASSY FP DW', 'box', 'NA', '70.00', '105.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(683, 'FP-525958MP', 'MAINS FILTER', 'box', 'NA', '36.00', '71.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(684, 'FP-523253', 'MAINS POWER FILTER', 'box', 'NA', '66.66', '100.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(685, 'BWG-4396395', 'Maytag Fridge Water Filter', 'box', 'NA', '70.45', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(686, 'FP-H012G6050032', 'MICROSWITCH DOOR', 'box', 'NA', '26.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(687, 'QT-690181A0011C', 'MICROWAVE FUSE ASSY (LG)', 'box', 'NA', '10.00', '26.20', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(688, 'QT-6170W1D056M', 'MICROWAVE TRANSFORMER (LG)', 'box', 'NA', '25.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(689, 'FP-814534P', 'MOD CONTROLLER', 'box', 'NA', '180.00', '180.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(690, 'AR-C00145013', 'Module Front Loader Ariston', 'box', 'NA', '156.86', '203.91', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(691, 'NS-0628271101', 'MOTOR CONTROL UNIT', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(692, 'ED-WR60X10074', 'MOTOR EVAP FAN WITH SENSOR', 'box', 'NA', '999.00', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(693, 'NS-1453263', 'MOTOR FAN EVAP 5W ROHS', 'box', 'NA', '31.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(694, 'ED-74x1146', 'MOTOR FAN KLEENMAID', 'box', 'NA', '89.26', '169.16', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(695, 'GLO-0214002118', 'MOTOR FAN OVEN', 'box', 'NA', '36.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(696, 'FP-524185P', 'MOTOR ROTOR', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(697, 'FP-528136P', 'MOTOR ROTOR', 'box', 'NA', '59.39', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(698, 'GLO-MSA-R79C', 'MSA-312 single infinite control switch 6mm D Shaft. Simmerstat mounted with two screws 15Amp', 'box', 'NA', '29.00', '69.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(699, 'GLO-811730142', 'MULTI FUNCTION SWITCH', 'box', 'NA', '42.80', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(700, 'GLO-811730261', 'MULTI FUNCTION SWITCH', 'box', 'NA', '99.00', '99.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(701, 'GLO-C00074281', 'MULTI FUNCTION SWITCH', 'box', 'NA', '43.13', '71.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(702, 'IL-A-034-08', 'Multi function Switch ILVE oven', 'box', 'NA', '84.60', '126.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(703, 'GLO-EF42.09000.014', 'MULTI SWITCH', 'box', 'NA', '34.32', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(704, 'SAM-1270J5', 'MULTI V BELT', 'box', 'NA', '49.00', '49.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(705, 'ED-5950919', 'MWF GFW Uni Water filter internal', 'box', 'NA', '55.89', '111.78', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(806, 'QT-6501EA2001B', 'Sensor ASSEM LG', 'box', 'NA', '23.00', '46.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(807, 'QT-6501KW2001A', 'SENSOR ASSY', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(808, 'FP-321107', 'SENSOR ICEMAKER', 'box', 'NA', '27.00', '27.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(809, 'AS-8073839', 'Sensor Pressure', 'box', 'NA', '86.31', '129.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(810, 'SE-156A', 'SHAFT EXT LARGE', 'box', 'NA', '2.50', '10.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(811, 'SE-SE156B', 'SHAFT EXTENSION SHORT', 'box', 'NA', '5.00', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(812, 'GLO-M82314', 'SIMMERSTAT', 'box', 'NA', '28.20', '82.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(813, 'GLO-MP101', 'SIMMERSTAT', 'box', 'NA', '11.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(814, 'NS-0534001695', 'SIMMERSTAT DUAL CONTROL', 'box', 'NA', '98.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(815, 'SE-BT-405]', 'SIMPSON BRUSH KITS- SUITS WPOOL & LG', 'box', 'NA', '22.00', '52.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(816, 'GLO-50.57021.010', 'Single Cooktop Control', 'box', 'NA', '28.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(817, 'FP-529091', 'SLIDE & BRACKET ASSY RH', 'box', 'NA', '108.00', '108.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(818, 'FP-529090', 'SLIDE & BRACKET LHS ASSY', 'box', 'NA', '56.68', '108.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(819, 'SM-754130519', 'SMEG DOOR SEAL 4 SIDE', 'box', 'NA', '99.00', '99.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(820, 'SM-931330461', 'SMEG OVEN DOOR HINGES', 'box', 'NA', '15.77', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(821, 'SM-814490216', 'SMEG OVEN DOOR SWITCH', 'box', 'NA', '26.61', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(822, 'QT-E2900', 'OVEN ELEMENT', 'box', 'NA', '98.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(823, 'NS-56158', 'OVEN FAN MOTOR SUITS CHEF', 'box', 'NA', '43.63', '72.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(824, 'GLO-EF55.17059.210', 'Oven thermostat', 'box', 'NA', '39.64', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(825, 'DS-133308001', 'OVERHEAT KILXON', 'box', 'NA', '3.22', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(826, 'SAM-DA97-05247S', 'PANEL KIT S/S', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(827, 'SAM-DA97-05290Q', 'PANEL KIT S/S', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(828, 'FP-821183P', 'PC FAN ASSY', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(829, 'FP-884518P', 'PC FAN ASSY', 'box', 'NA', '66.66', '100.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(830, 'SE-RF372', 'PIPE INSULATION 1/4 INCH', 'box', 'NA', '6.06', '9.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(831, 'QT-PMP229', 'PLASET PUMP BAYONET FIT', 'box', 'NA', '18.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(832, 'AN-YL6133694', 'POWER & OPERATING PCB ASSM', 'box', 'NA', '153.25', '0.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(833, 'PRO FREIGHT', 'Pronto Freight', 'box', 'NA', '10.00', '10.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(834, 'QT-PMP088', 'PUMP SYNCARONOUS', 'box', 'NA', '41.81', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(835, 'QT-PMP230ASKOLL', 'PUMP SYNCONOUS ASKOLL', 'box', 'NA', '21.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(836, 'QT-PMP088P', 'PUMP SYNCRONOUS 3 LUGS BASE 34 WATTS', 'box', 'NA', '18.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(837, 'END-104243', 'Rangehood Control PCB', 'box', 'NA', '70.92', '107.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(838, 'AN-YFAGR03383', 'Rangehood Motor Assy', 'box', 'NA', '194.93', '262.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(839, 'SE-RF015B', 'RELAY OVERLOAD UNIVERSAL', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(840, 'RS-2452087', 'RELAY POWER230VAC', 'box', 'NA', '27.90', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(841, 'TEC-PA210032008', 'SELECTOR SWITCH', 'box', 'NA', '36.32', '71.81', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(842, 'AN-YL9590142', 'SENSOR UNIVERSAL (4.7 OHMS)', 'box', 'NA', '56.49', '81.82', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(843, 'TEC-FREIGHT', 'FREIGHT', 'box', 'NA', '18.18', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(844, 'ED-21002026', 'SNUBBER RING', 'box', 'NA', '999.00', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(845, 'DS-1718601000', 'SOAP DISPENSER', 'box', 'NA', '72.00', '107.27', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(846, 'QT-E1000', 'SOCKET', 'box', 'NA', '999.00', '999.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(847, 'BSH-00420735', 'SPACERS OVEN DOOR GLASS', 'box', 'NA', '4.04', '8.08', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(848, 'FP-521055', 'SPRAY ARM RETAINER', 'box', 'NA', '4.54', '4.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(849, 'SM-895090422', 'SPRING INTEGRATED FRONT PANEL', 'box', 'NA', '3.66', '8.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(850, 'GLO-821152', 'St George Lower Bake Element', 'box', 'NA', '62.20', '93.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(851, 'STAR-W064', 'STAINLESS STEEL HOSE 2M & ELBOW', 'box', 'NA', '12.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(852, 'BWG-2312007', 'Start Device', 'box', 'NA', '42.72', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(853, 'BSH-00418733', 'START SWITCH', 'box', 'NA', '15.29', '35.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(854, 'QT-4417EA1002G', 'STATOR ASSY', 'box', 'NA', '97.00', '145.50', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(855, 'BWG-61005886', 'STRIKE CENTRE', 'box', 'NA', '13.18', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(856, 'SE-UNI254', 'SUPPORT BUSH & SPIGOT KIT', 'box', 'NA', '17.57', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(857, 'ED-12603701', 'SUPPORT CRISP FRAME', 'box', 'NA', '9.36', '16.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(858, 'NS-1526204-02/7', 'Suppressor Interference', 'box', 'NA', '17.27', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(859, 'SAM-DA61-70253A', 'SUPT-ICE', 'box', 'NA', '11.63', '17.45', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(860, 'QT - 421127P', 'Suspension Rod Kit', 'box', 'NA', '67.00', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(861, 'QT-421127P', 'Suspension Rod Kit', 'box', 'NA', '72.72', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(862, 'NS-119155400K', 'SUSPENSION RODS (4PK) SIMPSON', 'box', 'NA', '41.81', '68.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(863, 'QT-420952P', 'Suspension Rods (pk 4)', 'box', 'NA', '67.50', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(864, 'FP-420952P', 'Suspension Rods (pk4)', 'box', 'NA', '65.61', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(865, 'GLO-46431', 'SWAN SELECTOR SWITCH', 'box', 'NA', '19.00', '49.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(866, 'GLO-55869', 'SWAN SELECTOR SWITCH', 'box', 'NA', '14.00', '49.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(867, 'SE-EF21', 'SWITCH', 'box', 'NA', '10.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(868, 'SE-EF23', 'SWITCH', 'box', 'NA', '10.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(869, 'SE-MSV-700', 'SWITCH', 'box', 'NA', '98.00', '98.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(870, 'QT-6500FD1154C', 'SWITCH ASSY PRESSURE', 'box', 'NA', '38.00', '38.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(871, 'QT-6601ER1005A', 'SWITCH DOOR ASSY F/LOADER LG', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(872, 'SE-RF060', 'SWITCH DOOR WPOOL', 'box', 'NA', '18.00', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(873, 'GLO-M3V700 (MP104)', 'SWITCH INF HEAT KIT', 'box', 'NA', '10.00', '53.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(874, 'GLO-610147', 'SWITCH INTERLOCK DOOR F/LOADER BOSCH', 'box', 'NA', '53.00', '53.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(875, 'GLO-42.08000.009', 'SWITCH M/FUNCTION 8 POS 0534001653', 'box', 'NA', '16.20', '40.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(876, 'EGO-A/034/09', 'SWITCH MULTI FUNCTION', 'box', 'NA', '54.00', '109.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(877, 'SE-DWS001', 'SWITCH ON/OFF', 'box', 'NA', '26.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 'NA', '11.00', '29.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -12, 3, 1, NULL),
(879, 'SE-609400031', 'SWITCH ON/OFF & BRKT ASSY', 'box', 'NA', '11.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(880, 'SE-DWS001 (609400031)', 'SWITCH ON/OFF & BRKT ASSY', 'box', 'NA', '11.00', '29.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(881, 'QT-0609400031', 'SWITCH ON/OFF DISHLEX WESTINGHOUSE', 'box', 'NA', '10.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(882, 'GLO-534-1-633', 'SWITCH ROTARY 4 POSITION', 'box', 'NA', '44.00', '44.54', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(883, 'QT-6600JB2005A', 'SWITXH DOOR LG', 'box', 'NA', '18.00', '18.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(884, 'TEC-1170000004', 'Technika Dual Grill 16cm plate', 'box', 'NA', '59.88', '89.82', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(885, 'GLO-GLO13-01', 'Technika Dual Grill 16cm plate 1170000004', 'box', 'NA', '44.00', '88.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(886, 'TEC-B60119', 'Technika Dual grill Element 10cm plate', 'box', 'NA', '86.89', '130.33', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(887, 'GLO-GLO83-02', 'Technika Dual grill Element 10cm plate B60119', 'box', 'NA', '57.50', '115.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(888, 'TEC-1170000010', 'Technika SNG Grill element 16cm plate', 'box', 'NA', '40.86', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(889, 'GLO-GLO12-04', 'Technika SNG Grill element 16cm plate 1170000010', 'box', 'NA', '48.80', '97.60', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(890, 'SE-RF159', 'THERMAL CUT OUT', 'box', 'NA', '26.00', '26.36', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(891, 'NS-1448618', 'THERMAL FUSE', 'box', 'NA', '29.00', '39.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(892, 'FP-H012G6010009', 'THERMAL LIMITER', 'box', 'NA', '62.00', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(893, 'PR-MSFHHZA105WREZ', 'THERMISITOR', 'box', 'NA', '38.90', '59.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(894, 'QT-6322FR2046Z', 'THERMISTOR LG', 'box', 'NA', '9.00', '18.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(895, 'AN-XT481914', 'THERMOSTAT', 'box', 'NA', '57.14', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(896, 'DS-041099009901R', 'THERMOSTAT', 'box', 'NA', '89.20', '121.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(897, 'GLO-0541001931', 'Thermostat', 'box', 'NA', '25.85', '53.63', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(898, 'GLO-55.17052.040', 'THERMOSTAT', 'box', 'NA', '39.29', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(899, 'GLO-55.17059.180', 'THERMOSTAT', 'box', 'NA', '23.44', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(900, 'GLO-55.17063', 'THERMOSTAT', 'box', 'NA', '25.85', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(901, 'GLO-55.17063.040', 'THERMOSTAT', 'box', 'NA', '25.85', '80.90', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(902, 'GLO-EFG201', 'THERMOSTAT', 'box', 'NA', '40.00', '89.09', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(903, 'NS-49745', 'THERMOSTAT', 'box', 'NA', '65.45', '98.18', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(904, 'TEC-PA210036002', 'THERMOSTAT', 'box', 'NA', '33.79', '62.72', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL),
(905, 'NS-500641', 'THERMOSTAT CONTROL', 'box', 'NA', '99.00', '99.00', 2, 'no_image.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) NOT NULL,
  `total` decimal(25,2) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT '0.00',
  `inv_total` decimal(25,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `warehouse_id`, `supplier_id`, `supplier_name`, `date`, `note`, `total`, `user`, `updated_by`, `total_tax`, `inv_total`) VALUES
(1, 'PO-0001', 1, 1, 'Test Supplier', '2014-09-01', '', '19800.00', 'Owner Owner', NULL, '1800.00', '18000.00'),
(2, 'PO-0002', 1, 1, 'Test Supplier', '2014-09-01', '', '19800.00', 'Owner Owner', NULL, '1800.00', '18000.00'),
(3, 'PO-0003', 1, 1, 'Test Supplier', '2014-09-13', '', '2750.00', 'Admin Owner', NULL, '250.00', '2500.00'),
(4, 'PO-0004', 1, 1, 'Test Supplier', '2014-09-13', '', '2750.00', 'Admin Owner', NULL, '250.00', '2500.00'),
(5, 'PO-0005', 1, 1, 'Test Supplier', '2014-10-20', '', '16481.85', 'Admin Owner', NULL, '1498.35', '14983.50');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE IF NOT EXISTS `purchase_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `tax_amount` decimal(25,2) DEFAULT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `product_code`, `product_name`, `quantity`, `unit_price`, `tax_amount`, `gross_total`, `tax_rate_id`, `tax`, `val_tax`) VALUES
(1, 1, 2, 'part2', 'Fridge Motor', 100, '180.00', NULL, '18000.00', 3, '10.00%', '1800.00'),
(2, 2, 2, 'part2', 'Fridge Motor', 100, '180.00', NULL, '18000.00', 3, '10.00%', '1800.00'),
(3, 3, 3, 'part3', 'Door seals', 50, '50.00', NULL, '2500.00', 3, '10.00%', '250.00'),
(4, 4, 3, 'part3', 'Door seals', 50, '50.00', NULL, '2500.00', 3, '10.00%', '250.00'),
(5, 5, 214, 'DS-063100', 'Delonghi Door Hinges', 500, '19.16', NULL, '9580.00', 3, '10.00%', '958.00'),
(6, 5, 217, 'QT-DA97-05290Q', 'COVER EVAPORATOR PC', 50, '60.64', NULL, '3032.00', 3, '10.00%', '303.20'),
(7, 5, 158, 'GLO-55.13053.010', 'Control Thermostat 066072', 45, '52.70', NULL, '2371.50', 3, '10.00%', '237.15');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller_name` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) NOT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `in_type` varchar(55) DEFAULT NULL,
  `total_tax2` decimal(25,2) DEFAULT NULL,
  `tax_rate2_id` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `inv_discount` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `shipping` decimal(25,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `reference_no`, `warehouse_id`, `biller_id`, `biller_name`, `customer_id`, `customer_name`, `date`, `note`, `internal_note`, `inv_total`, `total_tax`, `total`, `invoice_type`, `in_type`, `total_tax2`, `tax_rate2_id`, `user`, `updated_by`, `inv_discount`, `discount_id`, `shipping`) VALUES
(1, 'QU-0001', 1, 2, 'Steven White', 6, 'Lillian Attwood', '2014-10-02', '', '', '90.08', '9.01', '108.10', NULL, NULL, '9.01', 3, 'cha zhe', NULL, '0.00', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `quote_items`
--

CREATE TABLE IF NOT EXISTS `quote_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `discount_val` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quote_id` (`quote_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `quote_items`
--

INSERT INTO `quote_items` (`id`, `quote_id`, `product_id`, `product_code`, `product_name`, `product_unit`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `gross_total`, `val_tax`, `serial_no`, `discount_val`, `discount_id`, `discount`) VALUES
(1, 1, 294, 'BSH-00640012', 'Door Hinges Bosch Oven', 'box', 3, '10.00%', 1, '45.54', '45.54', '4.55', NULL, '0.00', 1, '0.00'),
(2, 1, 318, 'FP-521565P', 'DOOR SPRINGS', 'box', 3, '10.00%', 1, '44.54', '44.54', '4.45', NULL, '0.00', 1, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(55) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `biller_id` int(11) NOT NULL,
  `biller_name` varchar(55) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `internal_note` varchar(1000) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) NOT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `in_type` varchar(55) DEFAULT NULL,
  `total_tax2` decimal(25,2) DEFAULT NULL,
  `tax_rate2_id` int(11) DEFAULT NULL,
  `inv_discount` decimal(25,2) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `paid_by` varchar(55) DEFAULT 'cash',
  `count` int(11) DEFAULT NULL,
  `shipping` decimal(25,2) DEFAULT '0.00',
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `paid` decimal(25,2) DEFAULT NULL,
  `cc_no` varchar(20) DEFAULT NULL,
  `cc_holder` varchar(100) DEFAULT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `warehouse_id`, `biller_id`, `biller_name`, `customer_id`, `customer_name`, `date`, `note`, `internal_note`, `inv_total`, `total_tax`, `total`, `invoice_type`, `in_type`, `total_tax2`, `tax_rate2_id`, `inv_discount`, `discount_id`, `user`, `updated_by`, `paid_by`, `count`, `shipping`, `pos`, `paid`, `cc_no`, `cc_holder`, `cheque_no`) VALUES
(1, 'SL-0001', 1, 1, 'Matt', 1, 'Test Customer', '2014-08-28', NULL, NULL, '70.00', '7.00', '84.00', NULL, NULL, '7.00', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 1, '0.00', 1, '84.00', '', '', ''),
(2, 'SL-0002', 1, 1, 'Matt', 1, 'Test Customer', '2014-08-28', NULL, NULL, '70.00', '7.00', '84.00', NULL, NULL, '7.00', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 1, '0.00', 1, '84.00', '', '', ''),
(3, 'SL-0003', 1, 1, 'Matt', 1, 'Test Customer', '2014-08-28', NULL, NULL, '70.00', '7.00', '84.00', NULL, NULL, '7.00', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 1, '0.00', 1, '84.00', '', '', ''),
(4, 'SL-0004', 1, 1, 'Matt', 1, 'Test Customer', '2014-08-28', NULL, NULL, '70.00', '7.00', '84.00', NULL, NULL, '7.00', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 1, '0.00', 1, '84.00', '', '', ''),
(5, 'SL-0005', 1, 1, 'Matt', 1, 'Test Customer', '2014-08-28', NULL, NULL, '70.00', '7.00', '84.00', NULL, NULL, '7.00', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 1, '0.00', 1, '84.00', '', '', ''),
(6, 'SL-0006', 1, 1, 'Matt', 1, 'Test Customer', '2014-08-28', NULL, NULL, '555.00', '55.50', '666.00', NULL, NULL, '55.50', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 4, '0.00', 1, '666.00', '', '', ''),
(7, 'SL-0007', 1, 1, 'Matt', 1, 'Test Customer', '2014-08-29', NULL, NULL, '70.00', '7.00', '84.00', NULL, NULL, '7.00', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 1, '0.00', 1, '84.00', '', '', ''),
(8, 'SL-0008', 4, 1, 'Matt', 1, 'Test Customer', '2014-08-31', NULL, NULL, '615.00', '61.50', '738.00', NULL, NULL, '61.50', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 5, '0.00', 1, '738.00', '', '', ''),
(9, 'SL-0009', 1, 1, 'Matt', 1, 'Test Customer', '2014-08-31', NULL, NULL, '2295.00', '229.50', '2754.00', NULL, NULL, '229.50', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 35, '0.00', 1, '2754.00', '', '', ''),
(10, 'SL-0010', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-03', NULL, NULL, '420.00', '42.00', '504.00', NULL, NULL, '42.00', 3, '0.00', 0, 'Owner Owner', NULL, 'cash', 2, '0.00', 1, '504.00', '', '', ''),
(11, 'SL-0011', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-05', NULL, NULL, '100.00', '10.00', '120.00', NULL, NULL, '10.00', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 1, '0.00', 1, '120.00', '', '', ''),
(12, 'SL-0012', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-05', NULL, NULL, '70.00', '7.00', '84.00', NULL, NULL, '7.00', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 1, '0.00', 1, '95.00', '', '', ''),
(13, 'SL-0013', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-08', NULL, NULL, '420.00', '42.00', '504.00', NULL, NULL, '42.00', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 2, '0.00', 1, '520.00', '', '', ''),
(14, 'SL-0014', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-08', NULL, NULL, '805.00', '80.50', '966.00', NULL, NULL, '80.50', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 4, '0.00', 1, '1000.00', '', '', ''),
(15, 'SL-0015', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-10', NULL, NULL, '320.00', '32.00', '384.00', NULL, NULL, '32.00', 3, '0.00', 0, 'Admin Owner', NULL, 'CC', 1, '0.00', 1, '0.00', 'zdgdgdag', 'agagarg', ''),
(16, 'SL-0016', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-10', NULL, NULL, '65.00', '6.50', '78.00', NULL, NULL, '6.50', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 1, '0.00', 1, '0.00', '', '', ''),
(17, 'SL-0017', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-10', NULL, NULL, '320.00', '32.00', '384.00', NULL, NULL, '32.00', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 1, '0.00', 1, '390.00', '', '', ''),
(18, 'SL-0018', 2, 1, 'Matt', 1, 'Test Customer', '2014-09-20', NULL, NULL, '210.00', '21.00', '252.00', NULL, NULL, '21.00', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 3, '0.00', 1, '500.00', '', '', ''),
(19, 'SL-0019', 1, 1, 'Matt', 1, 'Test Customer', '2014-09-30', NULL, NULL, '323.44', '32.34', '388.13', NULL, NULL, '32.34', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 3, '0.00', 1, '4888.00', '', '', ''),
(20, 'SL-0020', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-02', NULL, NULL, '109.07', '10.91', '130.88', NULL, NULL, '10.91', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 5, '0.00', 1, '320.00', '', '', ''),
(21, 'SL-0021', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-02', NULL, NULL, '170.62', '17.06', '204.74', NULL, NULL, '17.06', 3, '0.00', 0, 'cha zhe', NULL, 'cash', 5, '0.00', 1, '557.00', '', '', ''),
(22, 'SL-0022', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-02', NULL, NULL, '234.53', '23.45', '281.44', NULL, NULL, '23.45', 3, '0.00', 0, 'cha zhe', NULL, 'cash', 3, '0.00', 1, '588.00', '', '', ''),
(23, 'SL-0023', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-02', NULL, NULL, '134.61', '13.46', '161.53', NULL, NULL, '13.46', 3, '0.00', 0, 'cha zhe', NULL, 'cash', 3, '0.00', 1, '866.00', '', '', ''),
(24, 'SL-0024', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-02', NULL, NULL, '143.62', '14.36', '172.34', NULL, NULL, '14.36', 3, '0.00', 0, 'cha zhe', NULL, 'cash', 3, '0.00', 1, '500.00', '', '', ''),
(25, 'SL-0025', 1, 2, 'Steven White', 6, 'Lillian Attwood', '2014-10-02', '', '', '90.08', '9.01', '108.10', NULL, NULL, '9.01', 3, '0.00', 0, 'cha zhe', NULL, 'cash', NULL, '0.00', 0, NULL, NULL, NULL, NULL),
(26, 'SL-0026', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-07', NULL, NULL, '488.96', '48.90', '586.75', NULL, NULL, '48.90', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 11, '0.00', 1, '600.00', '', '', ''),
(27, 'SL-0027', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-07', NULL, NULL, '313.41', '31.34', '376.09', NULL, NULL, '31.34', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 6, '0.00', 1, '400.00', '', '', ''),
(28, 'SL-0028', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-08', NULL, NULL, '145.00', '14.50', '174.00', NULL, NULL, '14.50', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 5, '0.00', 1, '200.00', '', '', ''),
(29, 'SL-0029', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-20', NULL, NULL, '657.83', '65.78', '789.40', NULL, NULL, '65.78', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 15, '0.00', 1, '0.00', '', '', ''),
(30, 'SL-0030', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-20', NULL, NULL, '2080.55', '208.06', '2496.66', NULL, NULL, '208.06', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 33, '0.00', 1, '0.00', '', '', ''),
(31, 'SL-0031', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-20', NULL, NULL, '1368.20', '136.82', '1641.84', NULL, NULL, '136.82', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 50, '0.00', 1, '2000.00', '', '', ''),
(32, 'SL-0032', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-20', NULL, NULL, '4389.46', '438.95', '5267.35', NULL, NULL, '438.95', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 89, '0.00', 1, '6000.00', '', '', ''),
(33, 'SL-0033', 1, 1, 'Matt', 1, 'Test Customer', '2014-10-20', NULL, NULL, '18180.00', '1818.00', '21816.00', NULL, NULL, '1818.00', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 1000, '0.00', 1, '30000.00', '', '', ''),
(34, 'SL-0034', 1, 1, 'Matt', 1, 'Test Customer', '2014-11-09', NULL, NULL, '421.77', '42.18', '506.12', NULL, NULL, '42.18', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 8, '0.00', 1, '600.00', '', '', ''),
(35, 'SL-0035', 1, 1, 'Matt', 1, 'Test Customer', '2014-12-01', NULL, NULL, '190.88', '19.09', '229.06', NULL, NULL, '19.09', 3, '0.00', 0, 'Admin Owner', NULL, 'cash', 4, '0.00', 1, '300.00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE IF NOT EXISTS `sale_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `discount_val` decimal(25,2) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_id` (`sale_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `product_code`, `product_name`, `product_unit`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `gross_total`, `val_tax`, `serial_no`, `discount_val`, `discount`, `discount_id`) VALUES
(1, 1, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(2, 2, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(3, 3, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(4, 4, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(5, 5, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(6, 6, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(7, 6, 4, 'Labour', 'Labour', '65.00', 3, '10.00%', 1, '65.00', '65.00', '6.50', '', '0.00', '0.00', 1),
(8, 6, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '', '0.00', '0.00', 1),
(9, 6, 3, 'part3', 'Door seals', '10', 3, '10.00%', 1, '100.00', '100.00', '10.00', '', '0.00', '0.00', 1),
(10, 7, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(11, 8, 3, 'part3', 'Door seals', '10', 3, '10.00%', 1, '100.00', '100.00', '10.00', '', '0.00', '0.00', 1),
(12, 8, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '', '0.00', '0.00', 1),
(13, 8, 4, 'Labour', 'Labour', '65.00', 3, '10.00%', 3, '65.00', '195.00', '19.50', '', '0.00', '0.00', 1),
(14, 9, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(15, 9, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(16, 9, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(17, 9, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(18, 9, 4, 'Labour', 'Labour', '65.00', 3, '10.00%', 1, '65.00', '65.00', '6.50', '', '0.00', '0.00', 1),
(19, 9, 4, 'Labour', 'Labour', '65.00', 3, '10.00%', 30, '65.00', '1950.00', '195.00', '', '0.00', '0.00', 1),
(20, 10, 3, 'part3', 'Door seals', '10', 3, '10.00%', 1, '100.00', '100.00', '10.00', '', '0.00', '0.00', 1),
(21, 10, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '', '0.00', '0.00', 1),
(22, 11, 3, 'part3', 'Door seals', '100', 3, '10.00%', 1, '100.00', '100.00', '10.00', '', '0.00', '0.00', 1),
(23, 12, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(24, 13, 3, 'part3', 'Door seals', '100', 3, '10.00%', 1, '100.00', '100.00', '10.00', '', '0.00', '0.00', 1),
(25, 13, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '', '0.00', '0.00', 1),
(26, 14, 3, 'part3', 'Door seals', '100', 3, '10.00%', 1, '100.00', '100.00', '10.00', '', '0.00', '0.00', 1),
(27, 14, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '', '0.00', '0.00', 1),
(28, 14, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '', '0.00', '0.00', 1),
(29, 14, 4, 'Labour', 'Labour', '65.00', 3, '10.00%', 1, '65.00', '65.00', '6.50', '', '0.00', '0.00', 1),
(30, 15, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '', '0.00', '0.00', 1),
(31, 16, 4, 'Labour', 'Labour', '65.00', 3, '10.00%', 1, '65.00', '65.00', '6.50', '', '0.00', '0.00', 1),
(32, 17, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '', '0.00', '0.00', 1),
(33, 18, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(34, 18, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(35, 18, 1, 'Stove Parts', 'Stove door hinge', '35.00', 3, '10.00%', 1, '70.00', '70.00', '7.00', '', '0.00', '0.00', 1),
(36, 19, 152, 'BWG-W10469016', 'CONTROL PCB', 'box', 3, '10.00%', 1, '180.90', '180.90', '18.09', '', '0.00', '0.00', 1),
(37, 19, 154, 'GLO-M58314', 'CONTROL SINGLE POLE', 'box', 3, '10.00%', 1, '44.54', '44.54', '4.45', '', '0.00', '0.00', 1),
(38, 19, 155, 'SM-818731124', 'Control Themostat Smeg', 'box', 3, '10.00%', 1, '98.00', '98.00', '9.80', '', '0.00', '0.00', 1),
(39, 20, 120, 'QT-CAP025', 'CAPACITOR 25 MF', 'box', 3, '10.00%', 1, '22.72', '22.72', '2.27', '', '0.00', '0.00', 1),
(40, 20, 121, 'QT-CAP003', 'CAPACITOR 3 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(41, 20, 123, 'QT-CAP035', 'CAPACITOR 35 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(42, 20, 119, 'QT-CAP020', 'CAPACITOR 20 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(43, 20, 120, 'QT-CAP025', 'CAPACITOR 25 MF', 'box', 3, '10.00%', 1, '22.72', '22.72', '2.27', '', '0.00', '0.00', 1),
(44, 21, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(45, 21, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(46, 21, 341, 'AS-228293', 'ASKO DRAIN HOSE (no clamp)', 'box', 3, '10.00%', 1, '53.36', '53.36', '5.34', '', '0.00', '0.00', 1),
(47, 21, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(48, 21, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(49, 22, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(50, 22, 672, 'BWG-W10527555', 'BWG-W10527555, MAIN PCB', 'box', 3, '10.00%', 1, '126.36', '126.36', '12.64', '', '0.00', '0.00', 1),
(51, 22, 111, 'QT-8572717', 'CAPACITOR', 'box', 3, '10.00%', 1, '45.45', '45.45', '4.55', '', '0.00', '0.00', 1),
(52, 23, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(53, 23, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(54, 23, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(55, 24, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(56, 24, 112, 'QT-BEN009', 'CAPACITOR 10MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(57, 24, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(58, 25, 294, 'BSH-00640012', 'Door Hinges Bosch Oven', 'box', 3, '10.00%', 1, '45.54', '45.54', '4.55', '', '0.00', '0.00', 1),
(59, 25, 318, 'FP-521565P', 'DOOR SPRINGS', 'box', 3, '10.00%', 1, '44.54', '44.54', '4.45', '', '0.00', '0.00', 1),
(60, 26, 878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 3, '10.00%', 1, '29.00', '29.00', '2.90', '', '0.00', '0.00', 1),
(61, 26, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(62, 26, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(63, 26, 108, 'SE-SP001A', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(64, 26, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(65, 26, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(66, 26, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(67, 26, 112, 'QT-BEN009', 'CAPACITOR 10MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(68, 26, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(69, 26, 672, 'BWG-W10527555', 'BWG-W10527555, MAIN PCB', 'box', 3, '10.00%', 1, '126.36', '126.36', '12.64', '', '0.00', '0.00', 1),
(70, 26, 111, 'QT-8572717', 'CAPACITOR', 'box', 3, '10.00%', 1, '45.45', '45.45', '4.55', '', '0.00', '0.00', 1),
(71, 27, 341, 'AS-228293', 'ASKO DRAIN HOSE (no clamp)', 'box', 3, '10.00%', 1, '53.36', '53.36', '5.34', '', '0.00', '0.00', 1),
(72, 27, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(73, 27, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(74, 27, 108, 'SE-SP001A', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(75, 27, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(76, 27, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(77, 28, 878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 3, '10.00%', 5, '29.00', '145.00', '14.50', '', '0.00', '0.00', 1),
(78, 29, 878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 3, '10.00%', 1, '29.00', '29.00', '2.90', '', '0.00', '0.00', 1),
(79, 29, 341, 'AS-228293', 'ASKO DRAIN HOSE (no clamp)', 'box', 3, '10.00%', 1, '53.36', '53.36', '5.34', '', '0.00', '0.00', 1),
(80, 29, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(81, 29, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(82, 29, 108, 'SE-SP001A', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(83, 29, 110, 'NS-808893501', 'BUZZER BOX CONTROL ASSY', 'box', 3, '10.00%', 1, '98.34', '98.34', '9.83', '', '0.00', '0.00', 1),
(84, 29, 672, 'BWG-W10527555', 'BWG-W10527555, MAIN PCB', 'box', 3, '10.00%', 1, '126.36', '126.36', '12.64', '', '0.00', '0.00', 1),
(85, 29, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(86, 29, 127, 'QT-CAP005', 'CAPACITOR 5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(87, 29, 128, 'QT-CAP050', 'CAPACITOR 50 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(88, 29, 129, 'QT-CAP006', 'CAPACITOR 6 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(89, 29, 135, 'INK-QI-FX9/10', 'COMPATIBLE CANON FX9/FX10 - 2000PGS', 'box', 3, '10.00%', 1, '8.00', '8.00', '0.80', '', '0.00', '0.00', 1),
(90, 29, 134, 'QT-CAP010', 'CAPACITOR CAP10', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(91, 29, 133, 'QT-CAP080', 'CAPACITOR 80 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(92, 29, 132, 'QT-CAP008', 'CAPACITOR 8 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(93, 30, 878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 3, '10.00%', 1, '29.00', '29.00', '2.90', '', '0.00', '0.00', 1),
(94, 30, 341, 'AS-228293', 'ASKO DRAIN HOSE (no clamp)', 'box', 3, '10.00%', 1, '53.36', '53.36', '5.34', '', '0.00', '0.00', 1),
(95, 30, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(96, 30, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(97, 30, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(98, 30, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(99, 30, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(100, 30, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(101, 30, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(102, 30, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(103, 30, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(104, 30, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(105, 30, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(106, 30, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(107, 30, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(108, 30, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(109, 30, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(110, 30, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(111, 30, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(112, 30, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(113, 30, 136, 'QT-RF108GE', 'CONDENSOR FAN MOTOR', 'box', 3, '10.00%', 1, '109.09', '109.09', '10.91', '', '0.00', '0.00', 1),
(114, 30, 136, 'QT-RF108GE', 'CONDENSOR FAN MOTOR', 'box', 3, '10.00%', 1, '109.09', '109.09', '10.91', '', '0.00', '0.00', 1),
(115, 30, 136, 'QT-RF108GE', 'CONDENSOR FAN MOTOR', 'box', 3, '10.00%', 1, '109.09', '109.09', '10.91', '', '0.00', '0.00', 1),
(116, 30, 135, 'INK-QI-FX9/10', 'COMPATIBLE CANON FX9/FX10 - 2000PGS', 'box', 3, '10.00%', 1, '8.00', '8.00', '0.80', '', '0.00', '0.00', 1),
(117, 30, 135, 'INK-QI-FX9/10', 'COMPATIBLE CANON FX9/FX10 - 2000PGS', 'box', 3, '10.00%', 1, '8.00', '8.00', '0.80', '', '0.00', '0.00', 1),
(118, 30, 134, 'QT-CAP010', 'CAPACITOR CAP10', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(119, 30, 134, 'QT-CAP010', 'CAPACITOR CAP10', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(120, 30, 133, 'QT-CAP080', 'CAPACITOR 80 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(121, 30, 142, 'NS-1434048R', 'Control Board Whse', 'box', 3, '10.00%', 1, '219.00', '219.00', '21.90', '', '0.00', '0.00', 1),
(122, 30, 143, 'GLO-MSA-V03', 'CONTROL COOKTOP', 'box', 3, '10.00%', 1, '89.09', '89.09', '8.91', '', '0.00', '0.00', 1),
(123, 30, 144, 'GLO-50.55073.010', 'CONTROL COOKTOP ELEMENT', 'box', 3, '10.00%', 1, '35.45', '35.45', '3.55', '', '0.00', '0.00', 1),
(124, 30, 141, 'ED-MA33002880', 'CONTROL BOARD MAYTAG DRYER', 'box', 3, '10.00%', 1, '605.00', '605.00', '60.50', '', '0.00', '0.00', 1),
(125, 30, 140, 'NS-1448797', 'CONTROL BOARD', 'box', 3, '10.00%', 1, '127.27', '127.27', '12.73', '', '0.00', '0.00', 1),
(126, 31, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(127, 31, 110, 'NS-808893501', 'BUZZER BOX CONTROL ASSY', 'box', 3, '10.00%', 1, '98.34', '98.34', '9.83', '', '0.00', '0.00', 1),
(128, 31, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(129, 31, 108, 'SE-SP001A', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(130, 31, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(131, 31, 112, 'QT-BEN009', 'CAPACITOR 10MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(132, 31, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(133, 31, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(134, 31, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(135, 31, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(136, 31, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(137, 31, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(138, 31, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(139, 31, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(140, 31, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(141, 31, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(142, 31, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(143, 31, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(144, 31, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(145, 31, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(146, 31, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(147, 31, 122, 'QT-CAP030', 'CAPACITOR 30 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(148, 31, 122, 'QT-CAP030', 'CAPACITOR 30 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(149, 31, 121, 'QT-CAP003', 'CAPACITOR 3 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(150, 31, 121, 'QT-CAP003', 'CAPACITOR 3 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(151, 31, 121, 'QT-CAP003', 'CAPACITOR 3 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(152, 31, 121, 'QT-CAP003', 'CAPACITOR 3 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(153, 31, 121, 'QT-CAP003', 'CAPACITOR 3 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(154, 31, 120, 'QT-CAP025', 'CAPACITOR 25 MF', 'box', 3, '10.00%', 1, '22.72', '22.72', '2.27', '', '0.00', '0.00', 1),
(155, 31, 120, 'QT-CAP025', 'CAPACITOR 25 MF', 'box', 3, '10.00%', 1, '22.72', '22.72', '2.27', '', '0.00', '0.00', 1),
(156, 31, 119, 'QT-CAP020', 'CAPACITOR 20 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(157, 31, 119, 'QT-CAP020', 'CAPACITOR 20 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(158, 31, 119, 'QT-CAP020', 'CAPACITOR 20 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(159, 31, 118, 'QT-CAP002', 'CAPACITOR 2 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(160, 31, 118, 'QT-CAP002', 'CAPACITOR 2 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(161, 31, 118, 'QT-CAP002', 'CAPACITOR 2 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(162, 31, 117, 'QT-CAP018', 'CAPACITOR 18 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(163, 31, 117, 'QT-CAP018', 'CAPACITOR 18 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(164, 31, 125, 'QT-CAP040', 'CAPACITOR 40 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(165, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(166, 31, 127, 'QT-CAP005', 'CAPACITOR 5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(167, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(168, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(169, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(170, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(171, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(172, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(173, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(174, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(175, 31, 126, 'QT-CAP045', 'CAPACITOR 45 MF', 'box', 3, '10.00%', 1, '36.36', '36.36', '3.64', '', '0.00', '0.00', 1),
(176, 32, 878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 3, '10.00%', 1, '29.00', '29.00', '2.90', '', '0.00', '0.00', 1),
(177, 32, 341, 'AS-228293', 'ASKO DRAIN HOSE (no clamp)', 'box', 3, '10.00%', 50, '53.36', '2668.00', '266.80', '', '0.00', '0.00', 1),
(178, 32, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(179, 32, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(180, 32, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(181, 32, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(182, 32, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(183, 32, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(184, 32, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(185, 32, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(186, 32, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(187, 32, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(188, 32, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(189, 32, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(190, 32, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(191, 32, 108, 'SE-SP001A', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(192, 32, 108, 'SE-SP001A', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(193, 32, 108, 'SE-SP001A', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(194, 32, 108, 'SE-SP001A', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(195, 32, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(196, 32, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(197, 32, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(198, 32, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(199, 32, 116, 'QT-BEN010', 'CAPACITOR 16MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(200, 32, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(201, 32, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(202, 32, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(203, 32, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(204, 32, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(205, 32, 113, 'QT-DWV008', 'CAPACITOR 12.5 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(206, 32, 112, 'QT-BEN009', 'CAPACITOR 10MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(207, 32, 112, 'QT-BEN009', 'CAPACITOR 10MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(208, 32, 111, 'QT-8572717', 'CAPACITOR', 'box', 3, '10.00%', 1, '45.45', '45.45', '4.55', '', '0.00', '0.00', 1),
(209, 32, 111, 'QT-8572717', 'CAPACITOR', 'box', 3, '10.00%', 1, '45.45', '45.45', '4.55', '', '0.00', '0.00', 1),
(210, 32, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(211, 32, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(212, 32, 878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 3, '10.00%', 1, '29.00', '29.00', '2.90', '', '0.00', '0.00', 1),
(213, 32, 878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 3, '10.00%', 1, '29.00', '29.00', '2.90', '', '0.00', '0.00', 1),
(214, 32, 341, 'AS-228293', 'ASKO DRAIN HOSE (no clamp)', 'box', 3, '10.00%', 1, '53.36', '53.36', '5.34', '', '0.00', '0.00', 1),
(215, 32, 341, 'AS-228293', 'ASKO DRAIN HOSE (no clamp)', 'box', 3, '10.00%', 1, '53.36', '53.36', '5.34', '', '0.00', '0.00', 1),
(216, 33, 112, 'QT-BEN009', 'CAPACITOR 10MF', 'box', 3, '10.00%', 1000, '18.18', '18180.00', '1818.00', '', '0.00', '0.00', 1),
(217, 34, 109, 'QT-5250FA1731P', 'BREAK MOTOR LG', 'box', 3, '10.00%', 5, '62.72', '313.60', '31.36', '', '0.00', '0.00', 1),
(218, 34, 114, 'QT-CAP014', 'CAPACITOR 14 MF', 'box', 3, '10.00%', 1, '27.27', '27.27', '2.73', '', '0.00', '0.00', 1),
(219, 34, 115, 'QT-CAP015', 'CAPACITOR 15 MF', 'box', 3, '10.00%', 1, '18.18', '18.18', '1.82', '', '0.00', '0.00', 1),
(220, 34, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(221, 35, 878, '609400031', '0609400031, SWITCH ON/OFF & BRKT ASSY', 'box', 3, '10.00%', 1, '29.00', '29.00', '2.90', '', '0.00', '0.00', 1),
(222, 35, 106, 'GLO-031118009908', 'BLANCO HINGE RH', 'box', 3, '10.00%', 1, '53.71', '53.71', '5.37', '', '0.00', '0.00', 1),
(223, 35, 107, 'SE-LG626', 'BREAK MOTOR', 'box', 3, '10.00%', 1, '62.72', '62.72', '6.27', '', '0.00', '0.00', 1),
(224, 35, 111, 'QT-8572717', 'CAPACITOR', 'box', 3, '10.00%', 1, '45.45', '45.45', '4.55', '', '0.00', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `setting_id` int(1) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `logo2` varchar(255) NOT NULL,
  `site_name` varchar(55) NOT NULL,
  `language` varchar(20) NOT NULL,
  `default_warehouse` int(2) NOT NULL,
  `currency_prefix` varchar(3) NOT NULL,
  `default_invoice_type` int(2) NOT NULL,
  `default_tax_rate` int(2) NOT NULL,
  `rows_per_page` int(2) NOT NULL,
  `no_of_rows` int(2) NOT NULL,
  `total_rows` int(2) NOT NULL,
  `version` varchar(5) NOT NULL DEFAULT '2.3',
  `default_tax_rate2` int(11) NOT NULL DEFAULT '0',
  `dateformat` int(11) NOT NULL,
  `sales_prefix` varchar(20) NOT NULL,
  `quote_prefix` varchar(55) NOT NULL,
  `purchase_prefix` varchar(55) NOT NULL,
  `transfer_prefix` varchar(55) NOT NULL,
  `barcode_symbology` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `product_serial` tinyint(4) NOT NULL,
  `default_discount` int(11) NOT NULL,
  `discount_option` tinyint(4) NOT NULL,
  `discount_method` tinyint(4) NOT NULL,
  `tax1` tinyint(4) NOT NULL,
  `tax2` tinyint(4) NOT NULL,
  `restrict_sale` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_user` tinyint(4) NOT NULL DEFAULT '0',
  `restrict_calendar` tinyint(4) NOT NULL DEFAULT '0',
  `bstatesave` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `logo`, `logo2`, `site_name`, `language`, `default_warehouse`, `currency_prefix`, `default_invoice_type`, `default_tax_rate`, `rows_per_page`, `no_of_rows`, `total_rows`, `version`, `default_tax_rate2`, `dateformat`, `sales_prefix`, `quote_prefix`, `purchase_prefix`, `transfer_prefix`, `barcode_symbology`, `theme`, `product_serial`, `default_discount`, `discount_option`, `discount_method`, `tax1`, `tax2`, `restrict_sale`, `restrict_user`, `restrict_calendar`, `bstatesave`) VALUES
(1, 'offcloud_logo41.png', 'offcloud_logo4.png', 'The Demo', 'english', 1, 'AUD', 2, 3, 10, 9, 30, '2.3', 3, 5, 'SL', 'QU', 'PO', 'TR', 'code128', 'blue', 1, 1, 2, 2, 1, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `code` varchar(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `code`, `name`) VALUES
(1, 1, 'Van-mobile', 'stock in van');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  `state` varchar(55) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `country` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `company`, `address`, `city`, `state`, `postal_code`, `country`, `phone`, `email`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`) VALUES
(1, 'Test Supplier', 'Supplier Company Name', 'Supplier Address', 'Melbourne', 'Victoria', '3121', 'Australia', '0123456789', 'supplier@test.com', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `suspended_bills`
--

CREATE TABLE IF NOT EXISTS `suspended_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `tax1` float(25,2) DEFAULT NULL,
  `tax2` float(25,2) DEFAULT NULL,
  `discount` decimal(25,2) DEFAULT NULL,
  `inv_total` decimal(25,2) NOT NULL,
  `total` float(25,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `suspended_bills`
--

INSERT INTO `suspended_bills` (`id`, `date`, `customer_id`, `count`, `tax1`, `tax2`, `discount`, `inv_total`, `total`) VALUES
(1, '2014-09-03', 1, 2, 42.00, 42.00, '0.00', '420.00', 504.00),
(2, '2014-09-08', 1, 2, 20.00, 20.00, '0.00', '200.00', 240.00);

-- --------------------------------------------------------

--
-- Table structure for table `suspended_items`
--

CREATE TABLE IF NOT EXISTS `suspended_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suspend_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(25,2) NOT NULL,
  `gross_total` decimal(25,2) NOT NULL,
  `val_tax` decimal(25,2) DEFAULT NULL,
  `discount` varchar(55) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `discount_val` decimal(25,2) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `suspended_items`
--

INSERT INTO `suspended_items` (`id`, `suspend_id`, `product_id`, `product_code`, `product_name`, `product_unit`, `tax_rate_id`, `tax`, `quantity`, `unit_price`, `gross_total`, `val_tax`, `discount`, `discount_id`, `discount_val`, `serial_no`) VALUES
(1, 1, 3, 'part3', 'Door seals', '10', 3, '10.00%', 1, '100.00', '100.00', '10.00', '0.00', 1, '0.00', ''),
(2, 1, 2, 'part2', 'Fridge Motor', '200', 3, '10.00%', 1, '320.00', '320.00', '32.00', '0.00', 1, '0.00', ''),
(3, 2, 3, 'part3', 'Door seals', '100', 3, '10.00%', 1, '100.00', '100.00', '10.00', '0.00', 1, '0.00', ''),
(4, 2, 3, 'part3', 'Door seals', '100', 3, '10.00%', 1, '100.00', '100.00', '10.00', '0.00', 1, '0.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `rate` decimal(8,2) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `name`, `rate`, `type`) VALUES
(1, 'No Tax', '0.00', '2'),
(3, 'GST', '10.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_no` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `from_warehouse_code` varchar(55) NOT NULL,
  `from_warehouse_name` varchar(55) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `to_warehouse_code` varchar(55) NOT NULL,
  `to_warehouse_name` varchar(55) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `total_tax` decimal(25,2) DEFAULT NULL,
  `total` decimal(25,2) DEFAULT NULL,
  `tr_total` decimal(25,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `transfer_no`, `date`, `from_warehouse_id`, `from_warehouse_code`, `from_warehouse_name`, `to_warehouse_id`, `to_warehouse_code`, `to_warehouse_name`, `note`, `user`, `total_tax`, `total`, `tr_total`) VALUES
(1, 'TR-0001', '2014-09-03', 1, 'WH-2', 'Sydney', 2, 'WH-1', 'Melbourne', '', 'Admin Owner', '5.00', '55.00', '50.00'),
(2, 'TR-0002', '2014-09-03', 2, 'WH-1', 'Melbourne', 1, 'WH-2', 'Sydney', '', 'Admin Owner', '5.00', '55.00', '50.00'),
(3, 'TR-0003', '2014-10-02', 2, 'WH-1', 'Office Stock', 6, 'WH-3', 'Ryans Van', '', 'Admin Owner', '6.22', '68.42', '62.20');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE IF NOT EXISTS `transfer_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(55) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  `tax` varchar(55) DEFAULT NULL,
  `tax_val` decimal(25,2) DEFAULT NULL,
  `unit_price` decimal(25,2) DEFAULT NULL,
  `gross_total` decimal(25,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transfer_id` (`transfer_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `transfer_items`
--

INSERT INTO `transfer_items` (`id`, `transfer_id`, `product_id`, `product_code`, `product_name`, `product_unit`, `quantity`, `tax_rate_id`, `tax`, `tax_val`, `unit_price`, `gross_total`) VALUES
(1, 1, 3, 'part3', 'Door seals', '10', 1, 3, '10.00%', '5.00', '50.00', '50.00'),
(2, 2, 3, 'part3', 'Door seals', '100', 1, 3, '10.00%', '5.00', '50.00', '50.00'),
(3, 3, 850, 'GLO-821152', 'St George Lower Bake Element', 'box', 1, 3, '10.00%', '6.22', '62.20', '62.20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '\0\0', 'owner', '89acac73c8fa1585ad3d96893d02d4a0221423ad', NULL, 'matt.langford@12three.com.au', NULL, NULL, NULL, '265b8eedea561388194a08c0839830452d91e167', 1351661704, 1417392530, 1, 'Admin', 'Owner', 'Stock Manager', '0408587332'),
(2, 'É³', 'admin admin', '6b6159fa38d9b0e29cc12418b2df053d948cc3ed', NULL, 'mohit@12three.com.au', NULL, '60fc346533c4f12a411a47ead34845de6cab16c3', 1411611607, NULL, 1409205187, 1411702303, 1, 'Manager', 'admin', '123', '0425799002'),
(3, 'É³', 'purchaser purchaser', '6399789d1849a66610f9596a386df6ce8d279f07', NULL, 'info@reloadgroup.com.au', NULL, NULL, NULL, 'cbcb6cddc007f526853ff7ff6c3163d15a138e05', 1409205488, 1413781370, 1, 'Stock Manager', 'Purchaser', '12 Three Web Solutions', '1231231231'),
(4, 'É³', 'salesman salesman', '59183c9a15f63c38b24ff40d2d68c1dd882295a0', NULL, 'team@reloadgroup.com.au', NULL, NULL, NULL, NULL, 1409205616, 1409803538, 1, 'Salesman', 'Salesman', '12 Three Web Solutions', '1231231231'),
(5, 'É³', 'user user', '82ceb360a02742e2204b1b50c52ea515f7dc05df', NULL, 'accounts@12three.com.au', NULL, NULL, NULL, NULL, 1409205698, 1417390257, 1, 'Distribution Staff', 'User', '12 Three Web Solutions', '1231231231'),
(7, 'É³', 'matt gowty', 'f32436c0936f25bc31884197975587a889e9b93c', NULL, 'matt@tradebondmelb.com.au', NULL, NULL, NULL, NULL, 1409294189, 1409294580, 1, 'Matt', 'gowty', 'Trade Bond Melb', '1234567890'),
(9, 'É³', 'steve white', '13d043616a0d3693d3cbee5bb7f5529d984fc392', NULL, 'steve@alwayspromptrepairs.com.au', NULL, NULL, NULL, '6232bbff2800b06bfd99489e7e90911001b7e6e4', 1410484140, 1411553122, 1, 'Steve', 'White', 'APR', '0394289157'),
(10, 'É³', 'cha zhe', 'e41a8482c5364cec322aa454894034ddd7e90e83', NULL, 'cha@12three.com.au', NULL, NULL, NULL, NULL, 1412038010, 1412228494, 1, 'cha', 'zhe', 'zs', '045611234'),
(11, 'É³', 'cha zhe1', 'bc36914882c67f12a269ac62ccc936656cfb37aa', NULL, 'cha2@12three.com.au', NULL, '0c97e00502f265c844bf7c0768b65e23e3e51732', 1412040120, NULL, 1412038230, 1412493182, 1, 'cha', 'zhe', 'ts', '0456111234'),
(12, 'É³', 'stockmanager manager', 'bf71affe8fe7629f1b3f1d34338cc099e654a09f', NULL, 'matt@reloadgroup.com.au', NULL, NULL, NULL, NULL, 1413778866, 1413779028, 1, 'StockManager', 'Manager', 'Test', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(7, 7, 2),
(9, 9, 2),
(10, 10, 1),
(11, 11, 4),
(12, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(55) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `code`, `name`, `address`, `city`) VALUES
(1, 'WH-2', 'Aarons Van', 'Ringtail Street', 'North Lakes'),
(2, 'WH-1', 'Office Stock', '14 Geodorum Street', 'Shailer Park'),
(6, 'WH-3', 'Ryans Van', '49 Marland Street', 'Kenmore'),
(7, 'WH-4', 'Shanans Van', 'Jupiter cct', 'Wulkuraka'),
(8, 'WH-5', 'Cyrils Van', 'Trump cct', 'North Lakes');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses_products`
--

CREATE TABLE IF NOT EXISTS `warehouses_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `warehouse_id` (`warehouse_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `warehouses_products`
--

INSERT INTO `warehouses_products` (`id`, `product_id`, `warehouse_id`, `quantity`) VALUES
(10, 152, 1, -1),
(11, 154, 1, -1),
(12, 155, 1, -1),
(13, 120, 1, -4),
(14, 121, 1, -6),
(15, 123, 1, -1),
(16, 119, 1, -4),
(17, 850, 2, -1),
(18, 850, 6, 1),
(19, 116, 1, -18),
(20, 115, 1, -10),
(21, 341, 1, -56),
(22, 107, 1, -14),
(23, 109, 1, -15),
(24, 672, 1, -3),
(25, 111, 1, -5),
(26, 106, 1, -13),
(27, 112, 1, -1005),
(28, 294, 1, -1),
(29, 318, 1, -1),
(30, 878, 1, -12),
(31, 108, 1, -8),
(32, 114, 1, -15),
(33, 113, 1, -10),
(34, 110, 1, -2),
(35, 127, 1, -2),
(36, 128, 1, -1),
(37, 129, 1, -1),
(38, 135, 1, -3),
(39, 134, 1, -3),
(40, 133, 1, -2),
(41, 132, 1, -1),
(42, 214, 1, 500),
(43, 217, 1, 50),
(44, 158, 1, 45),
(45, 136, 1, -3),
(46, 142, 1, -1),
(47, 143, 1, -1),
(48, 144, 1, -1),
(49, 141, 1, -1),
(50, 140, 1, -1),
(51, 122, 1, -2),
(52, 118, 1, -3),
(53, 117, 1, -2),
(54, 125, 1, -1),
(55, 126, 1, -10);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
