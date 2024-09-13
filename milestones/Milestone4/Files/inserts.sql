-- Populating database for our restaurant ordering system database
-- INSERTS
USE restaurantorderdb;

-- USER INSERTS chef
INSERT INTO Users (username, password, role) VALUES 
('francis_quang', 'password456', 'chef'),
('spongebob_squarepants', 'password789', 'chef'),
('king_neptune', 'password1', 'chef');
-- USER INSERTS servers
INSERT INTO Users (username, password, role) VALUES 
('squidward_tentacles', 'password9', 'server'),
('plank_ton', 'password8', 'server'),
('flying_dutchman', 'password7', 'server');
-- USER INSERTS customers
INSERT INTO Users (username, password, role) VALUES ('mj_chavez', 'password1', 'customer');
INSERT INTO Users (username, password, role) VALUES ('pearl_krabs', 'password2', 'customer');
INSERT INTO Users (username, password, role) VALUES ('gary_snail', 'password3', 'customer');
INSERT INTO Users (username, password, role) VALUES ('bubble_bass', 'password4', 'customer');
INSERT INTO Users (username, password, role) VALUES ('mrs_puff', 'password5', 'customer');
INSERT INTO Users (username, password, role) VALUES ('larry_lobster', 'password6', 'customer');
INSERT INTO Users (username, password, role) VALUES ('patrick_star', 'password10', 'customer');

-- CUSTOMER INSERTS
INSERT INTO Customers (user_id, first_name, last_name) SELECT user_id, 'MJ', 'Chavez' FROM Users WHERE username = 'mj_chavez';
INSERT INTO Customers (user_id, first_name, last_name) SELECT user_id, 'Pearl', 'Krabs' FROM Users WHERE username = 'pearl_krabs';
INSERT INTO Customers (user_id, first_name, last_name) SELECT user_id, 'Gary', 'Snail' FROM Users WHERE username = 'gary_snail';
INSERT INTO Customers (user_id, first_name, last_name) SELECT user_id, 'Bubble', 'Bass' FROM Users WHERE username = 'bubble_bass';
INSERT INTO Customers (user_id, first_name, last_name) SELECT user_id, 'Mrs', 'Puff' FROM Users WHERE username = 'mrs_puff';
INSERT INTO Customers (user_id, first_name, last_name) SELECT user_id, 'Larry', 'Lobster' FROM Users WHERE username = 'larry_lobster';
INSERT INTO Customers (user_id, first_name, last_name) SELECT user_id, 'Patrick', 'Star' FROM Users WHERE username = 'patrick_star';


-- SERVER INSERTS
INSERT INTO Servers (server_id, first_name, last_name, email, phone_number) SELECT user_id, 'Squidward', 'Tentacles', 'squidward@example.com', '555-1234' FROM Users WHERE username = 'squidward_tentacles';
INSERT INTO Servers (server_id, first_name, last_name, email, phone_number) SELECT user_id, 'Flying', 'Dutchman', 'f_dutchman@example.com', '555-5678' FROM Users WHERE username = 'flying_dutchman';
INSERT INTO Servers (server_id, first_name, last_name, email, phone_number) SELECT user_id, 'Plank', 'Ton', 'plankton@example.com', '555-8765' FROM Users WHERE username = 'plank_ton';

-- CHEF INSERTS
INSERT INTO Chef (chef_id, first_name, last_name, email, phone_number) SELECT user_id, 'Spongebob', 'Squarepants', 'spongebob@example.com', '555-6789' FROM Users WHERE username = 'spongebob_squarepants';
INSERT INTO Chef (chef_id, first_name, last_name, email, phone_number) SELECT user_id, 'King', 'Neptune', 'kingneptune@example.com', '555-4321' FROM Users WHERE username = 'king_neptune';
INSERT INTO Chef (chef_id, first_name, last_name, email, phone_number) SELECT user_id, 'Francis', 'Quang', 'fquang@example.com', '555-9876' FROM Users WHERE username = 'francis_quang';

