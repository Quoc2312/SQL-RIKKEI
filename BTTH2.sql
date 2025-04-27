CREATE DATABASE building_db;
USE building_db;


CREATE TABLE Hostt (
	id INT AUTO_INCREMENT PRIMARY KEY,
	host_name VARCHAR(45) NOT NULL,
	address VARCHAR(45) NOT NULL
);

CREATE TABLE Contractor (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255),
	address VARCHAR(255),
	contractorcol VARCHAR(45)
);

CREATE TABLE Building(
	id INT AUTO_INCREMENT PRIMARY KEY,
	build_name VARCHAR(45) NOT NULL,
	address VARCHAR(45) NOT NULL,
	city VARCHAR(45) NOT NULL,
	cost FLOAT NOT NULL,
	start_time DATE NOT NULL,
	host_id INT NOT NULL,
	contractor_id INT NOT NULL,
	FOREIGN KEY (host_id) REFERENCES Hostt(id),
	FOREIGN KEY (contractor_id) REFERENCES Contractor(id)
);

CREATE TABLE Worker (
	id INT AUTO_INCREMENT PRIMARY KEY,
	worker_name VARCHAR(45),
	dob DATE,
	yearr YEAR,
	skill VARCHAR(45)
);

CREATE TABLE Architect(
	id INT AUTO_INCREMENT PRIMARY KEY, 
	arc_name VARCHAR(255),
	sex TINYINT(1),
	birthday DATE,
	place VARCHAR(255),
	address VARCHAR(255)
);

CREATE TABLE Workk(
	building_id INT,
	worker_id INT, 
	work_date DATE,
	total VARCHAR(45),
	PRIMARY KEY (building_id, worker_id),
	FOREIGN KEY (building_id) REFERENCES Building(id),
	FOREIGN KEY (worker_id) REFERENCES Worker(id)
);

CREATE TABLE Design(
	building_id INT,
	architect_id INT,
	benefit VARCHAR(45),
	PRIMARY KEY (building_id, architect_id),
	FOREIGN KEY (building_id) REFERENCES Building(id),
	FOREIGN KEY (architect_id) REFERENCES Architect(id)
);
