-- Update table

UPDATE national_governing_body_admins
SET national_governing_body_uuid = n.uuid
FROM national_governing_bodies AS n
WHERE national_governing_body_admins.national_governing_body_id = n.id;

-- Update table

UPDATE national_governing_body_stats
SET national_governing_body_uuid = n.uuid
FROM national_governing_bodies AS n
WHERE national_governing_body_stats.national_governing_body_id = n.id;

-- Update table

UPDATE referee_locations
SET national_governing_body_uuid = n.uuid
FROM national_governing_bodies AS n
WHERE referee_locations.national_governing_body_id = n.id;

-- Update table

UPDATE teams
SET national_governing_body_uuid = n.uuid
FROM national_governing_bodies AS n
WHERE teams.national_governing_body_id = n.id;