-- Update table

UPDATE referee_certifications
SET certification_uuid = c.uuid
FROM certifications AS c
WHERE referee_certifications.certification_id = c.id;

-- Update table

UPDATE tests
SET certification_uuid = c.uuid
FROM certifications AS c
WHERE tests.certification_id = c.id;

-- Update table

UPDATE certification_payments
SET certification_uuid = c.uuid
FROM certifications AS c
WHERE certification_payments.certification_id = c.id;