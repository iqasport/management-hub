-- Update table

UPDATE policy_manager_user_terms
SET term_uuid = p.uuid
FROM policy_manager_terms AS p
WHERE policy_manager_user_terms.term_id = p.id;