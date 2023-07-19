DROP SCHEMA public CASCADE;

CREATE SCHEMA public;

DROP TABLE IF EXISTS animals CASCADE;
DROP TABLE IF EXISTS owners CASCADE;
DROP TABLE IF EXISTS species CASCADE;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(25),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL(10, 2),
  owner_id INTEGER REFERENCES owners(id),
  species_id INTEGER REFERENCES species(id)
);

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(25),
  age INTEGER,
  email VARCHAR(120)
);

CREATE TABLE species (id SERIAL PRIMARY KEY, name VARCHAR(25));

CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR (25),
  age INTEGER,
  date_of_graduation DATE
);

CREATE TABLE specializations (
  vet_id INTEGER REFERENCES vets (id),
  species_id INTEGER REFERENCES species (id),
  PRIMARY KEY (vet_id, species_id)
);

CREATE TABLE visits (
  animal_id INTEGER REFERENCES animals (id),
  vet_id INTEGER REFERENCES vets (id),
  visit_date DATE
);
