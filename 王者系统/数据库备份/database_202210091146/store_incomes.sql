create table store_incomes
(
    id                                       int unsigned auto_increment
        primary key,
    store_id                                 int unsigned                       not null comment '店铺ID',
    income_in_cents                          bigint unsigned                    not null comment '店铺累计业绩',
    normal_product_income_in_cents           bigint unsigned                    not null comment '平价区累计业绩',
    activity_product_income_in_cents         bigint unsigned                    not null comment '活动专区累计业绩',
    redemption_product_income_in_cents       bigint unsigned                    not null comment '复购区累计业绩',
    sales_amount_in_cents                    bigint unsigned                    not null comment '店铺累计销售额',
    normal_product_sales_amount_in_cents     bigint unsigned                    not null comment '平价区累计销售额',
    activity_product_sales_amount_in_cents   bigint unsigned                    not null comment '活动专区累计销售额',
    redemption_product_sales_amount_in_cents bigint unsigned                    not null comment '复购区累计销售额',
    created_at                               datetime default CURRENT_TIMESTAMP not null,
    updated_at                               datetime                           null,
    deleted_at                               datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index store_incomes_store_id_index
    on store_incomes (store_id);

INSERT INTO store_incomes (id, store_id, income_in_cents, normal_product_income_in_cents, activity_product_income_in_cents, redemption_product_income_in_cents, sales_amount_in_cents, normal_product_sales_amount_in_cents, activity_product_sales_amount_in_cents, redemption_product_sales_amount_in_cents, created_at, updated_at, deleted_at) VALUES (1, 1, 363027200, 114200, 362890000, 23000, 363155100, 169900, 362890000, 95200, '2022-07-28 18:16:12', '2022-10-09 10:59:15', null);
