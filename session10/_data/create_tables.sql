USE nycflights;

-- create airlines table
CREATE TABLE airlines (
    `carrier` CHAR(2),
    `name` VARCHAR(50)
);

-- create flights table
CREATE TABLE flights (
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
    `dest` CHAR(3),
    `air_time` REAL,
    `distance` INTEGER,
    `hour` INTEGER,
    `minute` INTEGER,
    `time_hour` VARCHAR(40)
);

-- create planes table
CREATE TABLE planes (
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
CREATE TABLE weather (
    `origin` CHAR(3),
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
CREATE TABLE airports (
    `faa` CHAR(3),
    `name` VARCHAR(100),
    `lat` REAL,
    `lon` REAL,
    `alt` INTEGER,
    `tz` INTEGER,
    `dst` CHAR(1),
    `tzone` VARCHAR(30)
);
