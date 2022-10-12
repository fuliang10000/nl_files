create table user_account_balance_changes
(
    id                      int unsigned auto_increment
        primary key,
    user_id                 int unsigned                       not null comment '用户ID',
    changed_amount_in_cents int                                not null comment '变更的金额，正数为收入、负数为支出或提现',
    change_type             tinyint                            not null comment '变更类型，0：收益、1：提现、2：充值、3：管理员充值',
    change_detail           json                               not null comment '变更的详细信息，自定义内容，可包含关联信息',
    created_at              datetime default CURRENT_TIMESTAMP not null,
    updated_at              datetime                           null,
    deleted_at              datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index user_account_balance_changes_change_type_index
    on user_account_balance_changes (change_type);

create index user_account_balance_changes_user_id_index
    on user_account_balance_changes (user_id);

INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (3, 1164, 250000, 3, '{"description": "管理员充值账户余额"}', '2022-09-13 15:47:57', '2022-09-13 15:47:57', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (4, 1163, 250000, 3, '{"description": "管理员充值账户余额"}', '2022-09-13 15:49:35', '2022-09-13 15:49:35', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (5, 1221, 250000, 3, '{"description": "管理员充值账户余额"}', '2022-09-13 15:51:25', '2022-09-13 15:51:25', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (6, 1162, 250000, 3, '{"description": "管理员充值账户余额"}', '2022-09-13 15:52:08', '2022-09-13 15:52:08', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (7, 1162, -19900, 4, '{"description": "支付账单 92649834711875584"}', '2022-09-13 15:58:04', '2022-09-13 15:58:04', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (8, 1163, -110000, 4, '{"description": "支付账单 92651460986142720"}', '2022-09-13 16:03:57', '2022-09-13 16:03:57', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (9, 1164, -110000, 4, '{"description": "支付账单 92652603426471936"}', '2022-09-13 16:15:22', '2022-09-13 16:15:22', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (10, 1162, -110000, 4, '{"description": "支付账单 92654719574474752"}', '2022-09-13 16:17:58', '2022-09-13 16:17:58', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (11, 1162, -9900, 4, '{"description": "支付账单 92656151182704640"}', '2022-09-13 16:22:33', '2022-09-13 16:22:33', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (12, 1163, -19900, 4, '{"description": "支付账单 92656174989574144"}', '2022-09-13 16:22:38', '2022-09-13 16:22:38', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (13, 1163, -9900, 4, '{"description": "支付账单 92658506238263296"}', '2022-09-13 16:31:55', '2022-09-13 16:31:55', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (14, 1164, -19900, 4, '{"description": "支付账单 92667288615911424"}', '2022-09-13 17:06:47', '2022-09-13 17:06:47', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (15, 1164, -9900, 4, '{"description": "支付账单 92676209091018752"}', '2022-09-13 17:42:14', '2022-09-13 17:42:14', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (16, 1273, 110000, 3, '{"description": "管理员充值账户余额"}', '2022-09-16 19:15:53', '2022-09-16 19:15:53', null);
INSERT INTO user_account_balance_changes (id, user_id, changed_amount_in_cents, change_type, change_detail, created_at, updated_at, deleted_at) VALUES (17, 1273, -110000, 4, '{"description": "支付账单 93787690884923392"}', '2022-09-16 19:18:57', '2022-09-16 19:18:57', null);
