create table user_membership_roles
(
    id                   int unsigned auto_increment
        primary key,
    user_id              int unsigned                       not null comment '用户ID',
    membership_role_id   int unsigned                       not null comment '会员配置ID',
    membership_role_type tinyint                            not null comment '类型，0：星级管家、1：王者管家、2：运营中心、3：超级管家',
    created_at           datetime default CURRENT_TIMESTAMP not null,
    updated_at           datetime                           null,
    deleted_at           datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index user_membership_roles_membership_role_id_index
    on user_membership_roles (membership_role_id);

create index user_membership_roles_user_id_index
    on user_membership_roles (user_id);

INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (1, 9, 8, 2, '2022-07-29 11:31:55', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (2, 7, 8, 2, '2022-07-29 11:31:55', null, '2022-10-03 10:30:38');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (3, 19, 8, 2, '2022-07-29 11:31:55', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (4, 31, 8, 2, '2022-07-29 11:31:55', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (5, 85, 8, 2, '2022-07-29 11:31:56', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (6, 13, 8, 2, '2022-07-29 11:31:56', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (7, 6, 8, 2, '2022-07-29 11:31:56', null, '2022-09-29 12:57:51');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (8, 8, 8, 2, '2022-07-29 11:31:56', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (9, 69, 8, 2, '2022-07-29 11:31:56', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (10, 11, 8, 2, '2022-07-29 11:31:56', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (11, 15, 8, 2, '2022-07-29 11:31:56', '2022-10-02 20:17:28', '2022-10-02 20:17:28');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (12, 21, 8, 2, '2022-07-29 11:31:56', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (13, 25, 8, 2, '2022-07-30 18:52:03', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (14, 6, 2, 0, '2022-07-31 16:47:25', null, '2022-08-12 12:36:54');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (15, 83, 8, 2, '2022-08-01 20:37:17', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (16, 133, 8, 2, '2022-08-01 20:37:17', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (17, 134, 8, 2, '2022-08-01 20:37:17', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (18, 44, 8, 2, '2022-08-01 20:37:17', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (19, 18, 8, 2, '2022-08-04 14:31:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (20, 41, 8, 2, '2022-08-04 14:31:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (21, 16, 8, 2, '2022-08-04 14:31:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (22, 20, 8, 2, '2022-08-04 14:31:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (23, 7, 2, 0, '2022-08-05 14:57:08', '2022-08-28 16:03:10', '2022-08-28 16:03:10');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (24, 15, 2, 0, '2022-08-05 19:03:58', '2022-08-29 11:30:58', '2022-08-29 11:30:58');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (26, 38, 8, 2, '2022-08-04 14:31:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (27, 191, 8, 2, '2022-08-04 14:31:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (28, 27, 8, 2, '2022-08-11 14:01:16', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (29, 28, 8, 2, '2022-08-11 14:01:16', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (30, 246, 8, 2, '2022-08-11 14:01:16', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (31, 239, 8, 2, '2022-08-11 16:07:49', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (32, 238, 8, 2, '2022-08-11 16:07:49', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (33, 6, 3, 0, '2022-08-12 12:36:54', null, '2022-08-29 15:10:01');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (34, 32, 8, 2, '2022-08-12 12:37:49', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (35, 258, 8, 2, '2022-08-12 15:32:17', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (36, 153, 8, 2, '2022-08-13 11:12:14', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (37, 237, 8, 2, '2022-08-13 11:12:14', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (38, 149, 8, 2, '2022-08-14 19:32:18', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (39, 337, 8, 2, '2022-08-16 11:48:15', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (40, 393, 8, 2, '2022-08-22 10:45:57', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (41, 325, 8, 2, '2022-08-23 13:29:58', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (42, 240, 8, 2, '2022-08-23 16:05:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (43, 251, 8, 2, '2022-08-24 09:47:44', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (44, 37, 8, 2, '2022-08-24 13:21:35', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (45, 448, 8, 2, '2022-08-26 11:02:34', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (46, 164, 8, 2, '2022-08-26 11:03:16', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (47, 221, 8, 2, '2022-08-26 17:07:18', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (48, 102, 8, 2, '2022-08-26 17:49:27', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (49, 46, 8, 2, '2022-08-26 22:12:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (50, 577, 8, 2, '2022-08-27 09:57:36', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (51, 268, 8, 2, '2022-08-27 10:37:36', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (52, 428, 8, 2, '2022-08-27 12:38:39', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (53, 7, 3, 0, '2022-08-28 16:03:10', '2022-09-07 21:08:27', '2022-09-07 21:08:27');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (54, 38, 2, 0, '2022-08-28 20:48:35', '2022-09-08 18:01:40', '2022-09-08 18:01:40');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (55, 433, 8, 2, '2022-08-29 11:07:48', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (56, 15, 3, 0, '2022-08-29 11:30:58', '2022-09-10 21:15:38', '2022-09-10 21:15:38');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (57, 646, 8, 2, '2022-08-29 12:05:41', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (58, 565, 8, 2, '2022-08-29 12:28:46', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (59, 428, 2, 0, '2022-08-29 14:28:41', '2022-09-10 23:41:50', '2022-09-10 23:41:50');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (60, 448, 2, 0, '2022-08-29 14:28:46', '2022-10-04 21:18:28', '2022-10-04 21:18:28');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (61, 565, 2, 0, '2022-08-29 14:28:46', '2022-10-03 08:59:24', '2022-10-03 08:59:24');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (62, 577, 2, 0, '2022-08-29 14:28:47', '2022-10-02 20:17:28', '2022-10-02 20:17:28');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (63, 712, 2, 0, '2022-08-29 14:28:52', '2022-08-29 14:28:52', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (64, 783, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (65, 792, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (66, 645, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (67, 780, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (68, 782, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (69, 740, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (70, 642, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (71, 722, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (72, 771, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (73, 713, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (74, 712, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (75, 714, 8, 2, '2022-08-29 14:48:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (76, 6, 4, 0, '2022-08-29 15:10:01', null, '2022-10-05 11:39:48');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (77, 192, 8, 2, '2022-08-29 15:59:22', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (78, 661, 8, 2, '2022-08-29 15:59:22', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (79, 31, 2, 0, '2022-08-30 08:53:13', '2022-08-30 08:53:13', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (80, 88, 8, 2, '2022-08-30 14:04:20', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (81, 9, 2, 0, '2022-08-31 16:35:07', '2022-08-31 16:35:07', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (82, 164, 2, 0, '2022-08-31 16:43:05', '2022-08-31 16:43:05', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (83, 668, 8, 2, '2022-08-31 22:04:57', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (84, 66, 8, 2, '2022-09-01 13:48:16', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (85, 316, 8, 2, '2022-09-01 15:19:05', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (86, 84, 8, 2, '2022-09-01 16:07:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (87, 751, 8, 2, '2022-09-01 16:07:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (88, 750, 8, 2, '2022-09-01 16:07:31', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (89, 353, 8, 2, '2022-09-01 16:07:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (90, 589, 8, 2, '2022-09-01 16:07:32', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (91, 752, 8, 2, '2022-09-01 17:19:14', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (92, 816, 8, 2, '2022-09-02 09:45:13', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (93, 354, 8, 2, '2022-09-02 22:18:08', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (94, 986, 8, 2, '2022-09-03 11:47:13', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (95, 71, 8, 2, '2022-09-05 09:48:49', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (96, 573, 8, 2, '2022-09-07 20:21:29', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (97, 7, 4, 0, '2022-09-07 21:08:27', '2022-09-07 21:08:27', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (98, 568, 2, 0, '2022-09-08 17:52:22', '2022-10-03 19:49:53', '2022-10-03 19:49:53');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (99, 38, 3, 0, '2022-09-08 18:01:40', '2022-10-03 16:41:33', '2022-10-03 16:41:33');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (100, 672, 8, 2, '2022-09-09 16:53:10', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (101, 15, 4, 0, '2022-09-10 21:15:38', '2022-09-10 21:15:38', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (102, 573, 2, 0, '2022-09-10 21:17:50', '2022-09-10 21:17:50', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (103, 428, 3, 0, '2022-09-10 23:41:50', '2022-10-05 15:28:30', '2022-10-05 15:28:30');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (104, 1308, 8, 2, '2022-09-23 18:14:07', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (105, 66, 2, 0, '2022-09-23 19:32:15', '2022-09-23 19:32:15', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (106, 1341, 8, 2, '2022-09-24 16:04:04', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (107, 1400, 8, 2, '2022-09-28 14:31:05', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (108, 1121, 8, 2, '2022-09-29 11:28:17', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (109, 685, 2, 0, '2022-09-29 11:37:45', '2022-09-29 11:37:45', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (110, 1308, 2, 0, '2022-09-29 11:37:45', '2022-09-29 11:37:45', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (111, 1321, 8, 2, '2022-09-29 11:43:50', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (112, 1321, 2, 0, '2022-09-29 11:43:50', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (113, 6, 9, 3, '2022-09-29 12:57:51', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (114, 84, 2, 0, '2022-09-29 14:59:05', '2022-09-29 14:59:05', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (115, 1431, 2, 0, '2022-09-29 21:18:51', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (116, 8, 2, 0, '2022-09-30 13:39:49', '2022-09-30 13:39:49', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (117, 387, 8, 2, '2022-09-30 16:00:11', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (118, 1082, 8, 2, '2022-09-30 18:57:47', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (119, 1386, 8, 2, '2022-09-30 18:57:47', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (120, 364, 8, 2, '2022-09-30 18:57:47', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (121, 890, 8, 2, '2022-09-30 18:57:47', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (122, 1055, 8, 2, '2022-09-30 18:57:47', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (123, 1493, 8, 2, '2022-09-30 21:47:07', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (124, 1436, 8, 2, '2022-10-02 10:02:03', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (125, 15, 9, 3, '2022-10-02 20:17:28', '2022-10-02 20:17:28', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (126, 577, 3, 0, '2022-10-02 20:17:28', '2022-10-02 20:17:28', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (127, 1420, 8, 2, '2022-10-02 21:12:29', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (128, 1420, 2, 0, '2022-10-02 21:12:29', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (129, 565, 3, 0, '2022-10-03 08:59:24', '2022-10-03 08:59:24', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (130, 7, 9, 3, '2022-10-03 10:30:43', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (131, 38, 4, 0, '2022-10-03 16:41:33', '2022-10-03 16:41:33', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (132, 1116, 8, 2, '2022-10-03 16:53:50', null, '2022-10-03 10:30:38');
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (133, 568, 3, 0, '2022-10-03 19:49:53', '2022-10-03 19:49:53', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (134, 448, 3, 0, '2022-10-04 21:18:28', '2022-10-04 21:18:28', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (135, 950, 2, 0, '2022-10-05 11:02:22', '2022-10-05 11:02:22', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (136, 6, 5, 0, '2022-10-05 11:39:48', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (137, 428, 4, 0, '2022-10-05 15:28:30', '2022-10-05 15:28:30', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (138, 1085, 2, 0, '2022-10-05 17:33:37', '2022-10-05 17:33:37', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (139, 1280, 2, 0, '2022-10-05 20:03:02', '2022-10-05 20:03:02', null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (140, 1608, 3, 0, '2022-10-06 14:15:30', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (141, 1628, 8, 2, '2022-10-06 17:59:08', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (142, 1608, 8, 2, '2022-10-08 16:18:43', null, null);
INSERT INTO user_membership_roles (id, user_id, membership_role_id, membership_role_type, created_at, updated_at, deleted_at) VALUES (143, 685, 8, 2, '2022-10-08 20:34:25', null, null);
