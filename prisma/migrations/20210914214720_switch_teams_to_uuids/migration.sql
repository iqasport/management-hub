/*
  Warnings:

  - You are about to drop the column `team_id` on the `referee_teams` table. All the data in the column will be lost.
  - You are about to drop the column `team_id` on the `team_status_changesets` table. All the data in the column will be lost.
  - The primary key for the `teams` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `teams` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "referee_teams" DROP COLUMN "team_id";

-- AlterTable
ALTER TABLE "team_status_changesets" DROP COLUMN "team_id";

-- AlterTable
ALTER TABLE "teams" DROP CONSTRAINT "teams_pkey",
DROP COLUMN "id",
ADD CONSTRAINT "teams_pkey" PRIMARY KEY ("uuid");
