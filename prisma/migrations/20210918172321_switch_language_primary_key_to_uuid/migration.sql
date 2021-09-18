/*
  Warnings:

  - The primary key for the `languages` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `languages` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "languages_uuid_key";

-- AlterTable
ALTER TABLE "languages" DROP CONSTRAINT "languages_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "languages_pkey" PRIMARY KEY ("uuid");
