select name, count(factor_id) from user_factor uf join factor f
on uf.factor_id = f.id
group by name