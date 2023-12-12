create database music_store_data
use music_store_data

-- Create 'employee' table
CREATE TABLE employee (
    employee_id VARCHAR(50) PRIMARY KEY,
    last_name CHAR(50),
    first_name CHAR(50),
    title VARCHAR(50),
    reports_to VARCHAR(30),
    levels VARCHAR(10),
    birthdate DATETIME,
    hire_date DATETIME,
    address VARCHAR(120),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(30),
    postal_code VARCHAR(30),
    phone VARCHAR(30),
    fax VARCHAR(30),
    email VARCHAR(30)
);

-- Create 'customer' table
CREATE TABLE customer (
    customer_id VARCHAR(30) PRIMARY KEY,
    first_name CHAR(30),
    last_name CHAR(30),
    company VARCHAR(30),
    address VARCHAR(30),
    city VARCHAR(30),
    state VARCHAR(30),
    country VARCHAR(30),
    postal_code BIGINT,
    phone BIGINT,
    fax BIGINT,
    email VARCHAR(30),
    support_rep_id VARCHAR(30)
);

-- Create 'invoice' table
CREATE TABLE invoice (
    invoice_id VARCHAR(30) PRIMARY KEY,
    customer_id VARCHAR(30),
    invoice_date DATETIME,
    billing_address VARCHAR(120),
    billing_city VARCHAR(30),
    billing_state VARCHAR(30),
    billing_country VARCHAR(30),
    billing_postal VARCHAR(30),
    total FLOAT
);

-- Create 'invoice_line' table
CREATE TABLE invoice_line (
    invoice_line_id VARCHAR(50) PRIMARY KEY,
    invoice_id VARCHAR(30),
    track_id VARCHAR(30),
    unit_price FLOAT,
    quantity INT
);

-- Create 'track' table
CREATE TABLE track (
    track_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30),
    album_id VARCHAR(30),
    media_type_id VARCHAR(30),
    genre_id VARCHAR(30),
    composer VARCHAR(30),
    milliseconds INT,
    bytes BIGINT,
    unit_price INT
);

-- Create 'playlist' table
CREATE TABLE playlist (
    playlist_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30)
);

-- Create 'playlist_track' table
CREATE TABLE playlist_track (
    playlist_id VARCHAR(50),
    track_id VARCHAR(50),
    PRIMARY KEY (playlist_id, track_id)
);

-- Create 'artist' table
CREATE TABLE artist (
    artist_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30)
);

-- Create 'album' table
CREATE TABLE album (
    album_id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(30),
    artist_id VARCHAR(30)
);

-- Create 'media_type' table
CREATE TABLE media_type (
    media_type_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30)
);

-- Create 'genre' table
CREATE TABLE genre (
    genre_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(30)
);

