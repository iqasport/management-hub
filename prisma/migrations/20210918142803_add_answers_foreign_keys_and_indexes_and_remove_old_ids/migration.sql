/*
  Warnings:

  - You are about to drop the column `answer_id` on the `referee_answers` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "referee_answers" DROP COLUMN "answer_id";

-- CreateIndex
CREATE INDEX "referee_answers_answer_uuid_idx" ON "referee_answers"("answer_uuid");

-- AddForeignKey
ALTER TABLE "referee_answers" ADD CONSTRAINT "referee_answers_answer_uuid_fkey" FOREIGN KEY ("answer_uuid") REFERENCES "answers"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