-- MENU ITEMS INESRTS
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Krabby Patty', 'A delicious burger with a secret formula', 1.25);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Double Krabby Patty', 'Not one or three its two patties', 2.00);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Triple Krabby Patty', 'Its a double krabby patty plus one ', 3.00);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Kelp Rings', 'Onion rings, kelp style.', 1.50);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Koral Bits', 'In human form, they are french fries', 3.00);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Krabby Meal', 'Krabby patty with coral bits and drink.', 3.50);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Double Krabby Meal', 'Double krabby patty with coral bits and drink.', 3.75);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Triple Krabby Meal', 'Triple krabby patty with coral bits and drink.', 4.00);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Salty Sea Dog', 'Hot dog.', 1.25);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Footlong', 'It could be a sandwich', 2.00);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Sailors Surprise', 'We will surprise you with food', 3.00);
INSERT INTO Menu_items (item_name, food_description, price) VALUES ('Kelp shake', 'Its like a milkshake but with kelp for bikini bottom residents.', 2.00);

-- TABLE INSERTS
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('1', 2);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('2', 2);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('3', 2);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('4', 4);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('5', 4);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('6', 4);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('7', 4);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('8', 6);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('9', 6);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('10', 2);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('11', 6);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('12', 6);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('14', 8);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('15', 4);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('16', 4);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('17', 4);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('18', 6);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('19', 6);
INSERT INTO Diningtable (table_number, seating_capacity) VALUES ('20', 8);

-- INVENTORY INSERTS
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Burger buns', 150, 100);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Kelp', 110, 100);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Cheese', 180, 100);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Lettuce', 101, 100);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Tomato', 92, 100);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Ketchup', 10, 50);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Mayonaise', 128, 100);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Patties', 90, 100);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Sea dog', 47, 50);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Kelp Rings', 97, 100);
INSERT INTO Inventory (item_name, quantity, restock_level) VALUES ('Koral Bits', 130, 100);

-- ORDER INSERTS
INSERT INTO Orders (customer_id, order_date, total_price) SELECT customer_id, '2024-05-16 12:00:00', 2.50 FROM Customers WHERE first_name = 'MJ';
INSERT INTO Orders (customer_id, order_date, total_price) SELECT customer_id, '2024-05-16 13:00:00', 2.00 FROM Customers WHERE first_name = 'Pearl';
INSERT INTO Orders (customer_id, order_date, total_price) SELECT customer_id, '2024-05-16 14:00:00', 3.00 FROM Customers WHERE first_name = 'Gary';
INSERT INTO Orders (customer_id, order_date, total_price) SELECT customer_id, '2024-05-16 10:00:00', 4.50 FROM Customers WHERE first_name = 'Bubble';
INSERT INTO Orders (customer_id, order_date, total_price) SELECT customer_id, '2024-05-16 11:00:00', 2.00 FROM Customers WHERE first_name = 'Mrs';
INSERT INTO Orders (customer_id, order_date, total_price) SELECT customer_id, '2024-05-16 14:00:00', 3.50 FROM Customers WHERE first_name = 'Larry';
INSERT INTO Orders (customer_id, order_date, total_price) SELECT customer_id, '2024-05-16 16:00:00', 3.75 FROM Customers WHERE first_name = 'Patrick';


-- ORDER ITEMS INSERTS
INSERT INTO Order_items (order_id, menuItem_id, quantity, price)
SELECT o.order_id, m.menuItem_id, 2, m.price * 2
FROM Orders o, Menu_items m
WHERE o.customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'MJ') AND m.item_name = 'Krabby Patty';

INSERT INTO Order_items (order_id, menuItem_id, quantity, price)
SELECT o.order_id, m.menuItem_id, 1, m.price
FROM Orders o, Menu_items m
WHERE o.customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Pearl') AND m.item_name = 'Double Krabby Patty';

