DROP TABLE IF EXISTS sandbox.cities;

CREATE TABLE sandbox.cities (
    name VARCHAR(50),
    country VARCHAR(50),
    population INTEGER,
    area INTEGER
);


INSERT INTO sandbox.cities (name, country, population, area)
VALUES
('Tokyo', 'Japan', 38505000, 8223),
('Delhi', 'India', 28125000, 2240),
('Shanghai', 'China', 22125000, 4015),
('Sao Paulo', 'Brazil', 20935000, 3043);

SELECT * FROM sandbox.cities;

SELECT 
    name,
    country,
    population,
    area,
    ROUND(population::numeric / area, 2) AS density
FROM sandbox.cities;

DROP TABLE IF EXISTS phones;

CREATE TABLE phones (
    name VARCHAR(50),
    manufacturer VARCHAR(50),
    price INTEGER,
    units_sold INTEGER
);

INSERT INTO phones (name, manufacturer, price, units_sold) VALUES
('N1280', 'Nokia', 199, 1925),
('iPhone 4', 'Apple', 399, 9460),
('Galaxy S', 'Samsung', 299, 3590),
('S5620 Monte', 'Samsung', 250, 9510);

SELECT name, price FROM phones where units_sold > 5000;

update phones set units_sold = 1925 where name = 'N1280';

SELECT * FROM phones;

DROP TABLE IF EXISTS phones;

CREATE TABLE phones (
    name VARCHAR(50),
    manufacturer VARCHAR(50),
    price INTEGER,
    units_sold INTEGER
);

INSERT INTO phones (name, manufacturer, price, units_sold) VALUES
('N1280', 'Nokia', 199, 1925),
('iPhone 4', 'Apple', 399, 9436),
('Galaxy S', 'Samsung', 299, 2359),
('S5620 Monte', 'Samsung', 250, 2835),
('N8', 'Nokia', 150, 7543),
('Droid', 'Motorola', 150, 8395);

SELECT name, price from phones
where units_sold > 5000;


