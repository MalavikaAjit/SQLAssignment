use addressbook ;
#uc 2 
create table contact_details
(
  id int not null,
  first_name varchar(30),
  last_name varchar(30),
  address varchar(30),
  city varchar(20),
  state varchar(20),
  zip int(9),
  phone_number int(10),
  email varchar(30),
  primary key(id)
);  
select * from contact_details;
#uc 3
insert into contact_details(id , first_name,last_name,address,city,state,zip,phone_number,email) value(1,'malavika','ajit','address1','kochi','kerala',686635,9655863256,'malavikaajit@gmail,com');
insert into contact_details(id , first_name,last_name,address,city,state,zip,phone_number,email) value(2,'job','tom','address2','kochi','kerala',686635,8522352325,'jobTom36@gmail,com');
insert into contact_details(id , first_name,last_name,address,city,state,zip,phone_number,email) value(3,'mike','james','address3','mumbai','MH',686647,9655845232,'mikeJames@gmail,com');
insert into contact_details(id , first_name,last_name,address,city,state,zip,phone_number,email) value(4,'user1','lastname1','address4','mumbai','MH',686647,9645212365,'usernamelast@gmail,com');
select * from contact_details;
#uc 4
update contact_details set  state = 'TN' where first_name='user1';
select * from contact_details;
update contact_details set  city = 'chennai' where first_name='user1';
select * from contact_details;
#uc 5
delete from contact_details where first_name = 'job';
select * from contact_details;
insert into contact_details(id , first_name,last_name,address,city,state,zip,phone_number,email) value(2,'job','tom','address2','kochi','kerala',686635,8522352325,'jobTom36@gmail,com');
select * from contact_details;
alter table contact_details drop column id;
select * from contact_details;
#uc 6
select *  from contact_details where city = 'mumbai';
select *  from contact_details where state = 'kerala';
#uc 7
select  count(city) from contact_details where city = 'kochi';
#uc 8
select first_name from contact_details where city = 'kochi' order by first_name;
#uc 9
alter table contact_details add addressbook_name varchar(50) ;
select * from contact_details;
#uc 10
update contact_details set addressbook_name = 'home' where first_name = 'malavika' or first_name = 'user1';
update contact_details set addressbook_name = 'friends' where first_name = 'job' or first_name = 'mike';
select * from contact_details;
select addressBook_name, count(*) from contact_details group by addressbook_name  ;
#uc 11 
update contact_details set addressbook_name = 'friends' where first_name = 'malavika' or last_name = 'ajit';
update contact_details set addressbook_name = 'home' where first_name = 'mike' or last_name = 'james';
select * from contact_details;