INSERT INTO Order_items (order_id, menuItem_id, quantity, price)
SELECT o.order_id, m.menuItem_id, 1, m.price
FROM Orders o, Menu_items m
WHERE o.customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Gary') AND m.item_name = 'Triple Krabby Patty';

INSERT INTO Order_items (order_id, menuItem_id, quantity, price)
SELECT o.order_id, m.menuItem_id, 3, m.price * 3
FROM Orders o, Menu_items m
WHERE o.customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Bubble') AND m.item_name = 'Kelp Rings';

INSERT INTO Order_items (order_id, menuItem_id, quantity, price)
SELECT o.order_id, m.menuItem_id, 2, m.price * 2
FROM Orders o, Menu_items m
WHERE o.customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Mrs') AND m.item_name = 'Koral Bits';

INSERT INTO Order_items (order_id, menuItem_id, quantity, price)
SELECT o.order_id, m.menuItem_id, 1, m.price
FROM Orders o, Menu_items m
WHERE o.customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Larry') AND m.item_name = 'Krabby Meal';

INSERT INTO Order_items (order_id, menuItem_id, quantity, price)
SELECT o.order_id, m.menuItem_id, 1, m.price
FROM Orders o, Menu_items m
WHERE o.customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Patrick') AND m.item_name = 'Double Krabby Meal';


-- RESERVATION INSERTS
INSERT INTO Reservation (customer_id, reservation_date, number_of_people, special_requests, table_id)
SELECT c.customer_id, '2024-05-20 18:00:00', 2, 'Near window', d.table_id
FROM Customers c, Diningtable d
WHERE c.first_name = 'MJ' AND c.last_name = 'Chavez' AND d.table_number = '1';

INSERT INTO Reservation (customer_id, reservation_date, number_of_people, special_requests, table_id)
SELECT c.customer_id, '2024-05-20 19:00:00', 2, 'Birthday celebration', d.table_id
FROM Customers c, Diningtable d
WHERE c.first_name = 'Pearl' AND c.last_name = 'Krabs' AND d.table_number = '2';

INSERT INTO Reservation (customer_id, reservation_date, number_of_people, special_requests, table_id)
SELECT c.customer_id, '2024-05-20 20:00:00', 4, 'High chair needed', d.table_id
FROM Customers c, Diningtable d
WHERE c.first_name = 'Gary' AND c.last_name = 'Snail' AND d.table_number = '4';

INSERT INTO Reservation (customer_id, reservation_date, number_of_people, special_requests, table_id)
SELECT c.customer_id, '2024-05-21 18:00:00', 4, 'Dont forget the pickles', d.table_id
FROM Customers c, Diningtable d
WHERE c.first_name = 'Bubble' AND c.last_name = 'Bass' AND d.table_number = '5';

INSERT INTO Reservation (customer_id, reservation_date, number_of_people, special_requests, table_id)
SELECT c.customer_id, '2024-05-21 19:00:00', 6, 'Anniversary celebration', d.table_id
FROM Customers c, Diningtable d
WHERE c.first_name = 'Mrs' AND c.last_name = 'Puff' AND d.table_number = '8';

INSERT INTO Reservation (customer_id, reservation_date, number_of_people, special_requests, table_id)
SELECT c.customer_id, '2024-05-21 20:00:00', 2, 'Quiet area', d.table_id
FROM Customers c, Diningtable d
WHERE c.first_name = 'Larry' AND c.last_name = 'Lobster' AND d.table_number = '10';

INSERT INTO Reservation (customer_id, reservation_date, number_of_people, special_requests, table_id)
SELECT c.customer_id, '2024-05-22 18:00:00', 4, 'Near entrance', d.table_id
FROM Customers c, Diningtable d
WHERE c.first_name = 'Patrick' AND c.last_name = 'Star' AND d.table_number = '15';


