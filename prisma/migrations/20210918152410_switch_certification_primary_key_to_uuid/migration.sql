/*
  Warnings:

  - The primary key for the `certifications` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[id]` on the table `certifications` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "certifications_uuid_key";

-- AlterTable
ALTER TABLE "certifications" DROP CONSTRAINT "certifications_pkey",
ADD CONSTRAINT "certifications_pkey" PRIMARY KEY ("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "certifications_id_key" ON "certifications"("id");
