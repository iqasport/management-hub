-- Update table

UPDATE referee_answers
SET question_uuid = q.uuid
FROM questions AS q
WHERE referee_answers.question_id = q.id;

-- Update table

UPDATE answers
SET question_uuid = q.uuid
FROM questions AS q
WHERE answers.question_id = q.id;