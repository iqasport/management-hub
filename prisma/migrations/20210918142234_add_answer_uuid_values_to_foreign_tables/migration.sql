-- Update table

UPDATE referee_answers
SET answer_uuid = a.uuid
FROM answers AS a
WHERE referee_answers.answer_id = a.id;