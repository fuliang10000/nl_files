create table product_categories
(
    id                        int unsigned auto_increment comment '商品分类ID'
        primary key,
    marketing_rule            tinyint                            not null comment '营销规则，0：活动专区、1：平价区、2：复购区',
    name                      varchar(32)                        not null comment '分类名称',
    abbreviation              varchar(32)                        not null comment '分类名称简称',
    display_order             int unsigned                       not null comment '排序（顺序）',
    is_for_sale_on_platform   tinyint(1)                         not null comment '是否在平台售卖',
    is_for_sale_on_store      tinyint(1)                         not null comment '是否在S端售卖',
    is_new_results_minus_cost tinyint(1)                         not null comment '平台新增业绩是否扣除成本价和分红',
    is_use_price_and_points   tinyint(1)                         not null comment '是否使用价格加积分的方式支付',
    first_order_send_points   int unsigned                       not null comment '首单赠送积分',
    is_visible                tinyint(1)                         not null comment '是否可见',
    is_cost_price_visible     tinyint(1)                         not null comment '成本价是否可见（变更该项后，更新该分类商品中的成本价是否可见信息）',
    is_points_available       tinyint(1)                         not null comment '积分是否可用（变更该项后，更新该分类商品中的积分是否可用信息',
    created_at                datetime default CURRENT_TIMESTAMP not null,
    updated_at                datetime                           null,
    deleted_at                datetime                           null
)
    collate = utf8mb4_unicode_ci;

INSERT INTO product_categories (id, marketing_rule, name, abbreviation, display_order, is_for_sale_on_platform, is_for_sale_on_store, is_new_results_minus_cost, is_use_price_and_points, first_order_send_points, is_visible, is_cost_price_visible, is_points_available, created_at, updated_at, deleted_at) VALUES (1, 0, '活动区', '活动区', 1, 0, 1, 0, 0, 0, 1, 0, 0, '2022-07-27 17:02:44', '2022-09-06 15:53:08', null);
INSERT INTO product_categories (id, marketing_rule, name, abbreviation, display_order, is_for_sale_on_platform, is_for_sale_on_store, is_new_results_minus_cost, is_use_price_and_points, first_order_send_points, is_visible, is_cost_price_visible, is_points_available, created_at, updated_at, deleted_at) VALUES (2, 1, '平价区', '平价区', 2, 0, 1, 0, 0, 0, 1, 0, 0, '2022-07-27 17:02:56', '2022-09-06 14:49:16', null);
INSERT INTO product_categories (id, marketing_rule, name, abbreviation, display_order, is_for_sale_on_platform, is_for_sale_on_store, is_new_results_minus_cost, is_use_price_and_points, first_order_send_points, is_visible, is_cost_price_visible, is_points_available, created_at, updated_at, deleted_at) VALUES (3, 2, '复购区', '复购区', 3, 0, 1, 0, 0, 0, 1, 0, 0, '2022-07-27 17:03:07', '2022-07-27 17:03:07', null);
