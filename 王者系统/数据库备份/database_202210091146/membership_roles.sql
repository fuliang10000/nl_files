create table membership_roles
(
    id                              int unsigned auto_increment
        primary key,
    type                            tinyint                                not null comment '类型，0：星级管家、1：王者管家、2：运营中心、3：超级管家',
    level                           int unsigned                           not null comment '排序（等级，从低到高）',
    star_level                      int unsigned default 0                 not null comment '星级管家等级，可选值：1-5，为 0 表示待指定',
    name                            varchar(64)                            not null comment '会员名称',
    promote_from_membership_role_id int unsigned default 0                 not null comment '升级前必须具有的会员身份，为 0 表示没有约束',
    direct_invitation_number        int unsigned                           not null comment '升级条件：直推人数',
    personal_expense_in_cents       int unsigned                           not null comment '升级条件：个人累计消费',
    team_expense_in_cents           int unsigned                           not null comment '升级条件：团队累计消费',
    one_time_expense_in_cents       int unsigned                           not null comment '升级条件：一次性消费金额',
    marketing_center_number         int unsigned                           not null comment '升级条件：运营中心数量',
    income_sharing_ratio            int unsigned                           not null comment '团队奖励：平台新增业绩百分比',
    is_enabled                      tinyint(1)                             not null comment '是否启用',
    created_at                      datetime     default CURRENT_TIMESTAMP not null,
    updated_at                      datetime                               null,
    deleted_at                      datetime                               null
)
    collate = utf8mb4_unicode_ci;

INSERT INTO membership_roles (id, type, level, star_level, name, promote_from_membership_role_id, direct_invitation_number, personal_expense_in_cents, team_expense_in_cents, one_time_expense_in_cents, marketing_center_number, income_sharing_ratio, is_enabled, created_at, updated_at, deleted_at) VALUES (2, 0, 1, 1, '一星管家', 0, 5, 1100000, 20000000, 0, 0, 0, 1, '2022-07-19 11:42:51', '2022-07-27 17:58:32', null);
INSERT INTO membership_roles (id, type, level, star_level, name, promote_from_membership_role_id, direct_invitation_number, personal_expense_in_cents, team_expense_in_cents, one_time_expense_in_cents, marketing_center_number, income_sharing_ratio, is_enabled, created_at, updated_at, deleted_at) VALUES (3, 0, 2, 2, '二星管家', 0, 10, 2200000, 60000000, 0, 0, 0, 1, '2022-07-19 11:49:32', '2022-08-05 21:51:28', null);
INSERT INTO membership_roles (id, type, level, star_level, name, promote_from_membership_role_id, direct_invitation_number, personal_expense_in_cents, team_expense_in_cents, one_time_expense_in_cents, marketing_center_number, income_sharing_ratio, is_enabled, created_at, updated_at, deleted_at) VALUES (4, 0, 3, 3, '三星管家', 0, 15, 3300000, 120000000, 0, 0, 0, 1, '2022-07-19 11:49:39', '2022-08-05 21:51:51', null);
INSERT INTO membership_roles (id, type, level, star_level, name, promote_from_membership_role_id, direct_invitation_number, personal_expense_in_cents, team_expense_in_cents, one_time_expense_in_cents, marketing_center_number, income_sharing_ratio, is_enabled, created_at, updated_at, deleted_at) VALUES (5, 0, 4, 4, '四星管家', 0, 15, 5500000, 260000000, 0, 0, 0, 1, '2022-07-19 11:49:47', '2022-07-27 17:59:45', null);
INSERT INTO membership_roles (id, type, level, star_level, name, promote_from_membership_role_id, direct_invitation_number, personal_expense_in_cents, team_expense_in_cents, one_time_expense_in_cents, marketing_center_number, income_sharing_ratio, is_enabled, created_at, updated_at, deleted_at) VALUES (6, 0, 5, 5, '五星管家', 0, 20, 11000000, 480000000, 0, 0, 0, 1, '2022-07-19 11:49:58', '2022-07-27 18:00:15', null);
INSERT INTO membership_roles (id, type, level, star_level, name, promote_from_membership_role_id, direct_invitation_number, personal_expense_in_cents, team_expense_in_cents, one_time_expense_in_cents, marketing_center_number, income_sharing_ratio, is_enabled, created_at, updated_at, deleted_at) VALUES (7, 1, 6, 0, '王者管家', 0, 20, 33000000, 800000000, 0, 0, 0, 1, '2022-07-19 11:50:21', '2022-07-27 18:00:47', null);
INSERT INTO membership_roles (id, type, level, star_level, name, promote_from_membership_role_id, direct_invitation_number, personal_expense_in_cents, team_expense_in_cents, one_time_expense_in_cents, marketing_center_number, income_sharing_ratio, is_enabled, created_at, updated_at, deleted_at) VALUES (8, 2, 7, 0, '运营中心', 0, 0, 0, 20000000, 3300000, 0, 0, 1, '2022-07-19 11:51:12', '2022-07-27 18:01:16', null);
INSERT INTO membership_roles (id, type, level, star_level, name, promote_from_membership_role_id, direct_invitation_number, personal_expense_in_cents, team_expense_in_cents, one_time_expense_in_cents, marketing_center_number, income_sharing_ratio, is_enabled, created_at, updated_at, deleted_at) VALUES (9, 3, 8, 0, '超级管家', 0, 20, 0, 200000000, 0, 10, 0, 1, '2022-07-19 11:52:10', '2022-07-27 18:01:37', null);
