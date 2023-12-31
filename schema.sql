/* Database schema to keep the structure of entire database. */

DROP TABLE IF EXISTS animals CASCADE;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(25),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL(10, 2)
);

ALTER TABLE animals ADD COLUMN species VARCHAR(25);

DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(25),
  age INTEGER
);

DROP TABLE IF EXISTS species;

CREATE TABLE species (
  id SERIAL PRIMARY KEY,
  name VARCHAR(25)
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD COLUMN species_id INTEGER REFERENCES species(id);

ALTER TABLE animals ADD COLUMN owner_id INTEGER REFERENCES owners(id);

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
  visit_date DATE,
  PRIMARY KEY (animal_id, vet_id, visit_date)
);