-- PAYMENT METHOD INSERTS
INSERT INTO Payment_method (method_name) VALUES ('Credit Card');
INSERT INTO Payment_method (method_name) VALUES ('Debit Card');
INSERT INTO Payment_method (method_name) VALUES ('Cash');
INSERT INTO Payment_method (method_name) VALUES ('Mobile Payment');


-- PAYMENT INSERTS
INSERT INTO Payment (order_id, payment_date, amount, paymentMethod_id)
SELECT o.order_id, '2024-05-20 18:30:00', o.total_price, pm.paymentMethod_id
FROM Orders o, Payment_method pm, Customers c
WHERE o.customer_id = c.customer_id AND c.first_name = 'MJ' AND c.last_name = 'Chavez' AND pm.method_name = 'Credit Card';

INSERT INTO Payment (order_id, payment_date, amount, paymentMethod_id)
SELECT o.order_id, '2024-05-20 19:30:00', o.total_price, pm.paymentMethod_id
FROM Orders o, Payment_method pm, Customers c
WHERE o.customer_id = c.customer_id AND c.first_name = 'Pearl' AND c.last_name = 'Krabs' AND pm.method_name = 'Debit Card';

INSERT INTO Payment (order_id, payment_date, amount, paymentMethod_id)
SELECT o.order_id, '2024-05-20 20:30:00', o.total_price, pm.paymentMethod_id
FROM Orders o, Payment_method pm, Customers c
WHERE o.customer_id = c.customer_id AND c.first_name = 'Gary' AND c.last_name = 'Snail' AND pm.method_name = 'Cash';

INSERT INTO Payment (order_id, payment_date, amount, paymentMethod_id)
SELECT o.order_id, '2024-05-21 18:30:00', o.total_price, pm.paymentMethod_id
FROM Orders o, Payment_method pm, Customers c
WHERE o.customer_id = c.customer_id AND c.first_name = 'Bubble' AND c.last_name = 'Bass' AND pm.method_name = 'Mobile Payment';

INSERT INTO Payment (order_id, payment_date, amount, paymentMethod_id)
SELECT o.order_id, '2024-05-21 19:30:00', o.total_price, pm.paymentMethod_id
FROM Orders o, Payment_method pm, Customers c
WHERE o.customer_id = c.customer_id AND c.first_name = 'Mrs' AND c.last_name = 'Puff' AND pm.method_name = 'Credit Card';

INSERT INTO Payment (order_id, payment_date, amount, paymentMethod_id)
SELECT o.order_id, '2024-05-21 20:30:00', o.total_price, pm.paymentMethod_id
FROM Orders o, Payment_method pm, Customers c
WHERE o.customer_id = c.customer_id AND c.first_name = 'Larry' AND c.last_name = 'Lobster' AND pm.method_name = 'Debit Card';

INSERT INTO Payment (order_id, payment_date, amount, paymentMethod_id)
SELECT o.order_id, '2024-05-22 18:30:00', o.total_price, pm.paymentMethod_id
FROM Orders o, Payment_method pm, Customers c
WHERE o.customer_id = c.customer_id AND c.first_name = 'Patrick' AND c.last_name = 'Star' AND pm.method_name = 'Cash';


-- SPECIAL REQUEST INSERTS
INSERT INTO Specialrequest (order_id, request_text)
SELECT o.order_id, 'No onions, please.'
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'MJ' AND c.last_name = 'Chavez';

INSERT INTO Specialrequest (order_id, request_text)
SELECT o.order_id, 'Extra cheese on the burger.'
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'Pearl' AND c.last_name = 'Krabs';

INSERT INTO Specialrequest (order_id, request_text)
SELECT o.order_id, 'Gluten-free bun.'
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'Gary' AND c.last_name = 'Snail';

INSERT INTO Specialrequest (order_id, request_text)
SELECT o.order_id, 'No salt on the fries.'
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'Bubble' AND c.last_name = 'Bass';

