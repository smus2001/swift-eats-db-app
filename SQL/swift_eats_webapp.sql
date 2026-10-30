-- Creating  a version 2 of swift_eats as a webapp

-- A1:the database and the location table

CREATE DATABASE IF NOT EXISTS swift_eats_web_app;
USE swift_eats_web_app;

CREATE TABLE cities (
    city_id   INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(30) NOT NULL UNIQUE
);

desc cities;

select * from cities;

CREATE TABLE areas (
    area_id   INT AUTO_INCREMENT PRIMARY KEY,
    city_id   INT NOT NULL,
    area_name VARCHAR(100) NOT NULL,
    CONSTRAINT fk_areas_city FOREIGN KEY (city_id)
        REFERENCES cities(city_id) ON DELETE RESTRICT,
    CONSTRAINT uq_city_area UNIQUE (city_id, area_name)
);

desc areas;

select * from areas;

--	DELETE FROM areas;
--	DELETE FROM cities;
--	ALTER TABLE cities AUTO_INCREMENT = 1;

-- A1b: add province and an is_serviced flag

-- ALTER TABLE cities
--    ADD COLUMN province VARCHAR(40) NOT NULL DEFAULT 'Unknown' AFTER city_name,
--    ADD COLUMN is_serviced BOOLEAN NOT NULL DEFAULT FALSE;

-- A2: populate cities

INSERT INTO cities (city_name, province) VALUES
-- Punjab
('Lahore','Punjab'),('Faisalabad','Punjab'),('Rawalpindi','Punjab'),('Gujranwala','Punjab'),
('Multan','Punjab'),('Sialkot','Punjab'),('Bahawalpur','Punjab'),('Sargodha','Punjab'),
('Sheikhupura','Punjab'),('Jhang','Punjab'),('Gujrat','Punjab'),('Rahim Yar Khan','Punjab'),
('Kasur','Punjab'),('Sahiwal','Punjab'),('Okara','Punjab'),('Wah Cantonment','Punjab'),
('Dera Ghazi Khan','Punjab'),('Chiniot','Punjab'),('Jhelum','Punjab'),('Attock','Punjab'),
('Chakwal','Punjab'),('Hafizabad','Punjab'),('Khanewal','Punjab'),('Mianwali','Punjab'),
('Vehari','Punjab'),('Narowal','Punjab'),('Bahawalnagar','Punjab'),('Toba Tek Singh','Punjab'),
-- Sindh
('Karachi','Sindh'),('Hyderabad','Sindh'),('Sukkur','Sindh'),('Larkana','Sindh'),
('Nawabshah','Sindh'),('Mirpur Khas','Sindh'),('Jacobabad','Sindh'),('Shikarpur','Sindh'),
('Khairpur','Sindh'),('Dadu','Sindh'),('Thatta','Sindh'),('Badin','Sindh'),('Sanghar','Sindh'),
-- Khyber Pakhtunkhwa
('Peshawar','Khyber Pakhtunkhwa'),('Mardan','Khyber Pakhtunkhwa'),('Mingora','Khyber Pakhtunkhwa'),
('Abbottabad','Khyber Pakhtunkhwa'),('Kohat','Khyber Pakhtunkhwa'),('Swabi','Khyber Pakhtunkhwa'),
('Dera Ismail Khan','Khyber Pakhtunkhwa'),('Nowshera','Khyber Pakhtunkhwa'),
('Charsadda','Khyber Pakhtunkhwa'),('Mansehra','Khyber Pakhtunkhwa'),('Bannu','Khyber Pakhtunkhwa'),
('Haripur','Khyber Pakhtunkhwa'),
-- Balochistan
('Quetta','Balochistan'),('Turbat','Balochistan'),('Khuzdar','Balochistan'),('Gwadar','Balochistan'),
('Chaman','Balochistan'),('Zhob','Balochistan'),('Sibi','Balochistan'),('Hub','Balochistan'),
-- Capital, AJK, Gilgit-Baltistan
('Islamabad','Islamabad Capital Territory'),
('Muzaffarabad','Azad Jammu and Kashmir'),('Mirpur','Azad Jammu and Kashmir'),
('Kotli','Azad Jammu and Kashmir'),('Rawalakot','Azad Jammu and Kashmir'),
('Gilgit','Gilgit-Baltistan'),('Skardu','Gilgit-Baltistan'),('Chilas','Gilgit-Baltistan');


