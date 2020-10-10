
CREATE TABLE `chuni_user_team`
(
    `id`                    bigint(20) NOT NULL,
    `team_name`             varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `user_id`               bigint(20)                              DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

ALTER TABLE `chuni_user_team`
    ADD PRIMARY KEY (`id`),
    ADD KEY `FKiy45laxv2h8sdbjr4i59nwa41` (`user_id`);

ALTER TABLE `chuni_user_team`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `chuni_user_team`
    ADD CONSTRAINT `FKiy45laxv2h8sdbjr4i59nwa41` FOREIGN KEY (`user_id`) REFERENCES `chuni_user_data` (`id`);
