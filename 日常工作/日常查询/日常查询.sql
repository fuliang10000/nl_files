-- 根据手机号查已领取任务列表
SELECT u.account_id, ut.task_name, ut.task_fee, ut.task_points, ut.updated_at
FROM user_tasks AS ut
         LEFT JOIN users as u ON u.id = ut.user_id
WHERE u.account_id IN ('13736099249', '15658343193', '15888506958')
  AND ut.status = 2
  AND ut.deleted_at is null
ORDER BY u.account_id;


-- 查指定商品待发货清单
SELECT op.product_name AS '商品名称', op.count AS '数量', o.delivery_contact_name AS '联系人', o.delivery_contact_phone AS '联系电话', CONCAT(
    o.delivery_province,
        o.delivery_city,
        o.delivery_district,
        o.delivery_town,
        o.delivery_address
    ) AS '收货地址',
        o.created_at AS '下单时间'
FROM order_products AS op
         LEFT JOIN orders AS o ON o.id = op.order_id
WHERE op.original_product_id = 28
  AND o.`status` = 1
  AND op.deleted_at IS NULL
  AND o.deleted_at IS NULL
  AND o.delivery_contact_phone != ''
  AND o.created_at >= '2022-11-12';

-- 变更客户电话号码
UPDATE users
SET account_id = '19162746701',
    `name`     = '191*****701',
    mobile     = '19162746701'
WHERE account_id = '18030497961';
UPDATE orders
SET delivery_contact_phone = '19162746701'
WHERE user_id = 590;
UPDATE delivery_addresses
SET contact_phone = '19162746701'
WHERE user_id = 590;

-- 替换图片地址为OSS
UPDATE configurations
SET config_value=replace(`config_value`, 'https://wangzhe-web.nlwzxt333.com/storage',
                         'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE files
SET file_url=replace(`file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                     'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE order_products
SET product_cover_image_url=replace(`product_cover_image_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                                    'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE orders
SET logo_file_url=replace(`logo_file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                          'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE product_detail_images
SET file_url=replace(`file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                     'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE product_images
SET file_url=replace(`file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                     'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE products
SET cover_image_url=replace(`cover_image_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                            'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE store_applications
SET business_license_file_url=replace(`business_license_file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                                      'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE stores
SET business_license_file_url=replace(`business_license_file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                                      'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com'),
    logo_file_url=replace(`logo_file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                          'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com'),
    shop_sign_file_url=replace(`shop_sign_file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                               'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE users
SET avatar_file_url=replace(`avatar_file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                            'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE withdraw_applications
SET withdraw_file_url=replace(`withdraw_file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                              'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com'),
    tax_file_url=replace(`tax_file_url`, 'https://wangzhe-web.nlwzxt333.com/storage',
                         'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

-- 修改推荐人后，业绩调整
update user_expense_changes
set deleted_at=CURRENT_TIMESTAMP
where id in (10940, 10941);
update user_expenses
set team_expense_in_cents=(team_expense_in_cents - 110000)
where id in (752, 818);
insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1704, 0, 110000, 0, '2022-10-20 17:32:28'),
       (1681, 0, 110000, 0, '2022-10-20 17:32:28'),
       (1092, 0, 110000, 0, '2022-10-20 17:32:28'),
       (1055, 0, 110000, 0, '2022-10-20 17:32:28'),
       (986, 0, 110000, 0, '2022-10-20 17:32:28'),
       (589, 0, 110000, 0, '2022-10-20 17:32:28'),
       (353, 0, 110000, 0, '2022-10-20 17:32:28'),
       (251, 0, 110000, 0, '2022-10-20 17:32:28'),
       (84, 0, 110000, 0, '2022-10-20 17:32:28'),
       (66, 0, 110000, 0, '2022-10-20 17:32:28'),
       (9, 0, 110000, 0, '2022-10-20 17:32:28'),
       (1431, 0, 110000, 0, '2022-10-20 17:32:28'),
       (3, 0, 110000, 0, '2022-10-20 17:32:28');
update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 110000)
where user_id in (3, 1431, 9, 66, 84, 251, 353, 589, 986, 1055, 1092, 1681, 1704);

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1704, 0, 110000, 0, '2022-10-19 18:08:56'),
       (1681, 0, 110000, 0, '2022-10-19 18:08:56'),
       (1092, 0, 110000, 0, '2022-10-19 18:08:56'),
       (1055, 0, 110000, 0, '2022-10-19 18:08:56'),
       (986, 0, 110000, 0, '2022-10-19 18:08:56'),
       (589, 0, 110000, 0, '2022-10-19 18:08:56'),
       (353, 0, 110000, 0, '2022-10-19 18:08:56'),
       (251, 0, 110000, 0, '2022-10-19 18:08:56'),
       (84, 0, 110000, 0, '2022-10-19 18:08:56'),
       (66, 0, 110000, 0, '2022-10-19 18:08:56'),
       (9, 0, 110000, 0, '2022-10-19 18:08:56'),
       (1431, 0, 110000, 0, '2022-10-19 18:08:56'),
       (3, 0, 110000, 0, '2022-10-19 18:08:56'),
       (1704, 0, 110000, 0, '2022-10-20 17:37:48'),
       (1681, 0, 110000, 0, '2022-10-20 17:37:48'),
       (1092, 0, 110000, 0, '2022-10-20 17:37:48'),
       (1055, 0, 110000, 0, '2022-10-20 17:37:48'),
       (986, 0, 110000, 0, '2022-10-20 17:37:48'),
       (589, 0, 110000, 0, '2022-10-20 17:37:48'),
       (353, 0, 110000, 0, '2022-10-20 17:37:48'),
       (251, 0, 110000, 0, '2022-10-20 17:37:48'),
       (84, 0, 110000, 0, '2022-10-20 17:37:48'),
       (66, 0, 110000, 0, '2022-10-20 17:37:48'),
       (9, 0, 110000, 0, '2022-10-20 17:37:48'),
       (1431, 0, 110000, 0, '2022-10-20 17:37:48'),
       (3, 0, 110000, 0, '2022-10-20 17:37:48');
update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 220000)
where user_id in (3, 1431, 9, 66, 84, 251, 353, 589, 986, 1055, 1092, 1681, 1704);

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 550000)
where user_id in (1784, 1745, 1743, 1742, 1732, 1667, 1241, 71);

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 440000)
where user_id in (1762, 1696, 1695, 1692, 1414, 199);

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 110000)
where user_id in (779);

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1784, 0, 550000, 0, '2022-10-27 17:08:56'),
       (1745, 0, 550000, 0, '2022-10-19 18:08:56'),
       (1743, 0, 550000, 0, '2022-10-19 18:08:56'),
       (1742, 0, 550000, 0, '2022-10-19 18:08:56'),
       (1732, 0, 550000, 0, '2022-10-19 18:08:56'),
       (1667, 0, 550000, 0, '2022-10-19 18:08:56'),
       (1241, 0, 550000, 0, '2022-10-19 18:08:56'),
       (71, 0, 550000, 0, '2022-10-19 18:08:56'),
       (1762, 0, 440000, 0, '2022-10-19 18:08:56'),
       (1696, 0, 440000, 0, '2022-10-19 18:08:56'),
       (1695, 0, 440000, 0, '2022-10-19 18:08:56'),
       (1692, 0, 440000, 0, '2022-10-19 18:08:56'),
       (1414, 0, 440000, 0, '2022-10-19 18:08:56'),
       (199, 0, 440000, 0, '2022-10-19 18:08:56'),
       (779, 0, 110000, 0, '2022-10-19 18:08:56');

