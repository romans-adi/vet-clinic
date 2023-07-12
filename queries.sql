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
