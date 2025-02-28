# Фінальний проект

1. Завантажте дані:

Створіть схему pandemic у базі даних за допомогою SQL-команди.
Оберіть її як схему за замовчуванням за допомогою SQL-команди.
Імпортуйте дані за допомогою Import wizard так, як ви вже робили це у темі 3.
Продивіться дані, щоб бути у контексті.

![Screenshot_1](https://github.com/user-attachments/assets/87812630-8285-4372-ba21-484a94f65c96)


2. Нормалізуйте таблицю infectious_cases до 3ї нормальної форми. Збережіть у цій же схемі дві таблиці з нормалізованими даними.

Виконайте запит SELECT COUNT(*) FROM infectious_cases , щоб ментор міг зрозуміти, скільки записів ви завантажили у базу даних із файла.

![Screenshot_2](https://github.com/user-attachments/assets/72ebda9e-dbaf-4f12-b246-4a1ee120deb0)


3. Проаналізуйте дані:

Для кожної унікальної комбінації Entity та Code або їх id порахуйте середнє, мінімальне, максимальне значення та суму для атрибута Number_rabies.

Результат відсортуйте за порахованим середнім значенням у порядку спадання.
Оберіть тільки 10 рядків для виведення на екран.

![Screenshot_3](https://github.com/user-attachments/assets/2a4c2bf5-f718-43ba-9541-29cbfbe37681)


4. Побудуйте колонку різниці в роках.

Для оригінальної або нормованої таблиці для колонки Year побудуйте з використанням вбудованих SQL-функцій:

атрибут, що створює дату першого січня відповідного року,
атрибут, що дорівнює поточній даті,
атрибут, що дорівнює різниці в роках двох вищезгаданих колонок.

![Screenshot_4](https://github.com/user-attachments/assets/84b0ff68-67c5-47f8-80a0-d92392ece5d4)


5. Побудуйте власну функцію.

Створіть і використайте функцію, що будує такий же атрибут, як і в попередньому завданні: функція має приймати на вхід значення року, а повертати різницю в роках між поточною датою та датою, створеною з атрибута року (1996 рік → ‘1996-01-01’).

![Screenshot_5](https://github.com/user-attachments/assets/de4d9b79-906d-4d12-9bc3-a811bdc1377f)
