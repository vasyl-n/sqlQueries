select distinct focus, f.name from user_factor uf join factor f
on uf.factor_id = f.id join user_meta um 
on um.user_id =uf.user_id join team_membership tm
on um.user_id = tm."userId" join team 
on tm."teamId" = team.id
where team.name = 'Havas'