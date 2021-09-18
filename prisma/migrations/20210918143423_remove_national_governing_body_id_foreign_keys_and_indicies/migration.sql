-- DropForeignKey
ALTER TABLE "national_governing_body_admins" DROP CONSTRAINT "fk_rails_e74edd8114";

-- DropForeignKey
ALTER TABLE "national_governing_body_stats" DROP CONSTRAINT "fk_rails_ce6124f60f";

-- DropForeignKey
ALTER TABLE "teams" DROP CONSTRAINT "fk_rails_d1c3a2117a";

-- DropIndex
DROP INDEX "index_national_governing_body_admins_on_ngb_id";

-- DropIndex
DROP INDEX "ngb_stats_on_ngb_id";

-- DropIndex
DROP INDEX "index_teams_on_national_governing_body_id";
