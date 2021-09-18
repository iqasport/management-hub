/*
  Warnings:

  - The primary key for the `national_governing_bodies` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[id]` on the table `national_governing_bodies` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "national_governing_bodies_uuid_key";

-- AlterTable
ALTER TABLE "national_governing_bodies" DROP CONSTRAINT "national_governing_bodies_pkey",
ADD CONSTRAINT "national_governing_bodies_pkey" PRIMARY KEY ("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "national_governing_bodies_id_key" ON "national_governing_bodies"("id");
