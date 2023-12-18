select distinct count(*) from bfdata_port
where is_recover_ is null;

-- 码头调度数量 
select distinct count(*) from bfdata_port_dispatch
where is_recover_ is null;

-- 海上旅游项目数量
select distinct count(*) from bfdata_fun_project
where is_recover_ is null;

-- 涉海中介数量
select distinct count(name_) from bfdata_sea_labour_agency
where is_recover_ is null;

-- 船舶代理
select distinct count(name_) from bfdata_vessel_agency
where is_recover_ is null;

-- 修造船行业
select distinct count(name_) from bfdata_ship_repair_industry
where is_recover_ is null;

-- 油水补给
select distinct count(name_) from bfdata_port_supply
where is_recover_ is null;

-- 行业场所
select distinct count(name_) from bfdata_port_store
where is_recover_ is null;

