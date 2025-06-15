-- Estructura de la tabla `orders`
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Estructura de la tabla `users`
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
);

-- Datos de ejemplo para `users`
INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Juan Perez', 'juan@example.com', '123456', '2024-01-01 10:00:00'),
(2, 'Maria Lopez', 'maria@example.com', 'abcdef', '2024-02-01 11:00:00');

-- Datos de ejemplo para `orders`
INSERT INTO `orders` (`id`, `user_id`, `order_date`, `status`, `total`) VALUES
(1, 1, '2024-06-01 12:00:00', 'completed', 150.00),
(2, 2, '2024-06-05 15:30:00', 'pending', 200.00);
