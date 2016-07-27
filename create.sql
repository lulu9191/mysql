
-- Author LuJunHong 

drop database if exists ljh;
create database ljh;
use ljh;
-- 1机构表
create table organization(
  orcode int not null AUTO_INCREMENT,
  Superior_N int not null,
  organization_oder varchar(32) not null ,
  organization_name varchar(32) not null,
  organization_describe varchar(32) not null,
  administration varchar(32) not null,
  create_date varchar(32) not null,
  update_name varchar(32) not null,
  update_date varchar(32) not null,
  PRIMARY KEY (orcode)
);

-- 2用户表
create table user(
  user_code int not null AUTO_INCREMENT,
  user_order int not null,
  user_name varchar(32) not null ,
  user_description varchar(32) not null,
  login_password varchar(32) not null,
  role_name varchar(32) not null,
  organization_name varchar(32) not null,
  user_configuration varchar(32) not null,
  enable varchar(32) not null,
  login_frequency varchar(32) not null,
  last_login_time varchar(32) not null,
  create_date varchar(32) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  update_date varchar(32) not null,
  PRIMARY KEY (user_code)
);


-- 3用户设置
create table user_settings(
  code int not null AUTO_INCREMENT,
  user_code int not null,
  set_code varchar(32) not null ,
  set_name varchar(32) not null,
  set_value varchar(32) not null,
  description varchar(32) not null,
  PRIMARY KEY (code)
);


-- 4功能
create table function(
  function_code int not null AUTO_INCREMENT,
  superior_code int not null,
  function_order varchar(32) not null ,
  function_description varchar(32) not null,
  function_name varchar(32) not null,
  url varchar(64) not null,
  PRIMARY KEY (function_code),
  visible char(8) not null,
  enable char(8) not null,
  create_date datetime(6) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  update_date varchar(32) not null
);

-- 5编码类型
create table code_type(
  type_code int not null AUTO_INCREMENT,
  type_order varchar(32) not null ,
  type_description varchar(32) not null,
  type_name varchar(32) not null,
  PRIMARY KEY (type_code),
  create_date datetime(6) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  update_date datetime(6) not null
);


-- 6编码
create table code(
  code_n int not null AUTO_INCREMENT,
  superior_code int not null,
  type_order varchar(32) not null ,
  code_description varchar(32) not null,
  type_name varchar(32) not null,
  order_name varchar(32) not null,
  Eng varchar(32) not null,
  Cha varchar(32) not null,
  enable char(8) not null,
  create_date datetime(6) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  PRIMARY KEY (code_n),
  update_date datetime(6) not null
);

-- 7登陆历史
create table login_history(
  number_name int not null AUTO_INCREMENT,
  login_id int not null,
  login_role_code varchar(32) not null ,
  login_role_name varchar(32) not null,
  login_name varchar(32) not null,
  machine_name varchar(32) not null,
  machine_id varchar(32) not null,
  login_time varchar(32) not null,
  enable char(8) not null,
  create_date datetime(6) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  PRIMARY KEY (number_name),
  update_date datetime(6) not null
);

-- 8系统日志
create table syetem_log(
  number_name int not null AUTO_INCREMENT,
  log_source varchar(32) not null,
  type_log_code varchar(32) not null ,
  type_log_name varchar(32) not null,
  log_content varchar(32) not null,
  log_remark varchar(32) not null,
  operator_code varchar(32) not null,
  operator_name varchar(32) not null,
  log_time varchar(32) not null,
  create_date datetime(6) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  PRIMARY KEY (number_name),
  update_date datetime(6) not null
);


-- 9机构用户
create table institutional_user(
  code_n int not null AUTO_INCREMENT,
  user_code varchar(32) not null ,
  organization_code varchar(32) not null,
  PRIMARY KEY (code_n)
);


-- 10用户角色
create table user_role(
  code int not null AUTO_INCREMENT,
  user_code varchar(32) not null ,
  role_code varchar(32) not null,
  PRIMARY KEY (code)
);


-- 11角色功能
create table role_function(
  code int not null AUTO_INCREMENT,
  user_code varchar(32) not null ,
  function_code varchar(32) not null,
  PRIMARY KEY (code)
);


-- 12机构角色
create table organization_role(
  code int not null AUTO_INCREMENT,
  role_code varchar(32) not null ,
  organization_code varchar(32) not null,
  PRIMARY KEY (code)
);


-- 13菜单按钮
create table menu_button(
  code int not null AUTO_INCREMENT,
  function_code varchar(32) not null ,
  button_code varchar(32) not null,
  PRIMARY KEY (code)
);


-- 14角色授权
create table role_authorization(
  code int not null AUTO_INCREMENT,
  authorization_code varchar(32) not null ,
  role_code varchar(32) not null,
  PRIMARY KEY (code)
);

-- 15角色
create table role(
  role_code int not null AUTO_INCREMENT,
  role_name varchar(32) not null,
  role_order varchar(32) not null ,
  role_describe varchar(32) not null,
  create_date datetime(6) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  PRIMARY KEY (role_code),
  update_date datetime(6) not null
);

-- 16角色列权限
create table role_col_authorization(
  code int not null AUTO_INCREMENT,
  field_name varchar(32) not null ,
  role_code varchar(32) not null,
  function_code varchar(32) not null,
  permission_type varchar(32) not null,
  PRIMARY KEY (code)
);


-- 17授权代码
create table authorization_code(
  author_code varchar(32) not null,
  author_name varchar(32) not null,
  create_date datetime(6) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  PRIMARY KEY (author_code),
  superior_code varchar(32) not null ,
  update_date datetime(6) not null
);


-- 18系统参数
create table system_parameter(
  parameter_code int not null ,
  parameter_value varchar(32) not null,
  wether_edit char(8) not null,
  description varchar(32) not null,
  create_date datetime(6) not null,
  creater varchar(32) not null,
  updater varchar(32) not null,
  PRIMARY KEY (parameter_code),
  superior_code varchar(32) not null ,
  update_date datetime(6) not null
);


-- 19按钮库
create table button_library(
  button_code int not null ,
  button_name varchar(32) not null,
  order_name varchar(32) not null,
  icon_name varchar(32) not null,
  create_date datetime(6) not null,
  create_person varchar(32) not null,
  update_person varchar(32) not null,
  PRIMARY KEY (button_code),
  remark varchar(32) not null ,
  update_date datetime(6) not null
);

-- 20角色菜单按钮
create table role_menu_button(
  code int not null AUTO_INCREMENT,
  button_code varchar(32) not null ,
  role_code varchar(32) not null,
  function_code varchar(32) not null,
  PRIMARY KEY (code)
);
