/*
  Warnings:

  - You are about to drop the column `term_id` on the `policy_manager_user_terms` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "policy_manager_user_terms" DROP COLUMN "term_id";

-- CreateIndex
CREATE INDEX "policy_manager_user_terms_term_uuid_idx" ON "policy_manager_user_terms"("term_uuid");

-- AddForeignKey
ALTER TABLE "policy_manager_user_terms" ADD CONSTRAINT "policy_manager_user_terms_term_uuid_fkey" FOREIGN KEY ("term_uuid") REFERENCES "policy_manager_terms"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
