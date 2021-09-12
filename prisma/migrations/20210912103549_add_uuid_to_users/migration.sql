CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "uuid" UUID NOT NULL DEFAULT uuid_generate_v4();
