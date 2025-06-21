create view report_summary as
select 
  p.name as patient_name,
  r.report_type,
  r.report_date,
  r.report_result
from reports r
join patients p on r.patient_id = p.patient_id;

select * from report_summary;
