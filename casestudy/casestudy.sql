create database if not exists casestudy;
use casestudy;
-- Bảng Service
CREATE TABLE Service (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(100),
    service_area FLOAT,
    service_cost DECIMAL(10,2),
    service_max_people INT,
    rent_type_id INT
);

-- Bảng Villa
CREATE TABLE Villa (
    villa_id INT PRIMARY KEY,
    standard_room VARCHAR(50),
    description_other_convenience TEXT,
    pool_area FLOAT,
    number_of_floors INT,
    FOREIGN KEY (villa_id) REFERENCES Service(service_id)
);

-- Bảng House
CREATE TABLE House (
    house_id INT PRIMARY KEY,
    standard_room VARCHAR(50),
    description_other_convenience TEXT,
    number_of_floors INT,
    FOREIGN KEY (house_id) REFERENCES Service(service_id)
);

-- Bảng Room
CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    free_service TEXT,
    FOREIGN KEY (room_id) REFERENCES Service(service_id)
);

-- Bảng Attach_Service
CREATE TABLE Attach_Service (
    attach_service_id INT PRIMARY KEY,
    attach_service_name VARCHAR(100),
    attach_service_unit VARCHAR(50),
    attach_service_cost DECIMAL(10,2)
);

-- Bảng Employee
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    employee_birthday DATE,
    employee_id_card VARCHAR(20),
    employee_phone VARCHAR(15),
    employee_email VARCHAR(100),
    education_degree_id INT,
    position_id INT,
    division_id INT,
    employee_salary DECIMAL(10,2),
    FOREIGN KEY (education_degree_id) REFERENCES Education_Degree(education_degree_id),
    FOREIGN KEY (position_id) REFERENCES Position(position_id),
    FOREIGN KEY (division_id) REFERENCES Division(division_id)
);

-- Bảng Education_Degree
CREATE TABLE Education_Degree (
    education_degree_id INT PRIMARY KEY,
    education_degree_name VARCHAR(50)
);

-- Bảng Position
CREATE TABLE Position (
    position_id INT PRIMARY KEY,
    position_name VARCHAR(50)
);

-- Bảng Division
CREATE TABLE Division (
    division_id INT PRIMARY KEY,
    division_name VARCHAR(50)
);

-- Bảng Customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_birthday DATE,
    customer_gender VARCHAR(10),
    customer_id_card VARCHAR(20),
    customer_phone VARCHAR(15),
    customer_email VARCHAR(100),
    customer_type_id INT,
    customer_address VARCHAR(255),
    FOREIGN KEY (customer_type_id) REFERENCES Customer_Type(customer_type_id)
);

-- Bảng Customer_Type
CREATE TABLE Customer_Type (
    customer_type_id INT PRIMARY KEY,
    customer_type_name VARCHAR(50)
);

-- Bảng Contract
CREATE TABLE Contract (
    contract_id INT PRIMARY KEY,
    contract_start_date DATE,
    contract_end_date DATE,
    contract_deposit DECIMAL(10,2),
    contract_total_money DECIMAL(10,2),
    customer_id INT,
    service_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (service_id) REFERENCES Service(service_id)
);

-- Bảng Rent_Type
CREATE TABLE Rent_Type (
    rent_type_id INT PRIMARY KEY,
    rent_type_name VARCHAR(50)
);