INSERT INTO Specialrequest (order_id, request_text)
SELECT o.order_id, 'Diet soda, please.'
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'Mrs' AND c.last_name = 'Puff';

INSERT INTO Specialrequest (order_id, request_text)
SELECT o.order_id, 'Extra pickles.'
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'Larry' AND c.last_name = 'Lobster';

INSERT INTO Specialrequest (order_id, request_text)
SELECT o.order_id, 'No ketchup.'
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE c.first_name = 'Patrick' AND c.last_name = 'Star';


-- LOYALTY PROGRAM INSERTS
INSERT INTO LoyaltyProgram (customer_id, membershipLevel, points) SELECT customer_id, 'Platinum', 500 FROM Customers WHERE first_name = 'MJ';
INSERT INTO LoyaltyProgram (customer_id, membershipLevel, points) SELECT customer_id, 'Gold', 100 FROM Customers WHERE first_name = 'Bubble';
INSERT INTO LoyaltyProgram (customer_id, membershipLevel, points) SELECT customer_id, 'Silver', 50 FROM Customers WHERE first_name = 'Gary';
INSERT INTO LoyaltyProgram (customer_id, membershipLevel, points) SELECT customer_id, 'Bronze', 25 FROM Customers WHERE first_name = 'Larry';


-- REVIEW INSERTS
INSERT INTO Review (customer_id, menuItem_id, rating, review_text, review_date)
SELECT c.customer_id, m.menuItem_id, 5, 'This krabby patty was delicious!', '2024-05-20 18:30:00'
FROM Customers c, Menu_items m
WHERE c.first_name = 'MJ' AND c.last_name = 'Chavez' AND m.item_name = 'Krabby Patty';

INSERT INTO Review (customer_id, menuItem_id, rating, review_text, review_date)
SELECT c.customer_id, m.menuItem_id, 4, 'Loved the Double Krabby Patty.', '2024-05-20 19:30:00'
FROM Customers c, Menu_items m
WHERE c.first_name = 'Pearl' AND c.last_name = 'Krabs' AND m.item_name = 'Double Krabby Patty';

INSERT INTO Review (customer_id, menuItem_id, rating, review_text, review_date)
SELECT c.customer_id, m.menuItem_id, 3, 'Meow', '2024-05-20 20:30:00'
FROM Customers c, Menu_items m
WHERE c.first_name = 'Gary' AND c.last_name = 'Snail' AND m.item_name = 'Triple Krabby Patty';

INSERT INTO Review (customer_id, menuItem_id, rating, review_text, review_date)
SELECT c.customer_id, m.menuItem_id, 2, 'Kelp Rings were okay.', '2024-05-21 18:30:00'
FROM Customers c, Menu_items m
WHERE c.first_name = 'Bubble' AND c.last_name = 'Bass' AND m.item_name = 'Kelp Rings';

INSERT INTO Review (customer_id, menuItem_id, rating, review_text, review_date)
SELECT c.customer_id, m.menuItem_id, 5, 'Koral Bits were delicious! Highly recommend!', '2024-05-21 19:30:00'
FROM Customers c, Menu_items m
WHERE c.first_name = 'Mrs' AND c.last_name = 'Puff' AND m.item_name = 'Koral Bits';

INSERT INTO Review (customer_id, menuItem_id, rating, review_text, review_date)
SELECT c.customer_id, m.menuItem_id, 4, 'Krabby Meal was great for the gains.', '2024-05-21 20:30:00'
FROM Customers c, Menu_items m
WHERE c.first_name = 'Larry' AND c.last_name = 'Lobster' AND m.item_name = 'Krabby Meal';

INSERT INTO Review (customer_id, menuItem_id, rating, review_text, review_date)
SELECT c.customer_id, m.menuItem_id, 3, 'One meal is not enough.', '2024-05-22 18:30:00'
FROM Customers c, Menu_items m
WHERE c.first_name = 'Patrick' AND c.last_name = 'Star' AND m.item_name = 'Double Krabby Meal';


