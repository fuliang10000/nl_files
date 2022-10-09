create table tasks
(
    id                           int unsigned auto_increment comment '任务ID'
        primary key,
    name                         varchar(32)                            not null comment '任务名称',
    winning_bonus_points         int unsigned default 0                 not null comment '中奖奖励积分',
    bonus_points_for_not_winning int unsigned default 0                 not null comment '未中奖奖励积分',
    service_fees                 int unsigned default 5                 not null comment '服务佣金占比，整数+%，该字段保存整数',
    relevance_keeper             varchar(64)                            not null comment '关联管家',
    created_at                   datetime     default CURRENT_TIMESTAMP not null,
    updated_at                   datetime                               null,
    deleted_at                   datetime                               null
)
    collate = utf8mb4_unicode_ci;

INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (1, '赠送积分任务', 0, 0, 15, '[]', '2022-07-20 14:29:18', '2022-07-20 14:29:18', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (2, '抽奖赠送积分任务', 0, 0, 0, '[]', '2022-07-20 14:29:59', '2022-07-25 11:28:32', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (3, '超级管家任务', 0, 0, 10, '[9]', '2022-07-20 14:30:19', '2022-10-04 18:37:08', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (4, '运营中心任务', 0, 0, 5, '[8]', '2022-07-20 14:30:27', '2022-07-25 10:03:10', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (5, '王者任务', 0, 0, 4, '[7]', '2022-07-20 14:30:34', '2022-07-25 10:03:01', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (6, '五星任务', 0, 0, 4, '[6,7]', '2022-07-20 14:30:42', '2022-07-25 10:02:50', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (7, '四星任务', 0, 0, 5, '[5,7]', '2022-07-20 14:30:54', '2022-07-25 10:02:43', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (8, '三星任务', 0, 0, 5, '[4,7]', '2022-07-20 14:31:07', '2022-07-25 10:02:30', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (9, '二星任务', 0, 0, 7, '[3,7]', '2022-07-20 14:31:12', '2022-10-07 08:11:11', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (10, '一星任务', 0, 0, 8, '[2,7]', '2022-07-20 14:31:18', '2022-10-09 09:46:23', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (11, '营销任务', 100, 50, 6, '[2,3,4,5,6,7]', '2022-07-20 14:31:18', '2022-07-29 10:12:08', null);
INSERT INTO tasks (id, name, winning_bonus_points, bonus_points_for_not_winning, service_fees, relevance_keeper, created_at, updated_at, deleted_at) VALUES (12, '售后任务', 150, 100, 12, '[2,3,4,5,6,7]', '2022-07-20 14:31:18', '2022-07-29 10:11:58', null);
