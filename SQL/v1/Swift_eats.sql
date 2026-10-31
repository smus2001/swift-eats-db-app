show databases;
create database pgd_dsai;

use pgd_dsai;
drop database pgd_dsai;

create database swift_eats;

use swift_eats;

-- create table users (
-- 	user_id int auto_increment primary key,
-- 	first_name varchar(50) not null,
-- 	last_name varchar(50) not null,
-- 	email varchar(100) unique not null,
-- 	contact_number varchar(11) unique not null,
-- 	customer_status varchar(20) default 'Active' not null check (customer_status in ('active', 'not active')),
-- 	sub_type varchar(10) default 'base' not null check (sub_type in ('base', 'pro')),
-- 	created_at timestamp default CURRENT_TIMESTAMP()
-- );
-- 
-- describe users;
-- 
-- -- drop table users;
-- -- dropped the table to fix the customer status and subscription type to 'not null'
-- 
-- show tables;
-- 
-- insert into users values (99, 'Faris', 'Ahmed', 'f.ahmed@testvalue.com', 03012909110, 'active', 'pro', default);
-- 
-- select * from users;

-- delete from users where user_id = 99;


-- INSERT INTO users (first_name, last_name, email, contact_number, customer_status, sub_type) VALUES
-- ('Amina', 'Khan', 'amina.khan@example.com', '03001234567', 'active', 'pro'),
-- ('Zain', 'Ahmed', 'zain.ahmed@example.com', '03219876543', 'active', 'base'),
-- ('Sara', 'Ali', 'sara.ali@example.com', '03334567890', 'not active', 'base'),
-- ('Bilal', 'Siddiqui', 'bilal.s@example.com', '03123456789', 'active', 'pro'),
-- ('Ayesha', 'Malik', 'ayesha.m@example.com', '03456789012', 'active', 'base'),
-- ('Hamza', 'Shah', 'hamza.shah@example.com', '03011122334', 'active', 'pro'),
-- ('Fatima', 'Raza', 'fatima.raza@example.com', '03223344556', 'not active', 'base'),
-- ('Omer', 'Sheikh', 'omer.s@example.com', '03345566778', 'active', 'pro'),
-- ('Sana', 'Javed', 'sana.j@example.com', '03157788990', 'active', 'base'),
-- ('Ali', 'Farooq', 'ali.f@example.com', '03029900112', 'active', 'pro'),
-- ('Maryam', 'Iqbal', 'maryam.i@example.com', '03231237890', 'active', 'base'),
-- ('Mustafa', 'Aziz', 'mustafa.a@example.com', '03328901234', 'not active', 'base'),
-- ('Hania', 'Amjad', 'hania.a@example.com', '03115678901', 'active', 'pro'),
-- ('Asad', 'Qureshi', 'asad.q@example.com', '03467890123', 'active', 'base'),
-- ('Zoya', 'Hassan', 'zoya.h@example.com', '03031114447', 'active', 'pro'),
-- ('Usman', 'Tariq', 'usman.t@example.com', '03242225558', 'not active', 'pro'),
-- ('Maham', 'Zubair', 'maham.z@example.com', '03353336669', 'active', 'base'),
-- ('Fahad', 'Latif', 'fahad.l@example.com', '03164447770', 'active', 'pro'),
-- ('Esha', 'Naeem', 'esha.n@example.com', '03045558881', 'active', 'base'),
-- ('Saad', 'Rehman', 'saad.r@example.com', '03256669992', 'active', 'pro'),
-- ('Rania', 'Abbasi', 'rania.a@example.com', '03367770003', 'not active', 'base'),
-- ('Waqas', 'Idrees', 'waqas.i@example.com', '03178881114', 'active', 'base'),
-- ('Kinza', 'Lodhi', 'kinza.l@example.com', '03059992225', 'active', 'pro'),
-- ('Daniyal', 'Muneer', 'daniyal.m@example.com', '03260003336', 'active', 'base'),
-- ('Anum', 'Shafiq', 'anum.s@example.com', '03371114447', 'not active', 'base'),
-- ('Haris', 'Bashir', 'haris.b@example.com', '03182225558', 'active', 'pro'),
-- ('Laiba', 'Yousuf', 'laiba.y@example.com', '03063336669', 'active', 'base'),
-- ('Taimoor', 'Baig', 'taimoor.b@example.com', '03274447770', 'active', 'pro'),
-- ('Sadia', 'Dar', 'sadia.d@example.com', '03385558881', 'not active', 'pro'),
-- ('Nabeel', 'Chaudhry', 'nabeel.c@example.com', '03196669992', 'active', 'base'),
-- ('Iqra', 'Bano', 'iqra.b@example.com', '03077770003', 'active', 'pro'),
-- ('Zeeshan', 'Kayani', 'zeeshan.k@example.com', '03288881114', 'active', 'base'),
-- ('Rimsha', 'Gill', 'rimsha.g@example.com', '03399992225', 'not active', 'base'),
-- ('Shahzad', 'Alam', 'shahzad.a@example.com', '03101113334', 'active', 'pro'),
-- ('Kiran', 'Riaz', 'kiran.r@example.com', '03082224445', 'active', 'base'),
-- ('Arsalan', 'Nawaz', 'arsalan.n@example.com', '03293335556', 'active', 'pro'),
-- ('Nimra', 'Saeed', 'nimra.s@example.com', '03404446667', 'not active', 'base'),
-- ('Ahsan', 'Waseem', 'ahsan.w@example.com', '03125557778', 'active', 'base'),
-- ('Sidra', 'Bukhari', 'sidra.b@example.com', '03096668889', 'active', 'pro'),
-- ('Kamran', 'Akmal', 'kamran.a@example.com', '03307779990', 'active', 'base'),
-- ('Aiza', 'Imran', 'aiza.i@example.com', '03418880001', 'not active', 'base'),
-- ('Faisal', 'Mehmood', 'faisal.m@example.com', '03139991112', 'active', 'pro'),
-- ('Nida', 'Yasir', 'nida.y@example.com', '03501112223', 'active', 'base'),
-- ('Junaid', 'Jamshed', 'junaid.j@example.com', '03312223334', 'active', 'pro'),
-- ('Madiha', 'Shahid', 'madiha.s@example.com', '03423334445', 'not active', 'pro'),
-- ('Rizwan', 'Cheema', 'rizwan.c@example.com', '03144445556', 'active', 'base'),
-- ('Alina', 'Pirzada', 'alina.p@example.com', '03515556667', 'active', 'pro'),
-- ('Shoaib', 'Malik', 'shoaib.m@example.com', '03326667778', 'active', 'base'),
-- ('Saba', 'Qamar', 'saba.q@example.com', '03437778889', 'not active', 'base'),
-- ('Adnan', 'Sami', 'adnan.s@example.com', '03158889990', 'active', 'pro'),
-- ('Mehak', 'Fatima', 'mehak.f@example.com', '03529990001', 'active', 'base'),
-- ('Yasir', 'Hussain', 'yasir.h@example.com', '03331112224', 'active', 'pro'),
-- ('Hira', 'Mani', 'hira.m@example.com', '03442223335', 'not active', 'base'),
-- ('Bilal', 'Ashraf', 'bilal.a@example.com', '03163334446', 'active', 'base'),
-- ('Mahira', 'Khan', 'mahira.k@example.com', '03534445557', 'active', 'pro'),
-- ('Fawad', 'Khan', 'fawad.k@example.com', '03345556668', 'active', 'base'),
-- ('Sajal', 'Aly', 'sajal.a@example.com', '03456667779', 'not active', 'base'),
-- ('Ahad', 'Mir', 'ahad.m@example.com', '03177778880', 'active', 'pro'),
-- ('Kubra', 'Khan', 'kubra.k@example.com', '03548889991', 'active', 'base'),
-- ('Gohar', 'Rasheed', 'gohar.r@example.com', '03359990002', 'active', 'pro'),
-- ('Yumna', 'Zaidi', 'yumna.z@example.com', '03461112223', 'not active', 'pro'),
-- ('Wahaj', 'Ali', 'wahaj.a@example.com', '03182223334', 'active', 'base'),
-- ('Hania', ' आमिर', 'hania.amir@example.com', '03553334445', 'active', 'pro'),
-- ('Feroze', 'Khan', 'feroze.k@example.com', '03364445556', 'active', 'base'),
-- ('Sana', 'Javed2', 'sana.j2@example.com', '03475556667', 'not active', 'base'),
-- ('Muneeb', 'Butt', 'muneeb.b@example.com', '03196667778', 'active', 'pro'),
-- ('Aiman', 'Khan2', 'aiman.k@example.com', '03567778889', 'active', 'base'),
-- ('Asim', 'Azhar', 'asim.a@example.com', '03378889990', 'active', 'pro'),
-- ('Momina', 'Mustehsan', 'momina.m@example.com', '03489990001', 'not active', 'base'),
-- ('Atif', 'Aslam', 'atif.a@example.com', '03101112223', 'active', 'base'),
-- ('Rahat', 'Ali', 'rahat.a@example.com', '03572223334', 'active', 'pro'),
-- ('Shani', 'Arshad', 'shani.a@example.com', '03383334445', 'active', 'base'),
-- ('Aima', 'Baig', 'aima.b@example.com', '03494445556', 'not active', 'base'),
-- ('Ali', 'Zafar', 'ali.z@example.com', '03115556667', 'active', 'pro'),
-- ('Daniyal', 'Zafar', 'daniyal.z@example.com', '03586667778', 'active', 'base'),
-- ('Asrar', 'Shah', 'asrar.s@example.com', '03397778889', 'active', 'pro'),
-- ('Abida', 'Parveen', 'abida.p@example.com', '03408889990', 'not active', 'pro'),
-- ('Naseebo', 'Lal', 'naseebo.l@example.com', '03129990001', 'active', 'base'),
-- ('Arif', 'Lohar', 'arif.l@example.com', '03590001112', 'active', 'pro'),
-- ('Humaira', 'Arshad', 'humaira.a@example.com', '03411112223', 'active', 'base'),
-- ('Shehzad', 'Roy', 'shehzad.r@example.com', '03422223334', 'not active', 'base'),
-- ('Faakhir', 'Mehmood', 'faakhir.m@example.com', '03133334445', 'active', 'pro'),
-- ('Hadiqa', 'Kiani', 'hadiqa.k@example.com', '03604445556', 'active', 'base'),
-- ('Ali', 'Azmat', 'ali.azmat@example.com', '03435556667', 'active', 'pro'),
-- ('Salman', 'Ahmad', 'salman.a@example.com', '03446667778', 'not active', 'base'),
-- ('Brian', 'Oconnell', 'brian.o@example.com', '03147778889', 'active', 'base'),
-- ('Junaid', 'Khan3', 'junaid.k3@example.com', '03618889990', 'active', 'pro'),
-- ('Zulfiqar', 'Khan', 'zulfi.k@example.com', '03459990001', 'active', 'base'),
-- ('Bilal', 'Khan4', 'bilal.k4@example.com', '03460001112', 'not active', 'base'),
-- ('Uzair', 'Jaswal', 'uzair.j@example.com', '03151112223', 'active', 'pro'),
-- ('Umair', 'Jaswal', 'umair.j@example.com', '03622223334', 'active', 'base'),
-- ('Quratulain', 'Balouch', 'qb.balouch@example.com', '03473334445', 'active', 'pro'),
-- ('Zoe', 'Viccaji', 'zoe.v@example.com', '03484445556', 'not active', 'pro'),
-- ('Rachel', 'Viccaji', 'rachel.v@example.com', '03165556667', 'active', 'base'),
-- ('Sanam', 'Marvi', 'sanam.m@example.com', '03636667778', 'active', 'pro'),
-- ('Siri', 'Rae', 'siri.r@example.com', '03497778889', 'active', 'base'),
-- ('Ali', 'Sethi', 'ali.sethi@example.com', '03408889991', 'not active', 'base'),
-- ('Shae', 'Gill', 'shae.gill@example.com', '03179990002', 'active', 'pro'),
-- ('Asim', 'Raza2', 'asim.raza@example.com', '03640001113', 'active', 'base'),
-- ('Sarmad', 'Khoosat', 'sarmad.k@example.com', '03411112224', 'active', 'pro');

