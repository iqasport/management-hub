/*
  Warnings:

  - You are about to drop the column `test_id` on the `questions` table. All the data in the column will be lost.
  - You are about to drop the column `test_id` on the `referee_answers` table. All the data in the column will be lost.
  - You are about to drop the column `test_id` on the `test_attempts` table. All the data in the column will be lost.
  - You are about to drop the column `test_id` on the `test_results` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "questions" DROP COLUMN "test_id";

-- AlterTable
ALTER TABLE "referee_answers" DROP COLUMN "test_id";

-- AlterTable
ALTER TABLE "test_attempts" DROP COLUMN "test_id";

-- AlterTable
ALTER TABLE "test_results" DROP COLUMN "test_id";

-- CreateIndex
CREATE INDEX "questions_test_uuid_idx" ON "questions"("test_uuid");

-- CreateIndex
CREATE INDEX "referee_answers_test_uuid_idx" ON "referee_answers"("test_uuid");

-- CreateIndex
CREATE INDEX "test_attempts_user_uuid_idx" ON "test_attempts"("user_uuid");

-- CreateIndex
CREATE INDEX "test_attempts_test_uuid_idx" ON "test_attempts"("test_uuid");

-- CreateIndex
CREATE INDEX "test_results_test_uuid_idx" ON "test_results"("test_uuid");

-- AddForeignKey
ALTER TABLE "questions" ADD CONSTRAINT "questions_test_uuid_fkey" FOREIGN KEY ("test_uuid") REFERENCES "tests"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "referee_answers" ADD CONSTRAINT "referee_answers_test_uuid_fkey" FOREIGN KEY ("test_uuid") REFERENCES "tests"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "test_attempts" ADD CONSTRAINT "test_attempts_test_uuid_fkey" FOREIGN KEY ("test_uuid") REFERENCES "tests"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "test_results" ADD CONSTRAINT "test_results_test_uuid_fkey" FOREIGN KEY ("test_uuid") REFERENCES "tests"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
