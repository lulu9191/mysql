-- 机构表
-- insert into test(name, property) values("Tom","1000");
insert into organization(Superior_N,organization_oder,organization_name,organization_describe,
administration,create_date,update_name,update_date)
values("1","1","tech dep","tech suport","Mr.Jin",now(),"wang",now());
insert into organization(Superior_N,organization_oder,organization_name,organization_describe,
administration,create_date,update_name,update_date)
values("2","2","promotion dep","to promote","Mr.Jin",now(),"wang",now());
insert into organization(Superior_N,organization_oder,organization_name,organization_describe,
administration,create_date,update_name,update_date)
values("3","3","personnel dep","for arrangement","yuan",now(),"mao",now());

-- 用户表
insert into user(user_order,user_name,user_description,login_password,
role_name,organization_name,user_configuration,enable,login_frequency,
last_login_time,create_date,create_person,update_person,update_date)
values(1,"Tom","boss","***","Tom","bank","unknown","1","8",now(),now(),"mao","jin",now());
insert into user(user_order,user_name,user_description,login_password,
role_name,organization_name,user_configuration,enable,login_frequency,
last_login_time,create_date,create_person,update_person,update_date)
values(2,"Emma","employee","***","Emma","bank","unknown","1","8",now(),now(),"mao","jin",now());
insert into user(user_order,user_name,user_description,login_password,
role_name,organization_name,user_configuration,enable,login_frequency,
last_login_time,create_date,create_person,update_person,update_date)
values(3,"Jenny","employee","***","Jenny","bank","unknown","1","8",now(),now(),"mao","jin",now());

-- 3用户设置
insert into user_settings(user_code,set_code,set_name,set_value,description)
values(1,"1","skill","180","attack");
insert into user_settings(user_code,set_code,set_name,set_value,description)
values(2,"2","blood","280","died or alive");
insert into user_settings(user_code,set_code,set_name,set_value,description)
values(3,"3","equipment","cloth","beauty");


--  4功能
insert into function(superior_code,function_order,function_description,
function_name,url,visible,enable,create_date,create_person,update_person,
update_date)
values(1,"1","an entrance","land","#####","1","1",now(),"yitong","yitong",now());
insert into function(superior_code,function_order,function_description,
function_name,url,visible,enable,create_date,create_person,update_person,
update_date)
values(2,"2","for new player","register","#####","1","1",now(),"yitong","yitong",now());
insert into function(superior_code,function_order,function_description,
function_name,url,visible,enable,create_date,create_person,update_person,
update_date)
values(3,"3","question","help","#####","1","1",now(),"yitong","yitong",now());


-- 5编码类型
insert into code_type(type_order,type_description,type_name,create_date,create_person,
update_person,update_date)
values("1","html","html",now(),"wang","wang",now());
insert into code_type(type_order,type_description,type_name,create_date,create_person,
update_person,update_date)
values("2","sql","sql",now(),"wang","wang",now());
insert into code_type(type_order,type_description,type_name,create_date,create_person,
update_person,update_date)
values("3","css","css",now(),"wang","wang",now());


-- 6编码
insert into code(superior_code,type_order,code_description,type_name,order_name,
Eng,Cha,enable,create_date,create_person,update_person,update_date)
values(1,"1","html","html","html","html","html","0",now(),"Jin","jin",now());
insert into code(superior_code,type_order,code_description,type_name,order_name,
Eng,Cha,enable,create_date,create_person,update_person,update_date)
values(2,"2","css","css","css","css","css","0",now(),"Jin","jin",now());
insert into code(superior_code,type_order,code_description,type_name,order_name,
Eng,Cha,enable,create_date,create_person,update_person,update_date)
values(3,"3","sql","sql","sql","sql","sql","0",now(),"Jin","jin",now());


-- 7登陆历史
insert into login_history(login_id,login_role_code,login_role_name,login_name,
machine_name,machine_id,login_time,enable,create_date,create_person,
update_person,update_date)
values(1,"14","A","a","wd-1","14",now(),"1",now(),"Jin","Jin",now());
insert into login_history(login_id,login_role_code,login_role_name,login_name,
machine_name,machine_id,login_time,enable,create_date,create_person,
update_person,update_date)
values(2,"15","B","b","wd-2","15",now(),"2",now(),"Jin","Jin",now());
insert into login_history(login_id,login_role_code,login_role_name,login_name,
machine_name,machine_id,login_time,enable,create_date,create_person,
update_person,update_date)
values(3,"16","C","c","wd-3","16",now(),"3",now(),"Jin","Jin",now());