drop table if exists users;

-- select * from users;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    -- Enforces that first and last names must ONLY contain alphabetical letters (A-Z, a-z)
    first_name VARCHAR(50) NOT NULL CHECK (first_name REGEXP '^[a-zA-Z]+$'),
    last_name VARCHAR(50) NOT NULL CHECK (last_name REGEXP '^[a-zA-Z]+$'),
    email VARCHAR(100) UNIQUE NOT NULL,
    contact_number VARCHAR(15) UNIQUE NOT NULL,
    customer_status VARCHAR(20) DEFAULT 'active' NOT NULL CHECK (customer_status IN ('active', 'not active')),
    sub_type VARCHAR(10) DEFAULT 'base' NOT NULL CHECK (sub_type IN ('base', 'pro')),
    -- New structural regional columns
    city VARCHAR(30) NOT NULL CHECK (city IN ('Lahore', 'Karachi', 'Islamabad', 'Peshawar', 'Rawal Pindi')),
    area_name VARCHAR(100) NOT NULL,
    area_block_number VARCHAR(50) NOT NULL, -- e.g., 'Block 4', 'Phase 6', 'Sector F-7'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

describe users;

INSERT INTO users (first_name, last_name, email, contact_number, customer_status, sub_type, city, area_name, area_block_number, created_at) VALUES
-- KARACHI
('Amina', 'Khan', 'amina.khan@example.com', '03001234567', 'active', 'pro', 'Karachi', 'Gulistan e Johar', 'Block 1', NOW() - INTERVAL 124 DAY),
('Zain', 'Ahmed', 'zain.ahmed@example.com', '03219876543', 'active', 'base', 'Karachi', 'Gulistan e Johar', 'Block 15', NOW() - INTERVAL 45 DAY),
('Sara', 'Ali', 'sara.ali@example.com', '03334567890', 'not active', 'base', 'Karachi', 'Gulshan e Iqbal', 'Block 4', NOW() - INTERVAL 280 DAY),
('Bilal', 'Siddiqui', 'bilal.s@example.com', '03123456789', 'active', 'pro', 'Karachi', 'Gulshan e Iqbal', 'Block 13D', NOW() - INTERVAL 15 DAY),
('Ayesha', 'Malik', 'ayesha.m@example.com', '03456789012', 'active', 'base', 'Karachi', 'F.B Area', 'Block 6', NOW() - INTERVAL 92 DAY),
('Hamza', 'Shah', 'hamza.shah@example.com', '03011122334', 'active', 'pro', 'Karachi', 'F.B Area', 'Block 14', NOW() - INTERVAL 310 DAY),
('Fatima', 'Raza', 'fatima.raza@example.com', '03223344556', 'not active', 'base', 'Karachi', 'Saddar', 'Phase 1', NOW() - INTERVAL 185 DAY),
('Omer', 'Sheikh', 'omer.s@example.com', '03345566778', 'active', 'pro', 'Karachi', 'Saddar', 'Regal Chowk', NOW() - INTERVAL 64 DAY),
('Sana', 'Javed', 'sana.j@example.com', '03157788990', 'active', 'base', 'Karachi', 'P.E.C.H.S.', 'Block 2', NOW() - INTERVAL 12 DAY),
('Ali', 'Farooq', 'ali.f@example.com', '03029900112', 'active', 'pro', 'Karachi', 'P.E.C.H.S.', 'Block 6', NOW() - INTERVAL 205 DAY),
('Maryam', 'Iqbal', 'maryam.i@example.com', '03231237890', 'active', 'base', 'Karachi', 'Gulistan e Johar', 'Block 3', DEFAULT),
('Mustafa', 'Aziz', 'mustafa.a@example.com', '03328901234', 'not active', 'base', 'Karachi', 'Gulshan e Iqbal', 'Block 2', DEFAULT),
('Hania', 'Amjad', 'hania.a@example.com', '03115678901', 'active', 'pro', 'Karachi', 'F.B Area', 'Block 10', DEFAULT),
('Asad', 'Qureshi', 'asad.q@example.com', '03467890123', 'active', 'base', 'Karachi', 'Saddar', 'Phase 2', DEFAULT),
('Zoya', 'Hassan', 'zoya.h@example.com', '03031114447', 'active', 'pro', 'Karachi', 'P.E.C.H.S.', 'Block 3', DEFAULT),
('Usman', 'Tariq', 'usman.t@example.com', '03242225558', 'not active', 'pro', 'Karachi', 'Gulistan e Johar', 'Block 7', DEFAULT),
('Maham', 'Zubair', 'maham.z@example.com', '03353336669', 'active', 'base', 'Karachi', 'Gulshan e Iqbal', 'Block 16', DEFAULT),
('Fahad', 'Latif', 'fahad.l@example.com', '03164447770', 'active', 'pro', 'Karachi', 'F.B Area', 'Block 2', DEFAULT),
('Esha', 'Naeem', 'esha.n@example.com', '03045558881', 'active', 'base', 'Karachi', 'Saddar', 'Mobile Market', DEFAULT),
('Saad', 'Rehman', 'saad.r@example.com', '03256669992', 'active', 'pro', 'Karachi', 'P.E.C.H.S.', 'Block 1', DEFAULT),

