/* Database schema to keep the structure of entire database. */

DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(25),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL(10, 2)
);
