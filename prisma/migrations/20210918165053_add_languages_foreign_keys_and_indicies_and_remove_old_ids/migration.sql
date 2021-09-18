/*
  Warnings:

  - You are about to drop the column `language` on the `tests` table. All the data in the column will be lost.
  - You are about to drop the column `new_language_id` on the `tests` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "tests" DROP COLUMN "language",
DROP COLUMN "new_language_id";

-- CreateIndex
CREATE INDEX "tests_language_uuid_idx" ON "tests"("language_uuid");

-- AddForeignKey
ALTER TABLE "tests" ADD CONSTRAINT "tests_language_uuid_fkey" FOREIGN KEY ("language_uuid") REFERENCES "languages"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
