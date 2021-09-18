/*
  Warnings:

  - You are about to drop the `active_storage_attachments` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `active_storage_blobs` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ar_internal_metadata` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `data_migrations` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `exported_csvs` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `policy_manager_portability_requests` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "active_storage_attachments" DROP CONSTRAINT "fk_rails_c3b3935057";

-- DropForeignKey
ALTER TABLE "exported_csvs" DROP CONSTRAINT "exported_csvs_user_uuid_fkey";

-- DropForeignKey
ALTER TABLE "policy_manager_portability_requests" DROP CONSTRAINT "policy_manager_portability_requests_user_uuid_fkey";

-- DropTable
DROP TABLE "active_storage_attachments";

-- DropTable
DROP TABLE "active_storage_blobs";

-- DropTable
DROP TABLE "ar_internal_metadata";

-- DropTable
DROP TABLE "data_migrations";

-- DropTable
DROP TABLE "exported_csvs";

-- DropTable
DROP TABLE "policy_manager_portability_requests";
