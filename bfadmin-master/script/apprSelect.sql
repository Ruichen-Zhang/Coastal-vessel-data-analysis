select * from bfdata_boatman_appr;

select count(*) from bfdata.bfdata_boatman_appr
where approve_status_ = '未审核'
and submit_time_ BETWEEN DATE_SUB(NOW(), INTERVAL 3 MONTH) AND NOW()
and manage_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);


select * from bfdata.bfdata_local_vessel_appr;

select count(*) from bfdata.bfdata_local_vessel_appr
where approve_status_ = '未审核'
  and submit_time_ BETWEEN DATE_SUB(NOW(), INTERVAL 3 MONTH) AND NOW()
and manage_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);
        

select * from bfdata.bfdata_nonlocal_vessel_appr;

select count(*) from bfdata.bfdata_nonlocal_vessel_appr
where approve_status_ = '未审核'
  and submit_time_ BETWEEN DATE_SUB(NOW(), INTERVAL 3 MONTH) AND NOW()
and manage_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);


select * from bfdata.bfdata_reporting_info_appr;

select count(*) from bfdata.bfdata_reporting_info_appr
where approve_status_ = '未审核'
  and time_ BETWEEN DATE_SUB(NOW(), INTERVAL 3 MONTH) AND NOW()
and manage_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);
