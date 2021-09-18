/*
  Warnings:

  - You are about to drop the column `language_id` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `language_uuid` on the `users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "users" DROP COLUMN "language_id",
DROP COLUMN "language_uuid";
