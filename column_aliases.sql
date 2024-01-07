-- person nomli databaza yaratish
CREATE DATABASE person; 

-- unga ulanish
\c person;

-- users nomli table yaratish
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    f_name VARCHAR(30) NOT NULL,
    l_name VARCHAR(30) NOT NULL,
    age INT,
    email TEXT
);

-- unga 10 ta malumot yozish
INSERT INTO users (f_name, l_name, age, email) VALUES
('Faxriddinov', 'Asadbek', 17, 'asadbekfaxriddinov212@email.com'),
('Ismoilov', 'Otabek', 25, 'otabekismoilov123@email.com'),
('Karimov', 'Abdulloh', 30, 'abdullohkarimov456@email.com'),
('Xayitov', 'Oybek', 22, 'oybekxayitov789@email.com'),
('Nabiyev', 'Jahongir', 28, 'jahongirnabiyev101@email.com'),
('Toshpulatov', 'Bekzod', 26, 'bekzodtoshpulatov112@email.com'),
('Xudayberganov', 'Shohruh', 24, 'shohruhxudayberganov131@email.com'),
('Nazarov', 'Murod', 19, 'murodnazarov141@email.com'),
('Saidov', 'Ismoil', 35, 'ismoilsaidov151@email.com'),
('Rasulov', 'Rustam', 31, 'rustamrasulov161@email.com');


-- column aliases
SELECT email AS contact FROM customer;
SELECT first_name AS name FROM customer;
SELECT first_name name FROM customer;
SELECT first_name, last_name AS surname FROM customer;
SELECT first_name || ' ' || last_name AS full_name FROM customer;
SELECT first_name || ' ' || last_name "full name" FROM customer;