-- LAHORE
('Rania', 'Abbasi', 'rania.a@example.com', '03367770003', 'not active', 'base', 'Lahore', 'Gulberg', 'Phase 3', NOW() - INTERVAL 250 DAY),
('Waqas', 'Idrees', 'waqas.i@example.com', '03178881114', 'active', 'base', 'Lahore', 'Gulberg', 'Block B', NOW() - INTERVAL 41 DAY),
('Kinza', 'Lodhi', 'kinza.l@example.com', '03059992225', 'active', 'pro', 'Lahore', 'DHA', 'Phase 5', NOW() - INTERVAL 165 DAY),
('Daniyal', 'Muneer', 'daniyal.m@example.com', '03260003336', 'active', 'base', 'Lahore', 'DHA', 'Phase 6', NOW() - INTERVAL 73 DAY),
('Anum', 'Shafiq', 'anum.s@example.com', '03371114447', 'not active', 'base', 'Lahore', 'Johar Town', 'Block G2', NOW() - INTERVAL 352 DAY),
('Haris', 'Bashir', 'haris.b@example.com', '03182225558', 'active', 'pro', 'Lahore', 'Johar Town', 'Block R1', NOW() - INTERVAL 19 DAY),
('Laiba', 'Yousuf', 'laiba.y@example.com', '03063336669', 'active', 'base', 'Lahore', 'Gulberg', 'Block H', NOW() - INTERVAL 102 DAY),
('Taimoor', 'Baig', 'taimoor.b@example.com', '03274447770', 'active', 'pro', 'Lahore', 'DHA', 'Phase 1', NOW() - INTERVAL 218 DAY),
('Sadia', 'Dar', 'sadia.d@example.com', '03385558881', 'not active', 'pro', 'Lahore', 'Johar Town', 'Block A', NOW() - INTERVAL 61 DAY),
('Nabeel', 'Chaudhry', 'nabeel.c@example.com', '03196669992', 'active', 'base', 'Lahore', 'Gulberg', 'Phase 2', NOW() - INTERVAL 149 DAY),
('Iqra', 'Bano', 'iqra.b@example.com', '03077770003', 'active', 'pro', 'Lahore', 'DHA', 'Phase 3', DEFAULT),
('Zeeshan', 'Kayani', 'zeeshan.k@example.com', '03288881114', 'active', 'base', 'Lahore', 'Johar Town', 'Block B', DEFAULT),
('Rimsha', 'Gill', 'rimsha.g@example.com', '03399992225', 'not active', 'base', 'Lahore', 'Gulberg', 'Phase 1', DEFAULT),
('Shahzad', 'Alam', 'shahzad.a@example.com', '03101113334', 'active', 'pro', 'Lahore', 'DHA', 'Phase 4', DEFAULT),
('Kiran', 'Riaz', 'kiran.r@example.com', '03082224445', 'active', 'base', 'Lahore', 'Johar Town', 'Block C', DEFAULT),
('Arsalan', 'Nawaz', 'arsalan.n@example.com', '03293335556', 'active', 'pro', 'Lahore', 'Gulberg', 'Block J', DEFAULT),
('Nimra', 'Saeed', 'nimra.s@example.com', '03404446667', 'not active', 'base', 'Lahore', 'DHA', 'Phase 8', DEFAULT),
('Ahsan', 'Waseem', 'ahsan.w@example.com', '03125557778', 'active', 'base', 'Lahore', 'Johar Town', 'Block M', DEFAULT),
('Sidra', 'Bukhari', 'sidra.b@example.com', '03096668889', 'active', 'pro', 'Lahore', 'Gulberg', 'Phase 3', DEFAULT),
('Kamran', 'Akmal', 'kamran.a@example.com', '03307779990', 'active', 'base', 'Lahore', 'DHA', 'Phase 2', DEFAULT),