-- FEEDBACK INSERTS
INSERT INTO Feedback (customer_id, feedback_text, feedback_date)
SELECT c.customer_id, 'Great service and delicious food!', '2024-05-20 18:30:00'
FROM Customers c
WHERE c.first_name = 'MJ' AND c.last_name = 'Chavez';

INSERT INTO Feedback (customer_id, feedback_text, feedback_date)
SELECT c.customer_id, 'Enjoyed the birthday celebration!', '2024-05-20 19:30:00'
FROM Customers c
WHERE c.first_name = 'Pearl' AND c.last_name = 'Krabs';

INSERT INTO Feedback (customer_id, feedback_text, feedback_date)
SELECT c.customer_id, 'Meow', '2024-05-20 20:30:00'
FROM Customers c
WHERE c.first_name = 'Gary' AND c.last_name = 'Snail';

INSERT INTO Feedback (customer_id, feedback_text, feedback_date)
SELECT c.customer_id, 'Nice place, but food could be better.', '2024-05-21 18:30:00'
FROM Customers c
WHERE c.first_name = 'Bubble' AND c.last_name = 'Bass';

INSERT INTO Feedback (customer_id, feedback_text, feedback_date)
SELECT c.customer_id, 'Perfect for our anniversary!', '2024-05-21 19:30:00'
FROM Customers c
WHERE c.first_name = 'Mrs' AND c.last_name = 'Puff';

INSERT INTO Feedback (customer_id, feedback_text, feedback_date)
SELECT c.customer_id, 'The meal definitely hit the spot', '2024-05-21 20:30:00'
FROM Customers c
WHERE c.first_name = 'Larry' AND c.last_name = 'Lobster';

INSERT INTO Feedback (customer_id, feedback_text, feedback_date)
SELECT c.customer_id, 'Got another meal and it was worth it!', '2024-05-22 18:30:00'
FROM Customers c
WHERE c.first_name = 'Patrick' AND c.last_name = 'Star';

-- SHIFT INSERTS
INSERT INTO Shift (employee_id, shift_date, shift_start_time, shift_end_time)
SELECT s.server_id, '2024-05-20', '09:00:00', '17:00:00'
FROM Servers s, Users u
WHERE s.server_id = u.user_id AND u.username = 'squidward_tentacles';

INSERT INTO Shift (employee_id, shift_date, shift_start_time, shift_end_time)
SELECT s.server_id, '2024-05-20', '13:00:00', '21:00:00'
FROM Servers s, Users u
WHERE s.server_id = u.user_id AND u.username = 'flying_dutchman';

INSERT INTO Shift (employee_id, shift_date, shift_start_time, shift_end_time)
SELECT s.server_id, '2024-05-20', '17:00:00', '01:00:00'
FROM Servers s, Users u
WHERE s.server_id = u.user_id AND u.username = 'plank_ton';

INSERT INTO Shift (employee_id, shift_date, shift_start_time, shift_end_time)
SELECT c.chef_id, '2024-05-20', '08:00:00', '16:00:00'
FROM Chef c, Users u
WHERE c.chef_id = u.user_id AND u.username = 'spongebob_squarepants';

INSERT INTO Shift (employee_id, shift_date, shift_start_time, shift_end_time)
SELECT c.chef_id, '2024-05-20', '12:00:00', '20:00:00'
FROM Chef c, Users u
WHERE c.chef_id = u.user_id AND u.username = 'king_neptune';

INSERT INTO Shift (employee_id, shift_date, shift_start_time, shift_end_time)
SELECT c.chef_id, '2024-05-20', '16:00:00', '00:00:00'
FROM Chef c, Users u
WHERE c.chef_id = u.user_id AND u.username = 'francis_quang';

