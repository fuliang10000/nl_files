create table configurations
(
    id             int unsigned auto_increment comment '配置信息ID'
        primary key,
    config_key     varchar(32)                        not null comment '配置Key',
    config_value   json                               not null comment '配置内容',
    is_public_read tinyint(1)                         not null comment '是否开放查询，若为否则只能由管理员查询',
    created_at     datetime default CURRENT_TIMESTAMP not null,
    updated_at     datetime                           null,
    deleted_at     datetime                           null
)
    collate = utf8mb4_unicode_ci;

create index configurations_config_key_index
    on configurations (config_key);

INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (1, 'test', '{"data": {"tax": "2", "shop": "20", "noWin": "10", "unpaid": "10", "lottery": "10", "newUser": "100", "shopDays": "20", "shopTimes": "3", "conversion": "1", "noWinTimes": "10", "serviceFee": "5", "kingSteward": "10000", "lotteryDays": "10", "teamRewards": "10", "lotteryTimes": "2", "serviceCharge": "5", "conversionPrice": "1", "fiveStarSteward": "10000", "fourStarSteward": "10000", "conversionScores": "100", "newUserSendPoint": "100", "threeStarSteward": "10000"}}', 1, '2022-07-06 17:26:18', '2022-07-06 19:45:40', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (2, 'private', '{"data": {"tax": "2", "shop": "20", "noWin": "10", "unpaid": "10", "lottery": "10", "newUser": "100", "shopDays": "20", "shopTimes": "3", "conversion": "1", "noWinTimes": "10", "serviceFee": "5", "kingSteward": "10000", "lotteryDays": "10", "teamRewards": "10", "lotteryTimes": "2", "serviceCharge": "5", "conversionPrice": "1", "fiveStarSteward": "10000", "fourStarSteward": "10000", "conversionScores": "100", "newUserSendPoint": "100", "threeStarSteward": "10000"}}', 0, '2022-07-06 20:07:24', '2022-07-06 20:07:24', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (3, 'public', '{"data": {"slideshow": [{"id": 78, "url": "https://wangzhe.yugoo.com/storage/product/0Tq63H66JAXTVRM7gckZSzGYcjNDBgpJTNcVWMFb.jpg", "path": "done", "file_name": "banner-个人中心.jpg"}, {"id": 79, "url": "https://wangzhe.yugoo.com/storage/product/gAuEjiFtuNytpSGesTnnawi4aqz2Kla1z6VEx2eJ.jpg", "path": "done", "file_name": "banner-首页轮播280a.jpg"}, {"id": 80, "url": "https://wangzhe.yugoo.com/storage/product/rfrWAESt1NukAB0DLUJ5ewicLIxF6CAS8sJU3sfR.jpg", "path": "done", "file_name": "banner-首页轮播280b.jpg"}, {"id": 81, "url": "https://wangzhe.yugoo.com/storage/product/WzdlFONQQYGOcVp6ZQTOK0I3k2I3KGbl22YCY25C.jpg", "path": "done", "file_name": "banner-首页轮播320a.jpg"}, {"id": 82, "url": "https://wangzhe.yugoo.com/storage/product/hNUwD6fsmJHtUwsXppCdgJ0StJYAxP6GnRrVE8KI.jpg", "path": "done", "file_name": "banner-首页轮播320b.jpg"}, {"id": 83, "url": "https://wangzhe.yugoo.com/storage/product/kHLZvSTXsMfetxyEsulgYz6GF5bfidLr7kiRKuC5.jpg", "path": "done", "file_name": "banner-首页轮播320c.jpg"}], "advertisingImg": [{"id": 84, "url": "https://wangzhe.yugoo.com/storage/product/lS6DmAAC9hex0ZK9eT3EXi83t5BRYvS0QxCujGQu.jpg", "path": "done", "file_name": "1.1.jpg"}, {"id": 85, "url": "https://wangzhe.yugoo.com/storage/product/F1xnfy9xFYtLwSYfeGcNHQ0GcWuTPuEnOhsmNDK8.jpg", "path": "done", "file_name": "65c2f4c2060f145436c782563fd67e9.jpg"}, {"id": 86, "url": "https://wangzhe.yugoo.com/storage/product/3gC8T0EVUgSpa5hZp35DhChQIvp4RaijA9Ei7o5X.jpg", "path": "done", "file_name": "banner-特权产品.jpg"}]}}', 1, '2022-07-06 20:33:11', '2022-07-07 16:13:31', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (4, 'userCenterPublicImg', '{"data": {"userCenter": []}}', 1, '2022-07-07 16:34:49', '2022-07-15 15:11:59', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (5, 'publicSlideshowAndAdvertisingImg', '{"data": {"slideshow": [{"id": 215, "url": "https://wangzhe.yugoo.com/storage/product/6jtq58R8OIYJoZl3rfTitUHjPkEQZGlb2CiODjdc.png", "path": "done", "file_name": "hGamQhKnNZxNm8N4iXhRxrtObKzPfHr3XYmvAugJ.png"}], "advertisingImg": [{"id": 172, "url": "https://wangzhe.yugoo.com/storage/product/jWYVe0TPoRr04mtoerdRDtFmyqjpl59URgS733Js.jpg", "path": "done", "file_name": "banner-王者课堂.jpg"}]}}', 1, '2022-07-07 16:53:07', '2022-07-26 13:57:24', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (6, 'system_configuration', '{"data": {"tax": "5", "shop": "15", "noWin": "10", "unpaid": "1", "lottery": "15", "newUser": "100", "shopDays": "3", "shopTimes": "3", "conversion": "1", "noWinTimes": "10", "serviceFee": "0", "kingSteward": 25000000, "lotteryDays": "3", "teamRewards": "14", "lotteryTimes": "2", "serviceCharge": "1", "conversionPrice": 100, "fiveStarSteward": 16000000, "fourStarSteward": 8000000, "conversionScores": "1", "newUserSendPoint": "100", "storeDailyIncome": 9028000, "threeStarSteward": 6000000, "group_unsuccessful_set": 720, "normal_product_point_coefficient": 0.15, "activity_product_point_coefficient": 0.15}}', 0, '2022-07-06 20:07:24', '2022-10-08 17:38:29', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (7, 'last_team_reward_sum_end_time', '{"data": "2022-10-05 00:00:00"}', 0, '2022-07-22 03:00:03', '2022-10-05 02:00:04', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (8, 'healthPublicImg', '{"data": {"healthImg": [{"id": 168, "url": "https://wangzhe.yugoo.com/storage/product/y1KuqfcPxuvSDicrTsLQnplKdFl5BH99KJwx1UtO.jpg", "path": "done", "file_name": "banner-健康服务站.jpg"}]}}', 1, '2022-07-22 18:40:35', '2022-07-22 18:40:35', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (9, 'rafflePublicImg', '{"data": {"raffleImg": [{"id": 169, "url": "https://wangzhe.yugoo.com/storage/product/nurBDBPlfv09YzQe249E2m1v0y3JFA6d8woGeupG.jpg", "path": "done", "file_name": "热销店铺服务站店铺组团抽奖banner.jpg"}]}}', 1, '2022-07-22 18:40:35', '2022-07-22 18:40:35', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (10, 'openStorePublicImg', '{"data": {"openStoreImg": [{"id": 170, "url": "https://wangzhe.yugoo.com/storage/product/YYUQcZE1JCuXkHHDjhpWqVvfPPZ2mdXzfzjkxt66.jpg", "path": "done", "file_name": "申请开店banner.jpg"}]}}', 1, '2022-07-22 18:40:35', '2022-07-22 18:40:35', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (11, 'centerPublicImg', '{"data": {"centerImg": [{"id": 171, "url": "https://wangzhe.yugoo.com/storage/product/zJHO6QeJF5OqxEAzyrp7hJTqFhrA1lce7e4RvgPZ.png", "path": "done", "file_name": "申请运营中心banner.png"}]}}', 1, '2022-07-22 18:40:35', '2022-07-22 18:40:35', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (12, 'one_star_last_reward_time', '{"data": "2022-10-09 00:00:00"}', 0, '2022-08-14 02:30:03', '2022-10-09 02:30:04', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (13, 'two_star_last_reward_time', '{"data": "2022-10-07 00:00:00"}', 0, '2022-08-26 02:30:03', '2022-10-07 02:30:04', null);
INSERT INTO configurations (id, config_key, config_value, is_public_read, created_at, updated_at, deleted_at) VALUES (14, 'three_star_last_reward_time', '{"data": "2022-09-26 00:00:00"}', 0, '2022-09-12 02:30:04', '2022-09-26 02:30:04', null);
