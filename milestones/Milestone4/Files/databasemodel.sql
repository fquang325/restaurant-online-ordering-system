-- DROP DATABASE IF EXISTS restaurantorderdb;
-- CREATE DATABASE IF NOT EXISTS restaurantorderdb;
USE restaurantorderdb;

-- Table User
DROP TABLE IF EXISTS Users;
CREATE TABLE IF NOT EXISTS Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('customer', 'server', 'chef') DEFAULT 'customer' NOT NULL
);

-- Table Customers
DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Table LoyaltyProgram
DROP TABLE IF EXISTS LoyaltyProgram;
CREATE TABLE IF NOT EXISTS LoyaltyProgram (
    loyaltyProgram_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    membershipLevel VARCHAR(45) NOT NULL,
    points INT DEFAULT 0 NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Table Servers
DROP TABLE IF EXISTS Servers;
CREATE TABLE IF NOT EXISTS Servers (
    server_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    FOREIGN KEY (server_id) REFERENCES Users (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Table Chef
DROP TABLE IF EXISTS Chef;
CREATE TABLE IF NOT EXISTS Chef (
    chef_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    FOREIGN KEY (chef_id) REFERENCES Users (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Table payment_method
DROP TABLE IF EXISTS Payment_method;
CREATE TABLE IF NOT EXISTS Payment_method (
    paymentMethod_id INT PRIMARY KEY AUTO_INCREMENT,
    method_name VARCHAR(50) NOT NULL
);

-- Table menu_items
DROP TABLE IF EXISTS Menu_items;
CREATE TABLE IF NOT EXISTS Menu_items (
    menuItem_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(255) NOT NULL,
    food_description TEXT NOT NULL,
    price DECIMAL(10 , 2) NOT NULL
);

-- Table orders
DROP TABLE IF EXISTS Orders;
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10 , 2 ) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table order_items
DROP TABLE IF EXISTS Order_items;
CREATE TABLE IF NOT EXISTS Order_items (
    orderItem_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    menuItem_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10 , 2 ) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id)
		 ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (menuItem_id) REFERENCES Menu_items (menuItem_id)
		 ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table Inventory
DROP TABLE IF EXISTS Inventory;
CREATE TABLE IF NOT EXISTS Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    restock_level INT NOT NULL
);

-- Table Ditning table
DROP TABLE IF EXISTS Diningtable;
CREATE TABLE IF NOT EXISTS Diningtable (
    table_id INT PRIMARY KEY AUTO_INCREMENT,
    table_number VARCHAR(10) NOT NULL,
    seating_capacity INT NOT NULL
);

-- Table special requests
DROP TABLE IF EXISTS Specialrequest;
CREATE TABLE IF NOT EXISTS Specialrequest (
    request_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    request_text TEXT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id)
     ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table reservations
DROP TABLE IF EXISTS Reservation;
CREATE TABLE IF NOT EXISTS Reservation (
    reservation_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    reservation_date DATETIME NOT NULL,
    number_of_people INT NOT NULL,
    special_requests TEXT,
    table_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
     ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (table_id) REFERENCES Diningtable (table_id)
     ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table payment
DROP TABLE IF EXISTS Payment;
CREATE TABLE IF NOT EXISTS Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    payment_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10 , 2) NOT NULL,
    paymentMethod_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id)
     ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (paymentMethod_id) REFERENCES Payment_method (paymentMethod_id)
    ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table review
DROP TABLE IF EXISTS Review;
CREATE TABLE IF NOT EXISTS Review (
review_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT NOT NULL,
menuItem_id INT NOT NULL,
rating INT CHECK (rating >= 1 AND rating <=5) NOT NULL,
review_text TEXT,
review_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
 ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (menuItem_id) REFERENCES Menu_items(menuItem_id)
 ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table shift
DROP TABLE IF EXISTS Shift;
CREATE TABLE IF NOT EXISTS Shift (
    shift_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    shift_date DATE NOT NULL,
    shift_start_time TIME NOT NULL,
    shift_end_time TIME NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Users (user_id)
     ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table feedback
DROP TABLE IF EXISTS Feedback;
CREATE TABLE IF NOT EXISTS Feedback (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    feedback_text TEXT NOT NULL,
    feedback_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
     ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table order status
DROP TABLE IF EXISTS Order_status;
CREATE TABLE IF NOT EXISTS Order_status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    order_status VARCHAR(50) NOT NULL,
    update_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id)
     ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table customer service
DROP TABLE IF EXISTS CustomerService;
CREATE TABLE IF NOT EXISTS CustomerService (
    inquiry_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    inquiry_text TEXT NOT NULL,
    response_text TEXT NOT NULL,
    inquiry_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    response_date DATETIME NOT NULL,
    staff_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
     ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (staff_id) REFERENCES Users (user_id)
    ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table promotions
DROP TABLE IF EXISTS Promotion;
CREATE TABLE IF NOT EXISTS Promotion (
    promotion_id INT PRIMARY KEY AUTO_INCREMENT,
    promotion_text TEXT NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    is_active BOOLEAN DEFAULT TRUE NOT NULL
);

-- Table events
DROP TABLE IF EXISTS RestaurantEvent;
CREATE TABLE IF NOT EXISTS RestaurantEvent (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(255) NOT NULL,
    event_date DATETIME NOT NULL,
    event_description TEXT NOT NULL,
    is_active BOOLEAN DEFAULT TRUE NOT NULL
);

-- Table notification
DROP TABLE IF EXISTS Notification;
CREATE TABLE IF NOT EXISTS Notification (
    notification_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    notification_text TEXT NOT NULL,
    notification_date DATETIME NOT NULL,
    is_read BOOLEAN DEFAULT FALSE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users (user_id)
     ON DELETE CASCADE ON UPDATE CASCADE
);