UPDATE cities SET is_serviced = TRUE
WHERE city_name IN ('Karachi','Lahore','Islamabad','Rawalpindi','Peshawar');

-- A3 migrate the areas already in v1 data
INSERT IGNORE INTO areas (city_id, area_name)
SELECT c.city_id, src.area_name
FROM (
    SELECT city, area_name FROM swift_eats.users
    UNION
    SELECT city, area_name FROM swift_eats.resturants
) AS src
JOIN cities c ON c.city_name = REPLACE(src.city, 'Rawal Pindi', 'Rawalpindi');

-- A4: add extra areas for the five delivery cities

SET @c = (SELECT city_id FROM cities WHERE city_name = 'Karachi');
INSERT IGNORE INTO areas (city_id, area_name) VALUES
(@c,'Clifton'),(@c,'DHA'),(@c,'North Nazimabad'),(@c,'Nazimabad'),(@c,'Bahadurabad'),
(@c,'Tariq Road'),(@c,'Korangi'),(@c,'Malir'),(@c,'Gulshan e Maymar'),(@c,'Scheme 33');

SET @c = (SELECT city_id FROM cities WHERE city_name = 'Lahore');
INSERT IGNORE INTO areas (city_id, area_name) VALUES
(@c,'Model Town'),(@c,'Iqbal Town'),(@c,'Wapda Town'),(@c,'Faisal Town'),(@c,'Garden Town'),
(@c,'Cantt'),(@c,'Bahria Town'),(@c,'Samanabad'),(@c,'Shadman'),(@c,'Township');

SET @c = (SELECT city_id FROM cities WHERE city_name = 'Islamabad');
INSERT IGNORE INTO areas (city_id, area_name) VALUES
(@c,'Blue Area'),(@c,'F-10 Markaz'),(@c,'G-10 Markaz'),(@c,'G-6 Markaz'),(@c,'I-10 Markaz'),
(@c,'DHA'),(@c,'Bahria Town'),(@c,'Bani Gala'),(@c,'PWD'),(@c,'Gulberg Greens');

SET @c = (SELECT city_id FROM cities WHERE city_name = 'Rawalpindi');
INSERT IGNORE INTO areas (city_id, area_name) VALUES
(@c,'Saddar'),(@c,'Satellite Town'),(@c,'DHA'),(@c,'Peshawar Road'),(@c,'Raja Bazar'),
(@c,'Chaklala'),(@c,'Gulzar e Quaid'),(@c,'Murree Road');

SET @c = (SELECT city_id FROM cities WHERE city_name = 'Peshawar');
INSERT IGNORE INTO areas (city_id, area_name) VALUES
(@c,'Saddar'),(@c,'Gulbahar'),(@c,'Cantt'),(@c,'Board Bazar'),(@c,'Dalazak Road'),
(@c,'Ring Road'),(@c,'Warsak Road'),(@c,'Regi Model Town');

-- A5: verify

-- 1. Cities per province
SELECT province, COUNT(*) AS cities FROM cities GROUP BY province ORDER BY cities DESC;

-- 2. Areas per serviced city
SELECT c.city_name, COUNT(a.area_id) AS areas
FROM cities c LEFT JOIN areas a ON a.city_id = c.city_id
WHERE c.is_serviced
GROUP BY c.city_name;

-- 3. Anti-join: must return ZERO rows (every v1 area made it across)
SELECT src.city, src.area_name
FROM (SELECT city, area_name FROM swift_eats.users
      UNION
      SELECT city, area_name FROM swift_eats.resturants) src
