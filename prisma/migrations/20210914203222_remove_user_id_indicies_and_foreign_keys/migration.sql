-- DropForeignKey
ALTER TABLE "national_governing_body_admins" DROP CONSTRAINT "fk_rails_c6796ff8f7";

-- DropForeignKey
ALTER TABLE "referee_teams" DROP CONSTRAINT "fk_rails_f8aaa19a7b";

-- DropForeignKey
ALTER TABLE "roles" DROP CONSTRAINT "fk_rails_ab35d699f0";

-- DropIndex
DROP INDEX "index_exported_csvs_on_user_id";

-- DropIndex
DROP INDEX "index_policy_manager_portability_requests_on_user_id";

-- DropIndex
DROP INDEX "index_policy_manager_user_terms_on_user_id";

-- DropIndex
DROP INDEX "index_referee_answers_on_referee_id";

-- DropIndex
DROP INDEX "index_referee_locations_on_referee_id_and_ngb_id";

-- DropIndex
DROP INDEX "index_referee_teams_on_referee_id";

-- DropIndex
DROP INDEX "index_referee_teams_on_referee_id_and_association_type";

-- DropIndex
DROP INDEX "index_roles_on_user_id";

-- DropIndex
DROP INDEX "index_roles_on_user_id_and_access_type";

-- DropIndex
DROP INDEX "index_test_results_on_referee_id";
