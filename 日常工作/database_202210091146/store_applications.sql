create table store_applications
(
    id                         int unsigned auto_increment comment '开店申请ID'
        primary key,
    user_id                    int unsigned                           not null comment '申请人ID',
    store_name                 varchar(64)                            not null comment '店铺名称',
    province                   varchar(16)                            not null comment '省份',
    city                       varchar(16)                            not null comment '市级行政区',
    district                   varchar(16)                            not null comment '县级行政区',
    contact                    varchar(32)                            not null comment '联系方式',
    company_address            varchar(128)                           not null comment '公司详细地址',
    business_account           varchar(64)                            not null comment '对公账户',
    business_license_file_id   int unsigned                           not null comment '营业执照照片文件ID',
    business_license_file_path varchar(255)                           not null comment '营业执照照片文件相对路径',
    business_license_file_url  text                                   not null comment '营业执照照片文件URL',
    status                     tinyint                                not null comment '申请处理状态，0：待处理、1：已通过、2：已驳回',
    rejection_comment          text                                   not null comment '驳回申请的备注',
    reviewer_id                int unsigned default 0                 not null comment '申请处理人ID',
    reviewed_at                datetime                               null comment '申请处理时间',
    created_at                 datetime     default CURRENT_TIMESTAMP not null,
    updated_at                 datetime                               null,
    deleted_at                 datetime                               null
)
    collate = utf8mb4_unicode_ci;

create index store_applications_status_index
    on store_applications (status);

create index store_applications_user_id_index
    on store_applications (user_id);

INSERT INTO store_applications (id, user_id, store_name, province, city, district, contact, company_address, business_account, business_license_file_id, business_license_file_path, business_license_file_url, status, rejection_comment, reviewer_id, reviewed_at, created_at, updated_at, deleted_at) VALUES (2, 351, '红旗渠特产', '河南省', '安阳市', '林州市', '18567890009', '河南省林州市开元社区', '250761007090', 393, 'debug/4mSfJ3BIUdccheMBegyr6rvVJ0sNYRcmHZe34dXw.jpg', 'https://wangzhe.yugoo.com/storage/debug/4mSfJ3BIUdccheMBegyr6rvVJ0sNYRcmHZe34dXw.jpg', 2, '该功能暂未开放  将由专人与您对接   感谢支持！', 0, null, '2022-08-19 16:37:36', '2022-08-25 14:18:50', null);
