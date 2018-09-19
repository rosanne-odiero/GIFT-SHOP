-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2018 at 05:14 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giftit`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `Id` int(11) NOT NULL,
  `Brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`Id`, `Brand`) VALUES
(1, 'Rampsons');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Id` int(11) NOT NULL,
  `Items` text NOT NULL,
  `expire-date` datetime NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(255) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Parent` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `CategoryName`, `Parent`) VALUES
(1, 'Gift', 0),
(2, 'Occassion', 0),
(3, 'Categories', 0),
(7, 'Him', 1),
(8, 'Her', 1),
(9, 'Teen', 1),
(10, 'Baby', 1),
(11, 'personality type', 0),
(12, 'The Duty Fulfiller', 11),
(13, 'The Mechanic', 11),
(14, 'The Nurturer', 11),
(15, 'The Artist', 11),
(16, 'The Idealist', 11),
(17, 'The Scientist', 11),
(18, 'The Thinker', 11),
(19, 'The Doer', 11),
(20, 'The Guardian', 11),
(21, 'The Performer', 11),
(22, 'The Caregiver', 11),
(23, 'The Inspirer', 11),
(24, 'The Giver', 11),
(25, 'The Visionary', 11),
(26, 'The Executive', 11),
(27, 'Birthday', 2),
(28, 'Christmas', 2),
(29, 'Anniversary', 2),
(30, 'Wedding', 2),
(31, 'Women\'s Fashion', 3),
(32, 'Men\'s Fashion', 3),
(33, 'Sports', 3),
(34, 'Gadgets', 3);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender_name`) VALUES
(1, 'MALE'),
(2, 'FEMALE'),
(3, 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Discounted Price` double NOT NULL,
  `Original Price` double NOT NULL,
  `Brand` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Feature` tinyint(4) NOT NULL DEFAULT '0',
  `Size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Title`, `Discounted Price`, `Original Price`, `Brand`, `Category`, `Image`, `Description`, `Feature`, `Size`) VALUES
(1, 'Friendly Character Bowl', 1200, 1600, 1, '7', '\\GIFT-SHOP\\images\\bowl1.jpg', 'A Personal Creations Exclusive! Perfect for cereal, ice cream or soup!\r\n							Made of porcelain.\r\n							Holds 32 oz.\r\n							Microwave safe.\r\n							Hand wash.\r\n							Choose any characters and we’ll add any message on 2 lines, up to 10 characters per line.\r\n							Icon options range from grandma, grandpa, mom, dad, teen boy, teen girl, kid boy, kid girl, toddler boy, toddler girl, baby boy, baby girl, cat and dog.\r\n							We also offer your choice of ethnicity (Caucasian, African American or Hispanic), hair color (red, brown, black, blond, or bald), and pet color (yellow, black, brown, gray or white).', 1, 'Small:5 , Medium:6, Large:8'),
(2, 'MLB cufflings', 900, 1200, 1, '7', '/GIFT-SHOP/images/cuff1.jpg', '<p>What\'s a true football fan wear to a formal occasion? He\'s sure to score mega fashion points decked out in cuff links featuring his favorite NFL team’s logo. It’s a fun way to show his team pride while adding some gridiron glamour to any dressy outfit.\r\nSilverstone plated base metal and enamel with bullet back closure.\r\nMeasures approx. 3/4\" sq.\r\nOfficially licensed by the National Football League.\r\nPresented in Official NFL gift packaging with turf interior.', 1, 'Small:12, Medium:13'),
(3, 'Womens Plush Robe', 2000, 2400, 1, '8', '/GIFT-SHOP/images/robe1.jpg', 'Wrap yourself in decadence, this Turkish robe is as luxurious as those offered at five-star hotels. Soft and inviting, the plush, thirsty fabric acts like a high-quality towel, making it perfect for après bath, hot tub or shower. Transform your home into a villa of the highest extravagance. Exclusively from RedEnvelope.\r\nMade of plush polyester micro-fiber.\r\nMid-calf length.\r\nMachine wash warm with like colors, gentle cycle, only non-chlorine bleach when needed. Tumble dry low.\r\nWomen\'s sizes S/M (2-6), M/L (8-14).\r\nAvailable in blush robe with gray or cream thread or white robe with gray or sea blue thread.\r\nChoose script or serif font.\r\nPersonalize with any name up to 9 characters or any single initial.', 1, 'S/M:8,M/L:12'),
(4, 'Embelished purse Mirror', 800, 1200, 1, '8', '/GIFT-SHOP/images/mirror1.jpg', 'To keep her looking good, why not provide her with a handy and equally good-looking mirror? Ours is embellished with an intricate filigree-inspired design on both front and back.\r\nBrushed-nickel plate (silver color finish).\r\nFeatures two mirrors: one regular and one 2x magnified.\r\nUpgrade to personalized and add any message up to 10 characters.', 1, ''),
(6, 'Embrossed Charging Dock', 2400, 2700, 1, '9', '/GIFT-SHOP/images/charger1.jpg', 'Keep everyday essentials stylishly organized with this contemporary, multi-function docking station. With a perch for your phone, keychain notch, slot for watches or bracelets and groove along the bottom for charging cords, your nightstand or office desk will stay pleasantly clutter-free.\r\nSleek white lacquer finish with a golden rebar accent bar.\r\nMeasures 8-1/4”Lx8-1/4”Wx9-1/2” H, fully assembled.\r\nWipe clean with a soft cloth.\r\nEmboss with any name up to 10 characters in gold.', 1, ''),
(7, 'Picnic bagpack', 2400, 2700, 1, '7', '/GIFT-SHOP/images/bag1.jpg', 'Hosting a family picnic is as simple as filling our backpack with the family\'s favorite foods. The canvas pack is already loaded up with melamine plates, goblets, flatware and napkins for four, plus a bread knife, wooden cutting board, salt and pepper shakers and a sommelier\'s corkscrew. It even has a detachable wine cooler and sable-gray felt blanket.\r\nPadded shoulder straps for comfort.\r\nInsulated main compartment keeps food cold.\r\nMeasures 18\"Lx7\"Wx16\"H.\r\nBlanket measures 47-1/4\"L x 53\"W.\r\nPersonalized with any message up to 15 characters.', 1, 'Small:12;Medium:12,Large:4'),
(8, 'Any message glass block', 1800, 2300, 1, '8', '/GIFT-SHOP/images/block1.jpg', 'Proclaim your own personal message on our beautiful glass block! It makes a perfect and artful gift for that special someone!\r\nMade of glass.\r\nMeasures 5\"Wx4\"Hx3/4\"D.\r\nLaser engraved with any 3-6 line message up to 22 characters.', 1, 'Small:12,Medium:23,Large:13'),
(9, 'Reasons I love you stones', 900, 1200, 1, '8', '/GIFT-SHOP/images/stones1.jpg', 'These stones aren’t for skipping, but they’re sure to make your loved one’s heart skip a beat. That’s because they feature 9 of the many reasons you adore them, etched in stone. Think of all the ways you could use them to send your heartfelt message.\r\nNine brushed-nickel “stones”.\r\nComes in a faux-suede bag that can be personalized with 2 initials on a small metal plaque.\r\n\"+\" will always appear\r\nStones measure approx. 1-3/8\"L.\r\nStones read “I love you…” on the front, and a different “reasons” on the back: “for always getting my jokes”; “because you\'re an inspiration”; “because you are so much fun”; “because of your great smile”; “for being so giving”; “because I just do!”; “because you love me”; “because you rock”; “for your honesty”.', 1, ''),
(10, 'Baby Elephant Ring holder', 1900, 1200, 1, '9', '/GIFT-SHOP/images/ringholder1.jpg', 'They say an elephant never forgets which makes this diminutive silver-plated version a logical partner for helping her remember where she put her rings. The artfully designed elephant makes a delightful addition to her bathroom sink or bedside table. Engraved up to 9 characters. Exclusively from RedEnvelope.\r\nMade of polished silver plate.\r\nElephant\'s upturned trunk is also a symbol of good-luck.\r\nElephant\'s upturned trunk and tray base hold her rings safely and securely.\r\nUpgrade to personalized and add a name up to 9 characters.', 1, ''),
(11, 'Monogram Woodden watch', 2400, 3000, 1, '7', '/GIFT-SHOP/images/watch1.jpg', 'Made from hypoallergenic wood, this striking watch makes a unique conversation piece. It combines one-of-a-kind style with eco-friendly features. In fact, for every watch sold, a tree is planted to help decrease deforestation.\r\n100% natural wood.\r\nHypoallergenic and completely free of toxic chemicals.\r\nMiyota quartz movement.\r\nHardened, scratch-proof mineral glass.\r\nAdjusts to fit any wrist.\r\nBand measures 7-1/2”L with 1-1/2” dia. face.\r\nChoose from black or brown\r\nPersonalize the back with any 3 letter monogram or date.\r\nDue to the natural variations of genuine leather, each wallet will be unique.\r\nItem cannot be gift boxed.', 1, ''),
(12, 'Chocolate Bliss Box', 3400, 3900, 1, '8', '/GIFT-SHOP/images/chocolate1.jpg', 'Indulge the chocolate lover in your life with a collection of treats overflowing with decadent surprises, like artisan marshmallows dipped in chocolate and crunchy sea-salted popcorn covered in caramel. This is a gift so good, they\'ll find it easy to celebrate and hard to share.\r\nChocolate Sea Salt Caramel Popcorn (5 oz.)\r\n2 Milk Chocolate Covered Pretzels\r\nVanilla Marshmallows (4 oz.)\r\n2 Chocolate Covered Marshmallow Pops\r\nMilk Chocolate Covered Gummy Bears (3 oz.)\r\nDark Chocolate Covered Apricot Bites (3 oz.)\r\nDusted Chocolate Peanut Butter Toffee Balls (3 oz.)\r\nDark Chocolate Almond Bark (3 oz.)\r\nCocoa Biscotti Bites (3 oz.)', 1, ''),
(13, 'Love Birthstone Necklace', 1200, 2300, 1, '7', '/GIFT-SHOP/images/necklace1.jpg', 'The circle of family can never be broken; honor that bond with this meaningful pendant adorned with simulated birthstones.\r\nSterling silver pendant with 3.5mm simulated birthstones.\r\nRope chain with spring ring clasp.\r\nPersonalize with 1 to 5 birthstones and names up to 12 characters each.\r\nPendant measures approx. 1-1/4\" dia., 18\"L chain.\r\nPlease allow 3 weeks for delivery.\r\nItem cannot be gift boxed.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` char(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `password`, `gender`, `fullname`) VALUES
(3, 'rosanneodiero9@gmail.com', 'Icarly415', 'Female', 'Rosanne Odiero'),
(5, 'beatrice@gmail.com', '1234', 'Female', 'Beatrice Ndiga'),
(6, 'beatrice@gmail.com', '', 'Female', 'Beatrice Ndiga'),
(7, 'lucanneodiero9@gmail.com', '12345', 'Female', 'Lucianne Odiero');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
