/*
  Warnings:

  - You are about to drop the column `id` on the `answers` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `certifications` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `national_governing_bodies` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `policy_manager_terms` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `questions` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `test_attempts` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `tests` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `users` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "answers_id_key";

-- DropIndex
DROP INDEX "certifications_id_key";

-- DropIndex
DROP INDEX "national_governing_bodies_id_key";

-- DropIndex
DROP INDEX "policy_manager_terms_id_key";

-- DropIndex
DROP INDEX "questions_id_key";

-- DropIndex
DROP INDEX "test_attempts_id_key";

-- DropIndex
DROP INDEX "tests_id_key";

-- DropIndex
DROP INDEX "users_id_key";

-- AlterTable
ALTER TABLE "answers" DROP COLUMN "id";

-- AlterTable
ALTER TABLE "certifications" DROP COLUMN "id";

-- AlterTable
ALTER TABLE "national_governing_bodies" DROP COLUMN "id";

-- AlterTable
ALTER TABLE "policy_manager_terms" DROP COLUMN "id";

-- AlterTable
ALTER TABLE "questions" DROP COLUMN "id";

-- AlterTable
ALTER TABLE "test_attempts" DROP COLUMN "id";

-- AlterTable
ALTER TABLE "tests" DROP COLUMN "id";

-- AlterTable
ALTER TABLE "users" DROP COLUMN "id";
