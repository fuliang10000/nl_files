create table product_properties
(
    id         int unsigned auto_increment comment '商品自定义属性ID'
        primary key,
    product_id int unsigned                       not null comment '商品ID',
    name       varchar(32)                        not null comment '属性名称',
    value      varchar(128)                       not null comment '属性值',
    created_at datetime default CURRENT_TIMESTAMP not null,
    updated_at datetime                           null,
    deleted_at datetime                           null
)
    collate = utf8mb4_unicode_ci;

