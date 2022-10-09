create table marketing_center_application_photos
(
    id             int unsigned auto_increment
        primary key,
    application_id int unsigned                       not null comment '申请ID',
    file_id        int unsigned                       not null comment '照片文件ID',
    file_path      varchar(255)                       not null comment '照片文件相对路径',
    file_url       text                               not null comment '照片文件URL',
    created_at     datetime default CURRENT_TIMESTAMP not null,
    updated_at     datetime                           null,
    deleted_at     datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index marketing_center_application_photos_application_id_index
    on marketing_center_application_photos (application_id);

