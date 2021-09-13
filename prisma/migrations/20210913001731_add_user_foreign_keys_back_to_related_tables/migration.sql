/*
  Warnings:

  - A unique constraint covering the columns `[user_uuid]` on the table `national_governing_body_admins` will be added. If there are existing duplicate values, this will fail.
  - Made the column `user_uuid` on table `certification_payments` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `exported_csvs` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `national_governing_body_admins` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `policy_manager_portability_requests` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `policy_manager_user_terms` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `referee_answers` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `referee_certifications` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `referee_locations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `referee_teams` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `roles` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `test_attempts` required. This step will fail if there are existing NULL values in that column.
  - Made the column `user_uuid` on table `test_results` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "certification_payments" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "exported_csvs" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "national_governing_body_admins" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "policy_manager_portability_requests" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "policy_manager_user_terms" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "referee_answers" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "referee_certifications" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "referee_locations" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "referee_teams" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "roles" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "test_attempts" ALTER COLUMN "user_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "test_results" ALTER COLUMN "user_uuid" SET NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "national_governing_body_admins_user_uuid_unique" ON "national_governing_body_admins"("user_uuid");

-- AddForeignKey
ALTER TABLE "certification_payments" ADD CONSTRAINT "certification_payments_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "exported_csvs" ADD CONSTRAINT "exported_csvs_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "national_governing_body_admins" ADD CONSTRAINT "national_governing_body_admins_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "policy_manager_user_terms" ADD CONSTRAINT "policy_manager_user_terms_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "referee_answers" ADD CONSTRAINT "referee_answers_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "referee_certifications" ADD CONSTRAINT "referee_certifications_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "referee_teams" ADD CONSTRAINT "referee_teams_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "roles" ADD CONSTRAINT "roles_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "test_attempts" ADD CONSTRAINT "test_attempts_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "test_results" ADD CONSTRAINT "test_results_user_uuid_fkey" FOREIGN KEY ("user_uuid") REFERENCES "users"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;
