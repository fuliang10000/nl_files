create table raffle_activities
(
    id                    int unsigned auto_increment
        primary key,
    name                  varchar(255)                           not null comment '活动名称',
    activity_pic_id       int unsigned default 0                 not null comment '活动图id',
    activity_start_time   datetime                               not null comment '活动开始时间',
    activity_end_time     datetime                               not null comment '活动结束时间',
    part_people_number    int unsigned                           not null comment '参与人数',
    win_lottery_number    int unsigned                           not null comment '中奖人数',
    cost_integral_points  int unsigned default 0                 not null comment '消耗复购积分',
    tickets               int unsigned default 0                 not null comment '消耗中奖券',
    no_win_lottery_points int unsigned default 0                 not null comment '未中奖奖励积分',
    store_id              int unsigned default 0                 not null comment '所属店铺id',
    robots_number         int unsigned default 0                 not null comment '机器人数量',
    status                int unsigned default 0                 not null comment '活动状态(0：未开始,1:已开始,2:已结束',
    created_at            datetime     default CURRENT_TIMESTAMP not null,
    updated_at            datetime                               null
)
    collate = utf8mb4_unicode_ci;

INSERT INTO raffle_activities (id, name, activity_pic_id, activity_start_time, activity_end_time, part_people_number, win_lottery_number, cost_integral_points, tickets, no_win_lottery_points, store_id, robots_number, status, created_at, updated_at) VALUES (1, '王者系统全民组团', 269, '2022-08-14 18:00:00', '2022-08-21 23:00:00', 10, 3, 5, 1, 100, 1, 5, 2, '2022-07-27 18:27:18', '2022-08-21 23:00:02');
INSERT INTO raffle_activities (id, name, activity_pic_id, activity_start_time, activity_end_time, part_people_number, win_lottery_number, cost_integral_points, tickets, no_win_lottery_points, store_id, robots_number, status, created_at, updated_at) VALUES (2, '王者系统全民组团', 394, '2022-08-21 23:00:00', '2022-09-01 03:00:00', 10, 3, 5, 1, 100, 1, 5, 2, '2022-08-21 23:25:20', '2022-09-01 14:04:46');
INSERT INTO raffle_activities (id, name, activity_pic_id, activity_start_time, activity_end_time, part_people_number, win_lottery_number, cost_integral_points, tickets, no_win_lottery_points, store_id, robots_number, status, created_at, updated_at) VALUES (3, '王者系统全民组团', 1148, '2022-09-10 00:00:00', '2022-10-18 03:00:00', 10, 3, 5, 1, 100, 1, 5, 1, '2022-09-01 15:15:30', '2022-09-27 13:51:54');
