/*
  Warnings:

  - The primary key for the `policy_manager_terms` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[id]` on the table `policy_manager_terms` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "policy_manager_terms_uuid_key";

-- AlterTable
ALTER TABLE "policy_manager_terms" DROP CONSTRAINT "policy_manager_terms_pkey",
ADD CONSTRAINT "policy_manager_terms_pkey" PRIMARY KEY ("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "policy_manager_terms_id_key" ON "policy_manager_terms"("id");