LEFT JOIN cities c ON c.city_name = REPLACE(src.city, 'Rawal Pindi', 'Rawalpindi')
LEFT JOIN areas  a ON a.city_id = c.city_id AND a.area_name = src.area_name
WHERE a.area_id IS NULL;


-- B1: Creating tables: users, restaurants, riders

USE swift_eats_web_app;

CREATE TABLE users (
    user_id         INT AUTO_INCREMENT PRIMARY KEY,
    first_name      VARCHAR(50)  NOT NULL CHECK (first_name REGEXP '^[a-zA-Z]+$'),
    last_name       VARCHAR(50)  NOT NULL CHECK (last_name  REGEXP '^[a-zA-Z]+$'),
    email           VARCHAR(100) NOT NULL UNIQUE,
    contact_number  VARCHAR(11)  NOT NULL UNIQUE CHECK (contact_number REGEXP '^03[0-9]{9}$'),
    customer_status VARCHAR(20)  NOT NULL DEFAULT 'active' CHECK (customer_status IN ('active','not active')),
    sub_type        VARCHAR(10)  NOT NULL DEFAULT 'base'   CHECK (sub_type IN ('base','pro')),
    area_id         INT NOT NULL,
    address_block   VARCHAR(50)  NOT NULL,
    created_at      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_users_area FOREIGN KEY (area_id) REFERENCES areas(area_id) ON DELETE RESTRICT
);

select * from users;

CREATE TABLE restaurants (
    restaurant_id     INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_code   VARCHAR(6)   NOT NULL UNIQUE,
    restaurant_name   VARCHAR(100) NOT NULL,
    area_id           INT NOT NULL,
    address_block     VARCHAR(20)  NOT NULL,
    category          VARCHAR(50)  NOT NULL CHECK (category IN (
        'Pakistani','Fast Food','Cakes and Bakery','Desserts','Pizza','Burgers','Biryani',
        'Sandwiches','Beverages','Shawarma','Handi and Karhai','Chinese','Italian','Samosa',
        'Pulao','Tea and Coffee')),
    cost_bracket      VARCHAR(4)   NOT NULL CHECK (cost_bracket IN ('$','$$','$$$','$$$$')),
    avg_cost_per_item DECIMAL(10,2) NOT NULL CHECK (avg_cost_per_item > 0),
    rating            DECIMAL(2,1) NOT NULL DEFAULT 4.0 CHECK (rating BETWEEN 1.0 AND 5.0),
    is_active         BOOLEAN      NOT NULL DEFAULT TRUE,
    CONSTRAINT fk_rest_area FOREIGN KEY (area_id) REFERENCES areas(area_id) ON DELETE RESTRICT
);

select * from restaurants;

CREATE TABLE riders (
    rider_id      INT AUTO_INCREMENT PRIMARY KEY,
    rider_code    VARCHAR(10) NOT NULL UNIQUE,
    first_name    VARCHAR(50) NOT NULL CHECK (first_name REGEXP '^[a-zA-Z]+$'),
    last_name     VARCHAR(50) NOT NULL CHECK (last_name  REGEXP '^[a-zA-Z]+$'),
    phone_number  VARCHAR(11) NOT NULL UNIQUE CHECK (phone_number REGEXP '^03[0-9]{9}$'),
    rider_age     INT NOT NULL CHECK (rider_age >= 18),
    vehicle_type  VARCHAR(20) NOT NULL CHECK (vehicle_type IN ('Motorcycle','Scooter','Electric Bike','Bicycle')),
    city_id       INT NOT NULL,
    rider_rating  DECIMAL(2,1) NOT NULL DEFAULT 5.0 CHECK (rider_rating BETWEEN 1.0 AND 5.0),
    rider_status  VARCHAR(20) NOT NULL DEFAULT 'offline' CHECK (rider_status IN ('online','offline','on delivery')),
    CONSTRAINT fk_riders_city FOREIGN KEY (city_id) REFERENCES cities(city_id) ON DELETE RESTRICT
);

select * from riders;