-- 8系统日志
insert into syetem_log(log_source,type_log_code,type_log_name,log_content,
log_remark,operator_code,operator_name,log_time,create_date,create_person,
update_person,update_date)
values("source1","1","log1","####","unknown","1","Tina","5min",
now(),"Tina","Tina",now());
insert into syetem_log(log_source,type_log_code,type_log_name,log_content,
log_remark,operator_code,operator_name,log_time,create_date,create_person,
update_person,update_date)
values("source2","2","log2","####","unknown","1","Adrea","5min",
now(),"Adrea","Adrea",now());
insert into syetem_log(log_source,type_log_code,type_log_name,log_content,
log_remark,operator_code,operator_name,log_time,create_date,create_person,
update_person,update_date)
values("source3","3","log3","####","unknown","1","King","5min",
now(),"King","King",now());


-- 9机构用户
insert into institutional_user(user_code,organization_code)
values("111","111");
insert into institutional_user(user_code,organization_code)
values("112","112");
insert into institutional_user(user_code,organization_code)
values("113","113");


-- 10用户角色
insert into user_role(user_code,role_code)
values("1","1");
insert into user_role(user_code,role_code)
values("2","2");
insert into user_role(user_code,role_code)
values("3","3");


-- 11角色功能
insert into role_function(user_code,function_code)
values("1","1");
insert into role_function(user_code,function_code)
values("2","2");

insert into role_function(user_code,function_code)
values("3","3");

-- 12机构角色
insert into organization_role(role_code,organization_code)
values("1","1");
insert into organization_role(role_code,organization_code)
values("2","2");
insert into organization_role(role_code,organization_code)
values("3","3");

-- 13菜单按钮
insert into menu_button(function_code,button_code)
values("1","1");
insert into menu_button(function_code,button_code)
values("2","2");
insert into menu_button(function_code,button_code)
values("3","3");

-- 14角色授权
insert into role_authorization(authorization_code,role_code)
values("111111","1");
insert into role_authorization(authorization_code,role_code)
values("222222","2");
insert into role_authorization(authorization_code,role_code)
values("333333","3");

-- 15角色
insert into role(role_name,role_order,role_describe,create_date,create_person,
update_person,update_date)
values("AA","1","#######",now(),"yang","yang",now());
insert into role(role_name,role_order,role_describe,create_date,create_person,
update_person,update_date)
values("BB","2","#######",now(),"yang","yang",now());
insert into role(role_name,role_order,role_describe,create_date,create_person,
update_person,update_date)
values("CC","3","#######",now(),"yang","yang",now());



-- 16角色列权限
insert into role_col_authorization(field_name,role_code,function_code,permission_type)
values("first","1","1","XX");
insert into role_col_authorization(field_name,role_code,function_code,permission_type)
values("second","2","2","YY");
insert into role_col_authorization(field_name,role_code,function_code,permission_type)
values("third","3","3","ZZ");

-- 17授权代码
insert into authorization_code(author_code,author_name,create_date,create_person,
update_person,superior_code,update_date)
values("1","author1",now(),"author1","author1","###",now());
insert into authorization_code(author_code,author_name,create_date,create_person,
update_person,superior_code,update_date)
values("2","author2",now(),"author2","author2","###",now());
insert into authorization_code(author_code,author_name,create_date,create_person,
update_person,superior_code,update_date)
values("3","author3",now(),"author3","author3","###",now());


-- 18系统参数
insert into system_parameter(parameter_code,parameter_value,wether_edit,
description,create_date,creater,updater,superior_code,update_date)
values("1","12","1","QWE",now(),"creater1","updater1","11",now());
insert into system_parameter(parameter_code,parameter_value,wether_edit,
description,create_date,creater,updater,superior_code,update_date)
values("2","22","2","QWE",now(),"creater1","updater1","22",now());
insert into system_parameter(parameter_code,parameter_value,wether_edit,
description,create_date,creater,updater,superior_code,update_date)
values("3","32","3","QWE",now(),"creater1","updater1","33",now());


-- 19按钮库
insert into button_library(button_code,button_name,order_name,icon_name,
create_date,create_person,update_person,remark,update_date)
values("1","land","1","land",now(),"yang","yang","unknown",now());
insert into button_library(button_code,button_name,order_name,icon_name,
create_date,create_person,update_person,remark,update_date)
values("2","cancel","2","cancel",now(),"yang","yang","unknown",now());
insert into button_library(button_code,button_name,order_name,icon_name,
create_date,create_person,update_person,remark,update_date)
values("3","regist","3","regist",now(),"yang","yang","unknown",now());


-- 20角色菜单按钮
insert into role_menu_button(button_code,role_code,function_code)
values("1","1","1");
insert into role_menu_button(button_code,role_code,function_code)
values("2","2","2");
insert into role_menu_button(button_code,role_code,function_code)
values("3","3","3");
