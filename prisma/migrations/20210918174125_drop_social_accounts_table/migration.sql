/*
  Warnings:

  - You are about to drop the `social_accounts` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "social_accounts";

-- CreateIndex
CREATE INDEX "tests_language_uuid_idx" ON "tests"("language_uuid");

-- AddForeignKey
ALTER TABLE "tests" ADD CONSTRAINT "tests_language_uuid_fkey" FOREIGN KEY ("language_uuid") REFERENCES "languages"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
