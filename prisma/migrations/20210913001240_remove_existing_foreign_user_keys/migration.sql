-- DropForeignKey
ALTER TABLE "national_governing_body_admins" DROP CONSTRAINT "national_governing_body_admins_user_id_fkey";

-- DropForeignKey
ALTER TABLE "referee_teams" DROP CONSTRAINT "referee_teams_referee_id_fkey";

-- DropForeignKey
ALTER TABLE "roles" DROP CONSTRAINT "roles_user_id_fkey";

-- DropIndex
DROP INDEX "index_exported_csvs_on_user_id";

-- DropIndex
DROP INDEX "index_policy_manager_portability_requests_on_user_id";

-- DropIndex
DROP INDEX "index_policy_manager_user_terms_on_user_id";

-- DropIndex
DROP INDEX "index_referee_answers_on_referee_id";

-- DropIndex
DROP INDEX "referee_locations_referee_id_national_governing_body_id_key";

-- DropIndex
DROP INDEX "index_referee_teams_on_referee_id";

-- DropIndex
DROP INDEX "referee_teams_referee_id_association_type_key";

-- DropIndex
DROP INDEX "index_roles_on_user_id";

-- DropIndex
DROP INDEX "roles_user_id_access_type_key";

-- DropIndex
DROP INDEX "index_test_results_on_referee_id";
