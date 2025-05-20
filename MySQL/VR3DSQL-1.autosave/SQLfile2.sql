CREATE DATABASE Powers;
USE Powers;
CREATE TABLE Top_10_Powers (
    'id' INT NOT NULL AUTO_INCREMENT,
    'power' VARCHAR (255) NOT NULL,
    'uses' VARCHAR (255) NOT NULL,
    'rank' INT NOT NULL,
    PRIMARY KEY  ('id');
);
CREATE TABLE Daily_utilities (
    'ut_id' INT NOT NULL AUTO_INCREMENT,
    'daily_utility' VARCHAR (255) NOT NULL,
    PRIMARY KEY ('ut_id'),
    CONSTRAINT pow_ut FOREIGN KEY ('ut_id') REFERENCES 'Top_10_Powers' ('id') ON DELETE CASCADE ON UPDATE RESTRICT
);
INSERT INTO Top_10_Powers (power, uses, rank) VALUES
('Teleport', 'The ability to teleport yourself anywhere.', 4),
('Fly', 'The ability to fly in the air.', 8),
('Ultra Speed', 'The ability to run, react and live in ultra high speed.', 7),
('Warp', 'The ability to travel yourself and others anywhere.', 3),
('Gravity Control', 'The ability to manipulate gravity any way you want.', 5),
('Creation', 'The ability to create anything.', 1),
('Super Strength', 'The ability to be super strong.', 9),
('Light Control', 'The ability to manipulate, transform into and create light any way you want.', 2),
('Water Control', 'The ability to mainpulate, transform into and create water any way you want.', 6),
('Indestructibility', 'The ability of being indestructible.', 10);

INSERT INTO Daily_utilities (daily_utility) VALUES
('It can be used as a instant transport method to travel short or long distances.'),
('It can be used to travel through the sky to almost any destination.'),
('It can be used to travel long distances without any vehicle.'),
('It can be used as a massive transport method to send yourself, other people or things to any location.'),
('It can be used to levitate, move or destroy almost anything you want.'),
('It can be used to create food, materials and basically everything possible.'),
('It can be used to move and destroy things.'),
('It can be used to travel at the speed of light, create light sources in dark spaces, radiation, light beams, manipulate the light levels, and visible light spectrum'),
('It can be used to move in the water, control the seas, breathe underwater, add, remove and control water from anything.'),
('It can be used to become an human shield.');

SELECT * FROM Top_10_Powers
ORDER BY rank ASC;

SELECT * FROM Top_10_Powers
ORDER BY rank DESC LIMIT 5;

SELECT * FROM  Top_10_Powers
WHERE id NOT IN (5, 8, 9)
ORDER BY rank ASC;

SELECT power AS 'Power Name' FROM Top_10_Powers
WHERE power LIKE 'Control'
ORDER BY power ASC;

SELECT * FROM Top_10_Powers
WHERE (id < 3 OR uses NOT LIKE 'manipulate')
ORDER BY rank ASC;

SELECT * FROM Daily_utilities
ORDER BY ut_id
WHERE (id < 4);

/*Still need 4 more SELECT from Daily_utilities