/*
  Warnings:

  - You are about to drop the column `user_id` on the `certification_payments` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `exported_csvs` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `national_governing_body_admins` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `policy_manager_portability_requests` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `policy_manager_user_terms` table. All the data in the column will be lost.
  - You are about to drop the column `referee_id` on the `referee_answers` table. All the data in the column will be lost.
  - You are about to drop the column `referee_id` on the `referee_certifications` table. All the data in the column will be lost.
  - You are about to drop the column `referee_id` on the `referee_locations` table. All the data in the column will be lost.
  - You are about to drop the column `referee_id` on the `referee_teams` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `roles` table. All the data in the column will be lost.
  - You are about to drop the column `referee_id` on the `test_attempts` table. All the data in the column will be lost.
  - You are about to drop the column `referee_id` on the `test_results` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "index_national_governing_body_admins_on_user_id";

-- AlterTable
ALTER TABLE "certification_payments" DROP COLUMN "user_id";

-- AlterTable
ALTER TABLE "exported_csvs" DROP COLUMN "user_id";

-- AlterTable
ALTER TABLE "national_governing_body_admins" DROP COLUMN "user_id";

-- AlterTable
ALTER TABLE "policy_manager_portability_requests" DROP COLUMN "user_id";

-- AlterTable
ALTER TABLE "policy_manager_user_terms" DROP COLUMN "user_id";

-- AlterTable
ALTER TABLE "referee_answers" DROP COLUMN "referee_id";

-- AlterTable
ALTER TABLE "referee_certifications" DROP COLUMN "referee_id";

-- AlterTable
ALTER TABLE "referee_locations" DROP COLUMN "referee_id";

-- AlterTable
ALTER TABLE "referee_teams" DROP COLUMN "referee_id";

-- AlterTable
ALTER TABLE "roles" DROP COLUMN "user_id";

-- AlterTable
ALTER TABLE "test_attempts" DROP COLUMN "referee_id";

-- AlterTable
ALTER TABLE "test_results" DROP COLUMN "referee_id";

-- CreateIndex
CREATE INDEX "exported_csvs_user_uuid_idx" ON "exported_csvs"("user_uuid");

-- CreateIndex
CREATE INDEX "national_governing_body_admins_user_uuid_idx" ON "national_governing_body_admins"("user_uuid");

-- CreateIndex
CREATE INDEX "policy_manager_portability_requests_user_uuid_idx" ON "policy_manager_portability_requests"("user_uuid");

-- CreateIndex
CREATE INDEX "policy_manager_user_terms_user_uuid_idx" ON "policy_manager_user_terms"("user_uuid");

-- CreateIndex
CREATE INDEX "referee_answers_user_uuid_idx" ON "referee_answers"("user_uuid");

-- CreateIndex
CREATE INDEX "referee_teams_user_uuid_idx" ON "referee_teams"("user_uuid");

-- CreateIndex
CREATE INDEX "roles_user_uuid_idx" ON "roles"("user_uuid");

-- CreateIndex
CREATE INDEX "roles_user_uuid_access_type_idx" ON "roles"("user_uuid", "access_type");

-- CreateIndex
CREATE INDEX "test_results_user_uuid_idx" ON "test_results"("user_uuid");