-- 变更客户电话号码
update users set invited_by_user_id=1773 where id=487;
UPDATE users
SET account_id = '18685917787',
    `name`     = '186*****787',
    mobile     = '18685917787'
WHERE account_id = '15528111260';
UPDATE orders
SET delivery_contact_phone = '18685917787',
    delivery_province = '贵州省',
    delivery_city = '遵义市',
    delivery_district = '红花岗区',
    delivery_town = '',
    delivery_address = '区政府2小区'
WHERE user_id = 487;
UPDATE delivery_addresses
SET contact_phone = '18685917787'
WHERE user_id = 487;

-- 变更推荐人，增加业绩
update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 770000)
where user_id in (1773, 1770, 590);

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1773, 0, 770000, 0, CURRENT_TIMESTAMP),
       (1770, 0, 770000, 0, CURRENT_TIMESTAMP),
       (590, 0, 770000, 0, CURRENT_TIMESTAMP);

-- 修改用户手机号
update users set mobile=18685917787 where id=487;
delete from users where id=1811;
delete from authentications where user_id in(1811,487);

update users set invited_by_user_id=1084 where id=199;

INSERT INTO app_versions ( `platform`, `version_number`, `build_number`, `download_url`, `file_name`, `changelog` )
VALUES ( 0, '3.2.34', 22, 'https://wangzhexitong.oss-cn-chengdu.aliyuncs.com/app-test/wangzhe3.2.34.apk', 'wangzhe3.2.34.apk', '-' );


update orders set
                  `delivery_contact_name`='李善琴',
                  `delivery_contact_phone`='13451255180',
                  `delivery_province`='湖北省',
                  `delivery_address`='湖北省十堰市郧西县湖北口乡街'
where `serial_number`='112491648163774464' and `user_id`=1862;

INSERT INTO `configurations`
VALUES
    ( 17, 'five_star_last_reward_time', '{\"data\": \"2022-11-07 00:00:00\"}', 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL ),
    ( 18, 'elite_last_reward_time', '{\"data\": \"2022-11-07 00:00:00\"}', 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL );

update  `configurations` set `config_value`='{\"data\": \"2022-11-07 00:00:00\"}' where `config_key` in('one_star_last_reward_time', 'two_star_last_reward_time');

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 1980000)
where user_id in (325);
insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (325, 0, 1980000, 0, CURRENT_TIMESTAMP);

update user_expense_changes set created_at='2022-10-08 18:08:57' where id=12262;

