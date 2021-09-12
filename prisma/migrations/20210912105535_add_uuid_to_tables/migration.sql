-- AlterTable
ALTER TABLE "active_storage_attachments" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "active_storage_blobs" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "answers" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "certification_payments" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "certifications" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "exported_csvs" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "flipper_features" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "flipper_gates" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "languages" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "national_governing_bodies" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "national_governing_body_admins" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "national_governing_body_stats" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "policy_manager_portability_requests" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "policy_manager_terms" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "policy_manager_user_terms" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "questions" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "referee_answers" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "referee_certifications" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "referee_locations" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "referee_teams" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "roles" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "social_accounts" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "teams" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "test_attempts" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "test_results" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();

-- AlterTable
ALTER TABLE "tests" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();