-- ISLAMABAD
('Aiza', 'Imran', 'aiza.i@example.com', '03418880001', 'not active', 'base', 'Islamabad', 'F-7 Markaz', 'Sector F-7', NOW() - INTERVAL 198 DAY),
('Faisal', 'Mehmood', 'faisal.m@example.com', '03139991112', 'active', 'pro', 'Islamabad', 'F-11 Markaz', 'Sector F-11', NOW() - INTERVAL 260 DAY),
('Nida', 'Yasir', 'nida.y@example.com', '03501112223', 'active', 'base', 'Islamabad', 'G-9 Markaz', 'Sector G-9', NOW() - INTERVAL 49 DAY),
('Junaid', 'Shahid', 'junaid.s@example.com', '03312223334', 'active', 'pro', 'Islamabad', 'I-8 Markaz', 'Sector I-8', NOW() - INTERVAL 139 DAY),
('Madiha', 'Ahmed', 'madiha.s@example.com', '03423334445', 'not active', 'pro', 'Islamabad', 'F-7 Markaz', 'Sector F-7', NOW() - INTERVAL 312 DAY),
('Rizwan', 'Cheema', 'rizwan.c@example.com', '03144445556', 'active', 'base', 'Islamabad', 'F-11 Markaz', 'Sector F-11', NOW() - INTERVAL 27 DAY),
('Alina', 'Pirzada', 'alina.p@example.com', '03515556667', 'active', 'pro', 'Islamabad', 'G-9 Markaz', 'Sector G-9', NOW() - INTERVAL 167 DAY),
('Shoaib', 'Malik', 'shoaib.m@example.com', '03326667778', 'active', 'base', 'Islamabad', 'I-8 Markaz', 'Sector I-8', NOW() - INTERVAL 95 DAY),
('Saba', 'Qamar', 'saba.q@example.com', '03437778889', 'not active', 'base', 'Islamabad', 'F-6 Markaz', 'Sector F-6', NOW() - INTERVAL 241 DAY),
('Adnan', 'Sami', 'adnan.s@example.com', '03158889990', 'active', 'pro', 'Islamabad', 'E-11 Markaz', 'Sector E-11', NOW() - INTERVAL 110 DAY),
('Mehak', 'Fatima', 'mehak.f@example.com', '03529990001', 'active', 'base', 'Islamabad', 'F-7 Markaz', 'Sector F-7', DEFAULT),
('Yasir', 'Hussain', 'yasir.h@example.com', '03331112224', 'active', 'pro', 'Islamabad', 'F-11 Markaz', 'Sector F-11', DEFAULT),
('Hira', 'Mani', 'hira.m@example.com', '03442223335', 'not active', 'base', 'Islamabad', 'G-9 Markaz', 'Sector G-9', DEFAULT),
('Bilal', 'Ashraf', 'bilal.a@example.com', '03163334446', 'active', 'base', 'Islamabad', 'I-8 Markaz', 'Sector I-8', DEFAULT),
('Mahira', 'Khan', 'mahira.k@example.com', '03534445557', 'active', 'pro', 'Islamabad', 'F-6 Markaz', 'Sector F-6', DEFAULT),
('Fawad', 'Khan', 'fawad.k@example.com', '03345556668', 'active', 'base', 'Islamabad', 'E-11 Markaz', 'Sector E-11', DEFAULT),
('Sajal', 'Aly', 'sajal.a@example.com', '03456667779', 'not active', 'base', 'Islamabad', 'G-11 Markaz', 'Sector G-11', DEFAULT),
('Ahad', 'Mir', 'ahad.m@example.com', '03177778880', 'active', 'pro', 'Islamabad', 'H-13 Sector', 'Zone 4', DEFAULT),
('Kubra', 'Khan', 'kubra.k@example.com', '03548889991', 'active', 'base', 'Islamabad', 'F-8 Markaz', 'Sector F-8', DEFAULT),
('Gohar', 'Rasheed', 'gohar.r@example.com', '03359990002', 'active', 'pro', 'Islamabad', 'G-8 Markaz', 'Sector G-8', DEFAULT),

-- RAWALPINDI
('Yumna', 'Zaidi', 'yumna.z@example.com', '03461112223', 'not active', 'pro', 'Rawal Pindi', 'Bahria Town', 'Phase 4', DEFAULT),
('Wahaj', 'Ali', 'wahaj.a@example.com', '03182223334', 'active', 'base', 'Rawal Pindi', 'Bahria Town', 'Phase 7', DEFAULT),
('Hania', 'Amir', 'hania.amir@example.com', '03553334445', 'active', 'pro', 'Rawal Pindi', 'Commercial Market', 'Saddar', DEFAULT),
('Feroze', 'Khan', 'feroze.k@example.com', '03364445556', 'active', 'base', 'Rawal Pindi', 'Commercial Market', 'Satellite Town', DEFAULT),
('Sana', 'Javed', 'sana.j2@example.com', '03475556667', 'not active', 'base', 'Rawal Pindi', 'Adyala Road', 'Gulshan e Shafi', DEFAULT),
('Muneeb', 'Butt', 'muneeb.b@example.com', '03196667778', 'active', 'pro', 'Rawal Pindi', 'Chaklala Scheme', 'Scheme 3', DEFAULT),
('Aiman', 'Khan', 'aiman.k@example.com', '03567778889', 'active', 'base', 'Rawal Pindi', 'Bahria Town', 'Phase 1', DEFAULT),
('Asim', 'Azhar', 'asim.a@example.com', '03378889990', 'active', 'pro', 'Rawal Pindi', 'Commercial Market', 'Saddar', DEFAULT),
('Momina', 'Mustehsan', 'momina.m@example.com', '03489990001', 'not active', 'base', 'Rawal Pindi', 'Adyala Road', 'Block A', DEFAULT),
('Atif', 'Aslam', 'atif.a@example.com', '03101112223', 'active', 'base', 'Rawal Pindi', 'Chaklala Scheme', 'Scheme 2', DEFAULT),
('Rahat', 'Ali', 'rahat.a@example.com', '03572223334', 'active', 'pro', 'Rawal Pindi', 'Bahria Town', 'Phase 3', DEFAULT),
('Shani', 'Arshad', 'shani.a@example.com', '03383334445', 'active', 'base', 'Rawal Pindi', 'Commercial Market', 'Phase 1', DEFAULT),
('Aima', 'Baig', 'aima.b@example.com', '03494445556', 'not active', 'base', 'Rawal Pindi', 'Adyala Road', 'Block C', DEFAULT),
('Zafar', 'Ali', 'ali.z@example.com', '03115556667', 'active', 'pro', 'Rawal Pindi', 'Chaklala Scheme', 'Scheme 1', DEFAULT),
('Daniyal', 'Zafar', 'daniyal.z@example.com', '03586667778', 'active', 'base', 'Rawal Pindi', 'Bahria Town', 'Phase 8', DEFAULT),
('Asrar', 'Shah', 'asrar.s@example.com', '03397778889', 'active', 'pro', 'Rawal Pindi', 'Westridge', 'Phase 1', DEFAULT),
('Abida', 'Parveen', 'abida.p@example.com', '03408889990', 'not active', 'pro', 'Rawal Pindi', 'Westridge', 'Phase 2', DEFAULT),
('Naseebo', 'Lal', 'naseebo.l@example.com', '03129990001', 'active', 'base', 'Rawal Pindi', 'Tench Bhatta', 'Sector 1', DEFAULT),
('Arif', 'Lohar', 'arif.l@example.com', '03590001112', 'active', 'pro', 'Rawal Pindi', 'Tench Bhatta', 'Sector 2', DEFAULT),
('Humaira', 'Arshad', 'humaira.a@example.com', '03411112223', 'active', 'base', 'Rawal Pindi', 'Lalkurti', 'Main Bazar', DEFAULT),