-- 修改处理状态
UPDATE withdraw_applications SET `status`=2,`rejection_comment`='系统驳回',`reviewed_at`=CURRENT_TIMESTAMP WHERE id=1627;
-- 修改用户可提现金额
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+1300000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-1300000 WHERE user_id=9;
-- 创建收支记录
INSERT INTO user_income_and_expenditures (`user_id`, `type`,`action_type`, `amount_in_cents`, `redemption_point`, `user_balance_in_cents`, `user_redemption_point`, `additional_info`, `action_taken_at`, `created_at`)
values (9, 0, 0, 1300000, 0, 1394300,6272, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- 创建余额明细
INSERT INTO user_balance_changes (`user_id`, `changed_amount_in_cents`,`change_type`,`change_detail`, `created_at`) values (9,1300000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP);

-- 变更推荐人，增加业绩
update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 110000)
where user_id in (1872, 1774, 1561,1558,1503,1370,1767,1765,1696,1695,1693,1692,1414,199,1084,637,408,407,246,1784,1745,1743,1742,1732,1667,1241,779,71,9,1431,3);

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1872, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1774, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1561, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1558, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1503, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1370, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1767, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1765, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1696, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1695, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1693, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1692, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1414, 0, 110000, 0, CURRENT_TIMESTAMP),
       (199, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1084, 0, 110000, 0, CURRENT_TIMESTAMP),
       (637, 0, 110000, 0, CURRENT_TIMESTAMP),
       (408, 0, 110000, 0, CURRENT_TIMESTAMP),
       (407, 0, 110000, 0, CURRENT_TIMESTAMP),
       (246, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1784, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1745, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1743, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1742, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1732, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1667, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1241, 0, 110000, 0, CURRENT_TIMESTAMP),
       (779, 0, 110000, 0, CURRENT_TIMESTAMP),
       (71, 0, 110000, 0, CURRENT_TIMESTAMP),
       (9, 0, 110000, 0, CURRENT_TIMESTAMP),
       (1431, 0, 110000, 0, CURRENT_TIMESTAMP),
       (3, 0, 110000, 0, CURRENT_TIMESTAMP);

insert into user_expenses
    (`user_id`,`personal_expense_in_cents`,`team_expense_in_cents`,`created_at`)
    values
   (1900,0, 9020096, '2022-11-06 00:00:00'),
   (1901,0, 9020096, '2022-11-06 00:00:00');

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1900, 0, 9020096, 0, '2022-11-06 00:00:00'),
       (1901, 0, 9020096, 0, '2022-11-06 00:00:00');

update orders set
                  `delivery_contact_name`='翟振杰',
                  `delivery_contact_phone`='13905315279',
                  `delivery_province`='山东省',
                  `delivery_city`='济南市',
                  `delivery_district`='市中区',
                  `delivery_town`='舜玉路街道',
                  `delivery_address`='舜耕路219号1号楼1单元1102室'
where `id` in(258, 256, 255) and `user_id`=1862;

update `users` set `password`='$2y$10$Sofsos91pqasmsNEZ6vK9ujqW5GMpseYYzVg52Bk6pTUpNTGgzSVy' where account_id='18732445870';

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 3300025)
where user_id in (1910);
insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1910, 0, 3300025, 0, '2022-11-06 00:00:00');

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1849, 0, 110002, 0, '2022-11-17 13:24:00'),
       (1836, 0, 110002, 0, '2022-11-17 13:24:00'),
       (1834, 0, 110002, 0, '2022-11-17 13:24:00'),
       (1822, 0, 110002, 0, '2022-11-17 13:24:00'),
       (1567, 0, 110002, 0, '2022-11-17 13:24:00'),
       (1436, 0, 110002, 0, '2022-11-17 13:24:00'),
       (890, 0, 110002, 0, '2022-11-17 13:24:00'),
       (364, 0, 110002, 0, '2022-11-17 13:24:00'),
       (251, 0, 110002, 0, '2022-11-17 13:24:00'),
       (84, 0, 110002, 0, '2022-11-17 13:24:00'),
       (66, 0, 110002, 0, '2022-11-17 13:24:00'),
       (9, 0, 110002, 0, '2022-11-17 13:24:00'),
       (1431, 0, 110002, 0, '2022-11-17 13:24:00'),
       (3, 0, 110002, 0, '2022-11-17 13:24:00');
update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 110002)
where user_id in (1849,1836,1834,1822,1567,1436,890,364,251,84,66,9,1431,3);

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 110012)
where user_id in (1567,1436,890,364,251,84,66,9,1431,3);

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1567, 0, 110012, 0, '2022-11-25 20:14:00'),
       (1436, 0, 110012, 0, '2022-11-25 20:14:00'),
       (890, 0, 110012, 0, '2022-11-25 20:14:00'),
       (364, 0, 110012, 0, '2022-11-25 20:14:00'),
       (251, 0, 110012, 0, '2022-11-25 20:14:00'),
       (84, 0, 110012, 0, '2022-11-25 20:14:00'),
       (66, 0, 110012, 0, '2022-11-25 20:14:00'),
       (9, 0, 110012, 0, '2022-11-25 20:14:00'),
       (1431, 0, 110012, 0, '2022-11-25 20:14:00'),
       (3, 0, 110012, 0, '2022-11-25 20:14:00');

-- 删除业绩
update user_expenses set team_expense_in_cents=0 where user_id in (1946);
update user_expense_changes set deleted_at=CURRENT_TIMESTAMP where user_id=1946;

