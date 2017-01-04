select distinct section, count(css.id) from content_series cs 
join content_session css
on cs.id = css.series_id
join session_completed_event sce
on sce.session_id = css.id 
group by section