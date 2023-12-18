select * from bfdata_boatman;

-- 查询船员职务
select bfdata_duty_.duty as "name", bfdata_duty_.number as "value"
from bfdata_duty_;

-- 查询重点预警船员数量
SELECT update_time_, timestampdiff(month, update_time_, curtime()) FROM bfdata_boatman
WHERE crime_check_ = '重点' and is_recover_ is null;

SELECT distinct COUNT(*) FROM bfdata_boatman WHERE crime_check_ = '重点' and is_recover_ is null
                                               and abs(timestampdiff(month, update_time_, curtime())) < 1;

SELECT distinct COUNT(*) FROM bfdata_boatman WHERE crime_check_ LIKE '%毒%' and is_recover_ is null
                                               and abs(timestampdiff(month, update_time_, curtime())) < 1;

select distinct count(*) from bfdata_boatman where crime_check_ = '在逃' and is_recover_ is null
                                               and abs(timestampdiff(month, update_time_, curtime())) < 1;

-- 查询重点预警船员细节
SELECT * FROM bfdata_boatman WHERE crime_check_ = '重点' and is_recover_ is null
                               and abs(timestampdiff(month, update_time_, curtime())) < 1;

SELECT * FROM bfdata_boatman WHERE crime_check_ LIKE '%毒%' and is_recover_ is null
                               and abs(timestampdiff(month, update_time_, curtime())) < 1;

SELECT * FROM bfdata_boatman WHERE crime_check_ = '在逃' and is_recover_ is null
                               and abs(timestampdiff(month, update_time_, curtime())) < 1;