-- 变更客户电话号码
delete from users where account_id='18190909033';
UPDATE users
SET account_id = '18190909033',
    `name`     = '181*****033',
    mobile     = '18190909033'
WHERE account_id = '19140556701';

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1970, 0, 550047, 0, '2022-11-22 22:48:00'),
       (1964, 0, 550047, 0, '2022-11-22 22:48:00'),
       (1962, 0, 550047, 0, '2022-11-22 22:48:00'),
       (1925, 0, 550047, 0, '2022-11-22 22:48:00'),
       (1680, 0, 550047, 0, '2022-11-22 22:48:00'),
       (1429, 0, 550047, 0, '2022-11-22 22:48:00'),
       (1386, 0, 550047, 0, '2022-11-22 22:48:00'),
       (443, 0, 550047, 0, '2022-11-22 22:48:00');

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 550047)
where user_id in (1970,1964,1962,1925,1680,1429,1386,443);
update user_expenses
set team_expense_in_cents=(team_expense_in_cents - 550047)
where user_id=592;

update user_expense_changes set deleted_at=CURRENT_TIMESTAMP where user_id=592 and id>=13573;

update user_balances set total_balance_in_cents=1245500,
                         withdrawn_balance_in_cents=340000,
                         remaining_balance_in_cents=879300 where user_id=1185;

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 9350067)
where user_id in (1987,1394,737,573,1608,568,428,38,15,7,6,3);
insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1987, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (1394, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (737, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (573, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (1608, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (568, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (428, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (38, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (15, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (7, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (6, 0, 9350067, 0, '2022-11-24 14:18:00'),
       (3, 0, 9350067, 0, '2022-11-24 14:18:00');

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 21560170)
where user_id in (1146);
insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1146, 0, 21560170, 0, CURRENT_TIMESTAMP);

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 110003)
where user_id in (2035,1989,1985,1952,1949,1936,1927,1827,1396,1901,1900,364,251,84,66,9,1431,3);
insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (2035, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1989, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1985, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1952, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1949, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1936, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1927, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1827, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1396, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1901, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1900, 0, 110003, 0, '2022-11-25 20:14:00'),
       (364, 0, 110003, 0, '2022-11-25 20:14:00'),
       (251, 0, 110003, 0, '2022-11-25 20:14:00'),
       (84, 0, 110003, 0, '2022-11-25 20:14:00'),
       (66, 0, 110003, 0, '2022-11-25 20:14:00'),
       (9, 0, 110003, 0, '2022-11-25 20:14:00'),
       (1431, 0, 110003, 0, '2022-11-25 20:14:00'),
       (3, 0, 110003, 0, '2022-11-25 20:14:00');

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 61265488)
where user_id in (1770,590,325);

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1770, 0, 7487998, 0, CURRENT_TIMESTAMP),
       (590, 0, 7487998, 0, CURRENT_TIMESTAMP),
       (325, 0, 7487998, 0, CURRENT_TIMESTAMP);

insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (1770, 0, 53777490, 0, '2022-11-20 20:14:00'),
       (590, 0, 53777490, 0, '2022-11-20 20:14:00'),
       (325, 0, 53777490, 0, '2022-11-20 20:14:00');

UPDATE users
SET account_id = '19383957767',
    `name`     = '193*****767',
    mobile     = '19383957767'
WHERE account_id = '19162746701';
UPDATE users
SET account_id = '19383137767',
    `name`     = '193*****767',
    mobile     = '19383137767'
WHERE account_id = '18628398999';

UPDATE users
SET account_id = '13808290300',
    `name`     = '138*****300',
    mobile     = '13808290300'
WHERE account_id = '18181646202';
UPDATE users
SET account_id = '19140556701',
    `name`     = '191*****701',
    mobile     = '19140556701'
WHERE account_id = '18280260351';

-- 初始化用户名
UPDATE `users` SET `username`=CONCAT('nl',LPAD(`id`,7,0)) WHERE `username`='';

update payments set `payment_status`=1,`paid_at`='2022-12-01 13:56:53',`paid_with_wechat_amount_in_cents`=110013 where out_trade_no='121248156628287488';

update orders set status=1,`paid_at`='2022-12-01 13:56:53' where out_trade_no='121248156628287488';

update raffle_tickets set is_enabled=1 where out_trade_no='121248156628287488';

insert into user_income_and_expenditures (`user_id`,`type`,`action_type`,`amount_in_cents`,`user_redemption_point`,`user_balance_in_cents`,`additional_info`,`action_taken_at`,`created_at`)
                                values (2168,1,2,'-110000',100,0,'{"store_name": "王者系统", "product_name": "王者系统 - 纳零·参麦双果植物固体饮料（呼吸产品）等1件商品", "order_serial_number": "121248156611510272"}',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
insert into user_expenses (`user_id`,`personal_expense_in_cents`,`team_expense_in_cents`,`created_at`) values (2168,110013,0,CURRENT_TIMESTAMP);
insert into user_expense_changes (`user_id`,`personal_expense_in_cents`,`team_expense_in_cents`,`type`,`created_at`) values (2168,110013,0,0,CURRENT_TIMESTAMP);

update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 110013)
where user_id in (569,37,15,7,6,3);
insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (569, 0, 110013, 0, CURRENT_TIMESTAMP),
       (37, 0, 110013, 0, CURRENT_TIMESTAMP),
       (15, 0, 110013, 0, CURRENT_TIMESTAMP),
       (7, 0, 110013, 0, CURRENT_TIMESTAMP),
       (6, 0, 110013, 0, CURRENT_TIMESTAMP),
       (3, 0, 110013, 0, CURRENT_TIMESTAMP);

insert into user_activity_orders (`product_id`,`order_id`,`user_id`,`total_amount_in_cents`,`created_at`,`updated_at`) values (28,2682,2168,110000,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);
insert into user_redemption_points (`user_id`,`total_point`,`used_point`,`remaining_point`,`created_at`) values (2168,100,0,100,CURRENT_TIMESTAMP);
insert into user_redemption_point_changes (`user_id`,`changed_point`,`change_detail`,`created_at`) values (2168,100,'{"description": "活动专区首单赠送积分"}',CURRENT_TIMESTAMP);

update user_relationships set is_activated=1 where user_id=2168;

update products set `sales`=`sales`+1 where id=28;
update balance_summaries set `expense_in_cents`=`expense_in_cents`+110000 where `summary_date`='2022-12-01 00:00:00';
update store_incomes set
                         `sales_amount_in_cents`=`sales_amount_in_cents`+110000,
                         `activity_product_sales_amount_in_cents`=`activity_product_sales_amount_in_cents`+110000,
                         `income_in_cents`=`income_in_cents`+110000,
                         `activity_product_income_in_cents`=`activity_product_income_in_cents`+110000 where store_id=1;

update store_daily_incomes set `sales_amount_in_cents`=`sales_amount_in_cents`+110000,
                               `activity_product_sales_amount_in_cents`=`activity_product_sales_amount_in_cents`+110000,
                               `income_in_cents`=`income_in_cents`+110000,
                               `activity_product_income_in_cents`=`activity_product_income_in_cents`+110000 where `summary_date`='2022-12-01 00:00:00';

insert into pending_user_tasks
(`user_id`,`type`,`task_name`,`task_fee`,`task_points`,`computed_task_fee`,`computed_task_points`,`status`,`summary_period`,`store_id`,`coefficient`,`store_increased_income_in_cents`,`team_increased_expense_in_cents`,`release_type`,`created_at`)
values
(37,4,'运营中心任务',4700,8,4700,8,0,'2022-12-01 13:56',1,'5%',110013,110013,0,CURRENT_TIMESTAMP),
(15,3,'超级管家任务',4700,8,4700,8,0,'2022.12.01 13:56',1,'5%',110013,110013,0,CURRENT_TIMESTAMP);

-- 修改处理状态
UPDATE withdraw_applications SET `status`=2,`rejection_comment`='银行卡号有误',`reviewed_at`=CURRENT_TIMESTAMP WHERE id in(1220,1394,1690,1369,1628);
UPDATE withdraw_applications SET `status`=2,`rejection_comment`='年龄不符合用工需求16-60岁',`reviewed_at`=CURRENT_TIMESTAMP WHERE id in(1563,1356,1355,1307,1298,1504,1118,1093);

-- 修改用户可提现金额
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=1219;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+50000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-50000 WHERE user_id=1092;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+20000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-20000 WHERE user_id=154;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+40000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-40000 WHERE user_id=408;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=377;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=559;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=131;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=185;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+40000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-40000 WHERE user_id=1624;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+20000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-20000 WHERE user_id=1259;

-- 创建余额明细
INSERT INTO user_balance_changes (`user_id`, `changed_amount_in_cents`,`change_type`,`change_detail`, `created_at`)
values (1219,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(1092,50000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(154,20000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(408,40000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(377,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(559,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(131,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(185,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(1624,40000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
(1259,20000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP);

-- 创建收支记录
INSERT INTO user_income_and_expenditures (`user_id`, `type`,`action_type`, `amount_in_cents`, `redemption_point`, `user_balance_in_cents`, `user_redemption_point`, `additional_info`, `action_taken_at`, `created_at`)
values (1219, 0, 0, 10000, 0, 19600,107, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (1092, 0, 0, 50000, 0, 60800,178, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (154, 0, 0, 20000, 0, 34700,184, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (408, 0, 0, 40000, 0, 70200,208, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (377, 0, 0, 10000, 0, 21000,121, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (559, 0, 0, 10000, 0, 11100,111, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (131, 0, 0, 10000, 0, 18000,250, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (185, 0, 0, 10000, 0, 12900,230, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (1624, 0, 0, 40000, 0, 46500,147, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (1259, 0, 0, 20000, 0, 39600,135, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

update user_balances set `withdrawn_balance_in_cents`=10000 WHERE user_id=1219;

UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+20000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=154;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+40000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-20000 WHERE user_id=408;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=377;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=559;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=131;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+10000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-10000 WHERE user_id=185;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+40000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-40000 WHERE user_id=1624;
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+20000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-20000 WHERE user_id=1259;

-- 创建余额明细
INSERT INTO user_balance_changes (`user_id`, `changed_amount_in_cents`,`change_type`,`change_detail`, `created_at`)
values (1219,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (1092,50000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (154,20000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (408,40000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (377,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (559,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (131,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (185,10000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (1624,40000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP),
       (1259,20000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP);

-- 创建收支记录
INSERT INTO user_income_and_expenditures (`user_id`, `type`,`action_type`, `amount_in_cents`, `redemption_point`, `user_balance_in_cents`, `user_redemption_point`, `additional_info`, `action_taken_at`, `created_at`)
values (1219, 0, 0, 10000, 0, 19600,107, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (1092, 0, 0, 50000, 0, 60800,178, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (154, 0, 0, 20000, 0, 34700,184, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (408, 0, 0, 40000, 0, 70200,208, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (377, 0, 0, 10000, 0, 21000,121, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (559, 0, 0, 10000, 0, 11100,111, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (131, 0, 0, 10000, 0, 18000,250, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (185, 0, 0, 10000, 0, 12900,230, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (1624, 0, 0, 40000, 0, 46500,147, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (1259, 0, 0, 20000, 0, 39600,135, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 修改处理状态
UPDATE withdraw_applications SET `status`=2,`rejection_comment`='年龄不符合用工需求16-60岁',`reviewed_at`=CURRENT_TIMESTAMP WHERE id in(2326,2332,2333);
-- 修改用户可提现金额
UPDATE user_balances SET `remaining_balance_in_cents`=`remaining_balance_in_cents`+270000,`withdrawn_balance_in_cents`=`withdrawn_balance_in_cents`-270000 WHERE user_id=643;
-- 创建余额明细
INSERT INTO user_balance_changes (`user_id`, `changed_amount_in_cents`,`change_type`,`change_detail`, `created_at`)
values (643,270000,0,'{"description": "提现申请被驳回"}', CURRENT_TIMESTAMP);
-- 创建收支记录
INSERT INTO user_income_and_expenditures (`user_id`, `type`,`action_type`, `amount_in_cents`, `redemption_point`, `user_balance_in_cents`, `user_redemption_point`, `additional_info`, `action_taken_at`, `created_at`)
values (643, 0, 0, 270000, 0, 298000,510, '{"comment": "提现申请被驳回"}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

update users set `name`='153*****727' where `account_id`='15397622727';
update users set `name`='191*****312' where `account_id`='19196955312';

update sub_user_applications set deleted_at=CURRENT_TIMESTAMP where id_card='431221198010130010';
update users set deleted_at=CURRENT_TIMESTAMP where id_card='431221198010130010' and id!=814;
update users set id_card='' where id=814;

update configurations set config_value='{\"data\": {\"tax\": \"5\", \"shop\": \"15\", \"noWin\": \"10\", \"unpaid\": \"1\", \"lottery\": \"15\", \"newUser\": \"100\", \"shopDays\": \"3\", \"shopTimes\": \"3\", \"conversion\": \"1\", \"noWinTimes\": \"10\", \"serviceFee\": \"0\", \"kingSteward\": 25000000, \"lotteryDays\": \"3\", \"teamRewards\": \"14\", \"lotteryTimes\": \"2\", \"serviceCharge\": \"1\", \"conversionPrice\": 100, \"fiveStarSteward\": 16000000, \"fourStarSteward\": 8000000, \"conversionScores\": \"1\", \"newUserSendPoint\": \"100\", \"storeDailyIncome\": 7274000, \"threeStarSteward\": 6000000, \"group_unsuccessful_set\": 720, \"normal_product_point_coefficient\": 0.15, \"activity_product_point_coefficient\": 0.15}}' where config_key='system_configuration'

update users set password='$2y$10$uYnQ9nQoeaFV0AhtUN2e3uEDh86.WgIQqLSx/01PTNjbUU51ZmTkC' where id_card='512531197111220037' and account_id='';

SELECT
    uec.user_id,
    u.account_id AS '手机号',
        u.username AS '用户名',
        SUM( uec.personal_expense_in_cents / 100 ) AS '个人业绩',
        SUM( uec.team_expense_in_cents / 100 ) AS '市场业绩'
FROM
    user_expense_changes AS uec
        LEFT JOIN users AS u ON u.id = uec.user_id
WHERE
        uec.created_at >= '2022-12-11'
GROUP BY
    uec.user_id
HAVING
        个人业绩 >= '50000';

SELECT u.id,u.username,u.account_id FROM user_membership_roles AS umr LEFT JOIN users AS u ON u.id=umr.user_id WHERE umr.membership_role_id=2 AND umr.created_at>='2022-12-11' ORDER BY u.id;

-- 复购区成本价调整
UPDATE `products` SET `cost_price_in_cents`=`cost_price_in_cents`+`price_in_cents`*0.1 WHERE `category_id`=3;

-- 增加业绩
update user_expenses
set team_expense_in_cents=(team_expense_in_cents + 110000)
where user_id in (15, 7, 6, 3);
update user_expenses
set personal_expense_in_cents=(personal_expense_in_cents + 110000)
where user_id in (680);
insert into user_expense_changes (`user_id`, `personal_expense_in_cents`, `team_expense_in_cents`, `type`, `created_at`)
values (15, 0, 110000, 0, '2022-08-27 20:03:11'),
       (7, 0, 110000, 0, '2022-08-27 20:03:11'),
       (6, 0, 110000, 0, '2022-08-27 20:03:11'),
       (3, 0, 110000, 0, '2022-08-27 20:03:11'),
       (192, 0, 110000, 0, '2022-08-27 20:03:11'),
       (680, 110000, 0, 0, '2022-08-27 20:03:11');

SELECT user_id FROM user_relationships WHERE lft>=1299 AND rgt<=3960;


SELECT u.id,u.username,u.account_id,SUM(ub.withdraw_in_cents/100) AS '已提现金额',b.remaining_balance_in_cents/100 AS '未提现余额' FROM user_balances AS b LEFT JOIN users AS u ON u.id=b.user_id LEFT JOIN withdraw_applications AS ub ON ub.user_id=ub.user_id AND ub.status=1 WHERE b.user_id IN(SELECT user_id FROM user_relationships WHERE lft>=1299 AND rgt<=3960) GROUP BY ub.user_id;


SELECT u.id,u.username,u.account_id,ub.withdraw_in_cents/100 AS '提现审核中未付',ub.user_name,ub.created_at AS '申请时间' FROM withdraw_applications AS ub LEFT JOIN users AS u ON u.id=ub.user_id WHERE ub.user_id IN(SELECT user_id FROM user_relationships WHERE lft>=1299 AND rgt<=3960) AND ub.status=0;

SELECT u.id,u.username,u.account_id,remaining_balance_in_cents/100 AS '余额' FROM users AS u user_balances AS ub LEFT JOIN users AS u ON u.id=ub.user_id WHERE ub.user_id IN(SELECT user_id FROM user_relationships WHERE lft>=1299 AND rgt<=3960)

SELECT user_id FROM withdraw_applications WHERE user_name='闻悦虹' GROUP BY user_id;

SELECT ur.user_id,ur.lft FROM user_relationships AS ur WHERE ur.user_id IN(SELECT user_id FROM withdraw_applications WHERE user_name='闻悦虹');

-- 573,737,1146,1608

SELECT u.username,u.account_id,ub.remaining_balance_in_cents/100 AS '可提现余额',wa.user_name FROM user_balances AS ub LEFT JOIN users AS u ON u.id=ub.user_id LEFT JOIN withdraw_applications AS wa ON wa.user_id=ub.user_id WHERE ub.user_id IN(SELECT user_id FROM user_relationships WHERE direct_superior_user_id=1608 OR direct_superior_user_id IN(SELECT user_id FROM user_relationships WHERE direct_superior_user_id=1608)) GROUP BY ub.user_id;

DELETE FROM user_authentications WHERE user_id=1164;
UPDATE users SET auth_state=0 WHERE id=1164;

UPDATE product_categories SET `name`='会员福利区',`abbreviation`='会员福利区' WHERE id=3;
UPDATE products SET `category_name`='会员福利区',`category_name_abbr`='会员福利区' WHERE category_id=3 AND category_name='复购区';
UPDATE order_products SET product_category_name='会员福利区',product_category_name_abbr='会员福利区' WHERE product_category_name='复购区';

INSERT INTO logistics ( `delivery_package_id`, `logistic_code`, `order_code`, `shipper_code`, `state`, `state_ex`, `traces`, `updated_at` )
SELECT
    id,
    shipping_serial_number,
    order_id,
    CASE
        shipping_company_name
        WHEN '极兔物流' THEN
            'JTSD'
        WHEN '极兔快递' THEN
            'JTSD'
        WHEN '京东物流' THEN
            'JD'
        WHEN '京东快递' THEN
            'JD'
        WHEN '中通速运' THEN
            'ZTOKY'
        WHEN '中通快递' THEN
            'ZTO'
        END 'shipper_code',
        0,
    0,
    '[]',
    CURRENT_TIMESTAMP
FROM
    delivery_packages
WHERE
    deleted_at IS NULL
  AND shipping_company_name IN ( '极兔物流', '极兔快递', '京东物流', '京东快递', '中通快递', '中通速运' );


复购积分充值=119
提现余额充值=470
积分充值=1706

DELETE FROM raffle_tickets WHERE user_id=33;
insert into user_point_pools (`user_id`, `store_id`, `pool_type`, `total_point`, `delivered_point`, `remaining_point`)
values (33, 1, 1, 2200, 494, 1706);
insert into user_point_pool_changes (`user_id`, `store_id`, `pool_type`, `changed_point`, `change_detail`)
values (33, 1, 1, -494, '{"description": "发放积分"}');

SELECT op.product_name AS '商品名称', op.count AS '数量', u.account_id AS '下单人手机号', u.username AS  '下单人王者号', o.delivery_contact_name AS '收货人', o.delivery_contact_phone AS '收货人电话', CONCAT(
    o.delivery_province,
        o.delivery_city,
        o.delivery_district,
        o.delivery_town,
        o.delivery_address
    ) AS '收货地址',
        o.created_at AS '下单时间'
FROM order_products AS op
         LEFT JOIN orders AS o ON o.id = op.order_id
         LEFT JOIN users AS u ON u.id=o.user_id
WHERE op.original_product_id = 28
  AND o.`status` = 1
  AND op.deleted_at IS NULL
  AND o.deleted_at IS NULL
  AND o.delivery_contact_phone != '' AND o.delivery_contact_name='闻乙孺';

SELECT
    u.account_id AS '手机号',
        u.is_marketing_center AS '运营中心',
        u.is_super_member AS '超级管家',
        u.is_star_member AS '星级管家',
        ur.direct_superior_user_id,
    COUNT(DISTINCT ur.user_id) AS total_recommend,
    MIN( o.created_at ) AS '下单时间',
        o.delivery_province AS '省份',
        ( ub.total_balance_in_cents / 100 ) AS '个人总收入'
FROM
    user_relationships AS ur
        LEFT JOIN users AS u ON u.id = ur.direct_superior_user_id
        LEFT JOIN orders AS o ON o.user_id = ur.direct_superior_user_id AND o.paid_at IS NOT NULL
        LEFT JOIN user_balances AS ub ON ub.user_id = ur.direct_superior_user_id
WHERE
        ur.is_activated = 1
GROUP BY
    ur.direct_superior_user_id
HAVING
        total_recommend >= 10 ORDER BY o.delivery_province;

update orders set deleted_at=CURRENT_TIMESTAMP where id=3744;
update user_expense_changes set deleted_at=CURRENT_TIMESTAMP where id in(24861,24862,24863,24864,24865);
update user_expenses set personal_expense_in_cents=personal_expense_in_cents-19500 where user_id=590;
update user_expenses set team_expense_in_cents=team_expense_in_cents-19500 where user_id in(325,9,1431,3);

-- 2023-02-20
UPDATE `user_tasks` SET task_action_id=452 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-20%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=453 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-20%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=451 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-20%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=450 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-20%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=454 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-20%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=455 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-20%' AND task_id=12;

-- 2023-02-19
UPDATE `user_tasks` SET task_action_id=446 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-19%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=447 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-19%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=445 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-19%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=444 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-19%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=448 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-19%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=449 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-19%' AND task_id=12;

-- 2023-02-18
UPDATE `user_tasks` SET task_action_id=440 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-18%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=441 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-18%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=439 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-18%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=438 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-18%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=442 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-18%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=443 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-18%' AND task_id=12;

-- 2023-02-17
UPDATE `user_tasks` SET task_action_id=434 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-17%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=435 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-17%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=433 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-17%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=432 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-17%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=436 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-17%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=437 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-17%' AND task_id=12;

-- 2023-02-16
UPDATE `user_tasks` SET task_action_id=428 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-16%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=429 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-16%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=427 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-16%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=426 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-16%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=430 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-16%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=431 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-16%' AND task_id=12;

-- 2023-02-15
UPDATE `user_tasks` SET task_action_id=416 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-15%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=417 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-15%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=415 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-15%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=424 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-15%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=418 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-15%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=419 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-15%' AND task_id=12;

-- 2023-02-14
UPDATE `user_tasks` SET task_action_id=410 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-14%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=411 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-14%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=409 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-14%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=423 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-14%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=412 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-14%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=413 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-14%' AND task_id=12;

-- 2023-02-13
UPDATE `user_tasks` SET task_action_id=404 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-13%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=421 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-13%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=403 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-13%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=402 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-13%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=422 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-13%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=407 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-13%' AND task_id=12;

-- 2023-02-12
UPDATE `user_tasks` SET task_action_id=398 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-12%' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=399 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-12%' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=420 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-12%' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=396 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-12%' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=400 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-12%' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=401 WHERE `status` IN ( 0, 1 ) AND created_at LIKE '2023-02-12%' AND task_id=12;

-- 2023-02-11之前
UPDATE `user_tasks` SET task_action_id=392 WHERE `status` IN ( 0, 1 ) AND created_at <= '2023-02-11' AND task_id=1;
UPDATE `user_tasks` SET task_action_id=393 WHERE `status` IN ( 0, 1 ) AND created_at <= '2023-02-11' AND task_id=2;
UPDATE `user_tasks` SET task_action_id=391 WHERE `status` IN ( 0, 1 ) AND created_at <= '2023-02-11' AND task_id=3;
UPDATE `user_tasks` SET task_action_id=390 WHERE `status` IN ( 0, 1 ) AND created_at <= '2023-02-11' AND task_id=4;
UPDATE `user_tasks` SET task_action_id=394 WHERE `status` IN ( 0, 1 ) AND created_at <= '2023-02-11' AND task_id=11;
UPDATE `user_tasks` SET task_action_id=395 WHERE `status` IN ( 0, 1 ) AND created_at <= '2023-02-11' AND task_id=12;

-- 星级管家任务
UPDATE `user_tasks` SET task_action_id=227 WHERE `status` IN ( 0, 1 ) AND task_id=9;
UPDATE `user_tasks` SET task_action_id=226 WHERE `status` IN ( 0, 1 ) AND task_id=10;

INSERT INTO tasks ( `type`, `name`, `service_fees`, `relevance_keeper` )
VALUES
    ( 4, '个人业绩升级任务', 0, '[]' ),
    ( 5, '团队人数升级任务', 0, '[]' ),
    ( 6, '团队业绩升级任务', 0, '[]' );