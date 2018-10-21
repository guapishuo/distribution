#用户表
create table user (
  user_id nvarchar(10) not null primary key ,
  user_name nvarchar (10) not null ,
  user_remark nvarchar (50)
);
insert into user(user_id, user_name, user_remark)
values ('1','张三','这是一个普通人'),
       ('2','李四','还是一个普通人'),
       ('3','管理员','这是一个管理员');

#管理员表
create table admin (
  admin_id nvarchar (10) not null primary key ,
  admin_name nvarchar (10),
  admin_sex nvarchar(10) ,
  user_id nvarchar(10) ,
  admin_status int ,
  admin_locationcity nvarchar (10),
  admin_site nvarchar (10),
  admin_password nvarchar (10),
  admin_phone nvarchar (20),
  admin_remark nvarchar (50),
  foreign key (user_id) references user(user_id)
);
insert into admin(admin_id, admin_name, admin_sex, user_id, admin_status, admin_locationcity, admin_site, admin_password, admin_phone, admin_remark)
VALUES('1','管理员','男','3', 1 ,'广东','珠海','123456','17879496223','这是管理员的信息'),
('2','李四','男','2',1,'广东','珠海','654321','13777627721','~~~' );

#顾客表
create table Client(
  client_id	 nvarchar(10)	not null primary key ,
  client_name	 nvarchar(10),
  client_sex	nvarchar(10)	,
  user_id nvarchar(10),
  client_password	nvarchar(10),
  client_phone	nvarchar(20),
  client_birthday	datetime,
  client_site 	nvarchar(50),
  client_remark	nvarchar(50),
  foreign key (user_id)references user(user_id)
);
insert into Client(client_id, client_name, client_sex, user_id, client_password, client_phone, client_birthday, client_site, client_remark)
values('1','张三','男','1','654321','13576738802','1998-10-2','北京东城区','这是一个顾客信息'),
('2','李四','男','2','666','13777627721','1998-8-28','广东珠海','这还是一个顾客信息');



#订单表
create table OrderList(
  o_id	nvarchar(10)	not null	primary key ,
  o_type	int	,
  o_number	nvarchar(10),
  o_name	nvarchar(20),
  o_weight	int	,
  o_sender	nvarchar(20),
  o_start	nvarchar(50)	,
  o_destination	nvarchar(50),
  o_status	int	,
  senderphone 	nvarchar(20),
  consignee 	nvarchar(20)	,
  consigneephone	nvarchar(20),
  startcity 	nvarchar(10),
  midpointcity	nvarchar(10),
  destinationcity	nvarchar(10),
  transportprice	decimal(18,0),
  distributionprice 	decimal(18,0)	,
  carriageprice	decimal(18,0),
  totalprice  	nvarchar(10),
  car	nvarchar(10),
  o_remark	nvarchar(50)
);
insert  into OrderList(o_id, o_type, o_number, o_name, o_weight, o_sender, o_start, o_destination, o_status, senderphone, consignee, consigneephone, startcity, midpointcity, destinationcity, transportprice, distributionprice, carriageprice, totalprice, car, o_remark)
values ('1',400,'1001','快乐肥宅水',10,'张三','北京东城区','广东珠海',400,'13576738802','李四','13777627721','北京东城区','江西赣州','广东珠海',80,10,100,'190','AE86','这是一个订单信息');

#车辆表
create table car(
  car_id 	nvarchar(10)	not null		primary key ,
  car_name	 nvarchar(10),
  placeoforigin	nvarchar(20),
  line_id	 nvarchar(10)	,
  car_productiondate	 datetime,
  car_bugdate 	datetime,
  car_remark	 nvarchar(50)	,
  foreign key (line_id)references line(line_id)
);
insert into car(car_id, car_name, placeoforigin, line_id, car_productiondate, car_bugdate, car_remark)
values ('1','AE86','中国','100001','1990-8-11','2000-5-11','这是一辆车');

#交接表
create table DeliveryReceipt(
  d_startcity  	nvarchar(10)	not null	primary key ,
  d_destinationcity	nvarchar(10),
  d_arrivedcity 	nvarchar(10) ,
  d_status	int	,
  d_createtime	datetime,
  d_remark	 nvarchar(50)
);
insert into DeliveryReceipt(d_startcity, d_destinationcity, d_arrivedcity, d_status, d_createtime, d_remark)
VALUES('北京东城区','江西赣州','广东珠海',400,'2018-10-21','这是一个快递信息');

