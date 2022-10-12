create table stores
(
    id                         int unsigned auto_increment comment '店铺ID'
        primary key,
    name                       varchar(64)                            not null comment '店铺名称',
    contact                    varchar(32)                            not null comment '联系方式',
    company_address            varchar(128)                           not null comment '公司详细地址',
    business_account           varchar(64)                            not null comment '对公账户',
    business_license_file_id   int unsigned                           not null comment '营业执照照片文件ID',
    business_license_file_path varchar(255)                           not null comment '营业执照照片文件相对路径',
    business_license_file_url  text                                   not null comment '营业执照照片文件URL',
    weight                     int unsigned                           not null comment '权重',
    sales                      int unsigned default 0                 not null comment '店铺商品销量',
    is_open                    tinyint(1)                             not null comment '是否开店',
    extra_profit_sharing_ratio tinyint unsigned                       not null comment '额外业绩分红比',
    logo_file_id               int unsigned                           not null comment '店铺LOGO文件ID',
    logo_file_path             varchar(255)                           not null comment '店铺LOGO文件相对路径',
    logo_file_url              text                                   not null comment '店铺LOGO文件URL',
    shop_sign_file_id          int unsigned                           not null comment '店招文件ID',
    shop_sign_file_path        varchar(255)                           not null comment '店招文件相对路径',
    shop_sign_file_url         text                                   not null comment '店招文件URL',
    description                text                                   null comment '店铺简介',
    owner_id                   int unsigned                           not null comment '店铺所有者用户ID',
    created_at                 datetime     default CURRENT_TIMESTAMP not null,
    updated_at                 datetime                               null,
    deleted_at                 datetime                               null
)
    collate = utf8mb4_unicode_ci;

create index stores_owner_id_index
    on stores (owner_id);

INSERT INTO stores (id, name, contact, company_address, business_account, business_license_file_id, business_license_file_path, business_license_file_url, weight, sales, is_open, extra_profit_sharing_ratio, logo_file_id, logo_file_path, logo_file_url, shop_sign_file_id, shop_sign_file_path, shop_sign_file_url, description, owner_id, created_at, updated_at, deleted_at) VALUES (1, '王者系统', '18215690133', '成都市', '公司', 258, 'product/ak7dKxDMEPiURiG4N4pgxGRSeKE1nZLk8xEhAhKF.png', 'https://wangzhe.yugoo.com/storage/product/ak7dKxDMEPiURiG4N4pgxGRSeKE1nZLk8xEhAhKF.png', 1, 0, 1, 0, 259, 'product/kGORY01mDNWzWFtuyLSBOhl1k5cNekuRKeJkiW4x.png', 'https://wangzhe.yugoo.com/storage/product/kGORY01mDNWzWFtuyLSBOhl1k5cNekuRKeJkiW4x.png', 1184, 'product/IV9EzRmXvlMw4Rjv5dPhgKKnFzn8O7WAF1QYb9iC.png', 'https://wangzhe.yugoo.com/storage/product/IV9EzRmXvlMw4Rjv5dPhgKKnFzn8O7WAF1QYb9iC.png', '消费联盟  企业联盟', 3, '2022-07-27 16:16:20', '2022-09-24 13:37:36', null);
INSERT INTO stores (id, name, contact, company_address, business_account, business_license_file_id, business_license_file_path, business_license_file_url, weight, sales, is_open, extra_profit_sharing_ratio, logo_file_id, logo_file_path, logo_file_url, shop_sign_file_id, shop_sign_file_path, shop_sign_file_url, description, owner_id, created_at, updated_at, deleted_at) VALUES (2, '付亮-店铺名称', '151', '付亮-公司地址', '付亮-对公账户', 1156, 'product/llPtMT27BKTqC1zhGf9MaZvXNX0AAluQlD9fx5eD.png', 'https://wangzhe.yugoo.com/storage/product/llPtMT27BKTqC1zhGf9MaZvXNX0AAluQlD9fx5eD.png', 11, 0, 0, 5, 1157, 'product/6MtT8pcYdTQOhk0w2iaUR4Tbeji7FPKHa1rYnzlg.png', 'https://wangzhe.yugoo.com/storage/product/6MtT8pcYdTQOhk0w2iaUR4Tbeji7FPKHa1rYnzlg.png', 1158, 'product/A8sPn7OVZ9jBFxqnjNYOx3LU3FCF1hbD7S2q0XhX.jpg', 'https://wangzhe.yugoo.com/storage/product/A8sPn7OVZ9jBFxqnjNYOx3LU3FCF1hbD7S2q0XhX.jpg', '付亮-店铺描述', 15, '2022-09-06 14:56:41', '2022-09-06 15:01:10', '2022-09-06 15:01:10');
