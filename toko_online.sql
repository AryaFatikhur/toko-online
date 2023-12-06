-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2023 pada 09.50
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Baju Pria'),
(2, 'Baju Wanita'),
(3, 'Hoodie'),
(4, 'Jam Tangan'),
(5, 'Tas'),
(9, 'Sepatu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(7, 1, 'baju 1', 15000, 'mRgBn6Cs4jImKN5pErNE.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nPanjang : .....<br>\r\nLebar : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(8, 2, 'baju 2', 50000, 'OAy5eIAXiI594egZary0.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nPanjang : .....<br>\r\nLebar : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(9, 1, 'baju 3 ', 20000, 'qXGf5LGOtx1sh8TSNsO2.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nPanjang : .....<br>\r\nLebar : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(10, 2, 'baju 4', 28000, 'ybytN7mwGoRrXC7dTQ3z.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nPanjang : .....<br>\r\nLebar : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(11, 1, 'baju 5', 50000, 'Qh2RGYorvQYAwXEWeRsL.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nPanjang : .....<br>\r\nLebar : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(12, 3, 'hoodie 1', 80000, 'PcDcUt29qsxxbyv8D1vb.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nPanjang : .....<br>\r\nLebar : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(13, 3, 'hoodie 2', 80000, 'VFzdZYKpaFK1VGAjRr7c.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nPanjang : .....<br>\r\nLebar : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(14, 4, 'jam 1', 1500000, 'nkfOHGvttEDWXGfdTNWF.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nModel : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(15, 4, 'jam 2', 1500000, 'PklBt6JKuI2q0mx1XWQs.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nModel : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(16, 4, 'jam 3', 1500000, 'aGZPrMqVSy2eQSnVZ6cL.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nModel : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(17, 4, 'jam 4', 1500000, 'g3AOsRAefSpBpSokn7Ji.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nModel : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(18, 5, 'tas 1', 500000, 'nj3Dpa7kHQOQNdzEOhcU.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nModel : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(19, 5, 'tas 2', 550000, 'r0ifMQiTCfaPZTpHjLf0.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nModel : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(20, 5, 'tas 3', 200000, 'niaJ6dkz3oDJopg28d49.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nModel : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(21, 5, 'tas 4', 250000, 'wy7VK8zxA2a8OucUKSPL.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nModel : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(22, 9, 'sepatu 1', 300000, 'KDjb2EncnE5zzkR9aIy7.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nUkuran : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(23, 9, 'sepatu 2', 350000, 'pXQxY6cBNqXuGT4YEle4.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nUkuran : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(24, 9, 'sepatu 3', 350000, 'SJ5YOeLK12I3fmSKXQN0.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nUkuran : .....<br>\r\nWarna : .....<br>', 'tersedia'),
(25, 9, 'sepatu 4', 300000, '4EkeqyzMZkCm4dGZcdXH.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis laborum consequatur dolorem vel, ipsa quibusdam, excepturi ad suscipit corporis assumenda asperiores quas explicabo itaque. Doloremque provident, odio velit cum impedit quasi ex asperiores ea adipisci eligendi, voluptas atque. Adipisci, nam animi asperiores at numquam quae, est inventore quis beatae saepe iusto autem! Tempore aut ipsum reprehenderit dolore dolores adipisci laudantium suscipit similique, optio corrupti error est eaque nam modi velit soluta et inventore praesentium ad obcaecati, placeat earum, veritatis a.<br>\r\nUkuran : .....<br>\r\nWarna : .....<br>', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$8O4ni7CQPELmsNQ0FLEJ8.Fe/lACmOkvt74KNoUrDvHQdsfNB07Gi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
