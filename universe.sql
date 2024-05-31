\c postgres
DROP DATABASE IF EXISTS universe;

CREATE DATABASE universe;

\c universe

CREATE TABLE galaxy (
  galaxy_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  description TEXT,
  age_in_millions_of_years INT,
  is_spherical BOOLEAN,
  distance_from_earth NUMERIC
);

CREATE TABLE star (
  star_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  galaxy_id INT REFERENCES galaxy(galaxy_id),
  age_in_millions_of_years INT,
  has_life BOOLEAN
);

CREATE TABLE planet (
  planet_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  star_id INT REFERENCES star(star_id),
  is_spherical BOOLEAN,
  age_in_millions_of_years INT
);

CREATE TABLE moon (
  moon_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  planet_id INT REFERENCES planet(planet_id),
  is_spherical BOOLEAN,
  age_in_millions_of_years INT
);


INSERT INTO galaxy (name, age_in_millions_of_years, is_spherical, distance_from_earth) VALUES ('Milky Way', 13500, true, 0);
INSERT INTO star (name, galaxy_id, age_in_millions_of_years, has_life) VALUES ('Sun', 1, 4600, true);
INSERT INTO planet (name, star_id, is_spherical, age_in_millions_of_years) VALUES ('Earth', 1, true, 4500);
INSERT INTO moon (name, planet_id, is_spherical, age_in_millions_of_years) VALUES ('Moon', 1, true, 4500);


INSERT INTO galaxy (name, age_in_millions_of_years, is_spherical, distance_from_earth) VALUES 
('Andromeda', 10000, true, 2537000),
('Triangulum', 35000, true, 3000000),
('Pinwheel', 21000, false, 2700000),
('Whirlpool', 40000, true, 2300000),
('Sombrero', 29000, false, 2900000),
('Centaurus A', 13000, true, 11000000);

INSERT INTO star (name, galaxy_id, age_in_millions_of_years, has_life) VALUES 
('Alpha Centauri A', 1, 5500, false),
('Alpha Centauri B', 1, 5300, false),
('Alpha Centauri C', 1, 4500, false),
('Sirius A', 2, 2000, false),
('Sirius B', 2, 12500, false),
('Epsilon Eridani', 3, 500, false);

CREATE TABLE comet (
  comet_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  galaxy_id INT REFERENCES galaxy(galaxy_id),
  age_in_millions_of_years INT,
  is_spherical BOOLEAN
);

INSERT INTO planet (name, star_id, is_spherical, age_in_millions_of_years) VALUES 
('Mars', 1, true, 4500),
('Venus', 1, true, 4500),
('Mercury', 1, true, 4500),
('Jupiter', 2, true, 4500),
('Saturn', 2, true, 4500),
('Uranus', 2, true, 4500),
('Neptune', 3, true, 4500),
('Pluto', 3, false, 4500),
('Haumea', 3, false, 4500),
('Makemake', 4, false, 4500),
('Eris', 4, false, 4500),
('Ceres', 4, false, 4500);

INSERT INTO moon (name, planet_id, is_spherical, age_in_millions_of_years) VALUES 
('Phobos', 1, false, 4500),
('Deimos', 1, false, 4500),
('Io', 2, true, 4500),
('Europa', 2, true, 4500),
('Ganymede', 2, true, 4500),
('Callisto', 2, true, 4500),
('Titan', 3, true, 4500),
('Rhea', 3, true, 4500),
('Iapetus', 3, true, 4500),
('Dione', 3, true, 4500),
('Tethys', 3, true, 4500),
('Enceladus', 3, true, 4500),
('Mimas', 3, true, 4500),
('Oberon', 4, true, 4500),
('Titania', 4, true, 4500),
('Umbriel', 4, true, 4500),
('Ariel', 4, true, 4500),
('Miranda', 4, true, 4500),
('Triton', 5, true, 4500),
('Nereid', 5, false, 4500);


INSERT INTO comet (name, galaxy_id, age_in_millions_of_years, is_spherical) VALUES 
('Halley', 1, 4500, false),
('Hale-Bopp', 2, 2300, false),
('Hyakutake', 3, 5000, false);
