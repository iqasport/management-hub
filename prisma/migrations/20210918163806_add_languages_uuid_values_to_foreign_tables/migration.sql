-- Update table

UPDATE tests
SET language_uuid = l.uuid
FROM languages AS l
WHERE tests.new_language_id = l.id;