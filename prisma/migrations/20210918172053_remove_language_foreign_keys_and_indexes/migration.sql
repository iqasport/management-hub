-- DropForeignKey
ALTER TABLE "tests" DROP CONSTRAINT "tests_language_uuid_fkey";

-- DropIndex
DROP INDEX "tests_language_uuid_idx";
