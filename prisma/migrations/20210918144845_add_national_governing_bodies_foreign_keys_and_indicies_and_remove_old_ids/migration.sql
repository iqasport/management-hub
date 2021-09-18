/*
  Warnings:

  - You are about to drop the column `national_governing_body_id` on the `national_governing_body_admins` table. All the data in the column will be lost.
  - You are about to drop the column `national_governing_body_id` on the `national_governing_body_stats` table. All the data in the column will be lost.
  - You are about to drop the column `national_governing_body_id` on the `teams` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "national_governing_body_admins" DROP COLUMN "national_governing_body_id";

-- AlterTable
ALTER TABLE "national_governing_body_stats" DROP COLUMN "national_governing_body_id";

-- AlterTable
ALTER TABLE "teams" DROP COLUMN "national_governing_body_id";

-- CreateIndex
CREATE INDEX "national_governing_body_admins_national_governing_body_uuid_idx" ON "national_governing_body_admins"("national_governing_body_uuid");

-- CreateIndex
CREATE INDEX "national_governing_body_stats_national_governing_body_uuid_idx" ON "national_governing_body_stats"("national_governing_body_uuid");

-- CreateIndex
CREATE INDEX "teams_national_governing_body_uuid_idx" ON "teams"("national_governing_body_uuid");

-- AddForeignKey
ALTER TABLE "national_governing_body_admins" ADD CONSTRAINT "national_governing_body_admins_national_governing_body_uui_fkey" FOREIGN KEY ("national_governing_body_uuid") REFERENCES "national_governing_bodies"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "national_governing_body_stats" ADD CONSTRAINT "national_governing_body_stats_national_governing_body_uuid_fkey" FOREIGN KEY ("national_governing_body_uuid") REFERENCES "national_governing_bodies"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teams" ADD CONSTRAINT "teams_national_governing_body_uuid_fkey" FOREIGN KEY ("national_governing_body_uuid") REFERENCES "national_governing_bodies"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