-- PESHAWAR
('Shehzad', 'Roy', 'shehzad.r@example.com', '03422223334', 'not active', 'base', 'Peshawar', 'Hayatabad', 'Phase 1', DEFAULT),
('Faakhir', 'Mehmood', 'faakhir.m@example.com', '03133334445', 'active', 'pro', 'Peshawar', 'Hayatabad', 'Phase 6', DEFAULT),
('Hadiqa', 'Kiani', 'hadiqa.k@example.com', '03604445556', 'active', 'base', 'Peshawar', 'University Road', 'Tahkal', DEFAULT),
('Azmat', 'Ali', 'ali.azmat@example.com', '03435556667', 'active', 'pro', 'Peshawar', 'University Road', 'Saddar Road', DEFAULT),
('Salman', 'Ahmad', 'salman.a@example.com', '03446667778', 'not active', 'base', 'Peshawar', 'Hayatabad', 'Phase 2', DEFAULT),
('Brian', 'Oconnell', 'brian.o@example.com', '03147778889', 'active', 'base', 'Peshawar', 'University Road', 'Dean Trade Center', DEFAULT),
('Junaid', 'Khan', 'junaid.k3@example.com', '03618889990', 'active', 'pro', 'Peshawar', 'Hayatabad', 'Phase 3', DEFAULT),
('Zulfiqar', 'Khan', 'zulfi.k@example.com', '03459990001', 'active', 'base', 'Peshawar', 'Hayatabad', 'Phase 4', DEFAULT),
('Bilal', 'Khan', 'bilal.k4@example.com', '03460001112', 'not active', 'base', 'Peshawar', 'University Road', 'Karkhano Market', DEFAULT),
('Uzair', 'Jaswal', 'uzair.j@example.com', '03151112223', 'active', 'pro', 'Peshawar', 'Hayatabad', 'Phase 5', DEFAULT),
('Umair', 'Jaswal', 'umair.j@example.com', '03622223334', 'active', 'base', 'Peshawar', 'Hayatabad', 'Phase 7', DEFAULT),
('Qurat', 'Balouch', 'qb.balouch@example.com', '03473334445', 'active', 'pro', 'Peshawar', 'University Road', 'Town Market', DEFAULT),
('Zoe', 'Viccaji', 'zoe.v@example.com', '03484445556', 'not active', 'pro', 'Peshawar', 'Khyber Bazar', 'Block A', DEFAULT),
('Rachel', 'Viccaji', 'rachel.v@example.com', '03165556667', 'active', 'base', 'Peshawar', 'Khyber Bazar', 'Block B', DEFAULT),
('Sanam', 'Marvi', 'sanam.m@example.com', '03636667778', 'active', 'pro', 'Peshawar', 'Hayatabad', 'Phase 2', DEFAULT),
('Siri', 'Rae', 'siri.r@example.com', '03497778889', 'active', 'base', 'Peshawar', 'University Road', 'Phase 1 Sector', DEFAULT),
('Ali', 'Sethi', 'ali.sethi@example.com', '03408889991', 'not active', 'base', 'Peshawar', 'Khyber Bazar', 'Cinema Road', DEFAULT),
('Shae', 'Gill', 'shae.gill@example.com', '03179990002', 'active', 'pro', 'Peshawar', 'Hayatabad', 'Phase 4', DEFAULT),
('Asim', 'Raza', 'asim.raza@example.com', '03640001113', 'active', 'base', 'Peshawar', 'University Road', 'Sector F', DEFAULT),
('Sarmad', 'Khoosat', 'sarmad.k@example.com', '03411112224', 'active', 'pro', 'Peshawar', 'Hayatabad', 'Phase 5', DEFAULT);

select * from users;

-- select * from users where user_id = 135;
-- select * from users where first_name = 'Bilal';
-- select * from users where sub_type = 'pro';
-- select * from users where customer_status = 'not active';
-- select * from users where last_name = 'Ali';

create table resturants (
	resturant_id varchar(6) primary key,
	city varchar(30) not null check (city in ('Lahore', 'Karachi', 'Islamabad', 'Peshawar', 'Rawal Pindi')),
	area_name VARCHAR(100) not null,
    area_blk_code VARCHAR(20) not null, -- Holds Phase or Block details (e.g., 'Block 1', 'Phase 6')
    category VARCHAR(50) not null check (category in (
        'Pakistani', 'Fast Food', 'Cakes and Bakery', 'Desserts', 'Pizza', 'Burgers', 
        'Biryani', 'Sandwiches', 'Beverages', 'Shawarma', 'Handi and Karhai', 'Chinese', 
        'Italian', 'Samosa', 'Pulao', 'Tea and Coffee'
    )),
    cost_bracket VARCHAR(4) not null check (cost_bracket in ('$', '$$', '$$$', '$$$$')),
    avg_cost_per_item DECIMAL(10,2) not null,
    rating DECIMAL(2,1) default 4.0 check (rating between 1.0 and 5.0),
    is_active boolean default true not null
);
	
describe resturants;

-- insert into resturants (resturant_id, city, area_name, area_blk_code, category, cost_bracket, avg_cost_per_item, rating, is_active) values
-- -- KARACHI (KA)
-- ('KAGI01', 'Karachi', 'Gulistan e Johar', 'Block 1', 'Biryani', '$', 280.00, 4.8, TRUE),
-- ('KAGI15', 'Karachi', 'Gulistan e Johar', 'Block 15', 'Fast Food', '$$', 550.00, 4.4, TRUE),
-- ('KAGI04', 'Karachi', 'Gulshan e Iqbal', 'Block 4', 'Handi and Karhai', '$$$', 1400.00, 4.6, TRUE),
-- ('KAGI13', 'Karachi', 'Gulshan e Iqbal', 'Block 13D', 'Pizza', '$$$', 1100.00, 4.3, TRUE),
-- ('KAFB06', 'Karachi', 'F.B Area', 'Block 6', 'Samosa', '$', 120.00, 4.5, TRUE),
-- ('KAFB14', 'Karachi', 'F.B Area', 'Block 14', 'Pakistani', '$$', 450.00, 4.2, TRUE),
-- ('KASD01', 'Karachi', 'Saddar', 'Phase 1', 'Burgers', '$$', 600.00, 4.7, TRUE),
-- ('KASD02', 'Karachi', 'Saddar', 'Regal Chowk', 'Shawarma', '$', 220.00, 4.1, TRUE),
-- ('KAPE02', 'Karachi', 'P.E.C.H.S.', 'Block 2', 'Cakes and Bakery', '$$', 480.00, 4.5, TRUE),
-- ('KAPE06', 'Karachi', 'P.E.C.H.S.', 'Block 6', 'Chinese', '$$$', 950.00, 4.4, TRUE),
-- 
-- -- LAHORE (LA)
-- ('LAGH03', 'Lahore', 'Gulberg', 'Phase 3', 'Italian', '$$$$', 2100.00, 4.9, TRUE),
-- ('LAGH05', 'Lahore', 'Gulberg', 'Block B', 'Tea and Coffee', '$$', 420.00, 4.6, TRUE),
-- ('LADH05', 'Lahore', 'DHA', 'Phase 5', 'Burgers', '$$$', 850.00, 4.7, TRUE),
-- ('LADH06', 'Lahore', 'DHA', 'Phase 6', 'Desserts', '$$$', 750.00, 4.5, TRUE),
-- ('LAJT02', 'Lahore', 'Johar Town', 'Block G2', 'Pulao', '$', 290.00, 4.3, TRUE),
-- ('LAJT05', 'Lahore', 'Johar Town', 'Block R1', 'Pizza', '$$$', 1250.00, 4.2, TRUE),
-- 
-- -- ISLAMABAD (IS)
-- ('ISF702', 'Islamabad', 'F-7 Markaz', 'Sector F-7', 'Italian', '$$$$', 2400.00, 4.8, TRUE),
-- ('ISF110', 'Islamabad', 'F-11 Markaz', 'Sector F-11', 'Sandwiches', '$$', 520.00, 4.4, TRUE),
-- ('ISG901', 'Islamabad', 'G-9 Markaz', 'Sector G-9', 'Shawarma', '$', 240.00, 4.2, TRUE),
-- ('ISI804', 'Islamabad', 'I-8 Markaz', 'Sector I-8', 'Beverages', '$', 180.00, 4.3, TRUE),
-- 
-- -- RAWAL PINDI (RA)
-- ('RABD01', 'Rawal Pindi', 'Bahria Town', 'Phase 4', 'Fast Food', '$$$', 780.00, 4.5, TRUE),
-- ('RABD07', 'Rawal Pindi', 'Bahria Town', 'Phase 7', 'Cakes and Bakery', '$$', 380.00, 4.6, TRUE),
-- ('RACS01', 'Rawal Pindi', 'Commercial Market', 'Saddar', 'Handi and Karhai', '$$$', 1650.00, 4.7, TRUE),
-- ('RACS02', 'Rawal Pindi', 'Commercial Market', 'Satellite Town', 'Biryani', '$', 260.00, 4.4, TRUE),
-- 
-- -- PESHAWAR (PE)
-- ('PEHT01', 'Peshawar', 'Hayatabad', 'Phase 1', 'Pakistani', '$$$', 1350.00, 4.8, TRUE),
-- ('PEHT06', 'Peshawar', 'Hayatabad', 'Phase 6', 'Burgers', '$$', 490.00, 4.3, TRUE),
-- ('PEVT02', 'Peshawar', 'University Road', 'Tahkal', 'Handi and Karhai', '$$$', 1500.00, 4.6, TRUE),
-- ('PEVT05', 'Peshawar', 'University Road', 'Saddar Road', 'Tea and Coffee', '$', 150.00, 4.5, TRUE),
-- 
-- -- DEACTIVATED TESTING SAMPLES
-- ('KAGI99', 'Karachi', 'Gulistan e Johar', 'Block 20', 'Pizza', '$$', 650.00, 3.5, FALSE),
-- ('LAGH99', 'Lahore', 'Gulberg', 'Block H', 'Sandwiches', '$', 250.00, 2.9, FALSE);


