


CREATE DATABASE IF NOT EXISTS `delivery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `delivery`;



DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `agreement` varchar(6) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--

--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phone`, `agreement`, `address`) VALUES
(1, 'john.doe@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'John Doe', '1234567890', 'true', '100 Main St'),
(2, 'jane.smith@example.com', 'e99a18c428cb38d5f260853678922e03', 'Jane Smith', '9876543210', 'true', '200 Park Ave'),
(3, 'alice.johnson@example.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Alice Johnson', '5551234567', 'true', '123 Maple St'),
(4, 'bob.wilson@example.com', '25d55ad283aa400af464c76d713c07ad', 'Bob Wilson', '2223334444', 'true', '456 Oak St'),
(5, 'charlie.brown@example.com', '6c569aabbf7775ef8fc570e228c16b98', 'Charlie Brown', '9998887777', 'true', '789 Pine St'),
(6, 'david.miller@example.com', '7c6a180b36896a0a8c02787eeafb0e4c', 'David Miller', '1112223333', 'true', '321 Birch St'),
(7, 'emma.davis@example.com', '098f6bcd4621d373cade4e832627b4f6', 'Emma Davis', '4445556666', 'true', '654 Cedar St'),
(8, 'frank.thomas@example.com', '5d41402abc4b2a76b9719d911017c592', 'Frank Thomas', '6667778888', 'true', '987 Elm St'),
(9, 'grace.white@example.com', '8f14e45fceea167a5a36dedd4bea2543', 'Grace White', '7778889999', 'true', '741 Walnut St'),
(10, 'henry.moore@example.com', 'e10adc3949ba59abbe56e057f20f883e', 'Henry Moore', '3334445555', 'true', '852 Ash St'),
(11, 'ivy.hall@example.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Ivy Hall', '8889990000', 'true', '963 Cherry St'),
(12, 'jack.clark@example.com', 'c81e728d9d4c2f636f067f89cc14862c', 'Jack Clark', '5556667777', 'true', '159 Spruce St');


ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_email` (`email`);




ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

