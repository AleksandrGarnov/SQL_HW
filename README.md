<details>
<summary>HW_1</summary>
SQL_DDL
Первая часть.

Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками


Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:

Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками

Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками

</details>

<details>
<summary>HW_2</summary>

 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 2. Вывести всех работников у которых ЗП меньше 2000.
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 5. Найти всех работников кому не начислена ЗП.
 6. Вывести всех работников с названиями их должности.
 7. Вывести имена и должность только Java разработчиков.
 8. Вывести имена и должность только Python разработчиков.
 9. Вывести имена и должность всех QA инженеров.
 10. Вывести имена и должность ручных QA инженеров.
 11. Вывести имена и должность автоматизаторов QA
 12. Вывести имена и зарплаты Junior специалистов
 13. Вывести имена и зарплаты Middle специалистов
 14. Вывести имена и зарплаты Senior специалистов
 15. Вывести зарплаты Java разработчиков
 16. Вывести зарплаты Python разработчиков
 17. Вывести имена и зарплаты Junior Python разработчиков
 18. Вывести имена и зарплаты Middle JS разработчиков
 19. Вывести имена и зарплаты Senior Java разработчиков
 20. Вывести зарплаты Junior QA инженеров
 21. Вывести среднюю зарплату всех Junior специалистов
 22. Вывести сумму зарплат JS разработчиков
 23. Вывести минимальную ЗП QA инженеров
 24. Вывести максимальную ЗП QA инженеров
 25. Вывести количество QA инженеров
 26. Вывести количество Middle специалистов.
 27. Вывести количество разработчиков
 28. Вывести фонд (сумму) зарплаты разработчиков.
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
</details>
