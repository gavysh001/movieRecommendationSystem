-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 01:01 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_recommendation`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `description`) VALUES
(1, 'Sam Worthington', 'Sam Worthington'),
(2, 'Zoe Saldana', 'Zoe Saldana'),
(3, 'Sigourney Weaver', 'Sigourney Weaver'),
(4, 'Stephen Lang', 'Stephen Lang'),
(5, 'Michelle Rodriguez', 'Michelle Rodriguez'),
(6, 'Robert Downey Jr.', 'Robert Downey Jr.'),
(7, 'Terrence Howard', 'Terrence Howard'),
(8, 'Jeff Bridges', 'Jeff Bridges'),
(9, 'Shaun Toub', 'Shaun Toub'),
(10, 'Gwyneth Paltrow', 'Gwyneth Paltrow'),
(11, 'Daniel Craig', 'Daniel Craig'),
(12, 'Christoph Waltz', 'Christoph Waltz'),
(13, 'Léa Seydoux', 'Léa Seydoux'),
(14, 'Ralph Fiennes', 'Ralph Fiennes'),
(15, 'Monica Bellucci', 'Monica Bellucci'),
(16, 'Chris Evans', 'Chris Evans'),
(17, 'Scarlett Johansson', 'Scarlett Johansson'),
(18, 'Sebastian Stan', 'Sebastian Stan'),
(19, 'Anthony Mackie', 'Anthony Mackie'),
(20, 'Chris Hemsworth', 'Chris Hemsworth'),
(21, 'Mark Ruffalo', 'Mark Ruffalo'),
(22, 'Hugo Weaving', 'Hugo Weaving'),
(23, 'Tommy Lee Jones', 'Tommy Lee Jones'),
(24, 'Hayley Atwell', 'Hayley Atwell'),
(25, 'Samuel L. Jackson', 'Samuel L. Jackson'),
(26, 'Robert Redford', 'Robert Redford'),
(27, 'Don Cheadle', 'Don Cheadle'),
(28, 'Guy Pearce', 'Guy Pearce'),
(29, 'Rebecca Hall', 'Rebecca Hall'),
(30, 'Natalie Portman', 'Natalie Portman'),
(31, 'Tom Hiddleston', 'Tom Hiddleston'),
(32, 'Anthony Hopkins', 'Anthony Hopkins'),
(33, 'Christopher Eccleston', 'Christopher Eccleston'),
(34, 'Stellan Skarsgård', 'Stellan Skarsgård'),
(35, 'Paul Rudd', 'Paul Rudd'),
(36, 'Michael Douglas', 'Michael Douglas'),
(37, 'Evangeline Lilly', 'Evangeline Lilly'),
(38, 'Corey Stoll', 'Corey Stoll'),
(39, 'Bobby Cannavale', 'Bobby Cannavale'),
(40, 'Edward Norton', 'Edward Norton'),
(41, 'Liv Tyler', 'Liv Tyler'),
(42, 'Tim Roth', 'Tim Roth'),
(43, 'William Hurt', 'William Hurt'),
(44, 'Tim Blake Nelson', 'Tim Blake Nelson'),
(45, 'Hugh Jackman', 'Hugh Jackman'),
(46, 'Hiroyuki Sanada', 'Hiroyuki Sanada'),
(47, 'Famke Janssen', 'Famke Janssen'),
(48, 'Will Yun Lee', 'Will Yun Lee'),
(49, 'Tao Okamoto', 'Tao Okamoto'),
(50, 'Mickey Rourke', 'Mickey Rourke'),
(51, 'Patrick Stewart', 'Patrick Stewart'),
(52, 'Ian McKellen', 'Ian McKellen'),
(53, 'Halle Berry', 'Halle Berry'),
(54, 'Liev Schreiber', 'Liev Schreiber'),
(55, 'Danny Huston', 'Danny Huston'),
(56, 'Lynn Collins', 'Lynn Collins'),
(57, 'Ryan Reynolds', 'Ryan Reynolds'),
(58, 'Brandon Routh', 'Brandon Routh'),
(59, 'Kevin Spacey', 'Kevin Spacey'),
(60, 'Kate Bosworth', 'Kate Bosworth'),
(61, 'James Marsden', 'James Marsden'),
(62, 'Parker Posey', 'Parker Posey'),
(63, 'Christopher Reeve', 'Christopher Reeve'),
(64, 'Richard Pryor', 'Richard Pryor'),
(65, 'Jackie Cooper', 'Jackie Cooper'),
(66, 'Marc McClure', 'Marc McClure'),
(67, 'Annette O\'Toole', 'Annette O\'Toole'),
(68, 'Marlon Brando', 'Marlon Brando'),
(69, 'Margot Kidder', 'Margot Kidder'),
(70, 'Gene Hackman', 'Gene Hackman'),
(71, 'Ned Beatty', 'Ned Beatty'),
(72, 'Sarah Douglas', 'Sarah Douglas'),
(73, 'Christian Bale', 'Christian Bale'),
(74, 'Heath Ledger', 'Heath Ledger'),
(75, 'Aaron Eckhart', 'Aaron Eckhart'),
(76, 'Michael Caine', 'Michael Caine'),
(77, 'Maggie Gyllenhaal', 'Maggie Gyllenhaal'),
(78, 'Liam Neeson', 'Liam Neeson'),
(79, 'Katie Holmes', 'Katie Holmes'),
(80, 'Gary Oldman', 'Gary Oldman'),
(81, 'Anne Hathaway', 'Anne Hathaway'),
(82, 'Tom Hardy', 'Tom Hardy'),
(83, 'Val Kilmer', 'Val Kilmer'),
(84, 'Jim Carrey', 'Jim Carrey'),
(85, 'Nicole Kidman', 'Nicole Kidman'),
(86, 'Chris O\'Donnell', 'Chris O\'Donnell'),
(87, 'Michael Keaton', 'Michael Keaton'),
(88, 'Danny DeVito', 'Danny DeVito'),
(89, 'Michelle Pfeiffer', 'Michelle Pfeiffer'),
(90, 'Christopher Walken', 'Christopher Walken'),
(91, 'Michael Gough', 'Michael Gough');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add visitors', 7, 'add_visitors'),
(26, 'Can change visitors', 7, 'change_visitors'),
(27, 'Can delete visitors', 7, 'delete_visitors'),
(28, 'Can view visitors', 7, 'view_visitors'),
(29, 'Can add artists', 8, 'add_artists'),
(30, 'Can change artists', 8, 'change_artists'),
(31, 'Can delete artists', 8, 'delete_artists'),
(32, 'Can view artists', 8, 'view_artists'),
(33, 'Can add genres', 9, 'add_genres'),
(34, 'Can change genres', 9, 'change_genres'),
(35, 'Can delete genres', 9, 'delete_genres'),
(36, 'Can view genres', 9, 'view_genres'),
(37, 'Can add movies', 10, 'add_movies'),
(38, 'Can change movies', 10, 'change_movies'),
(39, 'Can delete movies', 10, 'delete_movies'),
(40, 'Can view movies', 10, 'view_movies'),
(41, 'Can add reviews', 11, 'add_reviews'),
(42, 'Can change reviews', 11, 'change_reviews'),
(43, 'Can delete reviews', 11, 'delete_reviews'),
(44, 'Can view reviews', 11, 'view_reviews'),
(45, 'Can add watchlist', 12, 'add_watchlist'),
(46, 'Can change watchlist', 12, 'change_watchlist'),
(47, 'Can delete watchlist', 12, 'delete_watchlist'),
(48, 'Can view watchlist', 12, 'view_watchlist');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$J51NvD2TtH1zzbTEcKLqd0$HCiWqYOJkqBor1KZfE0gyaXVmNnuWdgbnbVgaFvUD4s=', '2022-05-21 09:05:27.431639', 1, 'admin', '', '', '', 1, 1, '2022-05-02 16:01:55.289823');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-21 09:10:42.290249', '30', 'Demo', 1, '[{\"added\": {}}]', 10, 1),
(2, '2022-05-21 09:11:57.762177', '30', 'Demo', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'recommendationSystem', 'artists'),
(9, 'recommendationSystem', 'genres'),
(10, 'recommendationSystem', 'movies'),
(11, 'recommendationSystem', 'reviews'),
(7, 'recommendationSystem', 'visitors'),
(12, 'recommendationSystem', 'watchlist'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-02 11:16:48.631259'),
(2, 'auth', '0001_initial', '2022-04-02 11:16:50.173485'),
(3, 'admin', '0001_initial', '2022-04-02 11:16:50.396552'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-02 11:16:50.411257'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-02 11:16:50.423202'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-02 11:16:50.510437'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-02 11:16:50.591775'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-02 11:16:50.613713'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-02 11:16:50.653090'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-02 11:16:50.715531'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-02 11:16:50.719620'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-02 11:16:50.731687'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-02 11:16:50.751328'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-02 11:16:50.773909'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-02 11:16:50.797574'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-02 11:16:50.809645'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-02 11:16:50.834237'),
(18, 'recommendationSystem', '0001_initial', '2022-04-02 11:16:50.871715'),
(19, 'sessions', '0001_initial', '2022-04-02 11:16:50.980625'),
(20, 'recommendationSystem', '0002_artists_genres', '2022-05-03 11:46:40.018893'),
(21, 'recommendationSystem', '0003_auto_20220503_1729', '2022-05-03 11:59:52.234013'),
(22, 'recommendationSystem', '0004_alter_movies_table', '2022-05-03 12:00:54.863641'),
(23, 'recommendationSystem', '0005_alter_movies_poster', '2022-05-04 11:20:31.030539'),
(24, 'recommendationSystem', '0006_auto_20220505_1737', '2022-05-05 12:07:41.321105'),
(25, 'recommendationSystem', '0007_auto_20220505_1743', '2022-05-05 12:13:59.425655'),
(26, 'recommendationSystem', '0008_auto_20221128_1355', '2022-11-28 08:25:46.525703');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8egvq8vuc3rigu7otjen0f8omefu3bv1', '.eJxVjEEOwiAQRe_C2pDCYGFcuu8ZCMyAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIilDj9bjHQI9Ud8D3UW5PU6rrMUe6KPGiXU-P0vB7u30EJvXzrkJGAFAOoqNXAljUwg42QLA6BY9Q6IRAmdzaGnTKZUI0ZIWs3Eor3B_KsOAk:1nmsyw:3D6HEiK0AIpuWf4RKQpkF6uVVlywwbM2U--AH1Xhnjc', '2022-05-20 08:06:34.974572'),
('s1au5uc8busaqwln6v8mds3ozsabonjn', 'eyJ2aXNpdG9yIjp7ImVtYWlsIjoiZGVtb0BnbWFpbC5jb20iLCJuYW1lIjoiRGVtbyIsIm1vYmlsZSI6Ijk4NzQ1NjMyNTQiLCJpZCI6M319:1p0Gai:AmQ5Lz9gtqltehzELfrOKDB9QMDrrezXJ0qxJwXgjdc', '2022-12-14 06:29:08.270221'),
('vme9oqw6ejf1c9l92qdcbvryvp7g91k6', 'e30:1nbHsU:Vfpl-ghR-XpMO4Na1hb5m5CA19E38dZULueNOy_s1dc', '2022-04-18 08:15:58.877199'),
('xgjnxnaz8jewjccqbz1bcdgzpan5lcyg', '.eJxVjEEOwiAQRe_C2pDCYGFcuu8ZCMyAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8zOIilDj9bjHQI9Ud8D3UW5PU6rrMUe6KPGiXU-P0vB7u30EJvXzrkJGAFAOoqNXAljUwg42QLA6BY9Q6IRAmdzaGnTKZUI0ZIWs3Eor3B_KsOAk:1nsL39:i4mVtnyYbBrP4Yb9u0exRdW5L-XdPOhFDfYFAYZSD0c', '2022-06-04 09:05:27.438575');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `description`) VALUES
(1, 'Action', 'Action'),
(2, 'Adventure', 'Adventure'),
(3, 'Fantasy', 'Fantasy'),
(4, 'Science Fiction', 'Science Fiction'),
(5, 'Crime', 'Crime'),
(6, 'Thriller', 'Thriller'),
(7, 'Comedy', 'Comedy'),
(8, 'Drama', 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `release_date` varchar(255) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `overview` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `director`, `release_date`, `poster`, `overview`) VALUES
(1, 'Avatar', 'James Cameron', '2009-12-10', 'movies/Avatar.png', 'In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.'),
(2, 'Iron Man', 'Jon Favreau', '2008-04-30', 'movies/IronMan.png', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.'),
(3, 'Spectre', 'Sam Mendes', '2015-10-26', 'movies/Spectre.png', 'A cryptic message from Bond’s past sends him on a trail to uncover a sinister organization. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE.'),
(4, 'Captain America: Civil War', 'Anthony Russo', '2016-04-27', 'movies/CaptainAmericaCivilWar.png', 'Following the events of Age of Ultron, the collective governments of the world pass an act designed to regulate all superhuman activity. This polarizes opinion amongst the Avengers, causing two factions to side with Iron Man or Captain America, which caus'),
(5, 'Avengers: Age of Ultron', 'Joss Whedon', '2015-04-22', 'movies/AvengersAgeofUltron.png', 'When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth’s Mightiest Heroes are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to The Avengers to stop '),
(6, 'Captain America: The First Avenger', 'Joe Johnston', '2011-07-22', 'movies/CaptainAmericaTheFirstAvenger.png', 'Predominantly set during World War II, Steve Rogers is a sickly man from Brooklyn who\'s transformed into super-soldier Captain America to aid in the war effort. Rogers must stop the Red Skull – Adolf Hitler\'s ruthless head of weaponry, and the leader of a'),
(7, 'Captain America: The First Avenger', 'Joe Johnston', '2011-07-22', 'movies/CaptainAmericaTheFirstAvenger.png', 'Predominantly set during World War II, Steve Rogers is a sickly man from Brooklyn who\'s transformed into super-soldier Captain America to aid in the war effort. Rogers must stop the Red Skull – Adolf Hitler\'s ruthless head of weaponry, and the leader of a'),
(8, 'Captain America: The Winter Soldier', 'Anthony Russo', '2014-03-20', 'movies/CaptainAmericaTheWinterSoldier.png', 'After the cataclysmic events in New York with The Avengers, Steve Rogers, aka Captain America is living quietly in Washington, D.C. and trying to adjust to the modern world. But when a S.H.I.E.L.D. colleague comes under attack, Steve becomes embroiled in '),
(9, 'Iron Man 3', 'Shane Black', '2013-04-18', 'movies/IronMan3.png', 'When Tony Stark\'s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.'),
(10, 'The Avengers', 'Joss Whedon', '2012-04-25', 'movies/TheAvengers.png', 'When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the '),
(11, 'Thor: The Dark World', 'Alan Taylor', '2013-10-30', 'movies/ThorTheDarkWorld.png', 'Thor fights to restore order across the cosmos… but an ancient race led by the vengeful Malekith returns to plunge the universe back into darkness. Faced with an enemy that even Odin and Asgard cannot withstand, Thor must embark on his most perilous and p'),
(12, 'Thor', 'Kenneth Branagh', '2011-04-21', 'movies/Thor.png', 'Against his father Odin\'s will, The Mighty Thor - a powerful but arrogant warrior god - recklessly reignites an ancient war. Thor is cast down to Earth and forced to live among humans as punishment. Once here, Thor learns what it takes to be a true hero w'),
(13, 'Ant-Man', 'Peyton Reed', '2015-07-14', 'movies/Ant-Man.png', 'Armed with the astonishing ability to shrink in scale but increase in strength, master thief Scott Lang must embrace his inner-hero and help his mentor, Doctor Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of tower'),
(14, 'The Incredible Hulk', 'Louis Leterrier', '2008-06-12', 'movies/TheIncredibleHulk.png', 'Scientist Bruce Banner scours the planet for an antidote to the unbridled force of rage within him: the Hulk. But when the military masterminds who dream of exploiting his powers force him back to civilization, he finds himself coming face to face with a '),
(15, 'The Wolverine', 'James Mangold', '2013-07-23', 'movies/TheWolverine.png', 'Wolverine faces his ultimate nemesis - and tests of his physical, emotional, and mortal limits - in a life-changing voyage to modern-day Japan.'),
(16, 'Iron Man 2', 'Jon Favreau', '2010-04-28', 'movies/IronMan2.png', 'With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony Stark faces pressure from the government, the press and the public to share his technology with the military. Unwilling to let go of his invention, Star'),
(17, 'X-Men', 'Bryan Singer', '2000-07-13', 'movies/X-Men.png', 'Two mutants, Rogue and Wolverine, come to a private academy for their kind whose resident superhero team, the X-Men, must oppose a terrorist organization with similar powers.'),
(18, 'X-Men Origins: Wolverine', 'Gavin Hood', '2009-04-28', 'movies/X-MenOriginsWolverine.png', 'After seeking to live a normal life, Logan sets out to avenge the death of his girlfriend by undergoing the mutant Weapon X program and becoming Wolverine.'),
(19, 'Superman Returns', 'Bryan Singer', '2006-06-28', 'movies/SupermanReturns.png', 'Superman returns to discover his 5-year absence has allowed Lex Luthor to walk free, and that those he was closest too felt abandoned and have moved on. Luthor plots his ultimate revenge that could see millions killed and change the face of the planet for'),
(20, 'X2', 'Bryan Singer', '2003-04-24', 'movies/X2.png', 'Professor Charles Xavier and his team of genetically gifted superheroes face a rising tide of anti-mutant sentiment led by Col. William Stryker. Storm, Wolverine and Jean Grey must join their usual nemeses –  Magneto and Mystique – to unhinge Stryker\'s sc'),
(21, 'Superman III', 'Richard Lester', '1983-06-17', 'movies/SupermanIII.png', 'Aiming to defeat the Man of Steel, wealthy executive Ross Webster hires bumbling but brilliant Gus Gorman to develop synthetic kryptonite, which yields some unexpected psychological effects in the third installment of the 1980s Superman franchise. Between'),
(22, 'Superman', 'Tom Mankiewicz', '1978-12-13', 'movies/Superman.png', 'Mild-mannered Clark Kent works as a reporter at the Daily Planet alongside his crush, Lois Lane − who\'s in love with Superman. Clark must summon his superhero alter ego when the nefarious Lex Luthor launches a plan to take over the world.'),
(23, 'Superman IV: The Quest for Peace', 'Sidney J. Furie', '1987-07-23', 'movies/SupermanIVTheQuestforPeace.png', 'With global superpowers engaged in an increasingly hostile arms race, Superman leads a crusade to rid the world of nuclear weapons. But Lex Luthor, recently sprung from jail, is declaring war on the Man of Steel and his quest to save the planet. Using a s'),
(24, 'Superman II', 'Richard Lester', '1980-12-04', 'movies/SupermanII.png', 'Three escaped criminals from the planet Krypton test the Man of Steel\'s mettle. Led by Gen. Zod, the Kryptonians take control of the White House and partner with Lex Luthor to destroy Superman and rule the world. But Superman, who attempts to make himself'),
(25, 'The Dark Knight', 'Christopher Nolan', '2008-07-14', 'movies/TheDarkKnight.png', 'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they so'),
(26, 'Batman Begins', 'Christopher Nolan', '2005-06-10', 'movies/BatmanBegins.png', 'Driven by tragedy, billionaire Bruce Wayne dedicates his life to uncovering and defeating the corruption that plagues his home, Gotham City.  Unable to work within the system, he instead creates a new identity, a symbol of fear for the criminal underworld'),
(27, 'The Dark Knight Rises', 'Christopher Nolan', '2012-07-16', 'movies/TheDarkKnightRises.png', 'Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent\'s crimes to protect the late attorney\'s reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the myste'),
(28, 'Batman Forever', 'Joel Schumacher', '1995-06-16', 'movies/BatmanForever.png', 'The Dark Knight of Gotham City confronts a dastardly duo: Two-Face and the Riddler. Formerly District Attorney Harvey Dent, Two-Face believes Batman caused the courtroom accident which left him disfigured on one side. And Edward Nygma, computer-genius and'),
(29, 'Batman Returns', 'Tim Burton', '1992-06-19', 'movies/BatmanReturns.png', 'Having defeated the Joker, Batman now faces the Penguin - a warped and deformed individual who is intent on being accepted into Gotham society. Crooked businessman Max Schreck is coerced into helping him become Mayor of Gotham and they both attempt to exp');

-- --------------------------------------------------------

--
-- Table structure for table `movies_cast`
--

CREATE TABLE `movies_cast` (
  `id` bigint(20) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `artists_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies_cast`
--

INSERT INTO `movies_cast` (`id`, `movies_id`, `artists_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(17, 4, 6),
(16, 4, 16),
(18, 4, 17),
(19, 4, 18),
(20, 4, 19),
(21, 5, 6),
(24, 5, 16),
(25, 5, 17),
(22, 5, 20),
(23, 5, 21),
(26, 6, 16),
(30, 6, 18),
(27, 6, 22),
(28, 6, 23),
(29, 6, 24),
(31, 7, 16),
(35, 7, 18),
(32, 7, 22),
(33, 7, 23),
(34, 7, 24),
(36, 8, 16),
(38, 8, 17),
(40, 8, 18),
(37, 8, 25),
(39, 8, 26),
(41, 9, 6),
(42, 9, 10),
(43, 9, 27),
(44, 9, 28),
(45, 9, 29),
(46, 10, 6),
(47, 10, 16),
(50, 10, 17),
(49, 10, 20),
(48, 10, 21),
(51, 11, 20),
(52, 11, 30),
(53, 11, 31),
(54, 11, 32),
(55, 11, 33),
(56, 12, 20),
(57, 12, 30),
(58, 12, 31),
(59, 12, 32),
(60, 12, 34),
(61, 13, 35),
(62, 13, 36),
(63, 13, 37),
(64, 13, 38),
(65, 13, 39),
(66, 14, 40),
(67, 14, 41),
(68, 14, 42),
(69, 14, 43),
(70, 14, 44),
(71, 15, 45),
(72, 15, 46),
(73, 15, 47),
(74, 15, 48),
(75, 15, 49),
(76, 16, 6),
(77, 16, 10),
(79, 16, 17),
(78, 16, 27),
(80, 16, 50),
(82, 17, 45),
(85, 17, 47),
(81, 17, 51),
(83, 17, 52),
(84, 17, 53),
(86, 18, 45),
(87, 18, 54),
(88, 18, 55),
(89, 18, 56),
(90, 18, 57),
(91, 19, 58),
(92, 19, 59),
(93, 19, 60),
(94, 19, 61),
(95, 19, 62),
(97, 20, 45),
(100, 20, 47),
(96, 20, 51),
(98, 20, 52),
(99, 20, 53),
(101, 21, 63),
(102, 21, 64),
(103, 21, 65),
(104, 21, 66),
(105, 21, 67),
(106, 22, 63),
(107, 22, 68),
(108, 22, 69),
(109, 22, 70),
(110, 22, 71),
(111, 23, 63),
(114, 23, 65),
(115, 23, 66),
(112, 23, 69),
(113, 23, 70),
(117, 24, 63),
(119, 24, 65),
(116, 24, 70),
(118, 24, 71),
(120, 24, 72),
(121, 25, 73),
(122, 25, 74),
(123, 25, 75),
(124, 25, 76),
(125, 25, 77),
(126, 26, 73),
(127, 26, 76),
(128, 26, 78),
(129, 26, 79),
(130, 26, 80),
(131, 27, 73),
(132, 27, 76),
(133, 27, 80),
(134, 27, 81),
(135, 27, 82),
(137, 28, 23),
(136, 28, 83),
(138, 28, 84),
(139, 28, 85),
(140, 28, 86),
(141, 29, 87),
(142, 29, 88),
(143, 29, 89),
(144, 29, 90),
(145, 29, 91);

