/*
  Warnings:

  - Made the column `team_uuid` on table `referee_teams` required. This step will fail if there are existing NULL values in that column.
  - Made the column `team_uuid` on table `team_status_changesets` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "referee_teams" ALTER COLUMN "team_uuid" SET NOT NULL;

-- AlterTable
ALTER TABLE "team_status_changesets" ALTER COLUMN "team_uuid" SET NOT NULL;

-- CreateIndex
CREATE INDEX "referee_teams_team_uuid_idx" ON "referee_teams"("team_uuid");

-- CreateIndex
CREATE INDEX "team_status_changesets_team_uuid_idx" ON "team_status_changesets"("team_uuid");

-- AddForeignKey
ALTER TABLE "referee_teams" ADD CONSTRAINT "referee_teams_team_uuid_fkey" FOREIGN KEY ("team_uuid") REFERENCES "teams"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "team_status_changesets" ADD CONSTRAINT "team_status_changesets_team_uuid_fkey" FOREIGN KEY ("team_uuid") REFERENCES "teams"("uuid") ON DELETE RESTRICT ON UPDATE CASCADE;
