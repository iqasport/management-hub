/*
  Warnings:

  - The primary key for the `answers` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[id]` on the table `answers` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "answers_uuid_key";

-- AlterTable
ALTER TABLE "answers" DROP CONSTRAINT "answers_pkey",
ADD CONSTRAINT "answers_pkey" PRIMARY KEY ("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "answers_id_key" ON "answers"("id");
