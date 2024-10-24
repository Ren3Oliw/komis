-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 24, 2024 at 01:38 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samochody`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenia`
--

CREATE TABLE `ogloszenia` (
  `id` int(11) NOT NULL,
  `tytul` text NOT NULL,
  `marka` text NOT NULL,
  `model` text NOT NULL,
  `opis` text NOT NULL,
  `cena` double NOT NULL,
  `negocjacje` tinyint(1) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `zdjecie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ogloszenia`
--

INSERT INTO `ogloszenia` (`id`, `tytul`, `marka`, `model`, `opis`, `cena`, `negocjacje`, `id_uzytkownika`, `zdjecie`) VALUES
(36, 'Opel Astra 1.4 Turbo Dynamic', 'Opel ', 'Astra ', 'Sprzedam Opla Astrę K 1.4 150 KM benzyna, najlepsza jednostka w super stanie technicznym jak i wizualnym. Rok produkcji 2016.\r\nWyposażenie auta:\r\n -kamera cofania\r\n - PDC\r\n - klimatyzacja\r\n - automatyczna klimatronic\r\n - wspomaganie kierownicy \r\n - nawigacja\r\n - ABS \r\n - radio\r\n - elektryczne szyby\r\n - elektryczne lusterka\r\n - poduszki powietrzne\r\n - dwa komplety alufelg', 45900, 0, 1, '671a1b10afac8.jpg/671a1b10b02c5.jpg/671a1b10b0b23.jpg/'),
(38, 'Toyota Yaris 1.33 Luna', 'Toyota ', 'Yaris', 'Auto kupione w kraju u dealera, bezwypadkowy - nigdy nie uczestniczył w kolizji drogowe, pierwszy właściciel i jedyny użytkownik od nowości. Bardzo uczciwie i rzetelnie serwisowany co rok. Bardzo dynamiczna i oszczędna jednostka napędowa 1.33 o mocy prawie 100 KM. Bardzo niski przebieg. Sprzedaż podyktowana peselem tylko i wyłącznie. Wszystko sprawne i działające jak pierwszego dnia jak wyjechał z salonu. Czysty, zadbany.', 36700, 0, 21, '671a2bc5ea78f.jpg/671a2bc5eaf9c.jpg/671a2bc5eb8f2.jpg/671a2bc5ec045.jpg/'),
(41, 'a', 'a', 'a', 'a', 2, 0, 21, '671a2cc962c13.jpg/671a2cc963279.jpg/');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(6) UNSIGNED NOT NULL,
  `login` varchar(30) NOT NULL,
  `haslo` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `haslo`, `admin`) VALUES
(1, 'admin', '751cb3f4aa17c36186f4856c8982bf27', 1),
(21, 'user', '2481656a94ba52fd208ea3b8f7e1d645', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ogloszenia`
--
ALTER TABLE `ogloszenia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ogloszenia`
--
ALTER TABLE `ogloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
