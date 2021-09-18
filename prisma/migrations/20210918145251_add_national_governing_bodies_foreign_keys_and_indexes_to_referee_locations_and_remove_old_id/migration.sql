/*
  Warnings:

  - You are about to drop the column `national_governing_body_id` on the `referee_locations` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "referee_locations" DROP COLUMN "national_governing_body_id";

-- CreateIndex
CREATE INDEX "referee_locations_national_governing_body_uuid_idx" ON "referee_locations"("national_governing_body_uuid");

-- AddForeignKey
ALTER TABLE "referee_locations" ADD CONSTRAINT "referee_locations_national_governing_body_uuid_fkey" FOREIGN KEY ("national_governing_body_uuid") REFERENCES "national_governing_bodies"("uuid") ON DELETE SET NULL ON UPDATE CASCADE;
