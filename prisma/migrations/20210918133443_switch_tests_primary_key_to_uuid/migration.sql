/*
  Warnings:

  - The primary key for the `tests` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[id]` on the table `tests` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "tests_uuid_key";

-- AlterTable
ALTER TABLE "tests" DROP CONSTRAINT "tests_pkey",
ADD CONSTRAINT "tests_pkey" PRIMARY KEY ("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "tests_id_key" ON "tests"("id");