-- --------------------------------------------------------

--
-- Table structure for table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `id` bigint(20) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `genres_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies_genres`
--

INSERT INTO `movies_genres` (`id`, `movies_id`, `genres_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 1),
(7, 2, 2),
(6, 2, 4),
(8, 3, 1),
(9, 3, 2),
(10, 3, 5),
(12, 4, 1),
(11, 4, 2),
(13, 4, 4),
(14, 5, 1),
(15, 5, 2),
(16, 5, 4),
(17, 6, 1),
(18, 6, 2),
(19, 6, 4),
(20, 7, 1),
(21, 7, 2),
(22, 7, 4),
(23, 8, 1),
(24, 8, 2),
(25, 8, 4),
(26, 9, 1),
(27, 9, 2),
(28, 9, 4),
(30, 10, 1),
(31, 10, 2),
(29, 10, 4),
(32, 11, 1),
(33, 11, 2),
(34, 11, 3),
(37, 12, 1),
(35, 12, 2),
(36, 12, 3),
(39, 13, 1),
(40, 13, 2),
(38, 13, 4),
(42, 14, 1),
(43, 14, 2),
(41, 14, 4),
(44, 15, 1),
(46, 15, 2),
(47, 15, 3),
(45, 15, 4),
(49, 16, 1),
(48, 16, 2),
(50, 16, 4),
(52, 17, 1),
(51, 17, 2),
(53, 17, 4),
(55, 18, 1),
(54, 18, 2),
(57, 18, 4),
(56, 18, 6),
(60, 19, 1),
(58, 19, 2),
(59, 19, 3),
(61, 19, 4),
(63, 20, 1),
(62, 20, 2),
(64, 20, 4),
(65, 20, 6),
(67, 21, 1),
(68, 21, 2),
(69, 21, 3),
(70, 21, 4),
(66, 21, 7),
(71, 22, 1),
(72, 22, 2),
(73, 22, 3),
(74, 22, 4),
(75, 23, 1),
(76, 23, 2),
(77, 23, 4),
(78, 24, 1),
(79, 24, 2),
(80, 24, 3),
(81, 24, 4),
(83, 25, 1),
(84, 25, 5),
(85, 25, 6),
(82, 25, 8),
(86, 26, 1),
(87, 26, 5),
(88, 26, 8),
(89, 27, 1),
(90, 27, 5),
(92, 27, 6),
(91, 27, 8),
(93, 28, 1),
(95, 28, 3),
(94, 28, 5),
(96, 29, 1),
(97, 29, 3);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `status` varchar(1) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `visitors_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `desc`, `date`, `status`, `movies_id`, `visitors_id`) VALUES
(1, 'Ut reiciendis distin', 'Laboriosam eos est ', '2022-05-05 12:53:56.997620', 'p', 2, 3),
(2, 'Quibusdam dolor blan', 'Quo amet ea lorem i', '2022-05-05 12:58:52.174707', 'p', 3, 3),
(3, 'Est qui aliquid quia', 'Sequi ut sequi quia ', '2022-05-06 08:01:22.569685', 'p', 6, 3),
(4, 'Amazing Movie', 'Amazing Movie', '2022-05-21 09:04:43.460058', 'p', 27, 3);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `otp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `email`, `name`, `password`, `mobile`, `otp`) VALUES
(1, 'vymocyjyr@mailinator.com', 'Oleg Steele', 'Pa$$w0rd!', '7894561232', NULL),
(2, 'sule@mailinator.com', 'Jade Gomez', 'Pa$$w0rd!', 'Consequatur Re', NULL),
(3, 'demo@gmail.com', 'Demo', '1234', '9874563254', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` bigint(20) NOT NULL,
  `movies_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`id`, `movies_id`, `user_id`) VALUES
(2, 19, 3),
(3, 12, 3),
(4, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies_cast`
--
ALTER TABLE `movies_cast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recommendationSystem_mov_movies_id_artists_id_6719f174_uniq` (`movies_id`,`artists_id`),
  ADD KEY `recommendationSystem_artists_id_9d8ab6ed_fk_artists_i` (`artists_id`);

