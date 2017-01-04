select csr.section as program, csr.name as series_name, cs.order, cs.name as session_name, ca.key as ses_type, css.step_type, ca.value,css.classifier from content_session cs
join content_series csr on cs.series_id = csr.id
join content_session_step css on css.session_id = cs.id
join content_asset ca on ca.session_step_id = css.id
where cs.published is not null
and ca.key <> '15min'
order by csr.section, csr.name,
CASE 
      WHEN cs.name like 'Takeaways%' THEN 999
else cs.order
END,
CASE ca.key
      WHEN '1min' THEN 1
      WHEN '5min' THEN 2
      WHEN '10min' THEN 3
      WHEN '15min' THEN 4
      WHEN '20min' THEN 5
      WHEN '25min' THEN 6
ELSE 7 
   END