SELECT *
FROM bfdata_reporting_info_appr;
select * from bfdata_local_vessel;
select * from bfdata_nonlocal_vessel;

-- 查询船舶吨位
select distinct count(*) from bfdata_local_vessel
where power_ < 44 and is_recover_ is null;

select distinct count(*) from bfdata_nonlocal_vessel
where power_ < 44 and is_recover_ is null;

select distinct count(*) from bfdata_local_vessel
where power_ between 44 and 330 and is_recover_ is null;

select distinct count(*) from bfdata_nonlocal_vessel
where power_ between 44 and 330 and is_recover_ is null;

select distinct count(*) from bfdata_local_vessel
where power_ between 330 and 705 and is_recover_ is null;

select distinct count(*) from bfdata_nonlocal_vessel
where power_ between 330 and 705 and is_recover_ is null;

select distinct count(*) from bfdata_local_vessel
where power_ > 705 and is_recover_ is null;

select distinct count(*) from bfdata_nonlocal_vessel
where power_ > 705 and is_recover_ is null;


-- 查询船舶各个用途数量 --
select vessel_use_ as 'name', count(*) as 'value' from bfdata_local_vessel
where is_recover_ is null
group by vessel_use_;

select vessel_use_ as 'name', count(*) as 'value' from bfdata_nonlocal_vessel
where is_recover_ is null
group by vessel_use_;

SELECT vessel_use_ as 'name', SUM(total_count) AS 'value'
FROM ( SELECT vessel_use_, COUNT(*) AS total_count
FROM ( SELECT vessel_use_ FROM bfdata_local_vessel where is_recover_ is null
UNION ALL SELECT vessel_use_ FROM bfdata_nonlocal_vessel where is_recover_ is null
) AS combined_vessels
GROUP BY vessel_use_)
AS grouped_vessels
GROUP BY vessel_use_;



-- 入港登记3个月后没有出港记录的本地船舶列表 --
select * from bfdata_local_vessel
where name_ in (
	SELECT vessel_name_ FROM bfdata_reporting_info_appr t1
	WHERE method_ = '入港'
	AND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)
	AND vessel_name_ NOT IN (
		SELECT vessel_name_ FROM bfdata_reporting_info_appr t2
		WHERE t2.method_ = '出港'
		and t2.vessel_name_ = t1.vessel_name_
		and t2.time_ > t1.time_
	)
);


-- 入港登记3个月后没有出港记录的外地船舶列表 --
select * from bfdata_nonlocal_vessel
where name_ in (
	SELECT vessel_name_ FROM bfdata_reporting_info_appr t1
	WHERE method_ = '入港'
	AND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)
	AND vessel_name_ NOT IN (
		SELECT vessel_name_ FROM bfdata_reporting_info_appr t2
		WHERE t2.method_ = '出港'
		and t2.vessel_name_ = t1.vessel_name_
		and t2.time_ > t1.time_
	)
);


-- 出港登记3个月后没有入港记录的本地船舶列表 --
select * from bfdata_local_vessel
where id_ in (
	SELECT local_vessel_ FROM bfdata_reporting_info_appr t1
	WHERE method_ = '出港'
	AND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)
	AND local_vessel_ NOT IN (
		SELECT local_vessel_ FROM bfdata_reporting_info_appr t2 
        WHERE t2.method_ = '入港'
		and t2.local_vessel_ = t1.local_vessel_
		and t2.time_ > t1.time_
	)
);


-- 出港登记3个月后没有入港记录的外地船舶列表 --
select * from bfdata_nonlocal_vessel
where id_ in (
	SELECT nonlocal_vessel_ FROM bfdata_reporting_info_appr t1
	WHERE method_ = '出港'
	AND time_ < DATE_SUB(NOW(), INTERVAL 3 MONTH)
	AND nonlocal_vessel_ NOT IN (
		SELECT nonlocal_vessel_ FROM bfdata_reporting_info_appr t2
		WHERE t2.method_ = '入港'
		and t2.nonlocal_vessel_ = t1.nonlocal_vessel_
		and t2.time_ > t1.time_
	)
);


-- 有过报备记录后六个月未进行进出港报备的本地船舶列表 --
-- select * from bfdata_local_vessel
-- where id_ in (
-- 	SELECT DISTINCT local_vessel_ FROM bfdata_reporting_info_appr t1
-- 	WHERE t1.local_vessel_ NOT IN (
-- 		SELECT distinct local_vessel_ FROM bfdata_reporting_info_appr t2
-- 		WHERE t2.time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
-- 		and t1.local_vessel_ = t2.local_vessel_
-- 	)
-- );

-- 有过报备记录后六个月未进行进出港报备的船舶列表 --
select * from bfdata_reporting_info_appr;
SELECT COUNT(DISTINCT t1.vessel_name_) FROM bfdata_reporting_info_appr t1 LEFT JOIN (
    SELECT DISTINCT vessel_name_ FROM bfdata_reporting_info_appr
    WHERE time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
) t2 ON t1.vessel_name_ = t2.vessel_name_
WHERE t2.vessel_name_ IS NULL and approve_status_ = '通过';

-- 六个月内有报备记录的船舶数量
select count(distinct vessel_name_) from bfdata_reporting_info_appr
where approve_status_ = '通过';

SELECT COUNT(DISTINCT t1.vessel_name_) FROM bfdata_reporting_info_appr t1 LEFT JOIN (
    SELECT DISTINCT vessel_name_ FROM bfdata_reporting_info_appr
    WHERE time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
) t2 ON t1.vessel_name_ = t2.vessel_name_
WHERE t2.vessel_name_ IS NULL and approve_status_ = '通过';


-- 有过报备记录后六个月未进行进出港报备的外地船舶列表 --
-- select * from bfdata_nonlocal_vessel
-- where id_ in (
-- 	SELECT DISTINCT nonlocal_vessel_ FROM bfdata_reporting_info_appr t1
-- 	WHERE t1.nonlocal_vessel_ not in (
-- 		SELECT distinct nonlocal_vessel_ FROM bfdata_reporting_info_appr t2
-- 		WHERE t2.time_ >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
-- 		and t1.nonlocal_vessel_ = t2.nonlocal_vessel_
-- 	)
-- );

-- 查询各个地区的船员人数 --  
select count(*) from bfdata.bfdata_boatman
where border_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);
        
-- 查询各个地区的本地船舶数 --
select count(*) from bfdata.bfdata_local_vessel
where border_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);
        
        
-- 查询各个地区的外地船舶数 --
select count(*) from bfdata.bfdata_nonlocal_vessel
where border_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);

-- 查询海上涉案船舶数量 --
SELECT * FROM bfdata_maritime_case WHERE note_ IS NOT NULL AND note_ != '' AND note_ != '无' and note_ != '空';

select count(distinct local_vessel_) + count(distinct nonlocal_vessel_) + count(distinct non_certified_vessel_) as num
 from bfdata_maritime_case_vessel_rela;