#路线表
create table line (

  line_id nvarchar (10) not null primary key ,
  line_name nvarchar (10) ,
  d_startcityId nvarchar(10),
  d_startcity nvarchar (10),
  d_arrivedcity nvarchar (10),
  d_arrivedcityId nvarchar(10),
  d_destinationcity  nvarchar (10),
  d_destinationcityId nvarchar(10),
  line_carriageprice decimal (18, 0),
  line_remark nvarchar (10),
  foreign key (d_startcity)references DeliveryReceipt(d_startcity)
);
insert into  line(line_id, line_name, d_startcityId, d_startcity, d_arrivedcity, d_arrivedcityId, d_destinationcity, d_destinationcityId, line_carriageprice, line_remark)
VALUES('100001','南下大路','1','北京东城区','15','江西赣州','20','广东珠海','190','这是一条路线');


#省份表
  create table Province (
    province_id nvarchar (10) not null primary key ,
    province_name nvarchar (10)
  );
insert into Province(province_id, province_name) values
('1','北京市'),
('2','天津市'),('3','上海市'),('4','重庆市'),
('5','河北省'),('6','山西省'),('7','台湾省'),
('8','辽宁省'),('9','吉林省'),('10','黑龙江省'),
('11','江苏省'),('12','浙江省'),('13','安徽省'),
('14','福建省'),('15','江西省'),('16','山东省'),
('17','河南省'),('18','湖北省'),('19','湖南省'),
('20','广东省'),('21','甘肃省'),('22','四川省'),
('23','贵州省'),('24','海南省'),('25','云南省'),
('26','青海省'),('27','陕西省'),('28','广西壮族自治区'),
('29','西藏自治区'),('30','宁夏回族自治区'),('31','新疆维吾尔自治区'),
('32','内蒙古自治区'),('33','澳门特别行政区'),('34','香港特别行政区');


  #城市表
  create table city (
    city_id nvarchar (10) not null primary key ,
    city_name nvarchar (10),
    province_id nvarchar (10),
    foreign key (province_id)references Province(province_id)
  );
insert into city(city_id, city_name, province_id)
VALUES
       ('1','北京市','1'),('2','天津市','2'),('3','上海市','3'),('4','重庆市','4'),
       ('5','石家庄市','5'),('6','太原市','6'),('7','台北市','7'),('8','沈阳市','8'),
       ('9','长春市','9'),('10','哈尔滨市','10'),('11','南京市','11'),('12','杭州市','12'),
        ('13','珠海市','20');


#城市区域表
  create table cityArea (
    cityArea_id nvarchar (10) not null primary key ,
    cityArea_name nvarchar (50),
    city_id nvarchar (10) ,
    foreign key (city_id) references city(city_id)
  );
insert into cityArea(cityArea_id, cityArea_name, city_id)
values('1','东城区','1'),
      ('2','西城区','1'),
      ('3','武清区','2'),
      ('4','虹口区','3'),
      ('5','南川区','4');



#配送表
create table Station(

  station_id 	int	not null  primary key  ,
  station_name	nvarchar(10),
  province_id nvarchar (10)	,
  city_id nvarchar (10),
  admin_id	nvarchar(10),
  station_phone	nvarchar(20),
  station_site	nvarchar(50),
  station_remark	nvarchar(50),
  foreign key (admin_id)references admin(admin_id),
  foreign key (city_id)references city(city_id),
  foreign key (province_id)references Province(province_id)
);
insert into Station(station_id, station_name, province_id, city_id,admin_id, station_phone, station_site, station_remark)
VALUES('1','珠海市','20','13','2','13777627721','广东珠海','这是一个配送信息');


#配送范围表
create table Area (

  area_id int not null primary key,
  area_name nvarchar (10),
  area_price decimal (18, 0) ,
  city_id nvarchar (10) ,
  area_remark nvarchar (50) ,
  foreign key (city_id)references city(city_id)
);
insert into Area(area_id, area_name, area_price, city_id, area_remark)
VALUES(10,'珠海斗门','190','13','这是一个配送的范围');

