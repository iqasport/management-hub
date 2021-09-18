/*
  Warnings:

  - You are about to drop the column `certification_id` on the `certification_payments` table. All the data in the column will be lost.
  - You are about to drop the column `certification_id` on the `referee_certifications` table. All the data in the column will be lost.
  - You are about to drop the column `certification_id` on the `tests` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "certification_payments" DROP COLUMN "certification_id";

-- AlterTable
ALTER TABLE "referee_certifications" DROP COLUMN "certification_id";

-- AlterTable
ALTER TABLE "tests" DROP COLUMN "certification_id";

-- CreateIndex
CREATE INDEX "certification_payments_certification_uuid_idx" ON "certification_payments"("certification_uuid");

-- CreateIndex
CREATE INDEX "referee_certifications_certification_uuid_idx" ON "referee_certifications"("certification_uuid");

-- CreateIndex
CREATE INDEX "tests_certification_uuid_idx" ON "tests"("certification_uuid");

-- AddForeignKey
ALTER TABLE "certification_payments" ADD CONSTRAINT "certification_payments_certification_uuid_fkey" FOREIGN KEY ("certification_uuid") REFERENCES "certifications"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "referee_certifications" ADD CONSTRAINT "referee_certifications_certification_uuid_fkey" FOREIGN KEY ("certification_uuid") REFERENCES "certifications"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tests" ADD CONSTRAINT "tests_certification_uuid_fkey" FOREIGN KEY ("certification_uuid") REFERENCES "certifications"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
