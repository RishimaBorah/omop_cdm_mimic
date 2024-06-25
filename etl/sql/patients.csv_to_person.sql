
INSERT INTO person
(
    person_id,
    gender_concept_id,
    year_of_birth,
    month_of_birth,
    day_of_birth,
    birth_datetime,
    race_concept_id,
    ethnicity_concept_id,
    location_id,
    provider_id,
    care_site_id,
    person_source_value,
    gender_source_value,
    gender_source_concept_id,
    race_source_value,
    race_source_concept_id,
    ethnicity_source_value,
    ethnicity_source_concept_id
)
SELECT
    patients.csv.subject_id AS person_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS gender_concept_id,

    patients.csv.anchor_year AS year_of_birth,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS month_of_birth,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS day_of_birth,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS birth_datetime,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS race_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS ethnicity_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS location_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS care_site_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS person_source_value,

    patients.csv.gender AS gender_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS gender_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS race_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS race_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS ethnicity_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
    NULL AS ethnicity_source_concept_id

FROM patients.csv
;