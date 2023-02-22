CREATE TABLE `users` (
  `id` uuid PRIMARY KEY AUTO_INCREMENT,
  `fist_name` string,
  `last_name` string,
  `email` string,
  `create_at` date,
  `update_at` date
);

CREATE TABLE `users_x_orders` (
  `users_id` uuid,
  `orders_id` uuid
);

CREATE TABLE `orders` (
  `id` uuid PRIMARY KEY AUTO_INCREMENT,
  `create_at` date,
  `update_at` date
);

CREATE TABLE `orders_x_games` (
  `orders_id` uuid,
  `games_id` uuid
);

CREATE TABLE `games` (
  `id` uuid PRIMARY KEY AUTO_INCREMENT,
  `title` string,
  `create_at` date,
  `update_at` date
);

CREATE TABLE `games_x_geners` (
  `games_id` uuid,
  `geners_id` uuid
);

CREATE TABLE `geners` (
  `id` uuid PRIMARY KEY AUTO_INCREMENT,
  `name` string,
  `create_at` date,
  `update_at` date
);

ALTER TABLE `users_x_orders` ADD FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`id`) REFERENCES `users_x_orders` (`orders_id`);

ALTER TABLE `orders_x_games` ADD FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

ALTER TABLE `games` ADD FOREIGN KEY (`id`) REFERENCES `orders_x_games` (`games_id`);

ALTER TABLE `games_x_geners` ADD FOREIGN KEY (`games_id`) REFERENCES `games` (`id`);

ALTER TABLE `geners` ADD FOREIGN KEY (`id`) REFERENCES `games_x_geners` (`geners_id`);