-- ORDER STATUS INSERTS
INSERT INTO Order_status (order_id, order_status, update_time) SELECT order_id, 'Kitchen Received Order!', '2024-05-16 10:05:00' FROM Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'MJ');
INSERT INTO Order_status (order_id, order_status, update_time) SELECT order_id, 'Chefs are cooking', '2024-05-16 11:05:00' FROM Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Pearl');
INSERT INTO Order_status (order_id, order_status, update_time) SELECT order_id, 'Order up!', '2024-05-16 12:05:00' FROM Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Gary');
INSERT INTO Order_status (order_id, order_status, update_time) SELECT order_id, 'Order delivered!', '2024-05-16 13:05:00' FROM Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Bubble');
INSERT INTO Order_status (order_id, order_status, update_time) SELECT order_id, 'Order being prepared', '2024-05-16 14:05:00' FROM Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Mrs');
INSERT INTO Order_status (order_id, order_status, update_time) SELECT order_id, 'Order ready for pickup', '2024-05-16 15:05:00' FROM Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Larry');
INSERT INTO Order_status (order_id, order_status, update_time) SELECT order_id, 'Order in transit', '2024-05-16 16:05:00' FROM Orders WHERE customer_id = (SELECT customer_id FROM Customers WHERE first_name = 'Patrick');


-- CUSTOMER SERVICE INSERTS 
INSERT INTO CustomerService (customer_id, inquiry_text, response_text, inquiry_date, response_date, staff_id)
SELECT c.customer_id, 
       'I need assistance with my recent order.', 
       'We are looking into it.', 
       '2024-05-20 18:30:00', 
       '2024-05-20 19:00:00', 
       u.user_id
FROM Customers c, Users u
WHERE c.first_name = 'MJ' AND c.last_name = 'Chavez' AND u.username = 'squidward_tentacles'
LIMIT 1;


INSERT INTO CustomerService (customer_id, inquiry_text, response_text, inquiry_date, response_date, staff_id)
SELECT c.customer_id, 
       'Can you help with my reservation?', 
       'Your reservation has been confirmed.', 
       '2024-05-20 19:30:00', 
       '2024-05-20 20:00:00', 
       u.user_id
FROM Customers c, Users u
WHERE c.first_name = 'Pearl' AND c.last_name = 'Krabs' AND u.username = 'flying_dutchman'
LIMIT 1;


INSERT INTO CustomerService (customer_id, inquiry_text, response_text, inquiry_date, response_date, staff_id)
SELECT c.customer_id, 
       'I want to change my payment method.', 
       'Your payment method has been updated.', 
       '2024-05-20 20:30:00', 
       '2024-05-20 21:00:00', 
       u.user_id
FROM Customers c, Users u
WHERE c.first_name = 'Gary' AND c.last_name = 'Snail' AND u.username = 'plank_ton'
LIMIT 1;


INSERT INTO CustomerService (customer_id, inquiry_text, response_text, inquiry_date, response_date, staff_id)
SELECT c.customer_id, 
       'Can I get a refund for my order?', 
       'Your refund has been processed.', 
       '2024-05-21 18:30:00', 
       '2024-05-21 19:00:00', 
       u.user_id
FROM Customers c, Users u
WHERE c.first_name = 'Bubble' AND c.last_name = 'Bass' AND u.username = 'squidward_tentacles'
LIMIT 1;


INSERT INTO CustomerService (customer_id, inquiry_text, response_text, inquiry_date, response_date, staff_id)
SELECT c.customer_id, 
       'I have a complaint about my service.', 
       'We apologize for the inconvenience. Your complaint has been noted.', 
       '2024-05-21 19:30:00', 
       '2024-05-21 20:00:00', 
       u.user_id
FROM Customers c, Users u
WHERE c.first_name = 'Mrs' AND c.last_name = 'Puff' AND u.username = 'flying_dutchman'
LIMIT 1;


