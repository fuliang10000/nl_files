create table store_income_and_expenditures
(
    id                     int unsigned auto_increment comment '记录ID'
        primary key,
    store_id               int unsigned                       not null comment '店铺ID',
    type                   tinyint                            not null comment '收入、支出类型，0：收入、1：支出',
    action_type            tinyint                            not null comment '操作类型，0：提现、1：任务奖励收入、2：购买商品、3：系统操作',
    amount_in_cents        int                                not null comment '金额（单位：分）',
    store_balance_in_cents int unsigned                       not null comment '生成该项纪录后的店铺余额',
    additional_info        json                               not null comment '附加内容',
    action_taken_at        datetime default CURRENT_TIMESTAMP not null comment '操作时间（通常与创建时间一致，可另行指定）',
    created_at             datetime default CURRENT_TIMESTAMP not null,
    updated_at             datetime                           null,
    deleted_at             datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index store_income_and_expenditures_action_taken_at_index
    on store_income_and_expenditures (action_taken_at);

create index store_income_and_expenditures_action_type_index
    on store_income_and_expenditures (action_type);

create index store_income_and_expenditures_store_id_index
    on store_income_and_expenditures (store_id);

create index store_income_and_expenditures_type_index
    on store_income_and_expenditures (type);

