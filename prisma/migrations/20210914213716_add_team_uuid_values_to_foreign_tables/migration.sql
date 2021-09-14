-- Update table

UPDATE referee_teams
SET team_uuid = t.uuid
FROM teams AS t
WHERE referee_teams.team_id = t.id;

-- Update table

UPDATE team_status_changesets
SET team_uuid = t.uuid
FROM teams AS t
WHERE team_status_changesets.team_id = t.id;
