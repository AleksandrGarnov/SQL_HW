--1)������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name,monthly_salary from employees e
join salary s  on e.id = s.id;
--2)������� ���� ���������� � ������� �� ������ 2000.
select employee_name,monthly_salary from employees e
join salary s  on e.id = s.id
where monthly_salary < 2000;
 --3)������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name,monthly_salary from employees e
right join salary s  on e.id = s.id;
 --4)������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name,monthly_salary from employees e
right join salary s  on e.id = s.id
where employee_name is null and monthly_salary < 2000;
--5)����� ���� ���������� ���� �� ��������� ��.
select employee_name,monthly_salary from employees e
left join salary s  on e.id = s.id
where monthly_salary is null;
 --6)������� ���� ���������� � ���������� �� ���������.
select employee_name,role_name from employees e
 left join roles r  on e.id = r.id;
 --7)������� ����� � ��������� ������ Java �������������.
 select employee_name, role_name from employees e
 left join roles r  on e.id = r.id
 where role_name like '%Java %';
 --8)������� ����� � ��������� ������ Python �������������.
 select employee_name, role_name from employees e
 left join roles r  on e.id = r.id
 where role_name like '%Python %';
 --9)������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees e
 left join roles r  on e.id = r.id
 where role_name like '%QA%';
 --10)������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from employees e
 left join roles r  on e.id = r.id
 where role_name like '%Manual QA%';
 --11)������� ����� � ��������� ��������������� QA
select employee_name, role_name from employees e
 left join roles r  on e.id = r.id
 where role_name like '%Automation QA%';
 --12)������� ����� � �������� Junior ������������
select employee_name, monthly_salary from employees e
left join roles r on e.id = r.id
join salary s on r.id = s.id
where role_name like 'Junior%';
 --13)������� ����� � �������� Middle ������������
select employee_name, monthly_salary from employees e
join roles r  on e.id = r.id
join salary s on r.id = s.id
where role_name like 'Middle %';
 --14)������� ����� � �������� Senior ������������
select employee_name, monthly_salary from employees e
join roles r  on e.id = r.id
join salary s on r.id = s.id
where role_name like 'Senior %';
 --15)������� �������� Java �������������
select role_name, monthly_salary from roles r
join salary s on r.id = s.id
where role_name like '%Java %';
 --16)������� �������� Python �������������
select role_name, monthly_salary from roles r
join salary s on r.id = s.id
where role_name like '%Python %';
 --17)������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary from employees e
join roles r on e.id = r.id
join salary s on r.id = s.id
where role_name like 'Junior Python %';
 --18)������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary from employees e
join roles r on e.id = r.id
join salary s on r.id = s.id
where role_name like 'Middle JavaScript %';
 --19)������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary from employees e
join roles r on e.id = r.id
join salary s on r.id = s.id
where role_name like 'Senior Java %';
 --20)������� �������� Junior QA ���������
select role_name, monthly_salary from roles r
join salary s on r.id = s.id
where role_name like 'Junior% QA%';
 --21)������� ������� �������� ���� Junior ������������
select avg(monthly_salary) from salary s
join roles r on s.id=r.id 
where role_name like 'Junior%';
 --22)������� ����� ������� JS �������������
select sum(monthly_salary) from salary s
join roles r on s.id=r.id 
where role_name like '%JavaScript%';
 --23)������� ����������� �� QA ���������
select min(monthly_salary) from salary s
join roles r on s.id=r.id 
where role_name like '%QA%';
 --24)������� ������������ �� QA ���������
select max(monthly_salary) from salary s
join roles r on s.id=r.id 
where role_name like '%QA%';
 --25. ������� ���������� QA ���������
select count(*) from roles
where role_name like '%QA%';
 --26)������� ���������� Middle ������������.
select count(*) from roles
where role_name like 'Middle %';
 --27)������� ���������� �������������
select count(*) from roles
where role_name like '%developer';
 --28)������� ���� (�����) �������� �������������.
select sum(monthly_salary) from salary s
join roles r on s.id=r.id 
where role_name like '%developer%';
 --29)������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employees e
join roles r on e.id=r.id 
join salary s on r.id=s.id 
order by monthly_salary asc;
 --30)������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees e
join roles r on e.id=r.id
join salary s on r.id=s.id
where monthly_salary in (select monthly_salary from salary where monthly_salary>=1700 and monthly_salary<=2300)
order by monthly_salary asc;
 --31)������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees e
join roles r on e.id=r.id
join salary s on r.id=s.id
where monthly_salary in (select monthly_salary from salary where monthly_salary<=2300)
order by monthly_salary asc;
 --32)������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees e
join roles r on e.id=r.id
join salary s on r.id=s.id
where monthly_salary in(1100,1500,2000)
order by monthly_salary asc;