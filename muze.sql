-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 08:04 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muze`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `Song_id` int(11) NOT NULL,
  `Song_name` varchar(30) DEFAULT NULL,
  `Singer_name` varchar(30) DEFAULT NULL,
  `Link` varchar(500) DEFAULT NULL,
  `Image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`Song_id`, `Song_name`, `Singer_name`, `Link`, `Image`) VALUES
(1, 'Badri-Ki-Dulhania', 'Neha-Kakkar', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/d2/93/13/d293137a-dd45-3f58-04e3-c65be0a60f95/mzaf_8037903038399862461.plus.aac.p.m4a', 'https://c-cl.cdn.smule.com/rs-s79/arr/81/b2/c9d1ce7d-8acf-4995-866d-b0ad0badc165_1024.jpg'),
(2, 'Coca-Cola', 'Neha-Kakkar', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/f4/2c/23/f42c2326-d740-a7b1-eb3d-30d6a2c48e15/mzaf_10515152114354433459.plus.aac.p.m4a', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPyX7785c-QUFYoOsWdrS_U6OHTwicYgZC8Ox3oRZ9QoZchCFv3_BtTc7gSi5qeI1s3Fw&usqp=CAU'),
(3, 'Lambiyaan-Si-Judaiyaan', 'Neha-Kakkar', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/4a/d7/dd/4ad7dd5b-c659-3cf1-44ab-75fba84a29da/mzaf_14420507781415946305.plus.aac.p.m4a', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3sR7FPheEEISd9cZhUsLgtYutM2mb8FoEUyvUGQLxEGs7Q0h6O18zZ1GDShlgmuLanCc&usqp=CAU'),
(4, 'Dekhte-Dekhte', 'Atif-Aslam', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/5b/2c/e1/5b2ce149-033a-6099-5d91-78750ac9f5dd/mzaf_3147251751269005786.plus.aac.p.m4a', 'http://a10.gaanacdn.com/images/song/44/24203644/crop_480x480_1536318443.jpg'),
(5, 'O-Saathi', 'Atif-Aslam', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/01/fe/8f/01fe8f13-21f7-e05e-ecd7-39fb0c9cbe72/mzaf_7085636325806598336.plus.aac.p.m4a', 'http://a10.gaanacdn.com/images/song/24/23164124/crop_480x480_1520584095.jpg'),
(6, 'Baarish', 'Atif-Aslam', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/d0/f2/af/d0f2af03-2956-c0e6-4e1d-8e6a49776909/mzaf_1714056745046793245.plus.aac.p.m4a', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwd4rSDAS9p5rP8wa7UlooqPhzFQdLR4RPKhGfPuqM2lP15T1SZGzekb7vmzGkzQVTHeM&usqp=CAU'),
(7, 'Hawa-Banke', 'Darshan-Rawal', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/8c/40/90/8c409096-283a-f9d7-1da1-1d3b8790a738/mzaf_9485659728902721768.plus.aac.p.m4a', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpsM8KAFEkCQYe4k1xs_gBKUSX0OctXpnbvT69Ve2fDPNRJQNMleFgzv6uRnFAi__kpJQ&usqp=CAU'),
(8, 'Teri-Aankhon-Mein', 'Darshan-Rawal', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/5d/c5/1b/5dc51b5f-fc7e-a020-f90e-484a4420abc1/mzaf_327381800093331337.plus.aac.p.m4a', 'https://i2.wp.com/orissadiary.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-06-at-12.20.18-PM.jpeg?fit=1024%2C1280&ssl=1'),
(9, 'Jab-Tum-Chaho', 'Darshan-Rawal', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/03/b4/e1/03b4e186-63a3-4c48-ffbc-7b2923505cd4/mzaf_11996388356195972234.plus.aac.p.m4a', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnaM5wFvBxz0YeDgoK9ajXuvaY6R9LPV8Bowq7Q861nF8sccs9CclzXR5oBc3Yi5ykbwc&usqp=CAU'),
(10, 'Wakhra-Swag', 'Badshah', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/16/ad/fc/16adfc56-4754-1a82-3aaa-7ee618a792cf/mzaf_10239667457317450764.plus.aac.p.m4a', 'https://a10.gaanacdn.com/gn_img/albums/ogNWkLDbmX/gNWkBxmZ3m/size_xxl.webp'),
(11, 'The-Humma-Song', 'Badshah', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/db/61/d4/db61d44a-87a9-f2f4-52b8-8ee77f64f04c/mzaf_1938539273432009371.plus.aac.p.m4a', 'https://pbs.twimg.com/media/C0GWEhlXEAE4Y63.jpg'),
(12, 'The-Breakup-Song', 'Badshah', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/3d/73/48/3d73483d-67d3-b0a7-e937-9a64afc0ceec/mzaf_8034703597278977148.plus.aac.p.m4a', 'https://a10.gaanacdn.com/gn_img/albums/mGjKrP1W6z/GjKrq9Zob6/size_xxl.webp'),
(13, 'Ranjha', 'B-Praak', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/dd/4a/ac/dd4aacd3-fb25-35d4-01c0-a28e9637125f/mzaf_14796773035226341435.plus.aac.p.m4a', 'https://i2.wp.com/99lyricstore.com/wp-content/uploads/2021/08/Ranjha-Lyrics-Shershaah.jpg'),
(14, 'Filhaal2-Mohabbat', 'B-Praak', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/df/36/dc/df36dc29-ac32-3639-ba28-4a68da3f4db7/mzaf_5719210803913264944.plus.aac.p.m4a', 'https://aniportalimages.s3.amazonaws.com/media/details/Screenshot_20210624-141055__01__01.jpg'),
(15, 'Mann-Bharryaa-2', 'B-Praak', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/0e/a9/72/0ea972e0-c659-49e7-e99a-04140d4a3d03/mzaf_16038897640397178354.plus.aac.p.m4a', 'https://tellyflight.com/wp-content/uploads/2021/08/vlcsnap-2021-08-18-14h24m00s135.png'),
(16, 'Darkhaast', 'Sunidhi-Chauhan', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/56/a1/f4/56a1f4aa-264a-5dde-074f-86aeb7cdd114/mzaf_14853375635887795211.plus.aac.p.m4a', 'https://i.scdn.co/image/ab67616d0000b273e7fe7d656750737e8d369f95'),
(17, 'Kamli', 'Sunidhi-Chauhan', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/dc/f6/04/dcf60464-28be-8560-b564-d9e318b32436/mzaf_1092263624527959829.plus.aac.p.m4a', 'http://a10.gaanacdn.com/images/albums/9/151109/crop_480x480_151109.jpg'),
(18, 'Gori-Gori-Gori-Gori', 'Sunidhi-Chauhan', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2d/ad/46/2dad4693-a330-7b8c-70d3-5f49af9ce123/mzaf_4991761401582411142.plus.aac.p.m4a', 'https://m.media-amazon.com/images/M/MV5BODVkNjU4NGMtODMwNi00ZWU4LWI3ZmYtNjgxNzIyNjY5MmI1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg'),
(19, 'Soch-Na-Sake', 'Arijit-Singh', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/c4/0c/a1/c40ca15f-3ef0-9ba1-b115-1c07d2fdaead/mzaf_15560046789753382330.plus.aac.p.m4a', 'http://3.bp.blogspot.com/-8PUNAdpxOQs/VodyK_nXfrI/AAAAAAAAB5Q/V1NahGZCzk8/s1600/Airlift-Soch-Na-Sake.jpeg'),
(20, 'Phir-Kabhi', 'Arijit-Singh', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/11/e7/ec/11e7ecab-b2af-fc7d-ac3e-884319fee2fa/mzaf_14965934506865139996.plus.aac.p.m4a', 'https://a10.gaanacdn.com/gn_img/albums/kGxbn03y4r/GxbnkPgQKy/size_xxl.webp'),
(21, 'Chal-Wahan-Jaate-Hain', 'Arijit-Singh', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/7b/08/39/7b0839e1-d8cb-328c-d800-324c7e3917dc/mzaf_17729345869376420635.plus.aac.p.m4a', 'https://i.pinimg.com/originals/d0/46/4d/d0464dd6ae82ba2cba5076aff19f0f4b.jpg'),
(22, 'Manwa-Laage', 'Shreya-Ghoshal', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/d3/67/11/d36711df-d4f6-12e8-c267-c128f975d3c1/mzaf_8988512214553627073.plus.aac.p.m4a', 'https://c-cl.cdn.smule.com/rs-s78/arr/eb/96/3ee74361-25f5-483d-a524-00093f912281_1024.jpg'),
(23, 'Bahara', 'Shreya-Ghoshal', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/59/1e/61/591e611d-b4c8-cbf8-63f2-e7128a882a29/mzaf_13649507587715906511.plus.aac.p.m4a', 'https://a10.gaanacdn.com/gn_img/albums/01A3mrWNQX/1A3molL9bN/size_xxl.webp'),
(24, 'Raabta-Kehte-Hain-Khuda-Ne', 'Shreya-Ghoshal', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/24/b6/8c/24b68cde-cdbd-c41d-b8ce-9d2ad2d989b4/mzaf_12367276630219135462.plus.aac.p.m4a', 'https://showlyrics.net/wp-content/uploads/2020/10/raabta-song.jpg'),
(25, 'Main-Hoon-Hero-Tera', 'Armaan-Malik', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/4b/e3/08/4be3080b-bc59-7e7b-1038-476c4416d90e/mzaf_1629681522339424450.plus.aac.p.m4a', 'https://a10.gaanacdn.com/gn_img/albums/DwPKOxB3qV/wPKOyoG6Wq/size_xxl.webp'),
(26, 'Bol-Do-Na-Zara', 'Armaan-Malik', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/d3/5f/8a/d35f8a49-8f06-cd1e-bbcc-a267b26342dc/mzaf_7331664487246676387.plus.aac.p.m4a', 'http://a10.gaanacdn.com/images/albums/60/1667660/crop_480x480_1667660.jpg'),
(27, 'Jab-Tak', 'Armaan-Malik', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/43/03/a7/4303a748-6190-be90-42d4-2f6dbcf60daa/mzaf_1405679377146782130.plus.aac.p.m4a', 'https://c-cl.cdn.smule.com/rs-s-sf-3/arr/6e/16/8cae665c-08b2-49e6-8b23-b448eeef18d1_1024.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`username`, `email`, `password`) VALUES
('ishita gupta', 'ishita20040809@gmail.com', '$2a$08$l5wXx2oEbT5IWtIU69vsc.UqEMuOvyXo..G/jp96/gyKbfn/OcNu6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`Song_id`),
  ADD UNIQUE KEY `Song_name` (`Song_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
