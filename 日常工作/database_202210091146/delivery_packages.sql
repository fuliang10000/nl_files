create table delivery_packages
(
    id                     int unsigned auto_increment comment '配送包裹ID'
        primary key,
    shipping_company_name  varchar(64)                        not null comment '快递公司名称',
    shipping_serial_number varchar(64)                        not null comment '发货单号',
    order_id               int unsigned                       not null comment '订单ID',
    store_id               int unsigned                       not null comment '店铺ID',
    consignee_id           int unsigned                       not null comment '收件人ID',
    created_at             datetime default CURRENT_TIMESTAMP not null,
    updated_at             datetime                           null,
    deleted_at             datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index delivery_packages_consignee_id_index
    on delivery_packages (consignee_id);

create index delivery_packages_order_id_index
    on delivery_packages (order_id);

create index delivery_packages_shipping_serial_number_index
    on delivery_packages (shipping_serial_number);

create index delivery_packages_store_id_index
    on delivery_packages (store_id);

INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (1, '中通快递', '73188437387686', 442, 1, 36, '2022-08-14 17:38:00', '2022-08-14 17:38:00', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (2, '中通快递', '73188677984226', 556, 1, 8, '2022-08-18 09:11:45', '2022-08-18 09:11:45', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (3, '中通快递', '73188677984226', 555, 1, 8, '2022-08-18 09:12:35', '2022-08-18 09:12:35', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (4, '京东', 'JDX010580711541', 559, 1, 8, '2022-08-18 16:36:35', '2022-08-18 16:36:35', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (5, '中通快递', '73188929413153', 615, 1, 149, '2022-08-23 11:08:52', '2022-08-23 11:08:52', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (6, '京东', 'JDVC15507204960', 819, 1, 43, '2022-08-29 14:11:01', '2022-08-29 14:11:01', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (7, '京东', 'JDVC15507204960', 820, 1, 43, '2022-08-29 14:11:08', '2022-08-29 14:11:08', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (8, '中通快递', '220829044709237103', 926, 1, 68, '2022-08-29 14:11:26', '2022-08-29 14:11:26', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (9, '中通快递', '73189394870589', 833, 1, 149, '2022-08-30 16:36:45', '2022-08-30 16:36:45', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (10, '京东快递', '23231232323223423123', 1363, 1, 1164, '2022-09-13 17:25:15', '2022-09-13 17:25:15', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (11, '京东快递', '234344534545', 1361, 1, 1163, '2022-09-13 17:39:13', '2022-09-13 17:39:13', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (12, '京东快递', '3434323232232', 1360, 1, 1163, '2022-09-13 17:39:27', '2022-09-13 17:39:27', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (13, '京东快递', '454564586', 1359, 1, 1162, '2022-09-13 17:39:38', '2022-09-13 17:39:38', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (14, '京东快递', '4535663789098765', 1354, 1, 1162, '2022-09-13 17:39:54', '2022-09-13 17:39:54', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (15, '京东快递', '234344534545', 1364, 1, 1164, '2022-09-14 10:52:34', '2022-09-14 10:52:34', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (16, '中通', '73190288859909', 1349, 1, 11, '2022-09-14 19:09:46', '2022-09-14 19:09:46', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (17, '京东快递', 'JDX011087944367', 1293, 1, 251, '2022-09-15 10:48:22', '2022-09-15 10:48:22', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (18, '京东快递', 'JDVC15747860945', 1324, 1, 11, '2022-09-15 11:05:19', '2022-09-15 11:05:19', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (19, '京东', 'JDVC15811900107', 1414, 1, 11, '2022-09-20 14:12:51', '2022-09-20 14:12:51', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (20, '自提', '自提', 1686, 1, 1503, '2022-10-01 16:52:52', '2022-10-01 16:52:52', null);
INSERT INTO delivery_packages (id, shipping_company_name, shipping_serial_number, order_id, store_id, consignee_id, created_at, updated_at, deleted_at) VALUES (21, '京东快递', '4535663789098765', 1854, 1, 1621, '2022-10-06 14:26:46', '2022-10-06 14:26:46', null);
