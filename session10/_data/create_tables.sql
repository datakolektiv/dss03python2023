USE nycflights;

-- create airlines table
CREATE TABLE IF NOT EXISTS airlines (
    `carrier` VARCHAR(2),
    `name` VARCHAR(50)
);

-- create flights table
CREATE TABLE IF NOT EXISTS flights (
    `year` INTEGER,
    `month` INTEGER,
    `day` INTEGER,
    `dep_time` REAL,
    `sched_dep_time` INTEGER,
    `dep_delay` REAL,
    `arr_time` REAL,
    `sched_arr_time` INTEGER,
    `arr_delay` REAL,
    `carrier` CHAR(2),
    `flight` INTEGER,
    `tailnum` VARCHAR(10),
    `origin` CHAR(3),
    `dest` VARCHAR(3),
    `air_time` REAL,
    `distance` INTEGER,
    `hour` INTEGER,
    `minute` INTEGER,
    `time_hour` VARCHAR(40)
);

-- create flights table
CREATE TABLE IF NOT EXISTS flights_i (
    `year` INTEGER,
    `month` INTEGER,
    `day` INTEGER,
    `dep_time` REAL,
    `sched_dep_time` INTEGER,
    `dep_delay` REAL,
    `arr_time` REAL,
    `sched_arr_time` INTEGER,
    `arr_delay` REAL,
    `carrier` VARCHAR(2),
    `flight` INTEGER,
    `tailnum` VARCHAR(10),
    `origin` VARCHAR(3),
    `dest` VARCHAR(3),
    `air_time` REAL,
    `distance` INTEGER,
    `hour` INTEGER,
    `minute` INTEGER,
    `time_hour` VARCHAR(40)
);

-- create indexes
CREATE OR REPLACE INDEX flights_i_index_1 ON flights_i(`origin`(3), `dest`(3), `carrier`(2));
CREATE OR REPLACE INDEX flights_i_index_2 ON flights_i(`dest`(3));
CREATE OR REPLACE INDEX flights_i_index_3 ON flights_i(`carrier`(2));
CREATE OR REPLACE INDEX flights_i_index_4 ON flights_i(`distance`);
CREATE OR REPLACE INDEX flights_i_index_5 ON flights_i(`air_time`);



-- create planes table
CREATE TABLE IF NOT EXISTS planes (
    `tailnum` VARCHAR(10),
    `year` REAL,
    `type` VARCHAR(50),
    `manufacturer` VARCHAR(50),
    `model` VARCHAR(50),
    `engines` INTEGER,
    `seats` INTEGER,
    `speed` REAL,
    `engine` VARCHAR(15)
);

-- create weather table
CREATE TABLE IF NOT EXISTS weather (
    `origin` VARCHAR(3),
    `year` INTEGER,
    `month` INTEGER,
    `day` INTEGER,
    `hour` INTEGER,
    `temp` REAL,
    `dewp` REAL,
    `humid` REAL,
    `wind_dir` REAL,
    `wind_speed` REAL,
    `wind_gust` REAL,
    `precip` REAL,
    `pressure` REAL,
    `visib` REAL,
    `time_hour` VARCHAR(40)
);

-- create airports table
CREATE TABLE IF NOT EXISTS airports (
    `faa` VARCHAR(3),
    `name` VARCHAR(100),
    `lat` REAL,
    `lon` REAL,
    `alt` INTEGER,
    `tz` INTEGER,
    `dst` VARCHAR(1),
    `tzone` VARCHAR(30)
);

-- create airports table
CREATE TABLE IF NOT EXISTS airports_i (
    `faa` VARCHAR(3),
    `name` VARCHAR(100),
    `lat` REAL,
    `lon` REAL,
    `alt` INTEGER,
    `tz` INTEGER,
    `dst` VARCHAR(1),
    `tzone` VARCHAR(30)
);

-- create indexes
CREATE OR REPLACE INDEX airports_i_index_1 ON airports_i(`faa`(3));