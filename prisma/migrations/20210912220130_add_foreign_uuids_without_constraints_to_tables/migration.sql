-- AlterTable
ALTER TABLE "certification_payments" ADD COLUMN     "certification_uuid" UUID,
ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "exported_csvs" ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "policy_manager_user_terms" ADD COLUMN     "term_uuid" UUID,
ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "questions" ADD COLUMN     "test_uuid" UUID;

-- AlterTable
ALTER TABLE "referee_answers" ADD COLUMN     "answer_uuid" UUID,
ADD COLUMN     "question_uuid" UUID,
ADD COLUMN     "test_uuid" UUID,
ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "referee_certifications" ADD COLUMN     "user_uuid" UUID;

-- AlterTable
ALTER TABLE "test_results" ADD COLUMN     "user_uuid" UUID;
