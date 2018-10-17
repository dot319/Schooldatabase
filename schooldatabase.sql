-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 okt 2018 om 15:59
-- Serverversie: 10.1.36-MariaDB
-- PHP-versie: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldatabase`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cijfers`
--

CREATE TABLE `cijfers` (
  `CijferID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `LesID` int(11) DEFAULT NULL,
  `Cijfer_blok_1A` decimal(4,2) DEFAULT NULL,
  `Cijfer_blok_1B` decimal(4,2) DEFAULT NULL,
  `Cijfer_blok_2A` decimal(4,2) DEFAULT NULL,
  `Cijfer_blok_2B` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `cijfers`
--

INSERT INTO `cijfers` (`CijferID`, `StudentID`, `LesID`, `Cijfer_blok_1A`, `Cijfer_blok_1B`, `Cijfer_blok_2A`, `Cijfer_blok_2B`) VALUES
(1, 1, 1, '8.00', '8.50', '6.00', '9.00'),
(2, 1, 2, '6.00', '5.00', '4.00', '8.00'),
(3, 1, 3, '7.00', '7.00', '7.50', '8.00'),
(4, 1, 4, '8.00', '9.00', '4.00', '5.00'),
(5, 1, 5, '8.00', '6.00', '4.00', '9.00'),
(6, 1, 6, '9.00', '8.00', '7.00', '6.00'),
(7, 1, 7, '4.00', '8.00', '7.00', '6.00'),
(8, 1, 8, '8.00', '8.00', '7.00', '5.00'),
(9, 1, 9, '5.00', '8.00', '8.00', '7.50'),
(10, 1, 10, '7.00', '8.00', '7.00', '8.00'),
(11, 1, 11, '9.00', '9.00', '8.00', '9.00'),
(12, 1, 12, '6.00', '7.00', '6.00', '7.00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klaslokalen`
--

CREATE TABLE `klaslokalen` (
  `LokaalID` int(11) NOT NULL,
  `Naam` varchar(255) DEFAULT NULL,
  `Vleugel` varchar(255) DEFAULT NULL,
  `Verdieping` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klaslokalen`
--

INSERT INTO `klaslokalen` (`LokaalID`, `Naam`, `Vleugel`, `Verdieping`) VALUES
(1, 'NB1', 'Noord', '-1'),
(2, 'N01', 'Noord', '0'),
(3, 'N02', 'Noord', '0'),
(4, 'N11', 'Noord', '1'),
(5, 'N12', 'Noord', '1'),
(6, 'WB1', 'West', '-1'),
(7, 'W01', 'West', '0'),
(8, 'W02', 'West', '0'),
(9, 'W11', 'West', '1'),
(10, 'W12', 'West', '1'),
(11, 'ZB1', 'Zuid', '-1'),
(12, 'Z01', 'Zuid', '0'),
(13, 'Z02', 'Zuid', '0'),
(14, 'Z11', 'Zuid', '1'),
(15, 'Z12', 'Zuid', '1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klassen`
--

CREATE TABLE `klassen` (
  `KlasID` int(11) NOT NULL,
  `Klasnaam` varchar(255) DEFAULT NULL,
  `Jaargang` int(11) DEFAULT NULL,
  `Richting` varchar(255) DEFAULT NULL,
  `Lichting` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klassen`
--

INSERT INTO `klassen` (`KlasID`, `Klasnaam`, `Jaargang`, `Richting`, `Lichting`) VALUES
(1, '1VA', 1, 'VWO', 2018),
(2, '1VB', 1, 'VWO', 2018),
(3, '2VA', 2, 'VWO', 2017),
(4, '2VB', 2, 'VWO', 2017),
(5, '3VA', 3, 'VWO', 2016),
(6, '3VB', 3, 'VWO', 2016),
(7, '1HA', 1, 'HAVO', 2018),
(8, '1HB', 1, 'HAVO', 2018),
(9, '2HA', 2, 'HAVO', 2017),
(10, '2HB', 2, 'HAVO', 2017),
(11, '3HA', 3, 'HAVO', 2016),
(12, '3HB', 3, 'HAVO', 2016),
(13, '1VMA', 1, 'VMBO', 2018),
(14, '1VMB', 1, 'VMBO', 2018),
(15, '2VMA', 2, 'VMBO', 2017),
(16, '2VMB', 2, 'VMBO', 2017);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lessen`
--

CREATE TABLE `lessen` (
  `LesID` int(11) NOT NULL,
  `KlasID` int(11) DEFAULT NULL,
  `VakID` int(11) DEFAULT NULL,
  `TeacherID` int(11) DEFAULT NULL,
  `Jaargang` year(4) DEFAULT NULL,
  `LokaalID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lessen`
--

INSERT INTO `lessen` (`LesID`, `KlasID`, `VakID`, `TeacherID`, `Jaargang`, `LokaalID`) VALUES
(1, 7, 8, 8, 2018, 1),
(2, 7, 7, 7, 2018, 14),
(3, 7, 4, 4, 2018, 8),
(4, 7, 3, 3, 2018, 6),
(5, 7, 9, 9, 2018, 3),
(6, 7, 5, 5, 2018, 10),
(7, 7, 1, 1, 2018, 2),
(8, 7, 11, 1, 2018, 7),
(9, 7, 10, 10, 2018, 5),
(10, 7, 12, 2, 2018, 9),
(11, 7, 2, 2, 2018, 4),
(12, 7, 6, 6, 2018, 12),
(13, 8, 1, 1, 2018, 2),
(14, 8, 2, 2, 2018, 4),
(15, 8, 3, 3, 2018, 6),
(16, 8, 4, 4, 2018, 8),
(17, 8, 5, 5, 2018, 10),
(18, 8, 6, 6, 2018, 12),
(19, 8, 7, 7, 2018, 14),
(20, 8, 8, 8, 2018, 1),
(21, 8, 9, 9, 2018, 3),
(22, 8, 10, 10, 2018, 5),
(23, 8, 11, 1, 2018, 7),
(24, 8, 12, 2, 2018, 9);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `Achternaam` varchar(255) DEFAULT NULL,
  `Voornaam` varchar(255) DEFAULT NULL,
  `Geboortedatum` date DEFAULT NULL,
  `Adres` varchar(255) DEFAULT NULL,
  `KlasID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `students`
--

INSERT INTO `students` (`StudentID`, `Achternaam`, `Voornaam`, `Geboortedatum`, `Adres`, `KlasID`) VALUES
(1, 'Weerd, de', 'Ruben', '2005-12-04', 'Admiralengracht 113, Amsterdam', 7),
(2, 'Perez', 'Riemke', '2004-07-01', 'Boeyenstraat 61, Milheeze', 7),
(3, 'Vonck', 'Domingus', '2003-09-20', 'Westeindseweg 68, Breda', 7),
(4, 'Liefting', 'Jing', '2002-03-03', 'Pijnenburghof 62, Uden', 7),
(5, 'Vallen', 'Ger', '2004-05-01', 'Oosterstraat 128, Middelburg', 7),
(6, 'Knobben', 'Rikkert', '2003-02-15', 'Palmolen 65, Purmerend', 8),
(7, 'Opmeer', 'Billie', '2003-10-10', 'Slatdijk 106, Aalten', 8),
(8, 'Moosdijk, van de', 'Lenny', '2004-08-20', 'Bornerstraat 172, Almelo', 8),
(9, 'Damsma', 'Ellie', '2005-01-26', 'Vlinderveen 26, Spijkenisse', 8),
(10, 'Mourik, van', 'Yaron', '2006-06-03', 'Esdoornstraat 199, Leerdam', 8);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teachers`
--

CREATE TABLE `teachers` (
  `TeacherID` int(11) NOT NULL,
  `Achternaam` varchar(255) DEFAULT NULL,
  `Voornaam` varchar(255) DEFAULT NULL,
  `Geboortedatum` date DEFAULT NULL,
  `Adres` varchar(255) DEFAULT NULL,
  `In_dienst_sinds` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `teachers`
--

INSERT INTO `teachers` (`TeacherID`, `Achternaam`, `Voornaam`, `Geboortedatum`, `Adres`, `In_dienst_sinds`) VALUES
(1, 'Murk', 'Meintje', '1951-12-25', 'Ijszee 34, Emmeloord', 1982),
(2, 'West, van der', 'Jessy', '1981-08-23', 'Florestanhof 29, Amersfoort', 2001),
(3, 'Hoffer', 'Charis', '1976-03-12', 'Van Gennepweg 198, Nieuwerkerk', 2012),
(4, 'Lievense', 'Daniella', '1990-10-20', 'Verhagenlaan 200, Beverwijk', 2016),
(5, 'Eggermont', 'Enola', '1979-12-09', 'Waarderberg 176, Odilberg', 2000),
(6, 'Aardenburg', 'Joel', '1960-10-05', 'Boekeldijk 190, Alkmaar', 1986),
(7, 'Wols', 'Bart', '1976-10-15', 'Ark 10, Veldhoven', 2003),
(8, 'Voorde, van de', 'Mateo', '1989-02-03', 'Westerstraat 180, Emmen', 2010),
(9, 'Hoogers', 'Lennart', '1980-05-12', 'Wilhelminalaan 14, Rixtel', 2007),
(10, 'Eden, van', 'Helen', '1967-04-26', 'Veeweg 167, Landgraaf', 1992);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `teachers_vakken`
--

CREATE TABLE `teachers_vakken` (
  `TeacherID` int(11) DEFAULT NULL,
  `VakID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `teachers_vakken`
--

INSERT INTO `teachers_vakken` (`TeacherID`, `VakID`) VALUES
(1, 1),
(1, 11),
(2, 2),
(2, 12),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vakken`
--

CREATE TABLE `vakken` (
  `VakID` int(11) NOT NULL,
  `Vaknaam` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `vakken`
--

INSERT INTO `vakken` (`VakID`, `Vaknaam`) VALUES
(1, 'Geschiedenis'),
(2, 'Nederlands'),
(3, 'Engels'),
(4, 'Duits'),
(5, 'Frans'),
(6, 'Wiskunde'),
(7, 'Biologie'),
(8, 'Aardrijkskunde'),
(9, 'Eocnomie'),
(10, 'Informatica'),
(11, 'Gym'),
(12, 'Muziek');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `cijfers`
--
ALTER TABLE `cijfers`
  ADD PRIMARY KEY (`CijferID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `LesID` (`LesID`);

--
-- Indexen voor tabel `klaslokalen`
--
ALTER TABLE `klaslokalen`
  ADD PRIMARY KEY (`LokaalID`);

--
-- Indexen voor tabel `klassen`
--
ALTER TABLE `klassen`
  ADD PRIMARY KEY (`KlasID`);

--
-- Indexen voor tabel `lessen`
--
ALTER TABLE `lessen`
  ADD PRIMARY KEY (`LesID`),
  ADD KEY `KlasID` (`KlasID`),
  ADD KEY `VakID` (`VakID`),
  ADD KEY `TeacherID` (`TeacherID`),
  ADD KEY `LokaalID` (`LokaalID`);

--
-- Indexen voor tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `KlasID` (`KlasID`);

--
-- Indexen voor tabel `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`TeacherID`);

--
-- Indexen voor tabel `teachers_vakken`
--
ALTER TABLE `teachers_vakken`
  ADD KEY `TeacherID` (`TeacherID`),
  ADD KEY `VakID` (`VakID`);

--
-- Indexen voor tabel `vakken`
--
ALTER TABLE `vakken`
  ADD PRIMARY KEY (`VakID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `cijfers`
--
ALTER TABLE `cijfers`
  MODIFY `CijferID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT voor een tabel `klaslokalen`
--
ALTER TABLE `klaslokalen`
  MODIFY `LokaalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT voor een tabel `klassen`
--
ALTER TABLE `klassen`
  MODIFY `KlasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT voor een tabel `lessen`
--
ALTER TABLE `lessen`
  MODIFY `LesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT voor een tabel `students`
--
ALTER TABLE `students`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `teachers`
--
ALTER TABLE `teachers`
  MODIFY `TeacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `vakken`
--
ALTER TABLE `vakken`
  MODIFY `VakID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `cijfers`
--
ALTER TABLE `cijfers`
  ADD CONSTRAINT `cijfers_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `cijfers_ibfk_2` FOREIGN KEY (`LesID`) REFERENCES `lessen` (`LesID`);

--
-- Beperkingen voor tabel `lessen`
--
ALTER TABLE `lessen`
  ADD CONSTRAINT `lessen_ibfk_1` FOREIGN KEY (`KlasID`) REFERENCES `klassen` (`KlasID`),
  ADD CONSTRAINT `lessen_ibfk_2` FOREIGN KEY (`VakID`) REFERENCES `vakken` (`VakID`),
  ADD CONSTRAINT `lessen_ibfk_3` FOREIGN KEY (`TeacherID`) REFERENCES `teachers` (`TeacherID`),
  ADD CONSTRAINT `lessen_ibfk_4` FOREIGN KEY (`LokaalID`) REFERENCES `klaslokalen` (`LokaalID`);

--
-- Beperkingen voor tabel `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`KlasID`) REFERENCES `klassen` (`KlasID`);

--
-- Beperkingen voor tabel `teachers_vakken`
--
ALTER TABLE `teachers_vakken`
  ADD CONSTRAINT `teachers_vakken_ibfk_1` FOREIGN KEY (`TeacherID`) REFERENCES `teachers` (`TeacherID`),
  ADD CONSTRAINT `teachers_vakken_ibfk_2` FOREIGN KEY (`VakID`) REFERENCES `vakken` (`VakID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

C:\Users\Dorieke>cd /

C:\> cd xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 2893
Server version: 10.1.36-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES
    -> ;
+--------------------+
| Database           |
+--------------------+
| gorillaschool      |
| information_schema |
| microblog          |
| mysql              |
| performance_schema |
| phpmyadmin         |
| schooldatabase     |
| test               |
+--------------------+
8 rows in set (0.00 sec)

MariaDB [(none)]> USE schooldatabase;
Database changed

MariaDB [schooldatabase]> SELECT In_dienst_sinds, Voornaam, Achternaam
    -> FROM Teachers
    -> ORDER BY In_dienst_sinds
    -> LIMIT 3;
+-----------------+----------+------------+
| In_dienst_sinds | Voornaam | Achternaam |
+-----------------+----------+------------+
|            1982 | Meintje  | Murk       |
|            1986 | Joel     | Aardenburg |
|            1992 | Helen    | Eden, van  |
+-----------------+----------+------------+
3 rows in set (0.00 sec)

MariaDB [schooldatabase]> SELECT Voornaam, Achternaam, Cijfer_blok_1a
    -> FROM students
    -> JOIN cijfers
    -> ON students.studentID = cijfers.StudentID
    -> WHERE students.studentID = 1;
+----------+------------+----------------+
| Voornaam | Achternaam | Cijfer_blok_1a |
+----------+------------+----------------+
| Ruben    | Weerd, de  |           8.00 |
| Ruben    | Weerd, de  |           6.00 |
| Ruben    | Weerd, de  |           7.00 |
| Ruben    | Weerd, de  |           8.00 |
| Ruben    | Weerd, de  |           8.00 |
| Ruben    | Weerd, de  |           9.00 |
| Ruben    | Weerd, de  |           4.00 |
| Ruben    | Weerd, de  |           8.00 |
| Ruben    | Weerd, de  |           5.00 |
| Ruben    | Weerd, de  |           7.00 |
| Ruben    | Weerd, de  |           9.00 |
| Ruben    | Weerd, de  |           6.00 |
+----------+------------+----------------+
12 rows in set (0.00 sec)