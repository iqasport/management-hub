/*
  Warnings:

  - The primary key for the `test_attempts` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[id]` on the table `test_attempts` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "test_attempts_uuid_key";

-- AlterTable
ALTER TABLE "test_attempts" DROP CONSTRAINT "test_attempts_pkey",
ADD CONSTRAINT "test_attempts_pkey" PRIMARY KEY ("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "test_attempts_id_key" ON "test_attempts"("id");
