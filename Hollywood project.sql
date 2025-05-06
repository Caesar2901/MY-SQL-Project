create database hollywood;
use hollywood;

show tables;
CREATE TABLE Annual_Tickets_Sales (
    year INT PRIMARY KEY,
    tickets_sold BIGINT,
    total_box_office int,
    total_inflation_adjusted_box_office int,
    average_ticket_price decimal(15,2)
);
alter table annual_tickets_sales modify total_box_office bigint,
modify total_inflation_adjusted_box_office bigint;
CREATE TABLE Highest_Grosser (
    year INT,
    movie VARCHAR(255),
    genre VARCHAR(100),
    mpaa_rating VARCHAR(50),
    distributor VARCHAR(100),
    total_in_year DECIMAL(15, 2),
    total_in_year_2019 DECIMAL(15, 2),
    tickets_sold BIGINT,
    FOREIGN KEY (year) REFERENCES Annual_Ticket_Sales(year)
);

CREATE TABLE Popular_Creative_Types (
    rank_list INT,
    creative_types VARCHAR(100),
    movies INT,
    total_gross DECIMAL(15, 2),
    average_gross DECIMAL(15, 2),
    market_share_in_percentage decimal(10,2) 

);

INSERT INTO popular_creative_types (RANK_list , CREATIVE_TYPES, MOVIES, TOTAL_GROSS, AVERAGE_GROSS,
 MARKET_SHARE_in_percentage) VALUES
	('1', 'Contemporary Fiction', '7442', '96203727036', '12927133', '40.46%'),
	('2', 'Kids Fiction', '564', '32035539746', '56800602', '13.47%'),
	('3', 'Science Fiction', '724', '29922660857', '41329642', '12.59%'),
	('4', 'Fantasy', '759', '21724062575', '28621953', '9.14%'),
	('5', 'Super Hero', '129', '20273157911', '157156263', '8.53%'),
	('6', 'Historical Fiction', '1487', '18521260744', '12455454', '7.79%'),
	('7', 'Dramatization', '1175', '15715191699', '13374631', '6.61%'),
	('8', 'Factual', '2467', '2960327207', '1199970', '1.25%'),
	('9', 'Multiple Creative Types', '42', '117574526', '2799393', '0.05%');
CREATE TABLE Top_Distributor (
    Rank_List INT PRIMARY KEY,
    distributor VARCHAR(100),
    movies INT,
    total_gross DECIMAL(15, 2),
    average_gross DECIMAL(15, 2),
    market_share_in_percentage decimal(15,2)
);

CREATE TABLE Top_Genre (
    Rank_List INT PRIMARY KEY,
    genre VARCHAR(100),
    movies INT,
    total_gross DECIMAL(15, 2),
    average_gross DECIMAL(15, 2),
    market_share_in_percentage DECIMAL(5, 2)
);
INSERT INTO Top_Genre (RANK_List, GENRE, MOVIES, TOTAL_GROSS, AVERAGE_GROSS, MARKET_SHARE_in_percentage) VALUES
	('1', 'Adventure', '1102', '64529536530', '58556748', '27.14' ),
	('2', 'Action', '1098', '49339974493', '44936224', '20.75'),
	('3', 'Drama', '5479', '35586177269', '6495013', '14.97'),
	('4', 'Comedy', '2418', '33687992318', '13932172', '14.17'),
	('5', 'Thriller/Suspense', '1186', '19810201102', '16703374', '8.33'),
	('6', 'Horror', '716', '13430378699', '18757512', '5.65'),
	('7', 'Romantic Comedy', '630', '10480124374', '16635118', '4.41'),
	('8', 'Musical', '201', '4293988317', '21363126', '1.81'),
	('9', 'Documentary', '2415', '2519513142', '1043277', '1.06'),
	('10', 'Black Comedy', '213', '2185433323', '10260250', '0.92');

CREATE TABLE Top_Grossing_Rating (
    Rank_List INT PRIMARY KEY,
    mpaa_rating VARCHAR(50),
    movies INT,
    total_gross DECIMAL(15, 2),
    average_gross DECIMAL(15, 2),
    market_share_in_percentage DECIMAL(5, 2)
);

CREATE TABLE Top_Grossing_Source (
    Rank_List INT PRIMARY KEY,
    source VARCHAR(100),
    movies INT,
    total_gross int,
    average_gross int,
    market_share_in_percentage decimal(10,2)
);
alter table top_grossing_source modify total_gross bigint;
alter table top_grossing_source modify average_gross bigint;
select * from top_grossing_source;
create TABLE Wide_Release_Count (
    year INT,
    warner_bros INT,
    walt_disney INT,
    20th_century_fox INT,
    paramount_pictures INT,
    sony_pictures INT,
    universal INT,
    total_major6 INT,
    total_other_studios INT,
    FOREIGN KEY (year) REFERENCES Annual_Ticket_Sales(year)
);
select * from annual_tickets_sales;
select * from highest_grosser;
select * from  popular_creative_types;
select * from top_distributor;
select * from top_genre;
select * from top_grossing_rating;
desc  top_grossing_source;
desc  wide_release_count;
show tables;

alter table populor_Creative_types  rename Popular_Creative_types;