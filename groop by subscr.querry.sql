select experience_level::text, count(um.user_id) from user_meta um
join user_payment_method upm on um.user_id = upm.user_id
group by experience_level::text