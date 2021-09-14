-- DropForeignKey
ALTER TABLE "referee_teams" DROP CONSTRAINT "fk_rails_880aef8e7d";

-- DropForeignKey
ALTER TABLE "team_status_changesets" DROP CONSTRAINT "fk_rails_c3bc29f337";

-- DropIndex
DROP INDEX "index_referee_teams_on_team_id";

-- DropIndex
DROP INDEX "index_team_status_changesets_on_team_id";
