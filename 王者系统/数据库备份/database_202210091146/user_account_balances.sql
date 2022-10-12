create table user_account_balances
(
    id                         int unsigned auto_increment
        primary key,
    user_id                    int unsigned                       not null comment '用户ID',
    total_balance_in_cents     int unsigned                       not null comment '累计账户金额',
    withdrawn_balance_in_cents int unsigned                       not null comment '已使用账户金额',
    remaining_balance_in_cents int unsigned                       not null comment '剩余账户金额',
    created_at                 datetime default CURRENT_TIMESTAMP not null,
    updated_at                 datetime                           null,
    deleted_at                 datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index user_account_balances_user_id_index
    on user_account_balances (user_id);

INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (2, 130, 0, 0, 0, '2022-08-22 14:03:51', '2022-08-22 14:03:51', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (3, 87, 0, 0, 0, '2022-08-22 14:05:52', '2022-08-22 14:05:52', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (4, 251, 0, 0, 0, '2022-08-24 11:43:27', '2022-08-24 11:43:27', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (5, 84, 0, 0, 0, '2022-08-24 11:44:53', '2022-08-24 11:44:53', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (6, 448, 0, 0, 0, '2022-08-24 14:53:03', '2022-08-24 14:53:03', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (7, 428, 0, 0, 0, '2022-08-24 14:53:54', '2022-08-24 14:53:54', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (8, 6, 0, 0, 0, '2022-08-26 20:36:37', '2022-08-26 20:36:37', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (9, 38, 0, 0, 0, '2022-08-27 10:05:08', '2022-08-27 10:05:08', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (10, 192, 0, 0, 0, '2022-08-28 14:57:03', '2022-08-28 14:57:03', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (11, 15, 0, 0, 0, '2022-08-28 14:58:09', '2022-08-28 14:58:09', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (12, 722, 0, 0, 0, '2022-08-29 16:34:44', '2022-08-29 16:34:44', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (13, 712, 0, 0, 0, '2022-08-29 16:36:16', '2022-08-29 16:36:16', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (14, 447, 0, 0, 0, '2022-08-30 16:47:14', '2022-08-30 16:47:14', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (15, 460, 0, 0, 0, '2022-08-30 16:48:49', '2022-08-30 16:48:49', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (18, 1164, 250000, 0, 110200, '2022-09-13 15:47:57', '2022-09-13 17:42:14', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (19, 1163, 250000, 0, 110200, '2022-09-13 15:49:35', '2022-09-13 16:31:55', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (20, 1221, 250000, 0, 250000, '2022-09-13 15:51:25', '2022-09-13 15:51:25', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (21, 1162, 250000, 0, 110200, '2022-09-13 15:52:08', '2022-09-13 16:22:33', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (22, 1273, 110000, 0, 0, '2022-09-16 19:15:53', '2022-09-16 19:18:57', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (23, 9, 0, 0, 0, '2022-09-23 18:57:26', null, null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (24, 66, 0, 0, 0, '2022-09-23 19:07:20', '2022-09-23 19:07:20', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (25, 1085, 0, 0, 0, '2022-09-24 12:58:22', '2022-09-24 12:58:22', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (26, 7, 0, 0, 0, '2022-09-26 07:14:29', '2022-09-26 07:14:29', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (27, 737, 0, 0, 0, '2022-09-26 11:01:15', '2022-09-26 11:01:15', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (28, 8, 0, 0, 0, '2022-09-26 13:17:57', '2022-09-26 13:17:57', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (29, 1121, 0, 0, 0, '2022-09-26 14:11:17', '2022-09-26 14:11:17', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (30, 1386, 0, 0, 0, '2022-09-26 16:31:03', '2022-09-26 16:31:03', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (31, 567, 0, 0, 0, '2022-09-26 23:48:59', '2022-09-26 23:48:59', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (32, 1308, 0, 0, 0, '2022-09-28 10:56:31', '2022-09-28 10:56:31', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (33, 1225, 0, 0, 0, '2022-09-28 20:35:21', '2022-09-28 20:35:21', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (34, 240, 0, 0, 0, '2022-09-29 08:58:24', '2022-09-29 08:58:24', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (35, 231, 0, 0, 0, '2022-09-29 15:59:13', '2022-09-29 15:59:13', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (36, 443, 0, 0, 0, '2022-09-29 22:31:30', '2022-09-29 22:31:30', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (37, 366, 0, 0, 0, '2022-09-30 05:43:20', '2022-09-30 05:43:20', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (38, 11, 0, 0, 0, '2022-09-30 10:14:21', '2022-09-30 10:14:21', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (39, 573, 0, 0, 0, '2022-09-30 10:24:17', '2022-09-30 10:24:17', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (40, 1400, 0, 0, 0, '2022-09-30 14:18:23', '2022-09-30 14:18:23', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (41, 1055, 0, 0, 0, '2022-09-30 16:52:06', '2022-09-30 16:52:06', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (42, 685, 0, 0, 0, '2022-09-30 22:00:09', '2022-09-30 22:00:09', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (43, 153, 0, 0, 0, '2022-10-01 20:46:04', '2022-10-01 20:46:04', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (44, 37, 0, 0, 0, '2022-10-02 09:31:38', '2022-10-02 09:31:38', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (45, 1094, 0, 0, 0, '2022-10-02 17:06:44', '2022-10-02 17:06:44', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (46, 1075, 0, 0, 0, '2022-10-02 17:19:36', '2022-10-02 17:19:36', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (47, 568, 0, 0, 0, '2022-10-02 17:30:52', '2022-10-02 17:30:52', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (48, 620, 0, 0, 0, '2022-10-03 06:03:38', '2022-10-03 06:03:38', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (49, 1185, 0, 0, 0, '2022-10-03 15:08:47', '2022-10-03 15:08:47', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (50, 1493, 0, 0, 0, '2022-10-03 15:29:08', '2022-10-03 15:29:08', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (51, 1122, 0, 0, 0, '2022-10-03 15:33:08', '2022-10-03 15:33:08', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (52, 1402, 0, 0, 0, '2022-10-03 17:54:12', '2022-10-03 17:54:12', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (53, 525, 0, 0, 0, '2022-10-05 08:23:26', '2022-10-05 08:23:26', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (54, 950, 0, 0, 0, '2022-10-05 10:40:27', '2022-10-05 10:40:27', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (55, 1280, 0, 0, 0, '2022-10-05 19:53:31', '2022-10-05 19:53:31', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (56, 12, 0, 0, 0, '2022-10-07 08:53:33', '2022-10-07 08:53:33', null);
INSERT INTO user_account_balances (id, user_id, total_balance_in_cents, withdrawn_balance_in_cents, remaining_balance_in_cents, created_at, updated_at, deleted_at) VALUES (57, 577, 0, 0, 0, '2022-10-07 21:55:03', '2022-10-07 21:55:03', null);
