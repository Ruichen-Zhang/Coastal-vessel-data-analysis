select * from bfdata_reporting_info_appr;

select count(*) from bfdata.bfdata_reporting_info_appr
where time_ BETWEEN DATE_SUB(NOW(), INTERVAL 12 MONTH) AND NOW()
and manage_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);

-- 查询前十申报数量的派出所 -- 
SELECT org.org_name_ as 'name', COUNT(*) AS 'value' FROM bifang_organization AS org
JOIN bfdata_reporting_info_appr AS appr ON org.id_ = appr.manage_unit_
GROUP BY org.org_name_
ORDER BY COUNT(*) DESC
LIMIT 10;
