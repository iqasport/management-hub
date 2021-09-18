/*
  Warnings:

  - The primary key for the `questions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[id]` on the table `questions` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "questions_uuid_key";

-- AlterTable
ALTER TABLE "questions" DROP CONSTRAINT "questions_pkey",
ADD CONSTRAINT "questions_pkey" PRIMARY KEY ("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "questions_id_key" ON "questions"("id");