--
-- Indexes for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recommendationSystem_mov_movies_id_genres_id_24b44c4a_uniq` (`movies_id`,`genres_id`),
  ADD KEY `recommendationSystem_genres_id_3ca5df34_fk_genres_id` (`genres_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_movies_id_d45d0bce_fk_movies_id` (`movies_id`),
  ADD KEY `reviews_visitors_id_3243f752_fk_visitors_id` (`visitors_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchlist_movies_id_0fd50b1b_fk_movies_id` (`movies_id`),
  ADD KEY `watchlist_user_id_9d100df2_fk_visitors_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `movies_cast`
--
ALTER TABLE `movies_cast`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `movies_genres`
--
ALTER TABLE `movies_genres`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `movies_cast`
--
ALTER TABLE `movies_cast`
  ADD CONSTRAINT `recommendationSystem_artists_id_9d8ab6ed_fk_artists_i` FOREIGN KEY (`artists_id`) REFERENCES `artists` (`id`),
  ADD CONSTRAINT `recommendationSystem_movies_id_18548421_fk_recommend` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD CONSTRAINT `recommendationSystem_genres_id_3ca5df34_fk_genres_id` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `recommendationSystem_movies_id_3d1b5efe_fk_recommend` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_movies_id_d45d0bce_fk_movies_id` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `reviews_visitors_id_3243f752_fk_visitors_id` FOREIGN KEY (`visitors_id`) REFERENCES `visitors` (`id`);

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `watchlist_movies_id_0fd50b1b_fk_movies_id` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `watchlist_user_id_9d100df2_fk_visitors_id` FOREIGN KEY (`user_id`) REFERENCES `visitors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
