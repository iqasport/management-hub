/*
  Warnings:

  - The primary key for the `certification_payments` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `certification_payments` table. All the data in the column will be lost.
  - The primary key for the `exported_csvs` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `exported_csvs` table. All the data in the column will be lost.
  - The primary key for the `national_governing_body_admins` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `national_governing_body_admins` table. All the data in the column will be lost.
  - The primary key for the `national_governing_body_stats` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `national_governing_body_stats` table. All the data in the column will be lost.
  - The primary key for the `policy_manager_portability_requests` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `policy_manager_portability_requests` table. All the data in the column will be lost.
  - The primary key for the `policy_manager_user_terms` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `policy_manager_user_terms` table. All the data in the column will be lost.
  - The primary key for the `referee_answers` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `referee_answers` table. All the data in the column will be lost.
  - The primary key for the `referee_certifications` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `referee_certifications` table. All the data in the column will be lost.
  - The primary key for the `referee_locations` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `referee_locations` table. All the data in the column will be lost.
  - The primary key for the `referee_teams` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `referee_teams` table. All the data in the column will be lost.
  - The primary key for the `roles` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `roles` table. All the data in the column will be lost.
  - The primary key for the `social_accounts` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `social_accounts` table. All the data in the column will be lost.
  - The primary key for the `team_status_changesets` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `team_status_changesets` table. All the data in the column will be lost.
  - The primary key for the `test_results` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `test_results` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "certification_payments_uuid_key";

-- DropIndex
DROP INDEX "exported_csvs_uuid_key";

-- DropIndex
DROP INDEX "national_governing_body_admins_uuid_key";

-- DropIndex
DROP INDEX "national_governing_body_stats_uuid_key";

-- DropIndex
DROP INDEX "policy_manager_portability_requests_uuid_key";

-- DropIndex
DROP INDEX "policy_manager_user_terms_uuid_key";

-- DropIndex
DROP INDEX "referee_answers_uuid_key";

-- DropIndex
DROP INDEX "referee_certifications_uuid_key";

-- DropIndex
DROP INDEX "referee_locations_uuid_key";

-- DropIndex
DROP INDEX "referee_teams_uuid_key";

-- DropIndex
DROP INDEX "roles_uuid_key";

-- DropIndex
DROP INDEX "social_accounts_uuid_key";

-- DropIndex
DROP INDEX "team_status_changesets_uuid_key";

-- DropIndex
DROP INDEX "test_results_uuid_key";

-- AlterTable
ALTER TABLE "certification_payments" DROP CONSTRAINT "certification_payments_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "certification_payments_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "exported_csvs" DROP CONSTRAINT "exported_csvs_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "exported_csvs_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "national_governing_body_admins" DROP CONSTRAINT "national_governing_body_admins_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "national_governing_body_admins_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "national_governing_body_stats" DROP CONSTRAINT "national_governing_body_stats_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "national_governing_body_stats_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "policy_manager_portability_requests" DROP CONSTRAINT "policy_manager_portability_requests_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "policy_manager_portability_requests_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "policy_manager_user_terms" DROP CONSTRAINT "policy_manager_user_terms_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "policy_manager_user_terms_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "referee_answers" DROP CONSTRAINT "referee_answers_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "referee_answers_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "referee_certifications" DROP CONSTRAINT "referee_certifications_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "referee_certifications_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "referee_locations" DROP CONSTRAINT "referee_locations_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "referee_locations_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "referee_teams" DROP CONSTRAINT "referee_teams_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "referee_teams_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "roles" DROP CONSTRAINT "roles_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "roles_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "social_accounts" DROP CONSTRAINT "social_accounts_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "social_accounts_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "team_status_changesets" DROP CONSTRAINT "team_status_changesets_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "team_status_changesets_pkey" PRIMARY KEY ("uuid");

-- AlterTable
ALTER TABLE "test_results" DROP CONSTRAINT "test_results_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "test_results_pkey" PRIMARY KEY ("uuid");
