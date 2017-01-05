select count("userId") from team_membership tm
join team t on t.id = tm."teamId"
join public.user pu on pu.id = tm."userId"
join user_meta um on um.user_id = pu.id
where t.name not like '%test%' and t.name not like '%Test%'
and pu.email not like '%test%' and pu.email not like '%Test%'
and um.first_name not like '%test%' and um.first_name not like '%Test%' 
and um.last_name not like '%test%' and um.last_name not like '%Test%' 
and um.first_name not like '%TEST%' and um.last_name not like '%TEST%' 
and um.last_name not like '%test%' and um.last_name not like '%Test%' 
and pu.email not like '%whil%' and pu.email not like '%Whil%' 