select * from resturants;

drop table if exists riders;

-- CREATE TABLE riders (
--     -- Custom key format: 'YYYY-XXXXX' (e.g., '2018-00001')
--     rider_id VARCHAR(10) PRIMARY KEY,
--     -- Strictly alpha-only names (no numbers, spaces, or accents)
--     first_name VARCHAR(50) NOT NULL CHECK (first_name REGEXP '^[a-zA-Z]+$'),
--     last_name VARCHAR(50) NOT NULL CHECK (last_name REGEXP '^[a-zA-Z]+$'),
--     -- Strictly forces exactly 11 digits for Pakistani phone number layouts
--     phone_number VARCHAR(11) UNIQUE NOT NULL CHECK (phone_number REGEXP '^[0-9]{11}$'),
--     rider_age INT NOT NULL CHECK (rider_age >= 18),
--     vehicle_type VARCHAR(20) NOT NULL CHECK (vehicle_type IN ('Motorcycle', 'Scooter', 'Electric Bike', 'Bicycle')),
--     assigned_city VARCHAR(30) NOT NULL CHECK (assigned_city IN ('Lahore', 'Karachi', 'Islamabad', 'Peshawar', 'Rawal Pindi')),
--     rider_rating DECIMAL(2,1) DEFAULT 5.0 CHECK (rider_rating BETWEEN 1.0 AND 5.0),
--     rider_status VARCHAR(20) DEFAULT 'offline' NOT NULL CHECK (rider_status IN ('available', 'offline', 'on delivery', 'pit stop'))
-- );
-- 
-- describe riders;

-- INSERT INTO riders (rider_id, first_name, last_name, phone_number, rider_age, vehicle_type, assigned_city, rider_rating, rider_status) VALUES
-- -- 2018 TIER (App Launch Pioneers)
-- ('2018-00001', 'Kashif', 'Aslam', '03009876543', 32, 'Motorcycle', 'Karachi', 4.8, 'online'),
-- ('2018-00002', 'Zubair', 'Khan', '03211234567', 29, 'Motorcycle', 'Karachi', 4.5, 'on delivery'),
-- ('2018-00003', 'Noman', 'Ali', '03337654321', 38, 'Scooter', 'Lahore', 4.2, 'offline'),
-- ('2018-00004', 'Salman', 'Raza', '03125554443', 34, 'Electric Bike', 'Islamabad', 4.9, 'online'),
-- ('2018-00005', 'Asif', 'Ahmed', '03451112223', 28, 'Bicycle', 'Rawal Pindi', 4.0, 'online'),
-- 
-- -- 2019 TIER
-- ('2019-00012', 'Faisal', 'Shah', '03013334445', 31, 'Motorcycle', 'Karachi', 4.7, 'on delivery'),
-- ('2019-00013', 'Haroon', 'Sheikh', '03225556667', 35, 'Motorcycle', 'Lahore', 3.9, 'offline'),
-- ('2019-00014', 'Tariq', 'Mehmood', '03347778889', 33, 'Scooter', 'Islamabad', 4.6, 'online'),
-- ('2019-00015', 'Sajid', 'Hassan', '03159990001', 29, 'Electric Bike', 'Peshawar', 4.4, 'on delivery'),
-- ('2019-00016', 'Kamran', 'Idrees', '03022223334', 26, 'Bicycle', 'Rawal Pindi', 4.1, 'offline'),
-- 
-- -- 2020 TIER
-- ('2020-00045', 'Javed', 'Iqbal', '03234445556', 42, 'Motorcycle', 'Rawal Pindi', 4.9, 'online'),
-- ('2020-00046', 'Mudassir', 'Aziz', '03356667778', 30, 'Motorcycle', 'Peshawar', 4.3, 'on delivery'),
-- ('2020-00047', 'Nadeem', 'Malik', '03168889990', 33, 'Scooter', 'Karachi', 4.5, 'offline'),
-- ('2020-00048', 'Arshad', 'Bashir', '03031112223', 32, 'Electric Bike', 'Lahore', 4.8, 'online'),
-- ('2020-00049', 'Rizwan', 'Gill', '03243334445', 27, 'Motorcycle', 'Islamabad', 4.2, 'on delivery'),
-- 
-- -- 2021 TIER
-- ('2021-00101', 'Saqib', 'Nawaz', '03365556667', 30, 'Motorcycle', 'Islamabad', 4.6, 'online'),
-- ('2021-00102', 'Imran', 'Farooq', '03177778889', 24, 'Scooter', 'Rawal Pindi', 3.8, 'offline'),
-- ('2021-00103', 'Adnan', 'Siddiqui', '03049990001', 28, 'Electric Bike', 'Peshawar', 4.7, 'on delivery'),
-- ('2021-00104', 'Umair', 'Javed', '03251113335', 23, 'Bicycle', 'Karachi', 4.3, 'online'),
-- ('2021-00105', 'Fahad', 'Latif', '03372224446', 32, 'Motorcycle', 'Lahore', 5.0, 'online'),
-- 
-- -- 2022 TIER
-- ('2022-00234', 'Zeeshan', 'Baig', '03183335557', 26, 'Motorcycle', 'Karachi', 4.4, 'offline'),
-- ('2022-00235', 'Waseem', 'Akram', '03054446668', 34, 'Scooter', 'Lahore', 4.1, 'on delivery'),
-- ('2022-00236', 'Babar', 'Azam', '03265557779', 23, 'Electric Bike', 'Islamabad', 4.9, 'online'),
-- ('2022-00237', 'Shaheen', 'Afridi', '03386668880', 22, 'Motorcycle', 'Rawal Pindi', 4.6, 'on delivery'),
-- ('2022-00238', 'Shadab', 'Khan', '03197779991', 25, 'Motorcycle', 'Peshawar', 4.5, 'offline'),
-- 
-- -- 2023 TIER
-- ('2023-00512', 'Fakar', 'Zaman', '03068880002', 29, 'Scooter', 'Peshawar', 4.2, 'online'),
-- ('2023-00513', 'Haris', 'Rauf', '03279991113', 27, 'Electric Bike', 'Karachi', 4.7, 'on delivery'),
-- ('2023-00514', 'Naseem', 'Shah', '03390002224', 20, 'Bicycle', 'Lahore', 4.0, 'online'),
-- ('2023-00515', 'Sarfaraz', 'Ahmed', '03101113335', 36, 'Motorcycle', 'Islamabad', 4.8, 'offline'),
-- ('2023-00516', 'Mohammad', 'Amir', '03072224446', 31, 'Motorcycle', 'Rawal Pindi', 4.4, 'online'),
-- 
-- -- 2024 TIER
-- ('2024-00890', 'Wahab', 'Riaz', '03283335557', 35, 'Scooter', 'Islamabad', 4.3, 'on delivery'),
-- ('2024-00891', 'Shoaib', 'Akhtar', '03394446668', 40, 'Electric Bike', 'Rawal Pindi', 4.9, 'online'),
-- ('2024-00892', 'Saeed', 'Ajmal', '03115557779', 38, 'Motorcycle', 'Peshawar', 4.6, 'offline'),
-- ('2024-00893', 'Misbah', 'Ulhaq', '03086668880', 43, 'Motorcycle', 'Karachi', 4.5, 'online'),
-- ('2024-00894', 'Younis', 'Khan', '03297779991', 41, 'Scooter', 'Lahore', 4.7, 'on delivery'),
-- 
-- -- 2025 TIER
-- ('2025-01200', 'Inzamam', 'Ulhaq', '03408880002', 44, 'Electric Bike', 'Lahore', 4.2, 'offline'),
-- ('2025-01201', 'Shahid', 'Afridi', '03129991113', 37, 'Motorcycle', 'Islamabad', 4.8, 'online'),
-- ('2025-01202', 'Abdul', 'Razzaq', '03090002224', 39, 'Motorcycle', 'Rawal Pindi', 4.4, 'on delivery'),
-- ('2025-01203', 'Azhar', 'Ali', '03301113335', 32, 'Scooter', 'Peshawar', 4.1, 'online'),
-- ('2025-01204', 'Asad', 'Shafiq', '03412224446', 30, 'Electric Bike', 'Karachi', 4.3, 'offline'),
-- 
-- -- 2026 TIER (Current Cohort)
-- ('2026-00001', 'Sarfraz', 'Nawaz', '03133335557', 45, 'Motorcycle', 'Lahore', 4.0, 'online'),
-- ('2026-00002', 'Wasim', 'Bari', '03325557779', 47, 'Scooter', 'Islamabad', 4.5, 'offline'),
-- ('2026-00003', 'Zaheer', 'Abbas', '03426668880', 48, 'Electric Bike', 'Rawal Pindi', 4.7, 'online'),
-- ('2026-00004', 'Javed', 'Miandad', '03147779991', 49, 'Motorcycle', 'Peshawar', 4.8, 'on delivery'),
-- ('2026-00005', 'Saqlain', 'Mushtaq', '03528880002', 34, 'Motorcycle', 'Karachi', 4.6, 'online'),
-- ('2026-00006', 'Mushtaq', 'Ahmed', '03339991113', 36, 'Scooter', 'Lahore', 4.2, 'offline'),
-- ('2026-00007', 'Waqar', 'Younis', '03430002224', 37, 'Electric Bike', 'Islamabad', 4.5, 'online'),
-- ('2026-00008', 'Yasir', 'Shah', '03151113335', 28, 'Bicycle', 'Peshawar', 3.9, 'on delivery'),
-- ('2026-00009', 'Sohail', 'Tanvir', '03532224446', 31, 'Motorcycle', 'Rawal Pindi', 4.4, 'online'),
-- ('2026-00010', 'Kamran', 'Akmal', '03207778889', 34, 'Motorcycle', 'Karachi', 4.3, 'online');

