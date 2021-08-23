--Merchandise Department
create  or replace table KT_DB_TEST.STG_WH.STG_D_MERCH_DEPT(
   dept_id varchar not null
  ,dept_desc varchar
  ,manager varchar
  ,primary key (dept_id)
);

truncate table KT_DB_TEST.STG_WH.STG_D_MERCH_DEPT;

insert into KT_DB_TEST.STG_WH.STG_D_MERCH_DEPT values('DPT-01','Outerwear','John Brunke');

--Merchandise Class
create or replace table KT_DB_TEST.STG_WH.STG_D_MERCH_CLASS(
   class_id varchar not null
  ,class_desc varchar
  ,dept_id varchar not null
  ,manager varchar
  ,primary key (class_id)
  ,foreign key (dept_id) references KT_DB_TEST.STG_WH.STG_D_MERCH_DEPT(dept_id)
);

truncate table KT_DB_TEST.STG_WH.STG_D_MERCH_CLASS;

insert into KT_DB_TEST.STG_WH.STG_D_MERCH_CLASS values('CLS01','T-Shirt Class Description','','Key on the Run');
insert into KT_DB_TEST.STG_WH.STG_D_MERCH_CLASS values('CLS02','Trouser Class Description','Outerwear Bottoms','Nik on the Hill');


--Merchandise Item
create or replace table KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM(
   item_id varchar not null
  ,item_desc varchar
  ,class_id varchar not null
  ,color_id varchar
  ,size_id varchar
  ,pattern_id varchar
  ,orderable_ind varchar
  ,sellable_ind varchar
  ,primary key (item_id)
  ,foreign key (class_id) references KT_DB_TEST.STG_WH.STG_D_MERCH_CLASS(class_id)
);

truncate table KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM;

insert into KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM values('XYZ001','T-Shirt Red Small Plain','CLS01','RED','S','P','Y','Y');
insert into KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM values('XYZ002','T-Shirt Green Small Plain','CLS01','GREEN','S','P','Y','Y');
insert into KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM values('XYZ003','T-Shirt Orange Small Plain','CLS01','ORANGE','S','P','Y','Y');
insert into KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM values('XYZ004','T-Shirt Blue Small Plain','CLS01','BLUE','S','P','Y','Y');
insert into KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM values('XYZ005','T-Shirt Yellow Small Plain','CLS01','YELLOW','S','P','Y','Y');
insert into KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM values('ABC001','Trousers Blue Small Plain','CLS02','BLUE','S','P','Y','Y');
insert into KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM values('ABC002','Trousers Yellow Small Plain','CLS02','YELLOW','S','P','Y','Y');

select * from KT_DB_TEST.STG_WH.STG_D_MERCH_ITEM;


--Customer
create  or replace table KT_DB_TEST.STG_WH.STG_D_CUSTOMER(
   id varchar not null
  ,fullname varchar
  ,address_line1 varchar
  ,address_line2 varchar
  ,city varchar
  ,state varchar
  ,zip integer
);

insert into KT_DB_TEST.STG_WH.STG_D_CUSTOMER values('6124628466','Key on the Run','7710 Penn Ave S',null,'Richfield','MN',55423);
insert into KT_DB_TEST.STG_WH.STG_D_CUSTOMER values('6124628467','Key on the Run''s Wifey','7710 Penn Ave S',null,'Richfield','MN',55423);
insert into KT_DB_TEST.STG_WH.STG_D_CUSTOMER values('6124628468','Nik on the Hill','123 Penn Ave S',null,'Richfield','MN',55423);
insert into KT_DB_TEST.STG_WH.STG_D_CUSTOMER values('6124628469','John','234 Penn Ave S',null,'Richfield','MN',55423);
insert into KT_DB_TEST.STG_WH.STG_D_CUSTOMER values('6124628460','Chris and Tina','345 Penn Ave S',null,'Richfield','MN',55423);

select * from KT_DB_TEST.STG_WH.STG_D_CUSTOMER;

/*create  or replace temporary table KT_DB_TEST.TGT_WH.TMP_D_MERCH_DEPT(
   dept_id varchar not null
  ,dept_desc varchar
  ,manager varchar
);

create or replace temporary table KT_DB_TEST.TGT_WH.TMP_D_MERCH_CLASS(
   class_id varchar not null
  ,class_desc varchar
  ,dept_key number(19,0)
  ,dept_id varchar not null
  ,manager varchar
);

create or replace temporary table KT_DB_TEST.TGT_WH.TMP_D_MERCH_ITEM(
   item_id varchar not null
  ,item_desc varchar
  ,class_key number(19,0)
  ,class_id varchar not null
  ,color_id varchar
  ,size_id varchar
  ,pattern_id varchar
  ,orderable_ind varchar
  ,sellable_ind varchar
);*/


