create table recharge_summaries
(
    id                             int unsigned auto_increment
        primary key,
    store_id                       int unsigned                              not null comment '所属店铺（变更记录本身关联店铺或用户的分销店铺）',
    admin_recharge_amount_in_cents bigint          default 0                 not null comment '后台充值金额',
    user_recharge_amount_in_cents  bigint unsigned default 0                 not null comment '用户充值金额',
    summary_date                   datetime                                  not null comment '统计区间（按天统计，值为当天的0时0分0秒）',
    created_at                     datetime        default CURRENT_TIMESTAMP not null,
    updated_at                     datetime                                  null
)
    collate = utf8mb4_unicode_ci;

create index recharge_summaries_store_id_index
    on recharge_summaries (store_id);

create index recharge_summaries_summary_date_index
    on recharge_summaries (summary_date);

INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (1, 1, 21300, 0, '2022-08-22 00:00:00', '2022-08-22 14:03:51', '2022-08-22 14:05:52');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (2, 1, 34100, 0, '2022-08-24 00:00:00', '2022-08-24 11:43:27', '2022-08-24 14:53:54');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (3, 1, 12800, 0, '2022-08-27 00:00:00', '2022-08-27 10:04:12', '2022-08-27 10:05:08');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (4, 1, 21300, 0, '2022-08-28 00:00:00', '2022-08-28 14:57:03', '2022-08-28 14:58:09');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (5, 1, 34100, 0, '2022-08-29 00:00:00', '2022-08-29 16:34:44', '2022-08-29 16:36:48');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (6, 1, 34100, 0, '2022-08-30 00:00:00', '2022-08-30 16:47:14', '2022-08-30 16:49:23');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (7, 0, 1000000, 0, '2022-09-13 00:00:00', '2022-09-13 15:47:57', '2022-09-13 15:52:08');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (8, 1, 110000, 0, '2022-09-16 00:00:00', '2022-09-16 19:15:53', '2022-09-16 19:15:53');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (9, 1, -46900, 0, '2022-09-23 00:00:00', '2022-09-23 18:57:55', '2022-09-23 19:07:20');
INSERT INTO recharge_summaries (id, store_id, admin_recharge_amount_in_cents, user_recharge_amount_in_cents, summary_date, created_at, updated_at) VALUES (10, 1, 1600500, 0, '2022-10-03 00:00:00', '2022-10-03 10:57:40', '2022-10-03 10:57:40');
