
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Dress4win`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Shirt'),
(2, 'Sport wear'),
(3, 'Outwear'),
(4, 'Dress'),
(5, 'Polo Shirt');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `details` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `picture` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `category`, `title`, `details`, `price`, `picture`) VALUES
(1, 1, 'Denim shirt', 'This long sleeved collar Denim Shirt comes in breathable fabric. It has a small pocket at the front to put your usable items. Pair it with our black jacket for total coolness.', 120, 'denimshirt.PNG'),
(2, 2, 'Sweat shirt', 'A heavy, loose, long sleeved, pullover made of cotton jersey, worn by athletes to absorb sweat during or after exercise. Comes with two side pockets. Use pockets to store wallet, keys during exercising.', 139, 'sweatshirt.PNG'),
(3, 2, 'Grey blouse', 'A long sleeved grey round neckline blouse designed for ladies, commonly used for exercising, great for absorbing sweat. Crafted from soft fleecy cotton, a perfect fit for adventurous weekends.', 99, 'greyblouse.PNG'),
(4, 3, 'Black jacket', 'Relaxed fit denim jacket with two symmetrical chest pockets made in oraganic cotton. A torn right shoulder design for a punk feel.', 219, 'blackjacket.PNG'),
(5, 5, 'Polo shirt', 'A knitted green polo shirt with collar and 3 buttons.', 120, 'greenknittedpolomen.PNG'),
(6, 4, 'Knitted Dress', 'A well knitted Jacquard dress by our luxurious designers, made of organic material, simply a work of art.', 800, 'jacquardknitteddress.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
