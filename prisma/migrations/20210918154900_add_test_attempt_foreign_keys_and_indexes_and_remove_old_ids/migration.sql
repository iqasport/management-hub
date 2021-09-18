/*
  Warnings:

  - You are about to drop the column `test_attempt_id` on the `referee_answers` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "referee_answers" DROP COLUMN "test_attempt_id";

-- CreateIndex
CREATE INDEX "referee_answers_test_attempt_uuid_idx" ON "referee_answers"("test_attempt_uuid");

-- AddForeignKey
ALTER TABLE "referee_answers" ADD CONSTRAINT "referee_answers_test_attempt_uuid_fkey" FOREIGN KEY ("test_attempt_uuid") REFERENCES "test_attempts"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
