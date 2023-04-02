USE nycflights;

-- drop table airlines
DROP TABLE IF EXISTS airlines;

-- drop table flights
DROP TABLE IF EXISTS flights;
DROP TABLE IF EXISTS flights_i;

-- drop table indexes
DROP INDEX IF EXISTS flights_i_index_1 ON flights_i;
DROP INDEX IF EXISTS flights_i_index_2 ON flights_i;
DROP INDEX IF EXISTS flights_i_index_3 ON flights_i;
DROP INDEX IF EXISTS flights_i_index_4 ON flights_i;
DROP INDEX IF EXISTS flights_i_index_5 ON flights_i;

-- drop table planes
DROP TABLE IF EXISTS planes;

-- drop table weather
DROP TABLE IF EXISTS weather;

-- drop table airports
DROP TABLE IF EXISTS airports;
DROP TABLE IF EXISTS airports_i;

-- drop table indexes
DROP INDEX IF EXISTS airports_i_index_1 ON airports_i; 