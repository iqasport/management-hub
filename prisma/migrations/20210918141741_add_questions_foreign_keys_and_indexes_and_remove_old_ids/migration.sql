/*
  Warnings:

  - You are about to drop the column `question_id` on the `answers` table. All the data in the column will be lost.
  - You are about to drop the column `question_id` on the `referee_answers` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "answers" DROP COLUMN "question_id";

-- AlterTable
ALTER TABLE "referee_answers" DROP COLUMN "question_id";

-- CreateIndex
CREATE INDEX "answers_question_uuid_idx" ON "answers"("question_uuid");

-- CreateIndex
CREATE INDEX "referee_answers_question_uuid_idx" ON "referee_answers"("question_uuid");

-- AddForeignKey
ALTER TABLE "answers" ADD CONSTRAINT "answers_question_uuid_fkey" FOREIGN KEY ("question_uuid") REFERENCES "questions"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "referee_answers" ADD CONSTRAINT "referee_answers_question_uuid_fkey" FOREIGN KEY ("question_uuid") REFERENCES "questions"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
