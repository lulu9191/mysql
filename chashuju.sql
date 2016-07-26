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
  values()
