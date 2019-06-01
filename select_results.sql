select /* a_result */ 'primary_nne_total' label, sum (case c26 when 1 then 1.0 else 0.0 end) eligible, count (*) total, round (count (*) / sum (case c26 when 1 then 1.0 else 0.0 end), 1) nn
from t1
where t1.id > 0 and t1.id < 83
union all
select /* a_result */ 'sec_1_nne_ward' label, sum (case c26 when 1 then 1.0 else 0.0 end) eligible, count (*) total, round (count (*) / sum (case c26 when 1 then 1.0 else 0.0 end), 1) nn
from t1 left join t4 on c25=t4.id
where t1.id > 0 and t1.id < 83 and c24=1
union all
select /* a_result */ 'sec_2_nne_expert' label, sum (case c26 when 1 then 1.0 else 0.0 end) eligible, count (*) total, round (count (*) / sum (case c26 when 1 then 1.0 else 0.0 end), 1) nn
from t1 left join t4 on c25=t4.id
where t1.id > 0 and t1.id < 83 and c24=2
union all
select /* a_result */ 'sec_3_nne_workup' label, sum (case c26 when 1 then 1.0 else 0.0 end) eligible, count (*) total, round (count (*) / sum (case c26 when 1 then 1.0 else 0.0 end), 1) nn
from t1 left join t4 on c25=t4.id
where t1.id > 0 and t1.id < 83 and c24=3
union all
select /* a_result */ 'sec_4_nnm_total' label, case when sum (c25) = (sum (t4.id) * 1) then 0 else '1+' end eligible, null total, null nn
from t1, t4
where t1.id > 0 and t1.id < 83