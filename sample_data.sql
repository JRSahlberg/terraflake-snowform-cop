-- AUTHORS
INSERT INTO BOOKSTORE_DB.INVENTORY.AUTHORS (ID, FIRST_NAME, LAST_NAME, NATIONALITY, BIRTH_DATE) 
VALUES 
(1, 'Tony', 'Stark', 'American', '1970-05-29'),
(2, 'Hermione', 'Granger', 'British', '1979-09-19'),
(3, 'Linus', 'Torvalds', 'Finnish', '1969-12-28'),
(4, 'Bruce', 'Wayne', 'American', '1972-02-19'),
(5, 'Ada', 'Lovelace', 'British', '1815-12-10');

-- GENRES
INSERT INTO BOOKSTORE_DB.INVENTORY.GENRES (ID, NAME, DESCRIPTION) 
VALUES
(1, 'Tech Innovations', 'Innovative solutions in tech and engineering'),
(2, 'Magic & Programming', 'Merging the worlds of magic and code'),
(3, 'Kernel Chronicles', 'Insights into the development of the Linux kernel'),
(4, 'Detective Algorithms', 'Using algorithms and sleuthing for crime-solving'),
(5, 'Historical Programming', 'From Ada Lovelace to modern computing');

-- BOOKS
INSERT INTO BOOKSTORE_DB.INVENTORY.BOOKS (ID, TITLE, ISBN, PUBLICATION_DATE, PRICE, AUTHOR_ID, GENRE_ID) 
VALUES 
(1, 'Ironman OS: A Guide', '978-4444444444', '2021-05-01', 49.99, 1, 1),
(2, 'Wand-Based Programming', '978-5555555555', '2022-06-15', 37.99, 2, 2),
(3, 'The Penguin’s Manual', '978-6666666666', '2019-07-10', 29.99, 3, 3),
(4, 'The Bat’s Algorithm', '978-7777777777', '2020-08-20', 41.99, 4, 4),
(5, 'First Steps into Code', '978-8888888888', '2022-09-25', 36.99, 5, 5);

-- CUSTOMERS
INSERT INTO BOOKSTORE_DB.INVENTORY.CUSTOMERS (ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER) 
VALUES
(1, 'Clark', 'Kent', 'clark@dailyplanet.com', '+122334455'),
(2, 'Leia', 'Organa', 'princess@rebel.net', '+543211234'),
(3, 'Elliot', 'Alderson', 'mrrobot@fsociety.org', '+987654321');

-- ORDERS
INSERT INTO BOOKSTORE_DB.INVENTORY.ORDERS (ID, CUSTOMER_ID, BOOK_ID, ORDER_DATE, QUANTITY_ORDERED, TOTAL_AMOUNT)
VALUES
(1, 1, 3, '2023-09-01', 1, 29.99),
(2, 2, 2, '2023-10-05', 2, 75.98),
(3, 3, 4, '2023-11-15', 3, 125.97);
