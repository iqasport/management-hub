/*
  Warnings:

  - You are about to drop the column `invitation_accepted_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `invitation_created_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `invitation_limit` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `invitation_sent_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `invitation_token` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `invitations_count` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `invited_by_id` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `invited_by_type` on the `users` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "index_users_on_invitation_token";

-- AlterTable
ALTER TABLE "users" DROP COLUMN "invitation_accepted_at",
DROP COLUMN "invitation_created_at",
DROP COLUMN "invitation_limit",
DROP COLUMN "invitation_sent_at",
DROP COLUMN "invitation_token",
DROP COLUMN "invitations_count",
DROP COLUMN "invited_by_id",
DROP COLUMN "invited_by_type";
