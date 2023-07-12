/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT normal_weight;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO SAVEPOINT normal_weight;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) AS total_animals FROM animals;
SELECT COUNT(*) AS total_no_escape FROM animals WHERE escape_attempts = 0;
SELECT TO_CHAR(AVG(weight_kg), 'FM999.009	') AS avg_weight FROM animals;
SELECT neutered, COUNT(*) AS total_escapes FROM animals WHERE escape_attempts > 0 GROUP BY neutered ORDER BY total_escapes DESC;
SELECT species, TO_CHAR(MIN(weight_kg), 'FM999.009	') AS min_weight, TO_CHAR(MAX(weight_kg), 'FM999.009') AS max_weight FROM animals GROUP BY species;
SELECT TO_CHAR(AVG(escape_attempts), 'FM999.009') AS avg_escape_attempts FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

SELECT a.name FROM animals AS a JOIN owners AS o ON a.owner_id = o.id WHERE o.full_name = 'Melody Pond';
SELECT a.name FROM animals AS a JOIN species AS s ON a.species_id = s.id WHERE s.name = 'Pokemon';
SELECT o.full_name, a.name FROM owners AS o LEFT JOIN animals AS a ON o.id = a.owner_id;
SELECT s.name, COUNT(a.id) AS animal_count FROM species AS s LEFT JOIN animals AS a ON s.id = a.species_id GROUP BY s.name;
SELECT a.name FROM animals AS a JOIN species AS s ON a.species_id = s.id JOIN owners AS o ON a.owner_id = o.id WHERE s.name = 'Digimon' AND o.full_name = 'Jennifer Orwell';
SELECT a.name FROM animals AS a JOIN owners AS o ON a.owner_id = o.id WHERE o.full_name = 'Dean Winchester' AND a.escape_attempts = 0;
SELECT o.full_name, COUNT(a.id) AS animal_count FROM owners AS o LEFT JOIN animals AS a ON o.id = a.owner_id GROUP BY o.full_name ORDER BY animal_count DESC LIMIT 1;