--B2: migrating data into new tables from swft_eats database:


-- Users: keep the same user_id values so orders can reuse customer_id later
INSERT INTO users (user_id, first_name, last_name, email, contact_number,
                   customer_status, sub_type, area_id, address_block, created_at)
SELECT u.user_id, u.first_name, u.last_name, u.email, u.contact_number,
       u.customer_status, u.sub_type, a.area_id, u.area_block_number, u.created_at
FROM swift_eats.users u
JOIN cities c ON c.city_name = REPLACE(u.city, 'Rawal Pindi', 'Rawalpindi')
JOIN areas  a ON a.city_id = c.city_id AND a.area_name = u.area_name;

-- Restaurants
INSERT INTO restaurants (restaurant_code, restaurant_name, area_id, address_block,
                         category, cost_bracket, avg_cost_per_item, rating, is_active)
SELECT r.resturant_id,
       CONCAT(r.category, ' @ ', r.area_name),
       a.area_id, r.area_blk_code, r.category, r.cost_bracket,
       r.avg_cost_per_item, r.rating, r.is_active
FROM swift_eats.resturants r
JOIN cities c ON c.city_name = REPLACE(r.city, 'Rawal Pindi', 'Rawalpindi')
JOIN areas  a ON a.city_id = c.city_id AND a.area_name = r.area_name;

-- Riders
INSERT INTO riders (rider_code, first_name, last_name, phone_number, rider_age,
                    vehicle_type, city_id, rider_rating, rider_status)
SELECT r.rider_id, r.first_name, r.last_name, r.phone_number, r.rider_age,
       r.vehicle_type, c.city_id, r.rider_rating, r.rider_status
FROM swift_eats.riders r
JOIN cities c ON c.city_name = REPLACE(r.assigned_city, 'Rawal Pindi', 'Rawalpindi');

select * from users u; 
select * from restaurants r;
select * from riders r; 

-- B3: verification:

-- 1. Row counts: each pair must match
SELECT 'users' t, (SELECT COUNT(*) FROM swift_eats.users) v1, (SELECT COUNT(*) FROM users) v2
UNION ALL
SELECT 'restaurants', (SELECT COUNT(*) FROM swift_eats.resturants), (SELECT COUNT(*) FROM restaurants)
UNION ALL
SELECT 'riders', (SELECT COUNT(*) FROM swift_eats.riders), (SELECT COUNT(*) FROM riders);

-- query shows that riders were migrated accurantly but user and retaurants did not. 

-- preparing a fix

-- 1. Did the areas load?
-- SELECT COUNT(*) AS area_rows FROM areas;

-- 2. Which v1 user areas have no match in areas? (same anti-join as A5 query 3)
-- SELECT DISTINCT u.city, u.area_name
-- FROM swift_eats.users u
-- LEFT JOIN cities c ON c.city_name = REPLACE(u.city, 'Rawal Pindi', 'Rawalpindi')
-- LEFT JOIN areas  a ON a.city_id = c.city_id AND a.area_name = u.area_name
-- WHERE a.area_id IS NULL;

-- 3. Same check for restaurants
-- SELECT DISTINCT r.city, r.area_name
-- FROM swift_eats.resturants r
-- LEFT JOIN cities c ON c.city_name = REPLACE(r.city, 'Rawal Pindi', 'Rawalpindi')
-- LEFT JOIN areas  a ON a.city_id = c.city_id AND a.area_name = r.area_name
-- WHERE a.area_id IS NULL;

-- We missed the step A3 before, that is why we failed to migrate data into users and restaurant, 

-- 2. The join path works: customers per city
SELECT c.city_name, COUNT(*) AS customers
FROM users u
JOIN areas a  ON a.area_id = u.area_id
JOIN cities c ON c.city_id = a.city_id
GROUP BY c.city_name;

