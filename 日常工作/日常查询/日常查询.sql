# 根据手机号查已领取任务列表
SELECT u.account_id, ut.task_name, ut.task_fee, ut.task_points, ut.updated_at
FROM user_tasks AS ut
         LEFT JOIN users as u ON u.id = ut.user_id
WHERE u.account_id IN ('13736099249', '15658343193', '15888506958')
  AND ut.status = 2
  AND ut.deleted_at is null
ORDER BY u.account_id;


# 查指定商品待发货清单
SELECT
    op.product_name AS '商品名称',
        sum(op.count) AS '数量',
        o.delivery_contact_name AS '联系人',
        o.delivery_contact_phone AS '联系电话',
        CONCAT(
            o.delivery_province,
                o.delivery_city,
                o.delivery_district,
                o.delivery_town,
                o.delivery_address
            ) AS '收货地址'
FROM
    order_products AS op
        LEFT JOIN orders AS o ON o.id = op.order_id
WHERE
        op.original_product_id = 28
  AND o.`status` = 1
  AND op.deleted_at IS NULL
  AND o.deleted_at IS NULL
  AND o.delivery_contact_phone != ''
group by
    o.delivery_contact_phone;

# 变更客户电话号码
UPDATE users
SET account_id = '19162746701',
    `name` = '191*****701',
    mobile = '19162746701'
WHERE
        account_id = '18030497961';
UPDATE orders
SET delivery_contact_phone = '19162746701'
WHERE
        user_id = 590;
UPDATE delivery_addresses
SET contact_phone = '19162746701'
WHERE
        user_id = 590;

#替换图片地址为OSS
UPDATE configurations SET config_value=replace(`config_value`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE files SET file_url=replace(`file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE order_products SET product_cover_image_url=replace(`product_cover_image_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE orders SET logo_file_url=replace(`logo_file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE product_detail_images SET file_url=replace(`file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE product_images SET file_url=replace(`file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE products SET cover_image_url=replace(`cover_image_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE store_applications SET business_license_file_url=replace(`business_license_file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE stores SET business_license_file_url=replace(`business_license_file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com'),logo_file_url=replace(`logo_file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com'),shop_sign_file_url=replace(`shop_sign_file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE users SET avatar_file_url=replace(`avatar_file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');

UPDATE withdraw_applications SET withdraw_file_url=replace(`withdraw_file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com'),tax_file_url=replace(`tax_file_url`,'https://wangzhe-web.nlwzxt333.com/storage','https://wangzhexitong.oss-cn-chengdu.aliyuncs.com');
