create table marketing_center_applications
(
    id                        int unsigned auto_increment comment '申请ID'
        primary key,
    user_id                   int unsigned                           not null comment '申请人ID',
    store_id                  int unsigned                           not null comment '店铺ID',
    store_name                varchar(64)                            not null comment '店铺名称',
    province                  varchar(16)                            not null comment '省份',
    city                      varchar(16)                            not null comment '市级行政区',
    district                  varchar(16)                            not null comment '县级行政区',
    contact                   varchar(32)                            not null comment '联系方式',
    company_address           varchar(128)                           not null comment '公司详细地址',
    business_account          varchar(64)                            not null comment '对公账户',
    one_time_expense_in_cents int unsigned                           not null comment '一次性消费金额',
    team_expense_in_cents     int unsigned                           not null comment '团队消费额',
    status                    tinyint                                not null comment '申请处理状态，0：待处理、1：已通过、2：已驳回',
    rejection_comment         text                                   not null comment '驳回申请的备注',
    reviewer_id               int unsigned default 0                 not null comment '申请处理人ID',
    reviewed_at               datetime                               null comment '申请处理时间',
    created_at                datetime     default CURRENT_TIMESTAMP not null,
    updated_at                datetime                               null,
    deleted_at                datetime                               null
)
    collate = utf8mb4_unicode_ci;

create index marketing_center_applications_status_index
    on marketing_center_applications (status);

create index marketing_center_applications_user_id_index
    on marketing_center_applications (user_id);

