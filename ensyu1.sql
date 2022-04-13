--���K���-SQL1-��{

--1.�f�[�^�x�[�X�쐬
CREATE DATABASE db_exam;


--2.�e�[�u���쐬-����1
create table major (
major_id int primary key
,major_name varchar(50));


--3.�e�[�u���쐬-����2
create table student (
student_id int primary key
,student_name varchar(50)
,grade int
,hometown varchar(50)
,major_id int NOT NULL REFERENCES major(major_id));


--4."major"�e�[�u���փf�[�^�o�^
insert into major values (1,'�p���w'),(2,'���p�Ȋw')
,(3,'���H�w'),(4,'�o�ϊw'),(5,'���ە���');


--5."student"�e�[�u���փf�[�^�o�^
insert into student values (1,'�R�c',1,'�{��',1),(2,'�c��',1,'����',2),(3,'����',1,'����',3),
(4,'���',2,'������',1),(5,'����',2,'�k�C��',2),(6,'�g�c',2,'����',1),(7,'�ɓ�',3,'������',2),
(8,'�R�{',3,'�_�ސ�',3),(9,'�X�{',4,'����',4),(10,'�g��',4,'�_�ސ�',5);


--6.student�e�[�u������-����1
select * from student where grade=1;


--7.student�e�[�u������-����2
select * from student where hometown='����';


--8.major�e�[�u������
select major_name from major;


--9.student�e�[�u���̃��R�[�h�X�V
update student set grade=3 where student_id=10;


--10.student�e�[�u���̃��R�[�h�폜
delete from student where student_id=10;


--���K���-SQL1-���W

--1.�f�[�^�x�[�X�쐬
CREATE DATABASE axiz_exam_dev;


--2.�e�[�u���쐬-����1
create table customer (
customer_id int primary key
,customer_name varchar(50));


--3.�e�[�u���쐬-����2
create table sales (
sales_id int primary key
,order_date date
,customer_id int not null references customer(customer_id)
,amount decimal);


--4."customer"�e�[�u���փf�[�^�o�^
insert into customer values (1,'�c��'),(2,'���')
,(3,'�c��'),(4,'�c��');


--5."sales"�e�[�u���փf�[�^�o�^
insert into sales values (1,'2018-11-01',1,3000),(2,'2018-10-01',3,5000)
,(3,'2018-10-01',4,6000),(4,'2018-11-02',2,2000),(5,'2018-11-15',2,null);


--6.sales�e�[�u������-����1
select * from sales where amount < 5000;


--7.sales�e�[�u������-����2
select * from sales where amount >= 5000;


--8.sales�e�[�u������-����3
select sales_id,order_date,customer_id,amount*1.1 from sales; 


--9.sales�e�[�u������-����4
select * from sales where amount is not null;


--10.customer�e�[�u������-����1
select * from customer where customer_name != '�c��';


--11.sales�e�[�u���̃��R�[�h�X�V
update sales set order_date='2018-11-05', customer_id=4 where sales_id=4;


--12.sales�e�[�u���̃��R�[�h�폜
delete from sales where amount is null;