INSERT INTO CustomerService (customer_id, inquiry_text, response_text, inquiry_date, response_date, staff_id)
SELECT c.customer_id, 
       'Can you provide more details about your loyalty program?', 
       'Sure, here are the details about our loyalty program.', 
       '2024-05-21 20:30:00', 
       '2024-05-21 21:00:00', 
       u.user_id
FROM Customers c, Users u
WHERE c.first_name = 'Larry' AND c.last_name = 'Lobster' AND u.username = 'plank_ton'
LIMIT 1;


INSERT INTO CustomerService (customer_id, inquiry_text, response_text, inquiry_date, response_date, staff_id)
SELECT c.customer_id, 
       'I need help with my account.', 
       'We have reset your account password. Please check your email.', 
       '2024-05-22 18:30:00', 
       '2024-05-22 19:00:00',
       u.user_id
FROM Customers c, Users u
WHERE c.first_name = 'Patrick' AND c.last_name = 'Star' AND u.username = 'squidward_tentacles'
LIMIT 1;


-- PROMOTION INSERTS
INSERT INTO Promotion (promotion_text, start_date, end_date, is_active) VALUES
('50% off on all Krabby Patties!', '2024-06-01 00:00:00', '2024-06-07 23:59:59', TRUE),
('Buy 1 Get 1 Free on Kelp Shakes!', '2024-06-08 00:00:00', '2024-06-14 23:59:59', TRUE),
('Free koral bits with any Krabby Meal!', '2024-06-15 00:00:00', '2024-06-21 23:59:59', TRUE),
('20% off on all orders above $20!', '2024-06-22 00:00:00', '2024-06-28 23:59:59', TRUE);

-- EVENT INSERTS
INSERT INTO RestaurantEvent (event_name, event_date, event_description, is_active) VALUES
('Squidward\'s talent show', '2024-06-10 18:00:00', 'Watch bikini bottom talents hosted by Squidward!', TRUE),
('Stand-up comnedy', '2024-06-15 20:00:00', 'Come laugh with us as Spongebob takes the stage in stand-up comedy!', TRUE),
('Neptune\'s Feast', '2024-06-20 19:00:00', 'Join us for a grand feast with King Neptune.', TRUE);


-- NOTIFICATION INSERTS
INSERT INTO Notification (user_id, notification_text, notification_date, is_read)
SELECT u.user_id, 'Your reservation for May 20th has been confirmed!', '2024-05-18 12:00:00', FALSE
FROM Users u
WHERE u.username = 'mj_chavez';

INSERT INTO Notification (user_id, notification_text, notification_date, is_read)
SELECT u.user_id, 'Your order #1234 has been shipped!', '2024-05-19 14:00:00', FALSE
FROM Users u
WHERE u.username = 'pearl_krabs';

INSERT INTO Notification (user_id, notification_text, notification_date, is_read)
SELECT u.user_id, 'You have earned 50 loyalty points!', '2024-05-20 10:30:00', FALSE
FROM Users u
WHERE u.username = 'gary_snail';

INSERT INTO Notification (user_id, notification_text, notification_date, is_read)
SELECT u.user_id, 'Your table reservation for May 21st has been updated.', '2024-05-21 09:00:00', FALSE
FROM Users u
WHERE u.username = 'bubble_bass';

INSERT INTO Notification (user_id, notification_text, notification_date, is_read)
SELECT u.user_id, 'Your payment of $20 has been processed.', '2024-05-22 15:00:00', FALSE
FROM Users u
WHERE u.username = 'mrs_puff';

INSERT INTO Notification (user_id, notification_text, notification_date, is_read)
SELECT u.user_id, 'Your review has been posted!', '2024-05-23 11:00:00', FALSE
FROM Users u
WHERE u.username = 'larry_lobster';

INSERT INTO Notification (user_id, notification_text, notification_date, is_read)
SELECT u.user_id, 'Your feedback has been received. Thank you!', '2024-05-24 17:00:00', FALSE
FROM Users u
WHERE u.username = 'patrick_star';


