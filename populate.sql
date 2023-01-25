

INSERT INTO 
country (county_id, country_name)
VALUES
('100100', 'USA'),
('200100', 'Germany'),
('300100', 'China'),
('400100', 'Netherlands');

INSERT INTO 
description (description_id, description_name)
VALUES
('tr', 'crashes into a tree'),
('ln', 'drive into a opposite line'),
('mt', 'hit motocycle'),
('cntr', 'car is out of control');


INSERT INTO 
accident (accident_id, accident_date, accident_death, country_id, description_id)
VALUES
(1, '8.16.2022', '2', '200100','tr'),
(2, '6.26.2022', '1', '100100','ln'),
(3, '7.24.2022', '1', '100100','mt'),
(4, '7.12.2022', '2', '300100','cntr'),
(5, '8.26.21', '3', '400100', 'tr'),
(6, '9.17.20', '1', '100100', 'cntr');



