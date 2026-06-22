-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01.05.2023 klo 23:48
-- Palvelimen versio: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `f1v3`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `championships`
--

CREATE TABLE `championships` (
  `championship_id` int(11) NOT NULL,
  `Driver_Driver_ID` int(5) NOT NULL,
  `year` int(11) NOT NULL,
  `driver_points` int(11) NOT NULL,
  `team_point` int(11) NOT NULL,
  `Teams_team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `championships`
--

INSERT INTO `championships` (`championship_id`, `Driver_Driver_ID`, `year`, `driver_points`, `team_point`, `Teams_team_id`) VALUES
(1, 1, 2022, 454, 759, 1),
(2, 5, 2021, 396, 614, 3),
(3, 5, 2020, 347, 573, 3),
(4, 5, 2019, 413, 739, 3),
(5, 5, 2018, 408, 655, 3),
(6, 5, 2017, 363, 668, 3),
(7, 21, 2016, 385, 765, 3),
(8, 5, 2015, 381, 703, 3),
(9, 5, 2014, 384, 701, 3),
(10, 22, 2013, 397, 596, 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `circuits`
--

CREATE TABLE `circuits` (
  `circuit_id` int(11) NOT NULL,
  `circuit_name` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `lenght` float(11,0) NOT NULL,
  `turns` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `circuits`
--

INSERT INTO `circuits` (`circuit_id`, `circuit_name`, `country`, `lenght`, `turns`) VALUES
(1, 'Bahrain International Circuit ', 'Bahrain ', 5, 23),
(2, 'Jeddah Corniche Circuit ', 'Saudi Arabia ', 6, 27),
(3, 'Melbourne Grand Prix Circuit ', 'Australia ', 5, 14),
(4, 'Baku City Circuit ', 'Azerbaijan', 6, 20),
(5, 'Miami International Autodrome ', 'United States ', 5, 19),
(6, 'Autodromo Enzo e Dino Ferrar', 'Italy', 5, 22),
(7, 'Circuit de Monaco ', 'Monaco', 3, 12),
(8, 'Circuit de Barcelona-Catalunya ', 'Spain', 5, 16),
(9, 'Circuit Gilles Villeneuve', 'Canada', 4, 14),
(10, 'Red Bull Ring', 'Austria', 4, 10);

-- --------------------------------------------------------

--
-- Rakenne taululle `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `driver_surname` varchar(24) NOT NULL,
  `driver_number` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `points` int(11) DEFAULT NULL,
  `Teams_team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `drivers`
--

INSERT INTO `drivers` (`driver_id`, `driver_name`, `driver_surname`, `driver_number`, `date_of_birth`, `nationality`, `points`, `Teams_team_id`) VALUES
(1, 'Max', 'Verstappen ', 1, '1997-09-30', 'Dutch', 25, 1),
(2, 'Sergio', 'Perez ', 11, '1990-01-26', 'Mexican ', 18, 1),
(3, 'Carlos', 'Sainz ', 55, '1994-09-01', 'Spanish', 12, 2),
(4, 'Charles', 'Leclerc ', 16, '1997-10-16', 'Monacan', 0, 2),
(5, 'Lewis', 'Hamilton ', 44, '1985-01-15', 'British', 10, 3),
(6, 'George', 'Russell ', 63, '1998-02-15', 'British', 6, 3),
(7, 'Alex', 'Albon', 23, '1996-03-23', 'Thai', 1, 4),
(8, 'Logan', 'Sargeant ', 2, '2000-12-31', 'American', 0, 4),
(9, 'Fernando', 'Alonso ', 14, '1981-07-29', 'Spanish', 15, 5),
(10, 'Lance', 'Stroll ', 18, '1998-11-29', 'Canadian', 8, 5),
(11, 'Lando', 'Norris ', 4, '2002-11-13', 'British', 0, 6),
(12, 'Oscar', 'Piastri', 81, '2001-04-06', 'Australian', 0, 6),
(13, 'Nico ', 'Hulkenberg', 27, '1987-08-19', 'German', 0, 7),
(14, 'Kevin ', 'Magnussen', 20, '1992-10-05', 'Danish', 0, 7),
(15, 'Valtteri', 'Bottas ', 77, '1989-08-28', 'Finnish', 4, 8),
(16, 'Zhou ', 'Guanyu ', 24, '1999-05-30', 'Chinese', 0, 8),
(17, 'Nyck ', 'de Vries', 21, '1995-02-06', 'Dutch', 0, 9),
(18, 'Yuki ', 'Tsunonda ', 22, '2000-05-11', 'Japanese', 0, 9),
(19, 'Esteban', 'Ocon', 31, '1996-09-17', 'French', 0, 10),
(20, 'Pierre', 'Gasly ', 10, '1996-02-07', 'French', 2, 10),
(21, 'Nico', 'Rosberg ', 6, '1985-06-27', 'German', 0, 3),
(22, 'Sebastian', 'Vettel', 5, '1987-07-03', 'German', 0, 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `drivers_races`
--

CREATE TABLE `drivers_races` (
  `Drivers_driver_id` int(11) NOT NULL,
  `Races_race_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `drivers_races`
--

INSERT INTO `drivers_races` (`Drivers_driver_id`, `Races_race_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 8),
(3, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 6),
(6, 8),
(6, 9),
(6, 10),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(8, 1),
(8, 2),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 8),
(9, 9),
(9, 10),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 9),
(12, 10),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 9),
(13, 10),
(14, 1),
(14, 2),
(14, 3),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(14, 9),
(14, 10),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 6),
(16, 7),
(16, 8),
(16, 9),
(16, 10),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(17, 8),
(17, 10),
(18, 1),
(18, 3),
(18, 6),
(18, 7),
(18, 8),
(18, 10),
(19, 1),
(19, 3),
(19, 4),
(19, 5),
(19, 7),
(19, 8),
(19, 9),
(19, 10),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 9),
(20, 10),
(21, 1),
(21, 2),
(21, 4),
(21, 5),
(21, 6),
(21, 7),
(21, 8),
(21, 9),
(21, 10),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 10);

-- --------------------------------------------------------

--
-- Rakenne taululle `races`
--

CREATE TABLE `races` (
  `race_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Circuits_circuit_id` int(11) NOT NULL,
  `Results_result_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `races`
--

INSERT INTO `races` (`race_id`, `date`, `Circuits_circuit_id`, `Results_result_id`) VALUES
(1, '2022-03-20', 1, 1),
(2, '2022-03-27', 2, 2),
(3, '2022-04-10', 3, 3),
(4, '2022-05-12', 4, 4),
(5, '2022-09-23', 5, 5),
(6, '2022-04-24', 6, 6),
(7, '2022-05-29', 7, 7),
(8, '2022-05-22', 8, 8),
(9, '2022-06-19', 9, 9),
(10, '2022-07-08', 10, 10);

-- --------------------------------------------------------

--
-- Rakenne taululle `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `grid_position` int(11) NOT NULL,
  `final_position` int(11) NOT NULL,
  `fastest_lap` varchar(24) NOT NULL,
  `Drivers_driver_id` int(11) NOT NULL,
  `Teams_team_id` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `results`
--

INSERT INTO `results` (`result_id`, `race_id`, `grid_position`, `final_position`, `fastest_lap`, `Drivers_driver_id`, `Teams_team_id`) VALUES
(1, 1, 1, 1, '1:37:33', 4, 2),
(2, 2, 4, 1, '1:32.188', 1, 1),
(3, 3, 1, 1, '1:20.260', 4, 2),
(4, 4, 3, 1, '1:46.046', 1, 1),
(5, 5, 3, 1, '1:31.361', 1, 1),
(6, 6, 1, 1, '1:18.446', 1, 1),
(7, 7, 3, 1, '1:14.693', 2, 1),
(8, 8, 2, 1, '1:24.108', 1, 1),
(9, 9, 1, 1, '1:15.749', 1, 1),
(10, 10, 2, 1, '1:07.275', 4, 2);

-- --------------------------------------------------------

--
-- Rakenne taululle `sponsors`
--

CREATE TABLE `sponsors` (
  `sponsor_id` int(11) NOT NULL,
  `sponsor_name` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `Teams_team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `sponsors`
--

INSERT INTO `sponsors` (`sponsor_id`, `sponsor_name`, `country`, `team_id`, `Teams_team_id`) VALUES
(1, 'ORACLE ', 'United States ', 1, 1),
(2, 'MOBIL 1 ', 'United States ', 1, 1),
(3, 'SHELL ', 'United States ', 2, 2),
(4, 'SANTANDER', 'spain', 2, 2),
(5, 'INEOS', 'Belgium', 3, 3),
(6, 'NUVEI', 'Canada', 3, 3),
(7, 'GULF OIL ', 'United States ', 4, 4),
(8, 'PURESTREAM', 'United States ', 4, 4),
(9, 'COGNIZANT', 'United States ', 5, 5),
(10, 'ARAMCO', 'Saudi Arabia ', 5, 5),
(11, 'TEZOS', 'Switzerland', 6, 6),
(12, 'COCACOLA', 'United States ', 6, 6),
(13, 'MONEYGRAM ', 'United States ', 7, 7),
(14, 'ALPINESTARS', 'Italy', 7, 7),
(15, 'STAKE', 'Curacao', 8, 8),
(16, 'KICK', 'United Kingdom ', 8, 8),
(17, 'FLEXBOX', 'Sweden', 9, 9),
(18, 'ZIBAFOODS', 'Italy', 9, 9),
(20, 'KAPPA', 'Italy', 10, 10);

-- --------------------------------------------------------

--
-- Rakenne taululle `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `base` varchar(50) NOT NULL,
  `year_founded` int(11) DEFAULT NULL,
  `manager_name` varchar(24) NOT NULL,
  `manager_surname` varchar(24) NOT NULL,
  `championships_won` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vedos taulusta `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `base`, `year_founded`, `manager_name`, `manager_surname`, `championships_won`) VALUES
(1, 'Oracle RedBull Racing ', 'United Kingdom ', 1997, 'Christian', 'Horner ', 5),
(2, 'Scuderia Ferrari ', 'Italy', 1950, 'Frederic', 'Vasseur ', 16),
(3, 'Mercedes-AMG PETRONAS F1 Team ', 'United Kingdom ', 1970, 'Toto', 'Wolff', 8),
(4, 'Williams Racing ', 'United Kingdom ', 1978, 'James', 'Vowles ', 9),
(5, 'Aston Martin Aramco Cognizant F1 Team ', 'United Kingdom ', 2018, 'Mike ', 'Krack ', 0),
(6, 'McLaren F1 Team ', 'United States ', 1966, 'Andrea ', 'Stella', 8),
(7, 'MoneyGram Haas F1 Team ', 'United States ', 2016, 'Guenther ', 'Steiner ', 0),
(8, 'Alfa Romeo F1 Team Stake ', 'Switzerland ', 1993, 'Alessandro ', 'Alunni Bravi', 0),
(9, 'Scuderia AlphaTauri ', 'Italy ', 1985, 'Franz', 'Tost', 0),
(10, 'BWT Alpine F1 Team ', 'United Kingdom ', 1986, 'Otmar', 'Szafnauer ', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `championships`
--
ALTER TABLE `championships`
  ADD PRIMARY KEY (`championship_id`),
  ADD KEY `Championships_Teams` (`Teams_team_id`),
  ADD KEY `Driver_Driver_ID` (`Driver_Driver_ID`);

--
-- Indexes for table `circuits`
--
ALTER TABLE `circuits`
  ADD PRIMARY KEY (`circuit_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`),
  ADD KEY `Drivers_Teams` (`Teams_team_id`);

--
-- Indexes for table `drivers_races`
--
ALTER TABLE `drivers_races`
  ADD PRIMARY KEY (`Drivers_driver_id`,`Races_race_id`),
  ADD KEY `Drivers_Races_Races` (`Races_race_id`);

--
-- Indexes for table `races`
--
ALTER TABLE `races`
  ADD PRIMARY KEY (`race_id`),
  ADD KEY `Races_Circuits` (`Circuits_circuit_id`),
  ADD KEY `Races_Results` (`Results_result_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `Team_teams_id` (`Teams_team_id`),
  ADD KEY `Drivers_driver_id` (`Drivers_driver_id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`sponsor_id`),
  ADD KEY `Sponsors_Teams` (`Teams_team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `championships`
--
ALTER TABLE `championships`
  ADD CONSTRAINT `Championships_Teams` FOREIGN KEY (`Teams_team_id`) REFERENCES `teams` (`team_id`);

--
-- Rajoitteet taululle `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `Drivers_Teams` FOREIGN KEY (`Teams_team_id`) REFERENCES `teams` (`team_id`);

--
-- Rajoitteet taululle `drivers_races`
--
ALTER TABLE `drivers_races`
  ADD CONSTRAINT `Drivers_Races_Drivers` FOREIGN KEY (`Drivers_driver_id`) REFERENCES `drivers` (`driver_id`),
  ADD CONSTRAINT `Drivers_Races_Races` FOREIGN KEY (`Races_race_id`) REFERENCES `races` (`race_id`);

--
-- Rajoitteet taululle `races`
--
ALTER TABLE `races`
  ADD CONSTRAINT `Races_Circuits` FOREIGN KEY (`Circuits_circuit_id`) REFERENCES `circuits` (`circuit_id`),
  ADD CONSTRAINT `Races_Results` FOREIGN KEY (`Results_result_id`) REFERENCES `results` (`result_id`);

--
-- Rajoitteet taululle `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `Results_Drivers` FOREIGN KEY (`Drivers_driver_id`) REFERENCES `drivers` (`driver_id`);

--
-- Rajoitteet taululle `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `Sponsors_Teams` FOREIGN KEY (`Teams_team_id`) REFERENCES `teams` (`team_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
