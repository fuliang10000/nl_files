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
