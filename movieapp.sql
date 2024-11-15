-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 13 nov 2023 om 02:35
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieapp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(12) NOT NULL,
  `movie_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `movie_id`, `created_at`) VALUES
(175, 29, 3789, '2023-11-13 01:53:36');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `poster_path` text DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `vote_average` float DEFAULT NULL,
  `original_title` varchar(128) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `status` varchar(64) NOT NULL DEFAULT 'Planned',
  `genres` varchar(64) DEFAULT NULL,
  `imdb_id` varchar(64) NOT NULL,
  `popularity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `movies`
--

INSERT INTO `movies` (`id`, `movie_id`, `poster_path`, `release_date`, `vote_average`, `original_title`, `runtime`, `status`, `genres`, `imdb_id`, `popularity`) VALUES
(3789, 575264, '/NNxYkU70HPurnNCSiCjYAmacwm.jpg', '2023-07-08', 7.635, 'Mission: Impossible - Dead Reckoning Part One', 164, 'Released', 'Action, Thriller', 'tt9603212', 2820.3),
(3790, 507089, '/j9mH1pr3IahtraTWxVEMANmPSGR.jpg', '2023-10-25', 8.084, 'Five Nights at Freddy\'s', 110, 'Released', 'Horror, Mystery', 'tt4589218', 2613.41),
(3791, 678512, '/qA5kPYZA7FkVvqcEfJRoOy4kpHg.jpg', '2023-07-03', 8.121, 'Sound of Freedom', 131, 'Released', 'Action, Drama', 'tt7599146', 1696.66),
(3792, 299054, '/iwsMu0ehRPbtaSxqiaUDQB9qMWT.jpg', '2023-09-15', 6.482, 'Expend4bles', 103, 'Released', 'Action, Adventure, Thriller', 'tt3291150', 1491.72),
(3793, 609681, '/tUtgLOESpCx7ue4BaeCTqp3vn1b.jpg', '2023-11-08', 6.438, 'The Marvels', 105, 'Released', 'Action, Adventure, Science Fiction', 'tt10676048', 1222.62),
(3794, 975902, '/ssEFC5wfFjj7lJpUgwJDOK1Xu1J.jpg', '2023-10-26', 6.411, 'Boudica', 101, 'Released', 'Action, War', 'tt22688572', 1205.82),
(3795, 385687, '/fiVW06jE7z9YnO4trhaMEdclSiC.jpg', '2023-05-17', 7.232, 'Fast X', 142, 'Released', 'Action, Crime, Thriller', 'tt5433140', 1178.84),
(3796, 926393, '/b0Ej6fnXAP8fK75hlyi2jKqdhHz.jpg', '2023-08-30', 7.4, 'The Equalizer 3', 109, 'Released', 'Action, Thriller, Crime', 'tt17024450', 1025.74),
(3797, 872585, '/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg', '2023-07-19', 8.247, 'Oppenheimer', 181, 'Released', 'Drama, History', 'tt15398776', 986.287),
(3798, 939335, '/qXChf7MFL36BgoLkiB3BzXiwW82.jpg', '2023-09-29', 6.697, 'Muzzle', 100, 'Released', 'Action, Crime, Drama, Thriller', 'tt17663876', 982.185),
(3799, 762430, '/hAZO3hvLQVjIDW32lxSKmOOl987.jpg', '2023-08-23', 6.977, 'Retribution', 91, 'Released', 'Action, Thriller, Crime', 'tt6906292', 920.073),
(3800, 951491, '/aQPeznSu7XDTrrdCtT5eLiu52Yu.jpg', '2023-09-26', 7.382, 'Saw X', 118, 'Released', 'Horror, Thriller', 'tt21807222', 909.765),
(3801, 1000081, '/wrFg0Q1kqfOhxlRvb8Dle7WF58F.jpg', '2023-08-27', 5.25, 'Sentinelle', 98, 'Released', 'Action, Comedy, Crime', 'tt23898856', 881.124),
(3802, 980489, '/51tqzRtKMMZEYUpSYkrUE7v9ehm.jpg', '2023-08-09', 8.005, 'Gran Turismo', 135, 'Released', 'Adventure, Action, Drama', 'tt4495098', 796.664),
(3803, 968051, '/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg', '2023-09-06', 6.938, 'The Nun II', 110, 'Released', 'Horror, Mystery, Thriller', 'tt10160976', 750.822),
(3804, 893723, '/aTvePCU7exLepwg5hWySjwxojQK.jpg', '2023-09-21', 7.066, 'PAW Patrol: The Mighty Movie', 92, 'Released', 'Animation, Family, Action, Science Fiction', 'tt15837338', 738.418),
(3805, 9381, '/kt9nqD0uOar8IVE9191HXhWOXKI.jpg', '2008-08-20', 5.6, 'Babylon A.D.', 101, 'Released', 'Action, Adventure, Science Fiction, Thriller', 'tt0364970', 719.75),
(3806, 807172, '/nqYrPJiKFoIsZt2kmZ0y3osffLs.jpg', '2023-10-04', 6.167, 'The Exorcist: Believer', 111, 'Released', 'Horror', 'tt12921446', 680.302),
(3807, 820525, '/uQxjZGU6rxSPSMeAJPJQlmfV3ys.jpg', '2023-09-13', 7.064, 'After Everything', 93, 'Released', 'Romance, Drama', 'tt15334488', 659.431),
(3808, 615656, '/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg', '2023-08-02', 6.77, 'Meg 2: The Trench', 116, 'Released', 'Action, Science Fiction, Horror', 'tt9224104', 642.051),
(3809, 997391, '/y6QRQ0bHGt9Wc1BBTZsa1iB2PAm.jpg', '2023-08-25', 7, 'ആര്‍ഡിഎക്സ്: റോബര്‍ട്ട് ഡോണി സേവ്യര്‍', 150, 'Released', 'Action, Drama', 'tt24517458', 614.888),
(3810, 565770, '/mXLOHHc1Zeuwsl4xYKjKh2280oL.jpg', '2023-08-16', 6.996, 'Blue Beetle', 128, 'Released', 'Action, Science Fiction, Adventure', 'tt9362930', 583.432),
(3811, 346698, '/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg', '2023-07-19', 7.215, 'Barbie', 114, 'Released', 'Comedy, Adventure, Fantasy', 'tt1517268', 583.206),
(3812, 76617, '/dwIQ7WDCSiIcNdbferTcU7uI0KV.jpg', '2013-01-03', 5.452, 'Texas Chainsaw 3D', 92, 'Released', 'Horror, Thriller', 'tt1572315', 582.995),
(3813, 976573, '/4Y1WNkd88JXmGfhtWR7dmDAo1T2.jpg', '2023-06-14', 7.739, 'Elemental', 102, 'Released', 'Animation, Comedy, Family, Fantasy, Romance', 'tt15789038', 575.231),
(3814, 459003, '/eeJjd9JU2Mdj9d7nWRFLWlrcExi.jpg', '2023-03-02', 7.291, 'Мавка: Лісова пісня', 99, 'Released', 'Animation, Adventure, Family, Fantasy', 'tt6685538', 574.917),
(3815, 554600, '/yNySAgpAnWmPpYinim9E0tUzJWG.jpg', '2019-01-11', 7.146, 'Uri: The Surgical Strike', 138, 'Released', 'Action, Drama, War', 'tt8291224', 562.676),
(3816, 569094, '/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg', '2023-05-31', 8.412, 'Spider-Man: Across the Spider-Verse', 140, 'Released', 'Animation, Action, Adventure', 'tt9362722', 527.146),
(3817, 1039690, '/tPyj6Gii1HrnzCbJXEF7JdSFkQ8.jpg', '2023-10-19', 7.4, 'Desperation Road', 112, 'Released', 'Action, Crime, Drama, Thriller', 'tt14633464', 516.271),
(3818, 667538, '/gPbM0MK8CP8A174rmUwGsADNYKD.jpg', '2023-06-06', 7.466, 'Transformers: Rise of the Beasts', 127, 'Released', 'Action, Adventure, Science Fiction', 'tt5090568', 504.158),
(3819, 926680, '/if4ri8tSSLPoqCWW2XypnYRO0Dy.jpg', '2023-04-11', 3.3, 'Breakout', 85, 'Released', 'Action, Thriller', 'tt16154506', 503.392),
(3820, 502356, '/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', '2023-04-05', 7.758, 'The Super Mario Bros. Movie', 93, 'Released', 'Animation, Family, Adventure, Fantasy, Comedy', 'tt6718170', 480.894),
(3821, 1007427, '/vKzdwficUcFNisOM5mN3XXXUzA6.jpg', '2023-01-13', 6.8, 'Night Train', 96, 'Released', 'Action, Thriller, Crime', 'tt15727212', 473.234),
(3822, 118249, '/mPQei2YUIY0Ljd3O5Wy7LDuvC8S.jpg', '2011-09-13', 6.9, 'Thriller Night', 6, 'Released', 'Animation', 'tt2051999', 466.977),
(3823, 1008042, '/kdPMUMJzyYAc4roD52qavX0nLIC.jpg', '2023-07-26', 7.19, 'Talk to Me', 95, 'Released', 'Horror, Thriller', 'tt10638522', 451.145),
(3824, 986210, '/lVoJVFyAyEPfxYnbp3Tem5FXipe.jpg', '2023-04-21', 3.4, 'Space Wars: Quest for the Deepstar', 90, 'Released', 'Science Fiction, Adventure, Action', 'tt16235342', 430.636),
(3825, 1151534, '/zwKaPkkLizCg1onpHQq89LWugkS.jpg', '2023-09-29', 7.578, 'Nowhere', 109, 'Released', 'Thriller, Drama', 'tt15789472', 427.447),
(3826, 744857, '/iQ7G9LhP7NRRIUM4Vlai3eOxBAc.jpg', '2023-10-05', 7.4, 'Cuando acecha la maldad', 99, 'Released', 'Horror', 'tt16300962', 412.496),
(3827, 1171541, '/a9bt9byTQ1MIfRWYQX240HiYPrl.jpg', '2023-09-26', 7.013, 'Sniper: G.R.I.T. - Global Response & Intelligence Team', 92, 'Released', 'Action, Thriller', 'tt28487871', 405.887),
(3828, 492008, '/r08U3dwiOeStXcjYmfnRyumgKyq.jpg', '2020-09-23', 7.573, '검객', 101, 'Released', 'Action, Drama, History', 'tt7035004', 404.556),
(3829, 901362, '/lxoPJR6eR5nd6nHSKIkEIV4FQWe.jpg', '2023-10-12', 6.703, 'Trolls Band Together', 92, 'Released', 'Animation, Family, Music, Fantasy, Comedy', 'tt14362112', 401.855),
(3830, 354912, '/gGEsBPAijhVUFoiNpgZXqRVWJt2.jpg', '2017-10-27', 8.2, 'Coco', 105, 'Released', 'Family, Animation, Fantasy, Music, Comedy, Adventure', 'tt2380307', 398.149),
(3831, 804755, '/jDskIhzLfZc8SB4ybkcWOgmI98M.jpg', '2021-12-10', 3.839, 'Agnes', 93, 'Released', 'Horror', 'tt11348542', 387.975),
(3832, 603692, '/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg', '2023-03-22', 7.793, 'John Wick: Chapter 4', 170, 'Released', 'Action, Thriller, Crime', 'tt10366206', 379.03),
(3833, 759584, '/iVVvlosgMU6aePXavihV3L3V3D6.jpg', '2023-04-02', 6.281, 'Surrounded', 100, 'Released', 'Western, Action, Drama', 'tt2572212', 370.091),
(3834, 937249, '/dfS5qHWFuXyZQnwYREwb7N4qU5p.jpg', '2023-09-29', 5.6, '57 Seconds', 99, 'Released', 'Thriller, Science Fiction, Action', 'tt18083578', 367.333),
(3835, 298618, '/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg', '2023-06-13', 6.849, 'The Flash', 144, 'Released', 'Action, Adventure, Science Fiction', 'tt0439572', 362.402),
(3836, 761851, '/e85UDGmD9HmKcS0BOgoha029bkK.jpg', '2023-03-30', 6.6, 'His Only Son', 104, 'Released', 'Drama, Fantasy', 'tt8277246', 355.088),
(3837, 1156255, '/ozkZ8TeIRwzNH2zF5LFS39M3v5U.jpg', '2023-08-18', 6.344, 'The Engineer', 93, 'Released', 'Action, Thriller', 'tt26450742', 351.782),
(3838, 1034062, '/1eKWqTHp4OgKdx1QX1O9LxKHr1M.jpg', '2023-10-17', 7.034, 'Mortal Kombat Legends: Cage Match', 80, 'Released', 'Animation, Action, Fantasy', 'tt22698070', 346.916),
(3839, 335977, '/Af4bXE63pVsb2FtbW8uYIyPBadD.jpg', '2023-06-28', 6.679, 'Indiana Jones and the Dial of Destiny', 155, 'Released', 'Adventure, Action', 'tt1462764', 337.066),
(3840, 823395, '/ApRW9CPK83fF4KCXPR00KCzXOjL.jpg', '2023-07-27', 6.735, 'The Baker', 103, 'Released', 'Action, Drama, Crime, Thriller', 'tt3917710', 332.451),
(3841, 584004, '/iCPm0mfcOdpLgtfFFkWoq62ko0i.jpg', '2023-04-27', 6.205, 'Resurrected', 90, 'Released', 'Horror, Science Fiction', 'tt15340206', 323.214),
(3842, 1076364, '/wakoF2UgsEE3fGs5KpuwMWsaNr2.jpg', '2023-06-15', 7.662, 'Carl\'s Date', 9, 'Released', 'Animation, Adventure, Family', 'tt26736061', 310.111),
(3843, 447277, '/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg', '2023-05-18', 6.494, 'The Little Mermaid', 135, 'Released', 'Adventure, Family, Fantasy, Romance', 'tt5971474', 308.58),
(3844, 945729, '/1Xgjl22MkAZQUavvOeBqRehrvqO.jpg', '2023-09-13', 6.8, 'A Haunting in Venice', 104, 'Released', 'Mystery, Thriller, Crime', 'tt22687790', 306.894),
(3845, 1010928, '/atatNvrn7kBvkARD2YodyYkKicr.jpg', '2023-11-01', 6.183, 'Voleuses', 114, 'Released', 'Action, Comedy, Drama', 'tt21638298', 306.093),
(3846, 1010581, '/w46Vw536HwNnEzOa7J24YH9DPRS.jpg', '2023-06-08', 8.083, 'Culpa mía', 117, 'Released', 'Drama, Romance', 'tt21909764', 305.197),
(3847, 1139087, '/hr8ZtwdbtjBquxlTCrczr685K5T.jpg', '2023-09-24', 8.487, 'Once Upon a Studio', 9, 'Released', 'Family, Animation, Fantasy, Comedy', 'tt28035641', 302.266),
(3848, 843846, '/ecCHA70C9PwG1AJz09wZrlPHzzF.jpg', '2023-10-20', 6.5, 'Butcher\'s Crossing', 105, 'Released', 'Drama, Western', 'tt1462759', 302.022),
(3849, 870518, '/mpVGR5tPhTmTiqSu8kvrSsNCQLl.jpg', '2023-04-06', 6.1, 'Sanctuary', 96, 'Released', 'Thriller, Comedy, Drama', 'tt15364972', 301.14),
(3850, 833326, '/wLZ5jijVpOxHuBLmsICKLXwlldu.jpg', '2022-03-02', 6.391, 'Rien à foutre', 116, 'Released', 'Drama', 'tt13482806', 290.206),
(3851, 447365, '/r2J02Z2OpNTctfOSN1Ydgii51I3.jpg', '2023-05-03', 8.006, 'Guardians of the Galaxy Vol. 3', 150, 'Released', 'Science Fiction, Adventure, Action', 'tt6791350', 284.529),
(3852, 76600, '/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', '2022-12-14', 7.649, 'Avatar: The Way of Water', 192, 'Released', 'Science Fiction, Adventure, Action', 'tt1630029', 282.732),
(3853, 634649, '/5weKu49pzJCt06OPpjvT80efnQj.jpg', '2021-12-15', 7.986, 'Spider-Man: No Way Home', 148, 'Released', 'Action, Adventure, Science Fiction', 'tt10872600', 280.269),
(3854, 466420, '/dB6Krk806zeqd0YNp2ngQ9zXteH.jpg', '2023-10-18', 7.761, 'Killers of the Flower Moon', 206, 'Released', 'Crime, Drama, History', 'tt5537002', 274.216),
(3855, 315162, '/kuf6dutpsT0vSVehic3EZIqkOBt.jpg', '2022-12-07', 8.261, 'Puss in Boots: The Last Wish', 103, 'Released', 'Adventure, Fantasy, Animation, Comedy, Family, Action', 'tt3915174', 274.164),
(3856, 1003581, '/pHdSS5G3wDwJp6jWgMpbSjNiTbr.jpg', '2023-07-25', 7.291, 'Justice League: Warworld', 90, 'Released', 'Animation, Action, Science Fiction, Adventure', 'tt27687527', 273.47),
(3857, 628707, '/2rhuScKVjQng9HfXgCyA65ZP5pq.jpg', '2019-10-18', 5.9, 'Trick', 101, 'Released', 'Thriller, Horror', 'tt9177040', 269.188),
(3858, 792293, '/gbOnTa2eTbCAznHiusxHI5oA78c.jpg', '2023-09-15', 6.582, 'Dumb Money', 104, 'Released', 'Comedy, Drama, History', 'tt13957560', 269.178),
(3859, 862552, '/1VtHaELqLMovl8EueBWHDtihhzF.jpg', '2023-03-09', 6.12, 'The Ritual Killer', 92, 'Released', 'Mystery, Thriller, Action, Drama', 'tt13141250', 267.452),
(3860, 994143, '/o942912KFh89SGhqWuKXuT0SXzN.jpg', '2023-01-13', 5.651, 'Skinamarink', 100, 'Released', 'Horror, Mystery', 'tt21307994', 264.998),
(3861, 717930, '/lCanGgsqF4xD2WA5NF8PWeT3IXd.jpg', '2023-05-25', 6.935, 'Kandahar', 119, 'Released', 'Action, Thriller', 'tt5761544', 256.322),
(3862, 614930, '/ueO9MYIOHO7M1PiMUeX74uf8fB9.jpg', '2023-07-31', 7.335, 'Teenage Mutant Ninja Turtles: Mutant Mayhem', 100, 'Released', 'Animation, Comedy, Action, Science Fiction', 'tt8589698', 251.843),
(3863, 961268, '/oE7xtGDqZnr7tFHfwb8oM9iRW6H.jpg', '2023-10-05', 6.972, '발레리나', 93, 'Released', 'Action, Crime, Thriller', 'tt26350277', 243.701),
(3864, 1067820, '/nXj3iwqUTnVWR95KCkjGT6hle0J.jpg', '2023-03-16', 5.656, 'Awareness', 112, 'Released', 'Science Fiction, Mystery, Thriller, Action', 'tt18556326', 242.319),
(3865, 1040148, '/8ChIb3WzYAcza1vrXR56v510MWk.jpg', '2023-06-28', 7.419, 'Ruby Gillman, Teenage Kraken', 91, 'Released', 'Animation, Family, Fantasy, Comedy', 'tt27155038', 237.047),
(3866, 635910, '/nrtbv6Cew7qC7k9GsYSf5uSmuKh.jpg', '2023-08-09', 7.201, 'The Last Voyage of the Demeter', 119, 'Released', 'Thriller, Horror', 'tt1001520', 236.442),
(3867, 496450, '/bBON9XO9Ek0DjRwMBnJNCwC96Cd.jpg', '2023-07-05', 7.775, 'Miraculous - le film', 107, 'Released', 'Animation, Family, Action, Fantasy, Romance', 'tt10364034', 228.9),
(3868, 536437, '/3IhGkkalwXguTlceGSl8XUJZOVI.jpg', '2023-05-11', 6.456, 'Hypnotic', 94, 'Released', 'Action, Thriller, Mystery, Science Fiction', 'tt8080204', 224.795),
(3869, 1190012, '/18IsRVfs5MkkTcqTGlUAnka6sCh.jpg', '2023-10-27', 8.309, 'South Park: Joining the Panderverse', 48, 'Released', 'Animation, Comedy, Science Fiction, TV Movie', 'tt29474455', 221.745),
(3870, 1154598, '/rDzig50dj7VpLwJ7SThbamETK1G.jpg', '2023-10-26', 6.6, 'LEGO Marvel Avengers: Code Red', 46, 'Released', 'Animation, Action, Family', 'tt28477867', 220.454),
(3871, 1039960, '/mClrCMfGpOqTSiuCTSK67WZ92x5.jpg', '2023-10-05', 7.6, 'Monster High 2', 94, 'Released', 'Family, Fantasy, Science Fiction, TV Movie', 'tt23026954', 218.657),
(3872, 493529, '/A7AoNT06aRAc4SV89Dwxj3EYAgC.jpg', '2023-03-23', 7.424, 'Dungeons & Dragons: Honor Among Thieves', 134, 'Released', 'Adventure, Fantasy, Comedy', 'tt2906216', 210.472),
(3873, 299536, '/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', '2018-04-25', 8.252, 'Avengers: Infinity War', 149, 'Released', 'Adventure, Action, Science Fiction', 'tt4154756', 206.362),
(3874, 568124, '/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', '2021-10-13', 7.625, 'Encanto', 102, 'Released', 'Animation, Comedy, Family, Fantasy', 'tt2953050', 198.05),
(3875, 1085218, '/c8B4DsVcFVDLVmbpHMHU3RjLNAV.jpg', '2023-04-13', 6.591, 'Underverden 2', 110, 'Released', 'Action, Thriller', 'tt20204996', 194.716),
(3876, 958006, '/qKpdy7N6zX05eisopvvviiTwPxb.jpg', '2023-09-14', 6.243, 'The Kill Room', 98, 'Released', 'Crime, Thriller, Action', 'tt11908172', 193.139),
(3877, 800158, '/e7Jvsry47JJQruuezjU2X1Z6J77.jpg', '2023-10-25', 6.991, 'The Killer', 118, 'Released', 'Crime, Thriller', 'tt1136617', 192.682),
(3878, 724209, '/vB8o2p4ETnrfiWEgVxHmHWP9yRl.jpg', '2023-08-09', 6.887, 'Heart of Stone', 124, 'Released', 'Thriller, Action', 'tt13603966', 192.615),
(3879, 912908, '/muDaKftykz9Nj1mhRheMdbuNI9Z.jpg', '2023-08-17', 7.54, 'Strays', 93, 'Released', 'Comedy, Adventure', 'tt15153532', 192.15),
(3880, 626332, '/a7KyFMPXj0iY4EoLq1PIGU1WJPw.jpg', '2023-03-11', 8.211, 'Flamin\' Hot', 99, 'Released', 'Comedy, Drama', 'tt8105234', 188.976),
(3881, 289559, '/jgvatdEB8OvXx9gn8ZYxaJ66Wlq.jpg', '2016-10-21', 3.8, 'House of Purgatory', 75, 'Released', 'Thriller, Horror', 'tt1773467', 187.499),
(3882, 884605, '/gD72DhJ7NbfxvtxGiAzLaa0xaoj.jpg', '2023-06-15', 7.109, 'No Hard Feelings', 104, 'Released', 'Comedy, Romance', 'tt15671028', 186.051),
(3883, 884315, '/rPWaktPt50BwkYHmYM62sDrdnjR.jpg', '2022-09-08', 6.174, 'Terror on the Prairie', 107, 'Released', 'Western, Action, Thriller', 'tt14043966', 184.774),
(3884, 156022, '/9u4yW7yPA0BQ2pv9XwiNzItwvp8.jpg', '2014-09-24', 7.257, 'The Equalizer', 132, 'Released', 'Thriller, Action, Crime', 'tt0455944', 183.526),
(3885, 640146, '/qnqGbB22YJ7dSs4o6M7exTpNxPz.jpg', '2023-02-15', 6.406, 'Ant-Man and the Wasp: Quantumania', 125, 'Released', 'Action, Adventure, Science Fiction', 'tt10954600', 180.219),
(3886, 734253, '/bNY8xxtLm0HtdPS0kBttK3WKGQf.jpg', '2023-06-16', 5.393, 'आदिपुरुष', 179, 'Released', 'Action, Adventure, Drama, Fantasy', 'tt12915716', 179.38),
(3887, 677179, '/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg', '2023-03-01', 7.18, 'Creed III', 116, 'Released', 'Drama, Action', 'tt11145118', 178.55),
(3888, 818511, '/6yx14lSACNJ2zRoYyXqecf3QNgr.jpg', '2023-09-27', 6.637, 'Carga Máxima', 100, 'Released', 'Action, Thriller, Drama', 'tt16427938', 178.523),
(3889, 900667, '/ogDXuVkO92GcETZfSofXXemw7gb.jpg', '2022-08-06', 7.34, 'ONE PIECE FILM RED', 115, 'Released', 'Animation, Adventure, Action, Fantasy', 'tt16183464', 178.32),
(3890, 671, '/wuMc08IPKEatf9rnMNXvIDxqP4W.jpg', '2001-11-16', 7.9, 'Harry Potter and the Philosopher\'s Stone', 152, 'Released', 'Adventure, Fantasy', 'tt0241527', 176.881),
(3891, 43347, '/wZLM2uKJRYNchLmiCIjosX0rXy8.jpg', '2010-11-22', 7.038, 'Love & Other Drugs', 112, 'Released', 'Drama, Comedy, Romance', 'tt0758752', 176.59),
(3892, 597845, '/gmZGAbI42ecAoixyvZI0Se4Qiau.jpg', '2022-03-24', 7.341, 'Финник', 85, 'Released', 'Comedy, Adventure, Animation', 'tt15547806', 175.757),
(3893, 787781, '/8w7kbE95X6Qu0dWA1ZULifcbKcQ.jpg', '2023-09-09', 6.891, 'Quiz Lady', 100, 'Released', 'Comedy', 'tt13405810', 175.194),
(3894, 1161048, '/uLH5rUkRNwAUt6YqR86f8ewXZEY.jpg', '2023-10-13', 5.403, 'Konferensen', 100, 'Released', 'Horror, Comedy, Thriller', 'tt26547864', 173.441),
(3895, 675353, '/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg', '2022-04-08', 7.553, 'Sonic the Hedgehog 2', 123, 'Released', 'Action, Adventure, Family, Comedy', 'tt12412888', 173.305),
(3896, 954388, '/cVLfO3CbVg8p5Qcaifq6AidOe2w.jpg', '2023-08-31', 6.632, 'Arenas Mortales', 86, 'Released', 'Thriller, Horror, Mystery', 'tt19056070', 172.358),
(3897, 455476, '/qW4crfED8mpNDadSmMdi7ZDzhXF.jpg', '2023-04-27', 6.611, 'Knights of the Zodiac', 113, 'Released', 'Fantasy, Action, Adventure', 'tt6528290', 172.294),
(3898, 934433, '/wDWwtvkRRlgTiUr6TyLSMX8FCuZ.jpg', '2023-03-08', 7.139, 'Scream VI', 123, 'Released', 'Horror, Crime, Thriller', 'tt17663992', 170.879),
(3899, 697843, '/7gKI9hpEMcZUQpNgKrkDzJpbnNS.jpg', '2023-06-09', 7.468, 'Extraction 2', 123, 'Released', 'Action, Thriller', 'tt12263384', 170.573),
(3900, 505642, '/sv1xJUazXeYqALzczSZ3O6nkH75.jpg', '2022-11-09', 7.175, 'Black Panther: Wakanda Forever', 162, 'Released', 'Action, Adventure, Science Fiction', 'tt9114286', 169.401),
(3901, 842675, '/pR858ihc6Ls9xohpdRJVjV787ml.jpg', '2023-01-22', 7.2, '流浪地球2', 173, 'Released', 'Science Fiction, Action, Drama', 'tt13539646', 169.27),
(3902, 1083862, '/qayga07ICNDswm0cMJ8P3VwklFZ.jpg', '2023-06-22', 7.546, 'バイオハザード：デスアイランド', 91, 'Released', 'Animation, Action, Horror', 'tt26674627', 168.527),
(3903, 1076487, '/jP2ik17jvKiV5sGEknMFbZv7WAe.jpg', '2023-06-30', 7.2, 'Warhorse One', 120, 'Released', 'Action, Drama, War', 'tt16527824', 168.393),
(3904, 751237, '/moLnqJmZ00i2opS0bzCVcaGC0iI.jpg', '2022-03-18', 5.364, 'Umma', 83, 'Released', 'Horror, Mystery', 'tt13235822', 167.609),
(3905, 1064024, '/blQaj6biyBMLo34cuFKKwbgjIBz.jpg', '2023-11-01', 5.862, 'Locked In', 96, 'Released', 'Thriller', 'tt24870072', 165.339),
(3906, 670292, '/vBZ0qvaRxqEhZwl6LWmruJqWE8Z.jpg', '2023-09-27', 7.089, 'The Creator', 134, 'Released', 'Science Fiction, Action, Thriller', 'tt11858890', 164.829),
(3907, 763165, '/9ssNSfNKpzZwhbFsnW3wa82m2sG.jpg', '2023-10-06', 7.281, 'The Burial', 127, 'Released', 'Comedy, Drama', 'tt5648882', 160.315),
(3908, 594767, '/A3ZbZsmsvNGdprRi2lKgGEeVLEH.jpg', '2023-03-15', 6.642, 'Shazam! Fury of the Gods', 130, 'Released', 'Comedy, Action, Fantasy', 'tt10151854', 159.157),
(3909, 1002338, '/j2Or0w69bpPXrmkE0hpTzw6hzsr.jpg', '2023-01-26', 6.474, 'Napóleonsskjölin', 112, 'Released', 'Thriller', 'tt15485390', 159.082),
(3910, 585083, '/teCy1egGQa0y8ULJvlrDHQKnxBL.jpg', '2022-02-25', 6.999, 'Hotel Transylvania: Transformania', 92, 'Released', 'Animation, Comedy, Family, Adventure, Fantasy', 'tt9848626', 158.493),
(3911, 830764, '/yqnNLn24shYnZ6kqGpbwuB3NJ0D.jpg', '2023-09-23', 6.104, 'Pet Sematary: Bloodlines', 87, 'Released', 'Horror', 'tt14145436', 157.913),
(3912, 882569, '/kVG8zFFYrpyYLoHChuEeOGAd6Ru.jpg', '2023-04-19', 7.806, 'Guy Ritchie\'s The Covenant', 123, 'Released', 'War, Action, Thriller', 'tt4873118', 157.439),
(3913, 986070, '/k9NeWFZCC7XKDdh9HK8cZBqZmHD.jpg', '2023-05-26', 6.632, 'The Wrath of Becky', 83, 'Released', 'Action, Horror, Thriller', 'tt20916568', 156.314),
(3914, 840326, '/ygO9lowFMXWymATCrhoQXd6gCEh.jpg', '2023-01-27', 7.536, 'Sisu', 91, 'Released', 'Action, War', 'tt14846026', 155.26),
(3915, 1006462, '/mvjqqklMpHwOxc40rn7dMhGT0Fc.jpg', '2023-07-14', 6.752, 'The Flood', 93, 'Released', 'Action, Mystery, Thriller, Horror', 'tt15670222', 155.073),
(3916, 614479, '/d07phJqCx6z5wILDYqkyraorDPi.jpg', '2023-07-05', 6.765, 'Insidious: The Red Door', 107, 'Released', 'Horror, Mystery, Thriller', 'tt13405778', 153.892),
(3917, 508947, '/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg', '2022-03-10', 7.428, 'Turning Red', 100, 'Released', 'Animation, Family, Comedy, Fantasy', 'tt8097030', 153.785),
(3918, 616747, '/8Im6DknDVxRiGXc5t8rVOJyzuNx.jpg', '2023-07-26', 6.622, 'Haunted Mansion', 123, 'Released', 'Fantasy, Comedy, Horror, Family', 'tt1695843', 150.374),
(3919, 436270, '/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg', '2022-10-19', 6.998, 'Black Adam', 124, 'Released', 'Action, Adventure, Science Fiction', 'tt6443346', 149.721),
(3920, 8871, '/1WZbbPApEivA421gCOluuzMMKCk.jpg', '2000-11-17', 6.739, 'How the Grinch Stole Christmas', 104, 'Released', 'Family, Comedy, Fantasy', 'tt0170016', 149.448),
(3921, 414906, '/74xTEgt7R36Fpooo50r9T25onhq.jpg', '2022-03-01', 7.699, 'The Batman', 177, 'Released', 'Crime, Mystery, Thriller', 'tt1877830', 149.227),
(3922, 157336, '/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg', '2014-11-05', 8.42, 'Interstellar', 169, 'Released', 'Adventure, Drama, Science Fiction', 'tt0816692', 149.11),
(3923, 12902, '/hmeJnofknkSnczzN3J7Wvfn7OGI.jpg', '2004-05-20', 7.37, 'Scooby-Doo! and the Loch Ness Monster', 74, 'Released', 'Family, Adventure, Animation, Comedy, Fantasy, Mystery', 'tt0418141', 146.694),
(3924, 808, '/dyhaB19AICF7TO7CK2aD6KfymnQ.jpg', '2001-05-18', 7.732, 'Shrek', 90, 'Released', 'Animation, Comedy, Fantasy, Adventure, Family', 'tt0126029', 146.379),
(3925, 131631, '/4FAA18ZIja70d1Tu5hr5cj2q1sB.jpg', '2014-11-19', 6.8, 'The Hunger Games: Mockingjay - Part 1', 123, 'Released', 'Science Fiction, Adventure, Thriller', 'tt1951265', 146.339),
(3926, 979275, '/mcz8oi9oCgq1wkA3Wz2kluE94pE.jpg', '2023-08-04', 5.774, 'Mob Land', 111, 'Released', 'Action, Crime, Thriller', 'tt20424130', 146.262),
(3927, 585511, '/1HOYvwGFioUFL58UVvDRG6beEDm.jpg', '2022-08-05', 7.836, 'Luck', 105, 'Released', 'Animation, Adventure, Comedy, Fantasy', 'tt7214954', 145.812),
(3928, 1173558, '/lEuPvWv3aqAjBoqYi088GvCBRMX.jpg', '2023-10-25', 5.724, 'O Lado Bom de Ser Traída', 99, 'Released', 'Romance, Mystery, Drama', 'tt26787296', 144.411),
(3929, 616037, '/pIkRyD18kl4FhoCNQuWxWu5cBLM.jpg', '2022-07-06', 6.507, 'Thor: Love and Thunder', 119, 'Released', 'Fantasy, Action, Comedy', 'tt10648342', 144.258),
(3930, 672, '/sdEOH0992YZ0QSxgXNIGLq1ToUi.jpg', '2002-11-13', 7.719, 'Harry Potter and the Chamber of Secrets', 161, 'Released', 'Adventure, Fantasy', 'tt0295297', 143.496),
(3931, 1024773, '/73gIfV8gDwkVgUrFDzt4TfZC9Zc.jpg', '2023-09-06', 5.731, 'It Lives Inside', 99, 'Released', 'Horror, Mystery', 'tt15683734', 142.879),
(3932, 917990, '/lZkcV9MviMfEWjaLS2dJ1C8T8FU.jpg', '2022-06-07', 4.5, 'Tales from the Other Side', 88, 'Released', 'Horror', 'tt16404438', 142.868),
(3933, 912916, '/rh9fwqA98ufdx9vP7V6lLhfpfk1.jpg', '2023-10-19', 7.165, 'The Other Zoey', 91, 'Released', 'Romance, Drama, Comedy', 'tt11951276', 142.311),
(3934, 337167, '/9ZedQHPQVveaIYmDSTazhT3y273.jpg', '2018-01-17', 6.709, 'Fifty Shades Freed', 105, 'Released', 'Drama, Romance', 'tt4477536', 142.044),
(3935, 361743, '/62HCnUTziyWcpDaBO2i1DX17ljH.jpg', '2022-05-24', 8.251, 'Top Gun: Maverick', 131, 'Released', 'Action, Drama', 'tt1745960', 141.725),
(3936, 713704, '/5ik4ATKmNtmJU6AYD0bLm56BCVM.jpg', '2023-04-12', 6.976, 'Evil Dead Rise', 96, 'Released', 'Horror, Thriller', 'tt13345606', 141.063),
(3937, 176, '/4da0TS3iQ1IzuyhDS8elgkmOfrN.jpg', '2004-10-01', 7.408, 'Saw', 103, 'Released', 'Horror, Mystery, Crime', 'tt0387564', 140.951),
(3938, 674, '/fECBtHlr0RB3foNHDiCBXeg9Bv9.jpg', '2005-11-16', 7.815, 'Harry Potter and the Goblet of Fire', 157, 'Released', 'Adventure, Fantasy', 'tt0330373', 140.329),
(3939, 14836, '/4jeFXQYytChdZYE9JYO7Un87IlW.jpg', '2009-02-05', 7.861, 'Coraline', 100, 'Released', 'Animation, Family, Fantasy', 'tt0327597', 139.77),
(3940, 990140, '/jGKCpt3zzbGZbgoza6HCvecqElM.jpg', '2023-01-16', 6.557, '天龍八部之喬峰傳', 130, 'Released', 'Action, Drama', 'tt22488024', 139.481),
(3941, 299537, '/AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg', '2019-03-06', 6.84, 'Captain Marvel', 124, 'Released', 'Action, Adventure, Science Fiction', 'tt4154664', 139.111),
(3942, 299534, '/or06FN3Dka5tukK1e9sl16pB3iy.jpg', '2019-04-24', 8.261, 'Avengers: Endgame', 181, 'Released', 'Adventure, Science Fiction, Action', 'tt4154796', 137.866),
(3943, 726217, '/w4VVr6QRTBIv0j9uvylxnMZP6Lu.jpg', '2020-08-18', 4, 'Escape: Puzzle of Fear', 83, 'Released', 'Thriller, Horror', 'tt6846978', 137.508),
(3944, 238, '/3bhkrj58Vtu7enYsRolD1fZdja1.jpg', '1972-03-14', 8.71, 'The Godfather', 175, 'Released', 'Drama, Crime', 'tt0068646', 137.215),
(3945, 502345, '/1tcLXVaXFG9OObnCN3a5KrymrQG.jpg', '2023-10-05', 7.194, 'Scarygirl', 90, 'Released', 'Animation, Adventure', 'tt4556264', 137.086),
(3946, 814776, '/jeyTQrNEpyE1LZIgVlswYh3sc34.jpg', '2023-08-25', 6.971, 'Bottoms', 91, 'Released', 'Comedy', 'tt17527468', 136.938),
(3947, 987917, '/krA2iXd1PK1vhg4jeWfbSD4fSJi.jpg', '2023-10-20', 6.352, 'Old Dads', 102, 'Released', 'Comedy', 'tt18394190', 136.823),
(3948, 507086, '/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg', '2022-06-01', 6.772, 'Jurassic World Dominion', 147, 'Released', 'Adventure, Action, Science Fiction', 'tt8041270', 135.878),
(3949, 673, '/aWxwnYoe8p2d2fcxOqtvAtJ72Rw.jpg', '2004-05-31', 8.019, 'Harry Potter and the Prisoner of Azkaban', 141, 'Released', 'Adventure, Fantasy', 'tt0304141', 135.802),
(3950, 585, '/sgheSKxZkttIe8ONsf2sWXPgip3.jpg', '2001-11-01', 7.836, 'Monsters, Inc.', 92, 'Released', 'Animation, Comedy, Family', 'tt0198781', 135.145),
(3951, 862968, '/m0gM9jE1KmCkXZRqkeNYEQZdVsZ.jpg', '2023-10-20', 6.7, 'Pain Hustlers', 122, 'Released', 'Drama, Crime', 'tt15257160', 134.904),
(3952, 24428, '/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg', '2012-04-25', 7.71, 'The Avengers', 143, 'Released', 'Science Fiction, Action, Adventure', 'tt0848228', 134.874),
(3953, 254128, '/2Gfjn962aaFSD6eST6QU3oLDZTo.jpg', '2015-05-27', 6.229, 'San Andreas', 114, 'Released', 'Action, Drama, Thriller', 'tt2126355', 134.427),
(3954, 820609, '/ehGIDAMaYy6Eg0o8ga0oqflDjqW.jpg', '2023-09-22', 6.808, 'No One Will Save You', 93, 'Released', 'Horror, Science Fiction, Thriller', 'tt14509110', 134.173),
(3955, 457332, '/zsbolOkw8RhTU4DKOrpf4M7KCmi.jpg', '2023-07-06', 7.034, 'Hidden Strike', 103, 'Released', 'Action, Adventure, Thriller, Comedy', 'tt6879446', 133.846),
(3956, 895549, '/eh1IjDZfDRjgv5NzMBkjN1GzKgy.jpg', '2023-10-18', 6.969, 'NYAD', 121, 'Released', 'Drama, History', 'tt5302918', 133.665),
(3957, 508442, '/hm58Jw4Lw8OIeECIq5qyPYhAeRJ.jpg', '2020-12-25', 8.147, 'Soul', 101, 'Released', 'Animation, Family, Comedy, Fantasy, Drama', 'tt2948372', 133.395),
(3958, 453395, '/fwBl3J2aEXru6mrr9Xg8O99Iz2K.jpg', '2022-05-04', 7.346, 'Doctor Strange in the Multiverse of Madness', 126, 'Released', 'Fantasy, Action, Adventure', 'tt9419884', 132.977),
(3959, 854867, '/9LgJkgmWbhD6bfzo4LvjEWEIlCe.jpg', '2022-01-31', 5.542, 'Werewolf Castle', 92, 'Released', 'Horror, Fantasy, History, Action', 'tt14996254', 132.853),
(3960, 832502, '/i6ye8ueFhVE5pXatgyRrZ83LBD8.jpg', '2023-08-11', 6.698, 'The Monkey King', 92, 'Released', 'Animation, Fantasy, Adventure, Family, Comedy', 'tt8637498', 132.837),
(3961, 9479, '/oQffRNjK8e19rF7xVYEN8ew0j7b.jpg', '1993-10-09', 7.843, 'The Nightmare Before Christmas', 76, 'Released', 'Fantasy, Animation, Family', 'tt0107688', 132.416),
(3962, 467405, '/jP0fjDDZaYGpuwD9as6tNn0ePPz.jpg', '2017-09-29', 5.293, 'Don\'t Sleep', 101, 'Released', 'Horror, Thriller', 'tt4329806', 131.449),
(3963, 537915, '/u3B2YKUjWABcxXZ6Nm9h10hLUbh.jpg', '2019-04-11', 7.135, 'After', 106, 'Released', 'Romance, Drama', 'tt4126476', 131.417),
(3964, 744275, '/dU4HfnTEJDf9KvxGS9hgO7BVeju.jpg', '2021-09-01', 7.098, 'After We Fell', 99, 'Released', 'Romance, Drama', 'tt13069986', 131.26),
(3965, 177572, '/2mxS4wUimwlLmI1xp6QW6NSU361.jpg', '2014-10-24', 7.735, 'Big Hero 6', 102, 'Released', 'Adventure, Family, Animation, Action, Comedy', 'tt2245084', 130.898),
(3966, 411, '/iREd0rNCjYdf5Ar0vfaW32yrkm.jpg', '2005-12-07', 7.129, 'The Chronicles of Narnia: The Lion, the Witch and the Wardrobe', 143, 'Released', 'Adventure, Family, Fantasy', 'tt0363771', 130.794),
(3967, 916224, '/vIeu8WysZrTSFb2uhPViKjX9EcC.jpg', '2022-11-11', 7.969, 'すずめの戸締まり', 123, 'Released', 'Animation, Drama, Adventure, Fantasy', 'tt16428256', 130.072),
(3968, 744278, '/gOuJBz9u1YVWwvx12lJX56yUT6I.jpg', '2021-09-03', 6.452, 'Mondocane', 117, 'Released', 'Action, Crime, Science Fiction, Drama', 'tt13113298', 130.015),
(3969, 3933, '/isb2Qow76GpqYmsSyfdMfsYAjts.jpg', '2005-09-12', 7.541, 'Corpse Bride', 77, 'Released', 'Romance, Fantasy, Animation', 'tt0121164', 129.88),
(3970, 8920, '/vqwTSWNLyH55g8kBT61s2DgNYEp.jpg', '2004-06-10', 5.667, 'Garfield', 80, 'Released', 'Animation, Comedy, Family', 'tt0356634', 129.779),
(3971, 439079, '/sFC1ElvoKGdHJIWRpNB3xWJ9lJA.jpg', '2018-09-05', 5.89, 'The Nun', 96, 'Released', 'Horror, Mystery, Thriller', 'tt5814060', 129.177),
(3972, 324857, '/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg', '2018-12-06', 8.405, 'Spider-Man: Into the Spider-Verse', 117, 'Released', 'Action, Adventure, Animation, Science Fiction', 'tt4633694', 128.886),
(3973, 744276, '/moogpu8rNkEjTgFyLXwhPghft5w.jpg', '2022-08-24', 6.832, 'After Ever Happy', 95, 'Released', 'Romance, Drama', 'tt13070038', 128.856),
(3974, 868759, '/liLN69YgoovHVgmlHJ876PKi5Yi.jpg', '2023-04-18', 7.026, 'Ghosted', 117, 'Released', 'Action, Comedy, Romance', 'tt15326988', 127.48),
(3975, 19995, '/kyeqWdyUXW608qlYkRqosgbbJyK.jpg', '2009-12-15', 7.575, 'Avatar', 162, 'Released', 'Action, Adventure, Fantasy, Science Fiction', 'tt0499549', 127.285),
(3976, 216015, '/63kGofUkt1Mx0SIL4XI4Z5AoSgt.jpg', '2015-02-11', 5.882, 'Fifty Shades of Grey', 125, 'Released', 'Drama, Romance, Thriller', 'tt2322441', 127.094),
(3977, 663712, '/8gLhu8UFPZfH2Hv11JhTZkb9CVl.jpg', '2022-10-06', 6.797, 'Terrifier 2', 138, 'Released', 'Horror, Thriller', 'tt10403420', 127.083),
(3978, 985939, '/v28T5F1IygM8vXWZIycfNEm3xcL.jpg', '2022-08-11', 7.243, 'Fall', 107, 'Released', 'Thriller', 'tt15325794', 126.292),
(3979, 1118595, '/lQchkNOo6iYSt73GWIxRP151JnY.jpg', '2023-09-20', 3.4, 'The Jester', 90, 'Released', 'Horror, Thriller, Mystery', 'tt26533869', 125.909),
(3980, 811634, '/67YXOoKGODyGvJXfXzVmgHNXYh8.jpg', '2021-04-02', 7.147, '西游记之再世妖王', 95, 'Released', 'Animation, Action, Fantasy, Family', 'tt14391088', 125.824),
(3981, 767, '/z7uo9zmQdQwU5ZJHFpv2Upl30i1.jpg', '2009-07-15', 7.695, 'Harry Potter and the Half-Blood Prince', 153, 'Released', 'Adventure, Fantasy', 'tt0417741', 125.521),
(3982, 758323, '/jFC4LS5qTAT3PinzdEzINfu1CV9.jpg', '2023-04-05', 7.113, 'The Pope\'s Exorcist', 103, 'Released', 'Horror, Thriller', 'tt13375076', 124.945),
(3983, 438148, '/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg', '2022-06-29', 7.368, 'Minions: The Rise of Gru', 87, 'Released', 'Animation, Comedy, Family', 'tt5113044', 124.772),
(3984, 73723, '/tePFnZFw5JvjwjQjaKkqDPNMLPU.jpg', '2012-03-01', 6.491, 'The Lorax', 86, 'Released', 'Animation, Family', 'tt1482459', 124.438),
(3985, 12445, '/c54HpQmuwXjHq2C9wmoACjxoom3.jpg', '2011-07-12', 8.104, 'Harry Potter and the Deathly Hallows: Part 2', 130, 'Released', 'Fantasy, Adventure', 'tt1201607', 123.826),
(3986, 808396, '/5kiLS9nsSJxDdlYUyYGiSUt8Fi8.jpg', '2023-06-22', 6.3, 'God Is a Bullet', 155, 'Released', 'Thriller, Action, Crime, Horror', 'tt14270702', 123.762),
(3987, 809, '/2yYP0PQjG8zVqturh1BAqu2Tixl.jpg', '2004-05-19', 7.253, 'Shrek 2', 93, 'Released', 'Animation, Family, Comedy, Fantasy, Adventure', 'tt0298148', 123.701),
(3988, 423108, '/xbSuFiJbbBWCkyCCKIMfuDCA4yV.jpg', '2021-05-25', 7.476, 'The Conjuring: The Devil Made Me Do It', 111, 'Released', 'Horror, Mystery, Thriller', 'tt7069210', 123.591),
(3989, 675445, '/ic0intvXZSfBlYPIvWXpU1ivUCO.jpg', '2021-08-09', 7.417, 'PAW Patrol: The Movie', 86, 'Released', 'Animation, Family, Adventure, Comedy', 'tt11832046', 123.056),
(3990, 766507, '/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg', '2022-08-02', 7.754, 'Prey', 100, 'Released', 'Thriller, Action, Science Fiction', 'tt11866324', 123.025),
(3991, 597, '/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg', '1997-11-18', 7.899, 'Titanic', 194, 'Released', 'Drama, Romance', 'tt0120338', 122.062),
(3992, 296096, '/Ia3dzj5LnCj1ZBdlVeJrbKJQxG.jpg', '2016-06-01', 7.916, 'Me Before You', 110, 'Released', 'Drama, Romance', 'tt2674426', 121.47),
(3993, 580489, '/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg', '2021-09-30', 6.826, 'Venom: Let There Be Carnage', 97, 'Released', 'Science Fiction, Action, Adventure', 'tt7097896', 121.076),
(3994, 438695, '/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg', '2021-12-01', 7.909, 'Sing 2', 110, 'Released', 'Animation, Family', 'tt6467266', 120.922),
(3995, 642538, '/67WmijqW7fjmLcc0eKZtW59Hf4d.jpg', '2022-05-28', 7.353, '犬王', 99, 'Released', 'Animation, Drama, Music', 'tt10540510', 120.656),
(3996, 109445, '/kgwjIb2JDHRhNk13lmSxiClFjVk.jpg', '2013-11-20', 7.246, 'Frozen', 102, 'Released', 'Animation, Family, Adventure, Fantasy', 'tt2294629', 119.998),
(3997, 1172009, '/kn28W24slBLyGr8ZIZnxNE5YZrY.jpg', '2023-09-22', 6.9, 'The Black Book', 124, 'Released', 'Mystery, Thriller, Action', 'tt24083908', 119.484),
(3998, 324786, '/jcStBvbQt78tPeId5hC7a9jcDOK.jpg', '2016-10-07', 8.194, 'Hacksaw Ridge', 139, 'Released', 'Drama, History, War', 'tt2119532', 119.333),
(3999, 360920, '/1Bc9VNd9CIHIyJtPKFqSQzrXWru.jpg', '2018-11-08', 6.8, 'The Grinch', 85, 'Released', 'Animation, Family, Comedy, Fantasy', 'tt2709692', 119.102),
(4000, 14160, '/vpbaStTMt8qqXaEgnOR2EE4DNJk.jpg', '2009-05-28', 7.951, 'Up', 96, 'Released', 'Animation, Comedy, Family, Adventure', 'tt1049413', 119.009),
(4001, 12444, '/iGoXIpQb7Pot00EEdwpwPajheZ5.jpg', '2010-11-17', 7.8, 'Harry Potter and the Deathly Hallows: Part 1', 146, 'Released', 'Adventure, Fantasy', 'tt0926084', 118.504),
(4002, 753091, '/ujdicM6CwaG60hi6e0Mi1Ga1zuk.jpg', '2023-08-02', 6.8, '더 문', 129, 'Released', 'Drama, Adventure, Science Fiction', 'tt27688034', 118.33),
(4003, 675, '/5aOyriWkPec0zUDxmHFP9qMmBaj.jpg', '2007-07-08', 7.686, 'Harry Potter and the Order of the Phoenix', 138, 'Released', 'Adventure, Fantasy', 'tt0373889', 117.606),
(4004, 536554, '/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg', '2022-12-28', 7.2, 'M3GAN', 102, 'Released', 'Science Fiction, Horror', 'tt8760708', 117.123),
(4005, 862, '/uXDfjJbdP4ijW5hWSBrPrlKpxab.jpg', '1995-10-30', 7.97, 'Toy Story', 81, 'Released', 'Animation, Adventure, Family, Comedy', 'tt0114709', 116.148),
(4006, 38757, '/ym7Kst6a4uodryxqbGOxmewF235.jpg', '2010-11-24', 7.602, 'Tangled', 100, 'Released', 'Animation, Family', 'tt0398286', 115.807),
(4007, 635302, '/h8Rb9gBr48ODIwYUttZNYeMWeUU.jpg', '2020-10-16', 8.256, '劇場版「鬼滅の刃」無限列車編', 117, 'Released', 'Action, Animation, Adventure, Fantasy, Thriller', 'tt11032374', 114.571),
(4008, 606403, '/iFUBAfMDlFOck29BEwS1awH5TB3.jpg', '2022-01-12', 7.105, '특송', 109, 'Released', 'Action, Crime', 'tt16529222', 114.256),
(4009, 460846, '/9FN5n8wGYrfSJaKGF9uObdKimIh.jpg', '2017-03-04', 6.26, 'Security', 87, 'Released', 'Action, Thriller, Crime', 'tt3501112', 113.089),
(4010, 974931, '/52YBwGJ3cJs54fpBzwnT1lnqgTo.jpg', '2023-09-28', 6.952, 'Totally Killer', 105, 'Released', 'Comedy, Horror, Science Fiction', 'tt11426232', 112.916),
(4011, 613504, '/kiX7UYfOpYrMFSAGbI6j1pFkLzQ.jpg', '2020-09-02', 7.198, 'After We Collided', 105, 'Released', 'Romance, Drama', 'tt10362466', 112.623),
(4012, 2062, '/t3vaWRPSf6WjDSamIkKDs1iQWna.jpg', '2007-06-28', 7.809, 'Ratatouille', 111, 'Released', 'Animation, Comedy, Family, Fantasy', 'tt0382932', 112.621),
(4013, 829557, '/7qU0SOVcQ8BTJLodcAlulUAG16C.jpg', '2022-04-27', 5.855, '365 dni: Ten dzień', 111, 'Released', 'Romance, Drama', 'tt12996154', 111.517),
(4014, 646385, '/971Kqs1q4nuSc9arn1QAuKYbfxy.jpg', '2022-01-12', 6.702, 'Scream', 114, 'Released', 'Horror, Mystery, Thriller', 'tt11245972', 111.193),
(4015, 804150, '/gOnmaxHo0412UVr1QM5Nekv1xPi.jpg', '2023-02-22', 6.168, 'Cocaine Bear', 96, 'Released', 'Thriller, Comedy, Crime', 'tt14209916', 110.988),
(4016, 228150, '/pfte7wdMobMF4CVHuOxyu6oqeeA.jpg', '2014-10-15', 7.521, 'Fury', 135, 'Released', 'War, Drama, Action', 'tt2713180', 110.875),
(4017, 120, '/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg', '2001-12-18', 8.404, 'The Lord of the Rings: The Fellowship of the Ring', 179, 'Released', 'Adventure, Fantasy, Action', 'tt0120737', 110.769),
(4018, 1103825, '/c3CUKHtQUvPvp9NSFsKwYsPLAdW.jpg', '2023-04-21', 5.2, 'War of the Worlds : The Attack', 87, 'Released', 'Science Fiction, Mystery, Thriller', 'tt12519802', 109.858),
(4019, 198663, '/ode14q7WtDugFDp78fo9lCsmay9.jpg', '2014-09-10', 7.174, 'The Maze Runner', 113, 'Released', 'Action, Mystery, Science Fiction, Thriller', 'tt1790864', 109.77),
(4020, 1186576, '/6NjBGIlnbmpT0vn8YtSbVgOgQiv.jpg', '2023-11-10', 0, 'Japino', 71, 'Released', 'Drama', 'tt29685012', 109.762),
(4021, 278, '/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg', '1994-09-23', 8.704, 'The Shawshank Redemption', 142, 'Released', 'Drama, Crime', 'tt0111161', 109.728),
(4022, 298250, '/2mUqHJG7ZiGwZYIylczFCsRPbXM.jpg', '2017-10-25', 6.224, 'Jigsaw', 92, 'Released', 'Horror, Mystery, Thriller', 'tt3348730', 109.663),
(4023, 436969, '/kb4s0ML0iVZlG6wAKbbs9NAm6X.jpg', '2021-07-28', 7.554, 'The Suicide Squad', 132, 'Released', 'Action, Comedy, Adventure', 'tt6334354', 109.226),
(4024, 27205, '/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg', '2010-07-15', 8.365, 'Inception', 148, 'Released', 'Action, Science Fiction, Adventure', 'tt1375666', 108.292),
(4025, 1726, '/78lPtwv72eTNqFW9COBYI0dWDJa.jpg', '2008-04-30', 7.639, 'Iron Man', 126, 'Released', 'Action, Science Fiction, Adventure', 'tt0371746', 108.068),
(4026, 939338, '/gVPw9gRPsZZhzY6cIXp6h6nep5M.jpg', '2023-01-25', 6.896, 'Pattie et la colère de Poséidon', 95, 'Released', 'Animation, Adventure, Fantasy, Family', 'tt22360682', 107.909),
(4027, 22, '/z8onk7LV9Mmw6zKz4hT6pzzvmvl.jpg', '2003-07-09', 7.796, 'Pirates of the Caribbean: The Curse of the Black Pearl', 143, 'Released', 'Adventure, Fantasy, Action', 'tt0325980', 107.766),
(4028, 863, '/2MFIhZAW0CVlEQrFyqwa4U6zqJP.jpg', '1999-10-30', 7.588, 'Toy Story 2', 92, 'Released', 'Animation, Comedy, Family', 'tt0120363', 107.74),
(4029, 122917, '/xT98tLqatZPQApyRmlPL12LtiWp.jpg', '2014-12-10', 7.311, 'The Hobbit: The Battle of the Five Armies', 144, 'Released', 'Action, Adventure, Fantasy', 'tt2310332', 107.697),
(4030, 77338, '/1QU7HKgsQbGpzsJbJK4pAVQV9F5.jpg', '2011-11-02', 8.278, 'Intouchables', 113, 'Released', 'Drama, Comedy', 'tt1675434', 107.563),
(4031, 338953, '/jrgifaYeUtTnaH7NF5Drkgjg2MB.jpg', '2022-04-06', 6.707, 'Fantastic Beasts: The Secrets of Dumbledore', 142, 'Released', 'Fantasy, Adventure, Family', 'tt4123432', 107.194),
(4032, 872906, '/jFt1gS4BGHlK8xt76Y81Alp4dbt.jpg', '2023-09-07', 7.096, 'जवान', 169, 'Released', 'Action, Adventure, Thriller', 'tt15354916', 106.957),
(4033, 155, '/qJ2tW6WMUDux911r6m7haRef0WH.jpg', '2008-07-16', 8.513, 'The Dark Knight', 152, 'Released', 'Drama, Action, Crime, Thriller', 'tt0468569', 106.792),
(4034, 41439, '/oY7ZLUftMCTku7lQVrKdLS4skuv.jpg', '2010-10-22', 5.988, 'Saw 3D', 90, 'Released', 'Horror, Crime', 'tt1477076', 106.763),
(4035, 791373, '/tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg', '2021-03-18', 8.183, 'Zack Snyder\'s Justice League', 242, 'Released', 'Action, Adventure, Fantasy', 'tt12361974', 106.679),
(4036, 8587, '/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg', '1994-06-24', 8.254, 'The Lion King', 89, 'Released', 'Family, Animation, Drama', 'tt0110357', 106.352),
(4037, 269149, '/hlK0e0wAQ3VLuJcsfIYPvb4JVud.jpg', '2016-02-11', 7.747, 'Zootopia', 109, 'Released', 'Animation, Adventure, Family, Comedy', 'tt2948356', 106.295),
(4038, 760104, '/woTQx9Q4b8aO13jR9dsj8C9JESy.jpg', '2022-03-17', 6.753, 'X', 106, 'Released', 'Horror, Thriller, Mystery', 'tt13560574', 106.023),
(4039, 433499, '/uhmNHWTVniHHYKTsWSvSir19K1z.jpg', '2019-03-15', 6.313, 'Finding Steve McQueen', 91, 'Released', 'Crime', 'tt6032328', 105.897),
(4040, 1150537, '/oopH7qWS4Z2HqHCbn9gsVwV3RQW.jpg', '2023-10-17', 6.813, 'Justice League x RWBY: Super Heroes & Huntsmen, Part Two', 0, 'Released', 'Animation, Action, Fantasy, Adventure', 'tt28786861', 105.525),
(4041, 818110, '/A0rKADffll1kdXQYTXNUeZCFvfo.jpg', '2022-09-30', 6.4, 'The Magic Flute', 125, 'Released', 'Adventure, Fantasy, Music, Family', 'tt8206398', 105.408),
(4042, 566525, '/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg', '2021-09-01', 7.581, 'Shang-Chi and the Legend of the Ten Rings', 132, 'Released', 'Action, Adventure, Fantasy', 'tt9376612', 105.132),
(4043, 812225, '/9YEGawvjaRgnyW6QVcUhFJPFDco.jpg', '2023-06-16', 8.15, '映画 ブラッククローバー 魔法帝の剣', 113, 'Released', 'Animation, Fantasy, Action, Adventure', 'tt22868844', 104.879),
(4044, 610150, '/pi0iZOEHeA3ih4p1IwAG4x2DZNH.jpg', '2022-06-11', 7.917, 'ドラゴンボール超 スーパーヒーロー', 99, 'Released', 'Animation, Science Fiction, Action', 'tt14614892', 104.578),
(4045, 119450, '/kScdQEwS9jPEdnO23XjGAtaoRcT.jpg', '2014-06-26', 7.308, 'Dawn of the Planet of the Apes', 130, 'Released', 'Science Fiction, Action, Drama, Thriller', 'tt2103281', 104.494),
(4046, 736526, '/ulgKdif3ubMACDltr8VZy6fyVjW.jpg', '2022-12-01', 6.685, 'Troll', 104, 'Released', 'Fantasy, Action, Adventure', 'tt11116912', 104.444),
(4047, 335984, '/gajva2L0rPYkEWjzgFlBXCAVBE5.jpg', '2017-10-04', 7.55, 'Blade Runner 2049', 164, 'Released', 'Science Fiction, Drama', 'tt1856101', 104.282),
(4048, 1865, '/keGfSvCmYj7CvdRx36OdVrAEibE.jpg', '2011-05-15', 6.538, 'Pirates of the Caribbean: On Stranger Tides', 137, 'Released', 'Adventure, Action, Fantasy', 'tt1298650', 104.257),
(4049, 1174725, '/tI9ybrWLiVLljLsNoqEjQF36oG4.jpg', '2023-10-04', 6.471, 'Duell am Abgrund', 90, 'Released', 'Documentary, Action, Adventure', 'tt28995566', 104.039),
(4050, 106646, '/34m2tygAYBGqA9MXKhRDtzYd4MR.jpg', '2013-12-25', 8.034, 'The Wolf of Wall Street', 180, 'Released', 'Crime, Drama, Comedy', 'tt0993846', 104.021),
(4051, 739405, '/uo7vWfQUlVwueYTDRicXOJa8Oow.jpg', '2023-01-04', 6.567, 'Operation Fortune: Ruse de Guerre', 114, 'Released', 'Action, Thriller, Comedy', 'tt7985704', 103.863),
(4052, 917007, '/tiZF8b9T9fMcwvsEEkJ5ik1wCnV.jpg', '2022-12-08', 6.37, 'Bed Rest', 90, 'Released', 'Horror', 'tt4896168', 103.556),
(4053, 1149381, '/l1f9JSPjCfNftigEii1SDK1g2b3.jpg', '2023-08-02', 6.593, 'Operacja: Soulcatcher', 99, 'Released', 'Action, Adventure, Thriller', 'tt28290233', 103.53),
(4054, 557, '/gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg', '2002-05-01', 7.282, 'Spider-Man', 121, 'Released', 'Fantasy, Action', 'tt0145487', 103.461),
(4055, 637649, '/M7SUK85sKjaStg4TKhlAVyGlz3.jpg', '2021-04-22', 7.667, 'Wrath of Man', 119, 'Released', 'Crime, Thriller, Action', 'tt11083552', 102.891),
(4056, 293660, '/fSRb7vyIP8rQpL0I47P3qUsEKX3.jpg', '2016-02-09', 7.607, 'Deadpool', 108, 'Released', 'Action, Adventure, Comedy', 'tt1431045', 102.879),
(4057, 446893, '/7W0G3YECgDAfnuiHG91r8WqgIOe.jpg', '2020-03-11', 7.336, 'Trolls World Tour', 90, 'Released', 'Family, Animation, Comedy, Fantasy, Adventure, Music', 'tt6587640', 102.611),
(4058, 372058, '/q719jXXEzOoYaps6babgKnONONX.jpg', '2016-08-26', 8.509, '君の名は。', 106, 'Released', 'Romance, Animation, Drama', 'tt5311514', 102.567),
(4059, 7512, '/rKsiNxKjhWEwndOgWPs273oy9EZ.jpg', '2006-09-01', 6.312, 'Idiocracy', 84, 'Released', 'Comedy, Science Fiction, Adventure', 'tt0387808', 102.34),
(4060, 10674, '/5TYgKxYhnhRNNwqnRAKHkgfqi2G.jpg', '1998-06-18', 7.915, 'Mulan', 88, 'Released', 'Animation, Family, Adventure', 'tt0120762', 101.325),
(4061, 813477, '/9dTO2RygcDT0cQkawABw4QkDegN.jpg', '2023-03-17', 7, 'シン・仮面ライダー', 121, 'Released', 'Action, Drama, Science Fiction', 'tt14379088', 101.231),
(4062, 10138, '/6WBeq4fCfn7AN0o21W9qNcRF2l9.jpg', '2010-04-28', 6.835, 'Iron Man 2', 124, 'Released', 'Adventure, Action, Science Fiction', 'tt1228705', 101.137),
(4063, 425, '/gLhHHZUzeseRXShoDyC4VqLgsNv.jpg', '2002-03-10', 7.351, 'Ice Age', 81, 'Released', 'Animation, Comedy, Family, Adventure', 'tt0268380', 100.982),
(4064, 508943, '/8tABCBpzu3mZbzMB3sRzMEHEvJi.jpg', '2021-06-17', 7.857, 'Luca', 101, 'Released', 'Animation, Comedy, Fantasy, Adventure, Family', 'tt12801262', 100.704),
(4065, 215, '/AwfBNpkedYcXt9BjGEYZf5g2s37.jpg', '2005-10-28', 6.576, 'Saw II', 93, 'Released', 'Horror', 'tt0432348', 100.627),
(4066, 966220, '/295gZzTXMvuiIG0U19h4M44PXxI.jpg', '2022-05-03', 7.649, 'Снайпер. Білий ворон', 120, 'Released', 'War, Action, Drama', 'tt19465630', 100.624),
(4067, 790459, '/gC3vm9bqyrwFM4C3EhB25OpPukA.jpg', '2023-10-27', 6.2, 'Fingernails', 113, 'Released', 'Romance, Science Fiction, Drama, Comedy', 'tt13968674', 100.064),
(4068, 829560, '/6FsGeIp7heHm5eh4tIxTzHIRxmt.jpg', '2022-08-19', 6.507, 'Kolejne 365 dni', 112, 'Released', 'Romance, Drama', 'tt21106646', 100.061),
(4069, 790493, '/vd8YdaH7dzeIMGTNwQinlSiA1gV.jpg', '2023-09-22', 6.302, 'Spy Kids: Armageddon', 98, 'Released', 'Family, Comedy, Action, Adventure', 'tt13978520', 99.979),
(4070, 734372, '/1Tg2qT8FqwEihC6yhqbZYY9akBg.jpg', '2021-11-26', 6.4, 'An Intrusion', 99, 'Released', 'Thriller', 'tt10308502', 99.621),
(4071, 1064835, '/516MFML05KWiPfiQNAsVCGMySc7.jpg', '2023-08-08', 6.977, '七つの大罪 怨嗟のエジンバラ 後編', 55, 'Released', 'Action, Adventure, Fantasy, Animation', 'tt25010142', 99.259),
(4072, 131634, '/lImKHDfExAulp16grYm8zD5eONE.jpg', '2015-11-18', 6.888, 'The Hunger Games: Mockingjay - Part 2', 137, 'Released', 'Action, Adventure, Science Fiction', 'tt1951266', 99.151),
(4073, 335787, '/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg', '2022-02-10', 6.991, 'Uncharted', 116, 'Released', 'Action, Adventure', 'tt1464335', 99.096),
(4074, 644124, '/xdWjqmX4x0ObKIPqkr8Vptj99AZ.jpg', '2022-10-28', 6.462, 'Dampyr', 109, 'Released', 'Horror, Fantasy, Action', 'tt10315050', 99.089),
(4075, 337404, '/wToO8opxkGwKgSfJ1JK8tGvkG6U.jpg', '2021-05-26', 8.049, 'Cruella', 134, 'Released', 'Comedy, Crime', 'tt3228774', 98.938),
(4076, 899112, '/e8CpMgdyihz9Td7amQDqubPuzfN.jpg', '2022-11-30', 7.464, 'Violent Night', 112, 'Released', 'Action, Comedy, Crime, Thriller', 'tt12003946', 98.642),
(4077, 10192, '/6HrfPZtKcGmX2tUWW3cnciZTaSD.jpg', '2010-05-16', 6.353, 'Shrek Forever After', 93, 'Released', 'Comedy, Adventure, Fantasy, Animation, Family', 'tt0892791', 98.491),
(4078, 664767, '/4VlXER3FImHeFuUjBShFamhIp9M.jpg', '2020-04-12', 8.136, 'Mortal Kombat Legends: Scorpion\'s Revenge', 80, 'Released', 'Animation, Action, Fantasy', 'tt9580138', 98.482),
(4079, 718930, '/j8szC8OgrejDQjjMKSVXyaAjw3V.jpg', '2022-08-03', 7.49, 'Bullet Train', 126, 'Released', 'Action, Comedy, Thriller', 'tt12593682', 98.447),
(4080, 602734, '/8rORNBvvxiE9lq0Swbpar8iQNW8.jpg', '2021-05-12', 5.999, 'Spiral: From the Book of Saw', 93, 'Released', 'Horror, Crime, Mystery', 'tt10342730', 98.226),
(4081, 121, '/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg', '2002-12-18', 8.386, 'The Lord of the Rings: The Two Towers', 179, 'Released', 'Adventure, Fantasy, Action', 'tt0167261', 98.226),
(4082, 646389, '/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg', '2023-01-12', 6.985, 'Plane', 107, 'Released', 'Action, Adventure, Thriller', 'tt5884796', 98.201),
(4083, 709631, '/2bHCUqQp8CoSVvwPc6sW6TIBXbN.jpg', '2023-07-19', 6.821, 'Cobweb', 88, 'Released', 'Horror', 'tt9100018', 97.796),
(4084, 696002, '/jAGGV80ZO10YcmUJXK7YSBh1yvK.jpg', '2020-08-07', 5.929, 'Paydirt', 81, 'Released', 'Action, Crime, Thriller', 'tt11176322', 97.686),
(4086, 12, '/ggQ6o8X5984OCh3kZi2UIJQJY5y.jpg', '2003-05-30', 7.825, 'Finding Nemo', 100, 'Released', 'Animation, Family', 'tt0266543', 94.569),
(4087, 955531, '/zfVdFJGGgHDM3RFZdTPhZqy1WEi.jpg', '2023-10-05', 5.842, 'Hermana Muerte', 91, 'Released', 'Drama, Horror', 'tt19175696', 94.308),
(4088, 122, '/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg', '2003-12-01', 8.475, 'The Lord of the Rings: The Return of the King', 201, 'Released', 'Adventure, Fantasy, Action', 'tt0167260', 94.273),
(4089, 345887, '/cQvc9N6JiMVKqol3wcYrGshsIdZ.jpg', '2018-07-19', 6.723, 'The Equalizer 2', 121, 'Released', 'Action, Thriller, Crime', 'tt3766354', 94.159),
(4090, 459151, '/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg', '2021-07-01', 7.433, 'The Boss Baby: Family Business', 107, 'Released', 'Animation, Comedy, Adventure, Family', 'tt6932874', 94.095),
(4091, 1146348, '/ntMOnvlYYnio7Fx3xqBu9B1Sz7f.jpg', '2023-09-26', 7.511, 'Scooby-Doo! and Krypto, Too!', 79, 'Released', 'Animation, Family, Mystery, Fantasy, Comedy', 'tt28508231', 94.064),
(4092, 445651, '/3oobSYJ3Mv0hohKU5GBHarU3ZHG.jpg', '2018-07-25', 7.044, 'The Darkest Minds', 105, 'Released', 'Action, Adventure, Drama', 'tt4073790', 93.708),
(4093, 136799, '/9VlK2j0THZWzhQPq0W3Oc0IIdBB.jpg', '2016-10-13', 6.663, 'Trolls', 92, 'Released', 'Family, Animation, Fantasy, Adventure, Comedy, Music', 'tt1679335', 93.572),
(4094, 772, '/uuitWHpJwxD1wruFl2nZHIb4UGN.jpg', '1992-11-19', 6.708, 'Home Alone 2: Lost in New York', 120, 'Released', 'Comedy, Family, Adventure', 'tt0104431', 93.532),
(4095, 12153, '/aHTUpo45qy9QYIOnVITGGqLoVcA.jpg', '2004-06-23', 6.92, 'White Chicks', 109, 'Released', 'Comedy, Crime', 'tt0381707', 93.294),
(4134, 10634, '/2lReF53F8trkC68piGSfk0JVwWU.jpg', '1995-04-26', 7.152, 'Friday', 97, 'Released', 'Comedy', 'tt0113118', 40.712),
(4135, 4488, '/HzrPn1gEHWixfMOvOehOTlHROo.jpg', '1980-05-09', 6.392, 'Friday the 13th', 95, 'Released', 'Horror', 'tt0080761', 52.125),
(4136, 10285, '/uZNsMWE5o1PaBEUjfRYaeZga08q.jpg', '1993-08-13', 4.546, 'Jason Goes to Hell: The Final Friday', 88, 'Released', 'Horror', 'tt0107254', 33.039),
(4137, 13207, '/88wlJ4teYlck4hJ2bnlxBrAVh0m.jpg', '2009-02-11', 5.751, 'Friday the 13th', 97, 'Released', 'Horror', 'tt0758746', 40.603),
(4138, 10225, '/3qyCfzwY418lbuFEaKX5rKxKlnJ.jpg', '1986-08-01', 6.208, 'Friday the 13th Part VI: Jason Lives', 86, 'Released', 'Horror, Mystery, Thriller', 'tt0091080', 32.72),
(4139, 9725, '/6s3Fl0rGf1G2MZm97rhqZ3yS82d.jpg', '1981-05-01', 6.156, 'Friday the 13th Part 2', 86, 'Released', 'Horror', 'tt0082418', 31.363),
(4140, 10283, '/s5U5JgPpgfTnbGxQF2bOlfqqz5b.jpg', '1989-07-28', 4.948, 'Friday the 13th Part VIII: Jason Takes Manhattan', 100, 'Released', 'Horror', 'tt0097388', 26.101);
INSERT INTO `movies` (`id`, `movie_id`, `poster_path`, `release_date`, `vote_average`, `original_title`, `runtime`, `status`, `genres`, `imdb_id`, `popularity`) VALUES
(4141, 9730, '/5KRBkaF6PdorcFjWiDY4tJy67Jf.jpg', '1984-04-13', 6.106, 'Friday the 13th: The Final Chapter', 91, 'Released', 'Horror', 'tt0087298', 34.811),
(4142, 4226, '/m0jr23r30h8DUrX3kIu7rO3NIQp.jpg', '2000-10-17', 4.75, 'Shriek If You Know What I Did Last Friday the Thirteenth', 86, 'Released', 'Comedy', 'tt0212235', 13.536),
(4143, 9728, '/mYkbmw6umfbvPYBwkcOJsKbTCQ1.jpg', '1982-08-13', 5.87, 'Friday the 13th Part III', 95, 'Released', 'Horror', 'tt0083972', 24.725),
(4144, 10281, '/xBjEL0k9Cz3QFjnpEK6c8b9Z51o.jpg', '1988-05-13', 5.441, 'Friday the 13th Part VII: The New Blood', 88, 'Released', 'Horror', 'tt0095179', 29.003),
(4145, 10330, '/ipKcZ4Up7dp18XpsfYUc9NKZy3g.jpg', '2003-08-05', 6.468, 'Freaky Friday', 97, 'Released', 'Comedy, Family, Fantasy', 'tt0322330', 31.821),
(4151, 196599, '/4mYgqPl1RSIrs7NQeR5uUnhw1Aj.jpg', '1908-01-17', 5, 'Le Tambourin fantastique', 6, 'Released', 'Fantasy', 'tt0000769', 0.6),
(4152, 532602, '/1RTeGF7Adfi2i8xZqtTFD4zYL7.jpg', '1984-08-30', 0, 'Qara Gölün Cəngavərləri', 67, 'Released', 'Drama, Adventure', 'tt3125470', 2.031),
(4153, 283377, '/pKO2EDjhnPzYid0pogENo1cLsHL.jpg', '1963-01-01', 0, 'La cieca di Sorrento', 102, 'Released', 'Western, History, Adventure', 'tt0197363', 1.385),
(4170, 11469, '/pVxwVH461k9u4tUfRewT29DEZ2e.jpg', '2001-11-21', 5.374, 'Black Knight', 95, 'Released', 'Comedy, Fantasy, Adventure', 'tt0265087', 14.217),
(4171, 8009, '/8Z8dptJEypuLoOQro1WugD855YE.jpg', '1986-03-07', 6.89, 'Highlander', 116, 'Released', 'Adventure, Action, Fantasy', 'tt0091203', 31.069),
(4172, 636271, '/luTjGE2O6eGjoqNkQOdzDj64q1W.jpg', '2019-09-29', 6.5, 'Rustic Oracle', 98, 'Released', 'Drama', 'tt8390134', 0.84);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movie_id` (`movie_id`),
  ADD UNIQUE KEY `imdb_id` (`imdb_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT voor een tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4174;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
