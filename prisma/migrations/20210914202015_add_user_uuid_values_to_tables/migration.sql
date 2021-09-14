-- Update table

UPDATE test_results
SET user_uuid = u.uuid
FROM users AS u
WHERE test_results.referee_id = u.id;

-- Update table

UPDATE referee_answers
SET user_uuid = u.uuid
FROM users AS u
WHERE referee_answers.referee_id = u.id;

-- Update table

UPDATE test_attempts
SET user_uuid = u.uuid
FROM users AS u
WHERE test_attempts.referee_id = u.id;

-- Update table

UPDATE referee_certifications
SET user_uuid = u.uuid
FROM users AS u
WHERE referee_certifications.referee_id = u.id;

-- Update table

UPDATE certification_payments
SET user_uuid = u.uuid
FROM users AS u
WHERE certification_payments.user_id = u.id;

-- Update table

UPDATE exported_csvs
SET user_uuid = u.uuid
FROM users AS u
WHERE exported_csvs.user_id = u.id;

-- Update table

UPDATE policy_manager_user_terms
SET user_uuid = u.uuid
FROM users AS u
WHERE policy_manager_user_terms.user_id = u.id;

-- Update table

UPDATE roles
SET user_uuid = u.uuid
FROM users AS u
WHERE roles.user_id = u.id;

-- Update table

UPDATE referee_teams
SET user_uuid = u.uuid
FROM users AS u
WHERE referee_teams.referee_id = u.id;

-- Update table

UPDATE referee_locations
SET user_uuid = u.uuid
FROM users AS u
WHERE referee_locations.referee_id = u.id;

-- Update table

UPDATE policy_manager_portability_requests
SET user_uuid = u.uuid
FROM users AS u
WHERE policy_manager_portability_requests.user_id = u.id;

-- Update table

UPDATE national_governing_body_admins
SET user_uuid = u.uuid
FROM users AS u
WHERE national_governing_body_admins.user_id = u.id;