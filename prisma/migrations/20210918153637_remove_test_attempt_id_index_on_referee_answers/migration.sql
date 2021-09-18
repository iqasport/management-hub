-- DropIndex
DROP INDEX "index_referee_answers_on_test_attempt_id";

-- AlterTable
ALTER TABLE "referee_answers" ADD COLUMN     "test_attempt_uuid" UUID;
