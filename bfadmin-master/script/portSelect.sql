select * from bfdata_port;

select count(*) from bfdata.bfdata_port
where update_man_ = (
	select operator_ from bfdata.bifang_user
    where id_ = (
		select user_id_ from bfdata.bifang_users_org
        where org_id_ = (
			select id_ from bfdata.bifang_organization
            where org_full_name_ like '荣成大队%'
		)));
        
select count(*) from bfdata.bfdata_port
where border_unit_ in (
	select id_ from bfdata.bifang_organization
    where org_full_name_ like '荣成大队%'
);