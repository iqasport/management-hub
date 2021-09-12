-- AlterTable
ALTER TABLE "policy_manager_portability_requests" ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "referee_locations" ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "referee_teams" ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "roles" ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "test_attempts" ADD COLUMN     "user_uuid" UUID;
