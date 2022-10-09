create table product_customers
(
    id             int unsigned auto_increment comment '商品购买者记录ID'
        primary key,
    product_id     int unsigned                       not null comment '商品ID',
    marketing_rule tinyint  default 1                 not null comment '营销规则，0：活动专区、1：平价区、2：复购区',
    user_id        int unsigned                       not null comment '人员ID',
    created_at     datetime default CURRENT_TIMESTAMP not null,
    updated_at     datetime                           null,
    deleted_at     datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index product_customers_product_id_index
    on product_customers (product_id);

create index product_customers_user_id_index
    on product_customers (user_id);

INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (1, 59, 2, 36, '2022-08-17 12:23:03', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (2, 61, 2, 149, '2022-08-23 19:53:48', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (3, 64, 2, 68, '2022-08-31 23:39:57', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (4, 380, 1, 43, '2022-09-03 16:07:09', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (5, 380, 1, 43, '2022-09-03 16:07:10', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (6, 87, 1, 149, '2022-09-05 13:47:14', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (7, 614, 1, 1164, '2022-09-13 17:34:48', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (8, 61, 2, 1163, '2022-09-13 17:41:38', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (9, 614, 1, 1163, '2022-09-13 17:41:45', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (10, 61, 2, 1162, '2022-09-13 18:01:58', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (11, 614, 1, 1162, '2022-09-13 18:02:05', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (12, 67, 2, 1164, '2022-09-14 10:55:51', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (13, 74, 2, 251, '2022-09-17 11:53:56', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (14, 84, 1, 11, '2022-09-22 10:50:57', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (15, 74, 2, 8, '2022-09-22 11:06:03', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (16, 84, 1, 8, '2022-09-22 11:06:04', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (17, 87, 1, 8, '2022-09-22 11:06:08', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (18, 617, 1, 11, '2022-09-29 16:02:18', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (19, 245, 1, 11, '2022-09-29 16:02:19', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (20, 28, 0, 1503, '2022-10-01 16:54:56', null, null);
INSERT INTO product_customers (id, product_id, marketing_rule, user_id, created_at, updated_at, deleted_at) VALUES (21, 28, 0, 1621, '2022-10-06 14:30:21', null, null);
