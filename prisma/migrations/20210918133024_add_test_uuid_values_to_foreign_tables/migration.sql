-- Update table

UPDATE questions
SET test_uuid = t.uuid
FROM tests AS t
WHERE questions.test_id = t.id;

-- Update table

UPDATE referee_answers
SET test_uuid = t.uuid
FROM tests AS t
WHERE referee_answers.test_id = t.id;

-- Update table

UPDATE test_attempts
SET test_uuid = t.uuid
FROM tests AS t
WHERE test_attempts.test_id = t.id;

-- Update table

UPDATE test_results
SET test_uuid = t.uuid
FROM tests AS t
WHERE test_results.test_id = t.id;