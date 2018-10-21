#�û���
create table user (
  user_id nvarchar(10) not null primary key ,
  user_name nvarchar (10) not null ,
  user_remark nvarchar (50)
);
insert into user(user_id, user_name, user_remark)
values ('1','����','����һ����ͨ��'),
       ('2','����','����һ����ͨ��'),
       ('3','����Ա','����һ������Ա');

#����Ա��
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
VALUES('1','����Ա','��','3', 1 ,'�㶫','�麣','123456','17879496223','���ǹ���Ա����Ϣ'),
('2','����','��','2',1,'�㶫','�麣','654321','13777627721','~~~' );

#�˿ͱ�
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
values('1','����','��','1','654321','13576738802','1998-10-2','����������','����һ���˿���Ϣ'),
('2','����','��','2','666','13777627721','1998-8-28','�㶫�麣','�⻹��һ���˿���Ϣ');



#������
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
values ('1',400,'1001','���ַ�լˮ',10,'����','����������','�㶫�麣',400,'13576738802','����','13777627721','����������','��������','�㶫�麣',80,10,100,'190','AE86','����һ��������Ϣ');

#������
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
values ('1','AE86','�й�','100001','1990-8-11','2000-5-11','����һ����');

#���ӱ�
create table DeliveryReceipt(
  d_startcity  	nvarchar(10)	not null	primary key ,
  d_destinationcity	nvarchar(10),
  d_arrivedcity 	nvarchar(10) ,
  d_status	int	,
  d_createtime	datetime,
  d_remark	 nvarchar(50)
);
insert into DeliveryReceipt(d_startcity, d_destinationcity, d_arrivedcity, d_status, d_createtime, d_remark)
VALUES('����������','��������','�㶫�麣',400,'2018-10-21','����һ�������Ϣ');

#·�߱�
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
VALUES('100001','���´�·','1','����������','15','��������','20','�㶫�麣','190','����һ��·��');


#ʡ�ݱ�
  create table Province (
    province_id nvarchar (10) not null primary key ,
    province_name nvarchar (10)
  );
insert into Province(province_id, province_name) values
('1','������'),
('2','�����'),('3','�Ϻ���'),('4','������'),
('5','�ӱ�ʡ'),('6','ɽ��ʡ'),('7','̨��ʡ'),
('8','����ʡ'),('9','����ʡ'),('10','������ʡ'),
('11','����ʡ'),('12','�㽭ʡ'),('13','����ʡ'),
('14','����ʡ'),('15','����ʡ'),('16','ɽ��ʡ'),
('17','����ʡ'),('18','����ʡ'),('19','����ʡ'),
('20','�㶫ʡ'),('21','����ʡ'),('22','�Ĵ�ʡ'),
('23','����ʡ'),('24','����ʡ'),('25','����ʡ'),
('26','�ຣʡ'),('27','����ʡ'),('28','����׳��������'),
('29','����������'),('30','���Ļ���������'),('31','�½�ά���������'),
('32','���ɹ�������'),('33','�����ر�������'),('34','����ر�������');


  #���б�
  create table city (
    city_id nvarchar (10) not null primary key ,
    city_name nvarchar (10),
    province_id nvarchar (10),
    foreign key (province_id)references Province(province_id)
  );
insert into city(city_id, city_name, province_id)
VALUES
       ('1','������','1'),('2','�����','2'),('3','�Ϻ���','3'),('4','������','4'),
       ('5','ʯ��ׯ��','5'),('6','̫ԭ��','6'),('7','̨����','7'),('8','������','8'),
       ('9','������','9'),('10','��������','10'),('11','�Ͼ���','11'),('12','������','12'),
        ('13','�麣��','20');


#���������
  create table cityArea (
    cityArea_id nvarchar (10) not null primary key ,
    cityArea_name nvarchar (50),
    city_id nvarchar (10) ,
    foreign key (city_id) references city(city_id)
  );
insert into cityArea(cityArea_id, cityArea_name, city_id)
values('1','������','1'),
      ('2','������','1'),
      ('3','������','2'),
      ('4','�����','3'),
      ('5','�ϴ���','4');



#���ͱ�
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
VALUES('1','�麣��','20','13','2','13777627721','�㶫�麣','����һ��������Ϣ');


#���ͷ�Χ��
create table Area (

  area_id int not null primary key,
  area_name nvarchar (10),
  area_price decimal (18, 0) ,
  city_id nvarchar (10) ,
  area_remark nvarchar (50) ,
  foreign key (city_id)references city(city_id)
);
insert into Area(area_id, area_name, area_price, city_id, area_remark)
VALUES(10,'�麣����','190','13','����һ�����͵ķ�Χ');

