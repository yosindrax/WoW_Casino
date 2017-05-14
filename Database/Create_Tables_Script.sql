DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS deleted_accounts;
DROP TABLE IF EXISTS login_attempts;
CREATE TABLE accounts (
id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
username VARCHAR(255) NOT NULL UNIQUE,
pass VARCHAR(16) NOT NULL,
email VARCHAR(255) NOT NULL,
balance INT(255) DEFAULT 0,
location VARCHAR(255),
lt_online VARCHAR(255),
account_status bit(1) default 0,
is_deleted bit(1) DEFAULT 0,
PRIMARY KEY (id)
);

CREATE TABLE deleted_accounts (
id INT(11) UNIQUE NOT NULL AUTO_INCREMENT,
username VARCHAR(255) NOT NULL UNIQUE,
pass VARCHAR(16) NOT NULL,
email VARCHAR(255) NOT NULL,
balance INT(255) DEFAULT 0,
location VARCHAR(255),
lt_online VARCHAR(255),
account_status BIT(1),
is_deleted BIT(1),
PRIMARY KEY (id)
);

/* Made to prevent Brute Forcing */
CREATE TABLE login_attempts (
user_id INT(11) NOT NULL,
time VARCHAR(30) NOT NULL
);
