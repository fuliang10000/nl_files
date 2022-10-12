create table app_versions
(
    id             int unsigned auto_increment comment '应用版本ID'
        primary key,
    platform       tinyint                            not null comment '平台，0：安卓，1：iOS',
    version_number varchar(16)                        not null comment '版本号',
    build_number   int unsigned                       not null comment '构建编号',
    download_url   text                               not null comment '下载链接',
    file_name      varchar(64)                        not null comment '安装包文件名',
    changelog      text                               not null comment '更新说明',
    created_at     datetime default CURRENT_TIMESTAMP not null,
    updated_at     datetime                           null,
    deleted_at     datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index app_versions_build_number_index
    on app_versions (build_number);

create index app_versions_platform_index
    on app_versions (platform);

INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (1, 0, '1.2.0', 4, 'https://wangzhe.yugoo.com/storage/app/wangzhe-1.2.0_4-release.apk', 'wangzhe-1.2.0_4-release.apk', '-', '2022-06-29 17:16:42', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (2, 0, '1.3.0', 5, 'https://wangzhe.yugoo.com/storage/app/wangzhe-1.3.0_5-release.apk', 'wangzhe-1.3.0_5-release.apk', '-', '2022-06-29 17:16:42', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (3, 0, '1.4.0', 6, 'https://wangzhe.yugoo.com/storage/app/wangzhe-1.4.0_6-release.apk', 'wangzhe-1.4.0_6-release.apk', '-', '2022-06-30 19:18:55', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (4, 0, '1.5.0', 7, 'https://wangzhe.yugoo.com/app-release/wangzhe-1.5.0_7-release.apk', 'wangzhe-1.5.0_7-release.apk', '-', '2022-06-30 19:18:55', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (5, 0, '1.6.0', 8, 'https://wangzhe.yugoo.com/app-release/wangzhe-1.6.0_8-release.apk', 'wangzhe-1.6.0_8-release.apk', '-', '2022-07-06 12:33:24', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (6, 0, '1.7.0', 9, 'https://wangzhe.yugoo.com/app-release/wangzhe-1.7.0_9-release.apk', 'wangzhe-1.7.0_9-release.apk', '-', '2022-07-06 19:45:05', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (7, 0, '1.8.0', 10, 'https://wangzhe.yugoo.com/app-release/wangzhe-1.8.0_10-release.apk', 'wangzhe-1.8.0_10-release.apk', '-', '2022-07-07 11:55:10', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (8, 0, '1.10.0', 12, 'https://wangzhe.yugoo.com/app-release/wangzhe-1.10.0_12-release.apk', 'wangzhe-1.10.0_12-release.apk', '-', '2022-07-08 17:15:50', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (9, 0, '1.12.0', 14, 'https://yugoo-public.oss-cn-shanghai.aliyuncs.com/wangzhe/wangzhe-1.12.0_14-release.apk', 'wangzhe-1.12.0_14-release.apk', '-', '2022-08-04 17:20:50', null, null);
INSERT INTO app_versions (id, platform, version_number, build_number, download_url, file_name, changelog, created_at, updated_at, deleted_at) VALUES (10, 0, '1.13.0', 15, 'https://yugoo-public-cdn.yugoo.com/wangzhe/wangzhe-1.13.0_15-release.apk', 'wangzhe-1.13.0_15-release.apk', '-', '2022-09-28 16:38:03', null, null);
