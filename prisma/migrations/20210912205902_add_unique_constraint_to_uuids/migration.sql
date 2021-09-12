/*
  Warnings:

  - A unique constraint covering the columns `[uuid]` on the table `active_storage_attachments` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `active_storage_blobs` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `answers` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `certification_payments` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `certifications` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `exported_csvs` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `flipper_features` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `flipper_gates` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `languages` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `national_governing_bodies` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `national_governing_body_admins` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `national_governing_body_stats` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `policy_manager_portability_requests` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `policy_manager_terms` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `policy_manager_user_terms` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `questions` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `referee_answers` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `referee_certifications` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `referee_locations` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `referee_teams` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `roles` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `social_accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `teams` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `test_attempts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `test_results` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `tests` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uuid]` on the table `users` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "active_storage_attachments_uuid_key" ON "active_storage_attachments"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "active_storage_blobs_uuid_key" ON "active_storage_blobs"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "answers_uuid_key" ON "answers"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "certification_payments_uuid_key" ON "certification_payments"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "certifications_uuid_key" ON "certifications"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "exported_csvs_uuid_key" ON "exported_csvs"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "flipper_features_uuid_key" ON "flipper_features"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "flipper_gates_uuid_key" ON "flipper_gates"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "languages_uuid_key" ON "languages"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "national_governing_bodies_uuid_key" ON "national_governing_bodies"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "national_governing_body_admins_uuid_key" ON "national_governing_body_admins"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "national_governing_body_stats_uuid_key" ON "national_governing_body_stats"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "policy_manager_portability_requests_uuid_key" ON "policy_manager_portability_requests"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "policy_manager_terms_uuid_key" ON "policy_manager_terms"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "policy_manager_user_terms_uuid_key" ON "policy_manager_user_terms"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "questions_uuid_key" ON "questions"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "referee_answers_uuid_key" ON "referee_answers"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "referee_certifications_uuid_key" ON "referee_certifications"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "referee_locations_uuid_key" ON "referee_locations"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "referee_teams_uuid_key" ON "referee_teams"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "roles_uuid_key" ON "roles"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "social_accounts_uuid_key" ON "social_accounts"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "teams_uuid_key" ON "teams"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "test_attempts_uuid_key" ON "test_attempts"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "test_results_uuid_key" ON "test_results"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "tests_uuid_key" ON "tests"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "users_uuid_key" ON "users"("uuid");