-- table structure reset
drop table if exists riders;

CREATE TABLE riders (
    rider_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL CHECK (first_name REGEXP '^[a-zA-Z]+$'),
    last_name VARCHAR(50) NOT NULL CHECK (last_name REGEXP '^[a-zA-Z]+$'),
    -- Standard length constraint (Forces exactly 11 characters)
    phone_number VARCHAR(11) UNIQUE NOT NULL CHECK (LENGTH(phone_number) = 11),
    rider_age INT NOT NULL CHECK (rider_age >= 18),
    vehicle_type VARCHAR(20) NOT NULL CHECK (vehicle_type IN ('Motorcycle', 'Scooter', 'Electric Bike', 'Bicycle')),
    assigned_city VARCHAR(30) NOT NULL CHECK (assigned_city IN ('Lahore', 'Karachi', 'Islamabad', 'Peshawar', 'Rawal Pindi')),
    rider_rating DECIMAL(2,1) DEFAULT 5.0 CHECK (rider_rating BETWEEN 1.0 AND 5.0),
    rider_status VARCHAR(20) DEFAULT 'offline' NOT NULL CHECK (rider_status IN ('online', 'offline', 'on delivery'))
);

describe riders;

INSERT INTO riders (rider_id, first_name, last_name, phone_number, rider_age, vehicle_type, assigned_city, rider_rating, rider_status) VALUES
-- 2018 TIER
('2018-00001', 'Kashif', 'Aslam', '03009876543', 32, 'Motorcycle', 'Karachi', 4.8, 'online'),
('2018-00002', 'Zubair', 'Khan', '03211234567', 29, 'Motorcycle', 'Karachi', 4.5, 'on delivery'),
('2018-00003', 'Noman', 'Ali', '03337654321', 38, 'Scooter', 'Lahore', 4.2, 'offline'),
('2018-00004', 'Salman', 'Raza', '03125554443', 34, 'Electric Bike', 'Islamabad', 4.9, 'online'),
('2018-00005', 'Asif', 'Ahmed', '03451112223', 28, 'Bicycle', 'Rawal Pindi', 4.0, 'online'),

-- 2019 TIER
('2019-00012', 'Faisal', 'Shah', '03013334445', 31, 'Motorcycle', 'Karachi', 4.7, 'on delivery'),
('2019-00013', 'Haroon', 'Sheikh', '03225556667', 35, 'Motorcycle', 'Lahore', 3.9, 'offline'),
('2019-00014', 'Tariq', 'Mehmood', '03347778889', 33, 'Scooter', 'Islamabad', 4.6, 'online'),
('2019-00015', 'Sajid', 'Hassan', '03159990001', 29, 'Electric Bike', 'Peshawar', 4.4, 'on delivery'),
('2019-00016', 'Kamran', 'Idrees', '03022223334', 26, 'Bicycle', 'Rawal Pindi', 4.1, 'offline'),

-- 2020 TIER
('2020-00045', 'Javed', 'Iqbal', '03234445556', 42, 'Motorcycle', 'Rawal Pindi', 4.9, 'online'),
('2020-00046', 'Mudassir', 'Aziz', '03356667778', 30, 'Motorcycle', 'Peshawar', 4.3, 'on delivery'),
('2020-00047', 'Nadeem', 'Malik', '03168889990', 33, 'Scooter', 'Karachi', 4.5, 'offline'),
('2020-00048', 'Arshad', 'Bashir', '03031112223', 32, 'Electric Bike', 'Lahore', 4.8, 'online'),
('2020-00049', 'Rizwan', 'Gill', '03243334445', 27, 'Motorcycle', 'Islamabad', 4.2, 'on delivery'),