-- contraints check
-- INSERT INTO riders (rider_code, first_name, last_name, phone_number, rider_age, vehicle_type, city_id)
-- VALUES ('TEST-1','Test','Rider','03001234567',17,'Bicycle',1);   -- age < 18
-- INSERT INTO users (first_name,last_name,email,contact_number,area_id,address_block)
-- VALUES ('Test','User','amina.khan@example.com','03009999999',1,'Block 1');  -- duplicate email
-- INSERT INTO users (first_name, last_name, email, contact_number, area_id, address_block)
-- VALUES ('Test','User','new1@example.com','12345',1,'Block 1');
-- INSERT INTO users (first_name,last_name,email,contact_number,area_id,address_block)
-- VALUES ('Test2','User','new@example.com','12345',1,'Block 1');   -- bad phone, also bad name (digit)


-- C1: create tables: menu_items, orders, order_items: 

USE swift_eats_web_app;

CREATE TABLE menu_items (
    item_id       INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT NOT NULL,
    item_name     VARCHAR(100) NOT NULL,
    price         DECIMAL(10,2) NOT NULL CHECK (price > 0),
    is_available  BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT fk_menu_rest FOREIGN KEY (restaurant_id)
        REFERENCES restaurants(restaurant_id) ON DELETE RESTRICT,
    CONSTRAINT uq_rest_item UNIQUE (restaurant_id, item_name)
);

desc menu_items;

CREATE TABLE orders (
    order_id        INT AUTO_INCREMENT PRIMARY KEY,
    customer_id     INT NOT NULL,
    restaurant_id   INT NOT NULL,
    rider_id        INT NULL,
    order_type      VARCHAR(20) NOT NULL CHECK (order_type IN ('delivery','pick-up')),
    delivery_type   VARCHAR(20) NOT NULL CHECK (delivery_type IN ('standard','speedy')),
    order_status    VARCHAR(20) NOT NULL DEFAULT 'placed'
        CHECK (order_status IN ('placed','preparing','out for delivery','delivered','cancelled')),
    order_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_orders_user FOREIGN KEY (customer_id)   REFERENCES users(user_id),
    CONSTRAINT fk_orders_rest FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id),
    CONSTRAINT fk_orders_rider FOREIGN KEY (rider_id)     REFERENCES riders(rider_id),
    CONSTRAINT chk_pickup_no_rider CHECK (order_type = 'delivery' OR rider_id IS NULL),
    CONSTRAINT chk_dispatch_needs_rider CHECK (
        order_type = 'pick-up'
        OR order_status IN ('placed','preparing','cancelled')
        OR rider_id IS NOT NULL)
);

desc orders;

CREATE TABLE order_items (
    order_id   INT NOT NULL,
    item_id    INT NOT NULL,
    quantity   INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL CHECK (unit_price > 0),
    PRIMARY KEY (order_id, item_id),
    CONSTRAINT fk_oi_order FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    CONSTRAINT fk_oi_item  FOREIGN KEY (item_id)  REFERENCES menu_items(item_id) ON DELETE RESTRICT
);

desc order_items;


-- C2 load the price list: 

-- opened stg_item_prices.sql in DB and ran that to create a temporary staging table stg_item_prices with the 49 prices. 
-- We’ll drop it at the end.

-- C3: build menu_items by reading the v1 text

INSERT INTO menu_items (restaurant_id, item_name, price)
SELECT DISTINCT r.restaurant_id, p.item_name, p.price
FROM swift_eats.orders o
JOIN JSON_TABLE(
        CONCAT('["', REPLACE(o.items, ', ', '","'), '"]'),
        '$[*]' COLUMNS (line VARCHAR(150) PATH '$')
     ) AS jt ON TRUE
JOIN stg_item_prices p ON p.item_name = SUBSTRING(jt.line, LOCATE('x ', jt.line) + 2)
JOIN restaurants r     ON r.restaurant_code = o.restaurant_id;

select * from menu_items mi;

-- How it works:

