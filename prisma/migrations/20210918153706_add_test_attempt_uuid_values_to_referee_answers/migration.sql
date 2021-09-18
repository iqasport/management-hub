-- Update table

UPDATE referee_answers
SET test_attempt_uuid = t.uuid
FROM test_attempts AS t
WHERE referee_answers.test_attempt_id = t.id;