-- 2021 TIER
('2021-00101', 'Saqib', 'Nawaz', '03365556667', 30, 'Motorcycle', 'Islamabad', 4.6, 'online'),
('2021-00102', 'Imran', 'Farooq', '03177778889', 24, 'Scooter', 'Rawal Pindi', 3.8, 'offline'),
('2021-00103', 'Adnan', 'Siddiqui', '03049990001', 28, 'Electric Bike', 'Peshawar', 4.7, 'on delivery'),
('2021-00104', 'Umair', 'Javed', '03251113335', 23, 'Bicycle', 'Karachi', 4.3, 'online'),
('2021-00105', 'Fahad', 'Latif', '03372224446', 32, 'Motorcycle', 'Lahore', 5.0, 'online'),

-- 2022 TIER
('2022-00234', 'Zeeshan', 'Baig', '03183335557', 26, 'Motorcycle', 'Karachi', 4.4, 'offline'),
('2022-00235', 'Waseem', 'Akram', '03054446668', 34, 'Scooter', 'Lahore', 4.1, 'on delivery'),
('2022-00236', 'Babar', 'Azam', '03265557770', 23, 'Electric Bike', 'Islamabad', 4.9, 'online'), -- Fixed phone number length
('2022-00237', 'Shaheen', 'Afridi', '03386668880', 22, 'Motorcycle', 'Rawal Pindi', 4.6, 'on delivery'),
('2022-00238', 'Shadab', 'Khan', '03197779991', 25, 'Motorcycle', 'Peshawar', 4.5, 'offline'),

-- 2023 TIER
('2023-00512', 'Fakar', 'Zaman', '03068880002', 29, 'Scooter', 'Peshawar', 4.2, 'online'),
('2023-00513', 'Haris', 'Rauf', '03279991113', 27, 'Electric Bike', 'Karachi', 4.7, 'on delivery'),
('2023-00514', 'Naseem', 'Shah', '03390002224', 20, 'Bicycle', 'Lahore', 4.0, 'online'),
('2023-00515', 'Sarfaraz', 'Ahmed', '03101113335', 36, 'Motorcycle', 'Islamabad', 4.8, 'offline'),
('2023-00516', 'Mohammad', 'Amir', '03072224446', 31, 'Motorcycle', 'Rawal Pindi', 4.4, 'online'),

-- 2024 TIER
('2024-00890', 'Wahab', 'Riaz', '03283335557', 35, 'Scooter', 'Islamabad', 4.3, 'on delivery'),
('2024-00891', 'Shoaib', 'Akhtar', '03394446668', 40, 'Electric Bike', 'Rawal Pindi', 4.9, 'online'),
('2024-00892', 'Saeed', 'Ajmal', '03115557779', 38, 'Motorcycle', 'Peshawar', 4.6, 'offline'),
('2024-00893', 'Misbah', 'Ulhaq', '03086668880', 43, 'Motorcycle', 'Karachi', 4.5, 'online'),
('2024-00894', 'Younis', 'Khan', '03297779991', 41, 'Scooter', 'Lahore', 4.7, 'on delivery'),

-- 2025 TIER
('2025-01200', 'Inzamam', 'Ulhaq', '03408880002', 44, 'Electric Bike', 'Lahore', 4.2, 'offline'),
('2025-01201', 'Shahid', 'Afridi', '03129991113', 37, 'Motorcycle', 'Islamabad', 4.8, 'online'),
('2025-01202', 'Abdul', 'Razzaq', '03090002224', 39, 'Motorcycle', 'Rawal Pindi', 4.4, 'on delivery'),
('2025-01203', 'Azhar', 'Ali', '03301113335', 32, 'Scooter', 'Peshawar', 4.1, 'online'),
('2025-01204', 'Asad', 'Shafiq', '03412224446', 30, 'Electric Bike', 'Karachi', 4.3, 'offline'),

-- 2026 TIER
('2026-00001', 'Sarfraz', 'Nawaz', '03133335557', 45, 'Motorcycle', 'Lahore', 4.0, 'online'),
('2026-00002', 'Wasim', 'Bari', '03325557779', 47, 'Scooter', 'Islamabad', 4.5, 'offline'),
('2026-00003', 'Zaheer', 'Abbas', '03426668880', 48, 'Electric Bike', 'Rawal Pindi', 4.7, 'online'),
('2026-00004', 'Javed', 'Miandad', '03147779991', 49, 'Motorcycle', 'Peshawar', 4.8, 'on delivery'),
('2026-00005', 'Saqlain', 'Mushtaq', '03528880002', 34, 'Motorcycle', 'Karachi', 4.6, 'online'),
('2026-00006', 'Mushtaq', 'Ahmed', '03339991113', 36, 'Scooter', 'Lahore', 4.2, 'offline'),
('2026-00007', 'Waqar', 'Younis', '03430002224', 37, 'Electric Bike', 'Islamabad', 4.5, 'online'),
('2026-00008', 'Yasir', 'Shah', '03151113335', 28, 'Bicycle', 'Peshawar', 3.9, 'on delivery'),
('2026-00009', 'Sohail', 'Tanvir', '03532224446', 31, 'Motorcycle', 'Rawal Pindi', 4.4, 'online'),
('2026-00010', 'Kamran', 'Akmal', '03207778889', 34, 'Motorcycle', 'Karachi', 4.3, 'online');

select * from riders;

drop table if exists orders;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_type VARCHAR(20) NOT NULL CHECK (order_type IN ('delivery', 'pick-up')),
    -- Serves as your user foreign key connection to the users table
    customer_id INT NOT NULL, 
    price DECIMAL(10,2) NOT NULL,
    items TEXT NOT NULL, -- Plain text compilation to hold multiple dish values
    restaurant_id VARCHAR(6) NOT NULL,
    -- Can be NULL if the order_type is 'pick-up' or if it is a new order
    rider_id VARCHAR(10) NULL, 
    delivery_type VARCHAR(20) NOT NULL CHECK (delivery_type IN ('standard', 'speedy')),
    order_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    
    -- Explicit Academic Constraints linking your ecosystem
    CONSTRAINT FK_orders_customers FOREIGN KEY (customer_id) REFERENCES users(user_id),
    CONSTRAINT FK_orders_restaurants FOREIGN KEY (restaurant_id) REFERENCES resturants(resturant_id),
    CONSTRAINT FK_orders_riders FOREIGN KEY (rider_id) REFERENCES riders(rider_id)
);

describe orders;

select * from orders;

-- verification check

-- SELECT COUNT(*) AS Total_Logged_Orders, 
--        order_type, 
--        ROUND(AVG(price), 2) AS Average_Order_Value,
--        MIN(order_timestamp) AS Earliest_Order,
--        MAX(order_timestamp) AS Latest_Order
-- FROM orders
-- GROUP BY order_type;


-- Adding a new column to users table

-- ALTER TABLE users 
-- ADD COLUMN total_orders INT DEFAULT 0 NOT NULL AFTER sub_type;

describe users;

UPDATE users u
SET u.total_orders = (
    SELECT COUNT(*) 
    FROM orders o 
    WHERE o.customer_id = u.user_id
);

SELECT user_id, first_name, last_name, total_orders 
FROM users 
ORDER BY total_orders DESC;


select * from users;







