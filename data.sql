INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Agumon', '2020-02-03', 10.23, true, 0);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Gabumon', '2018-11-15', 8, true, 2);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Pikachu', '2021-01-07', 15.04, false, 1);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Devimon', '2017-05-12', 11, true, 5);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Charmander', '2020-02-08', 11, false, 0);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Plantmon', '2021-11-21', 5.7, true, 2);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Squirtle', '1993-04-02', 3, false, 12.13);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Angemon', '2005-06-12', 45, true, 0);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Boarmon', '2005-06-07', 20.4, true, 7);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Blossom', '1998-10-13', 17, true, 3);


INSERT INTO
  animals (
    name,
    date_of_birth,
    weight_kg,
    neutered,
    escape_attempts
  )
VALUES
  ('Ditto', '2022-05-14', 22, true, 4);


INSERT INTO
  owners (full_name, age)
VALUES
  ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);


INSERT INTO
  species (name)
VALUES
  ('Pokemon'),
  ('Digimon');


UPDATE
  animals
SET
  species_id = s.id
FROM
  species AS s
WHERE
  animals.name LIKE '%mon'
  AND s.name = 'Digimon';

UPDATE
  animals
SET
  species_id = s.id
FROM
  species AS s
WHERE
  animals.name NOT LIKE '%mon'
  AND s.name = 'Pokemon';

UPDATE
  animals
SET
  owner_id = o.id
FROM
  owners AS o
WHERE
  animals.name = 'Agumon'
  AND o.full_name = 'Sam Smith';

UPDATE
  animals
SET
  owner_id = o.id
FROM
  owners AS o
WHERE
  animals.name IN ('Gabumon', 'Pikachu')
  AND o.full_name = 'Jennifer Orwell';

UPDATE
  animals
SET
  owner_id = o.id
FROM
  owners AS o
WHERE
  animals.name IN ('Devimon', 'Plantmon')
  AND o.full_name = 'Bob';

UPDATE
  animals
SET
  owner_id = o.id
FROM
  owners AS o
WHERE
  animals.name IN ('Charmander', 'Squirtle', 'Blossom')
  AND o.full_name = 'Melody Pond';

UPDATE
  animals
SET
  owner_id = o.id
FROM
  owners AS o
WHERE
  animals.name IN ('Angemon', 'Boarmon')
  AND o.full_name = 'Dean Winchester';

INSERT INTO
  vets (name, age, date_of_graduation)
VALUES
  ('William Tatcher', 45, '2000-04-23'),
  ('Maisy Smith', 26, '2019-01-17'),
  ('Stephanie Mendez', 64, '1981-05-04'),
  ('Jack Harkness', 38, '2008-06-08');

INSERT INTO
  specializations (vet_id, species_id)
VALUES
  (
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'William Tatcher'
    ),
    (
      SELECT
        id
      FROM
        species
      WHERE
        name = 'Pokemon'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Stephanie Mendez'
    ),
    (
      SELECT
        id
      FROM
        species
      WHERE
        name = 'Digimon'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Stephanie Mendez'
    ),
    (
      SELECT
        id
      FROM
        species
      WHERE
        name = 'Pokemon'
    )
  ),
  (
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Jack Harkness'
    ),
    (
      SELECT
        id
      FROM
        species
      WHERE
        name = 'Digimon'
    )
  );

INSERT INTO
  visits (animal_id, vet_id, visit_date)
VALUES
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Agumon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'William Tatcher'
    ),
    '2020-05-24'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Agumon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Stephanie Mendez'
    ),
    '2020-07-22'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Gabumon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Jack Harkness'
    ),
    '2021-02-02'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Pikachu'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2020-01-05'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Pikachu'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2020-03-08'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Pikachu'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2020-05-14'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Devimon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Stephanie Mendez'
    ),
    '2021-05-04'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Charmander'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Jack Harkness'
    ),
    '2021-02-24'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Plantmon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2019-12-21'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Plantmon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'William Tatcher'
    ),
    '2020-08-10'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Plantmon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2021-04-07'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Squirtle'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Stephanie Mendez'
    ),
    '2019-09-29'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Angemon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Jack Harkness'
    ),
    '2020-10-03'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Angemon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Jack Harkness'
    ),
    '2020-11-04'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Boarmon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2019-01-24'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Boarmon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2019-05-15'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Boarmon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2020-02-27'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Boarmon'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Maisy Smith'
    ),
    '2020-08-03'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Blossom'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'Stephanie Mendez'
    ),
    '2020-05-24'
  ),
  (
    (
      SELECT
        id
      FROM
        animals
      WHERE
        name = 'Blossom'
    ),
    (
      SELECT
        id
      FROM
        vets
      WHERE
        name = 'William Tatcher'
    ),
    '2021-01-11'
  );

INSERT INTO
  visits (animal_id, vet_id, visit_date)
SELECT
  a.id,
  v.id,
  g.visit_date
FROM
  animals a
  CROSS JOIN vets v
  CROSS JOIN (
    SELECT
      visit_date_hour
    FROM
      generate_series(
        '1980-01-01 00:00:00':: timestamp,
        '2021-01-01 23:00:00':: timestamp,
        '1 hour'
      ) visit_date_hour
    UNION
    SELECT
      visit_date_four_hours
    FROM
      generate_series(
        '1980-01-01 00:00:00':: timestamp,
        '2021-01-01 23:00:00':: timestamp,
        '2 hours'
      ) visit_date_four_hours
  ) g(visit_date)
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      visits
    WHERE
      animal_id = a.id
      AND vet_id = v.id
      AND visit_date = g.visit_date
  );

INSERT INTO
  owners (full_name, email)
SELECT
  'Owner ' | | generate_series(1, 25000000),
  'owner_' | | generate_series(1, 25000000) | | '@mail.com';

EXPLAIN ANALYZE
SELECT
  COUNT(*)
FROM
  visits
WHERE
  animal_id = 4;

DROP INDEX IF EXISTS idx_visits_animal_id;

CREATE INDEX idx_visits_animal_id ON visits (animal_id);

EXPLAIN ANALYZE
SELECT
  COUNT(*)
FROM
  visits
WHERE
  animal_id = 4;

EXPLAIN ANALYZE
SELECT
  *
FROM
  visits
where
  vet_id = 2;

DROP INDEX IF EXISTS idx_visits_vet_id;

CREATE INDEX idx_visits_vet_id ON visits (vet_id);

EXPLAIN ANALYZE
SELECT
  *
FROM
  visits
where
  vet_id = 2;

EXPLAIN ANALYZE
SELECT
  *
FROM
  owners
where
  email = 'owner_18327@mail.com';

DROP INDEX IF EXISTS idx_owners_email;

CREATE INDEX idx_owners_email ON owners (email ASC);

EXPLAIN ANALYZE
SELECT
  *
FROM
  owners
where
  email = 'owner_18327@mail.com';
