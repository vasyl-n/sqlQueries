select * from public.user u 
join user_subscription us on u.id = us.user_id 
join user_meta um on u.id = um.user_id
where start_date between u.created and (u.created + '8 days'::interval)