-- '2x Sheermal, 1x Nihari' is turned into the JSON array ["2x Sheermal","1x Nihari"], and JSON_TABLE returns each element as its own row. That’s how we split a comma-separated text column in MySQL.
-- LOCATE('x ', line) + 2 finds where the dish name starts after the 2x prefix.
-- DISTINCT gives one menu row per restaurant and dish. Only 28 of your 30 restaurants have orders, so two have no menu yet, and you can add those through the app.
-- 


-- C4: Migrate the orders 

INSERT INTO orders (order_id, customer_id, restaurant_id, rider_id,
                    order_type, delivery_type, order_status, order_timestamp)
SELECT o.order_id, o.customer_id, r.restaurant_id, rd.rider_id,
       o.order_type, o.delivery_type, 'delivered', o.order_timestamp
FROM swift_eats.orders o
JOIN restaurants r      ON r.restaurant_code = o.restaurant_id
LEFT JOIN riders rd     ON rd.rider_code     = o.rider_id;

select * from orders;

-- The LEFT JOIN on riders matters. Pick-up orders have a NULL rider, and an inner join would silently drop all 183 of them, which is the same trap as the missing areas. All historic orders get status delivered.


-- C5: Migrate the order lines:

INSERT INTO order_items (order_id, item_id, quantity, unit_price)
SELECT o.order_id, m.item_id,
       CAST(SUBSTRING_INDEX(jt.line, 'x ', 1) AS UNSIGNED), m.price
FROM swift_eats.orders o
JOIN JSON_TABLE(
        CONCAT('["', REPLACE(o.items, ', ', '","'), '"]'),
        '$[*]' COLUMNS (line VARCHAR(150) PATH '$')
     ) AS jt ON TRUE
JOIN restaurants r ON r.restaurant_code = o.restaurant_id
JOIN menu_items m  ON m.restaurant_id = r.restaurant_id
                  AND m.item_name = SUBSTRING(jt.line, LOCATE('x ', jt.line) + 2);

select * from order_items oi; 

-- SUBSTRING_INDEX(line, 'x ', 1) takes everything before the first x , which is the quantity.


-- C6: Verify

-- 1. Orders: expect 1000 / 1000, and 183 pick-ups with no rider
SELECT (SELECT COUNT(*) FROM swift_eats.orders) v1, (SELECT COUNT(*) FROM orders) v2,
       (SELECT COUNT(*) FROM orders WHERE order_type='pick-up' AND rider_id IS NULL) pickups;

-- 2. Every v1 order has at least one line: expect 0
SELECT COUNT(*) AS orders_without_lines
FROM orders o LEFT JOIN order_items oi ON oi.order_id = o.order_id
WHERE oi.order_id IS NULL;

-- 3. Line count equals the number of dishes in the v1 text
SELECT (SELECT COUNT(*) FROM order_items) AS v2_lines,
       (SELECT SUM(JSON_LENGTH(CONCAT('["', REPLACE(items, ', ', '","'), '"]')))
        FROM swift_eats.orders) AS v1_lines;

-- 4. The big one: new line totals vs old price column. Expect 0 mismatches
SELECT COUNT(*) AS mismatches
FROM swift_eats.orders o
JOIN (SELECT order_id, SUM(quantity * unit_price) AS total
      FROM order_items GROUP BY order_id) t ON t.order_id = o.order_id
WHERE t.total <> o.price;


-- check constraints

-- INSERT INTO orders (customer_id, restaurant_id, rider_id, order_type, delivery_type)
-- VALUES (1, 1, 1, 'pick-up', 'standard');     -- pick-up with a rider
-- INSERT INTO order_items (order_id, item_id, quantity, unit_price) VALUES (1, 1, 0, 100);  -- quantity 0
-- DELETE FROM restaurants WHERE restaurant_id = 1;   -- FK RESTRICT (it has orders)

show tables;

-- dropping the satging table

DROP TABLE stg_item_prices;
SHOW TABLES;


-- safety check in DBeaver before test

SELECT r.restaurant_id, r.restaurant_name
FROM restaurants r
WHERE NOT EXISTS (SELECT 1 FROM orders o WHERE o.restaurant_id = r.restaurant_id);