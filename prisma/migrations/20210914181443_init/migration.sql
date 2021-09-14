-- CreateTable
CREATE TABLE "active_storage_attachments" (
    "id" BIGSERIAL NOT NULL,
    "name" VARCHAR NOT NULL,
    "record_type" VARCHAR NOT NULL,
    "record_id" BIGINT NOT NULL,
    "blob_id" BIGINT NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "active_storage_attachments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "active_storage_blobs" (
    "id" BIGSERIAL NOT NULL,
    "key" VARCHAR NOT NULL,
    "filename" VARCHAR NOT NULL,
    "content_type" VARCHAR,
    "metadata" TEXT,
    "byte_size" BIGINT NOT NULL,
    "checksum" VARCHAR NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "active_storage_blobs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "answers" (
    "id" BIGSERIAL NOT NULL,
    "question_id" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "correct" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "answers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ar_internal_metadata" (
    "key" VARCHAR NOT NULL,
    "value" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "ar_internal_metadata_pkey" PRIMARY KEY ("key")
);

-- CreateTable
CREATE TABLE "certification_payments" (
    "id" BIGSERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,
    "certification_id" INTEGER NOT NULL,
    "stripe_session_id" VARCHAR NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "certification_payments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "certifications" (
    "id" BIGSERIAL NOT NULL,
    "level" INTEGER NOT NULL,
    "display_name" VARCHAR NOT NULL DEFAULT E'',
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "version" INTEGER DEFAULT 0,

    CONSTRAINT "certifications_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "data_migrations" (
    "version" VARCHAR NOT NULL,

    CONSTRAINT "data_migrations_pkey" PRIMARY KEY ("version")
);

-- CreateTable
CREATE TABLE "exported_csvs" (
    "id" BIGSERIAL NOT NULL,
    "type" VARCHAR,
    "user_id" INTEGER NOT NULL,
    "url" VARCHAR,
    "processed_at" TIMESTAMP(6),
    "sent_at" TIMESTAMP(6),
    "export_options" JSON NOT NULL DEFAULT E'{}',
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "exported_csvs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "flipper_features" (
    "id" BIGSERIAL NOT NULL,
    "key" VARCHAR NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "flipper_features_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "flipper_gates" (
    "id" BIGSERIAL NOT NULL,
    "feature_key" VARCHAR NOT NULL,
    "key" VARCHAR NOT NULL,
    "value" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "flipper_gates_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "languages" (
    "id" BIGSERIAL NOT NULL,
    "long_name" VARCHAR NOT NULL DEFAULT E'english',
    "short_name" VARCHAR NOT NULL DEFAULT E'en',
    "long_region" VARCHAR,
    "short_region" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "languages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "national_governing_bodies" (
    "id" BIGSERIAL NOT NULL,
    "name" VARCHAR NOT NULL,
    "website" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "player_count" INTEGER NOT NULL DEFAULT 0,
    "image_url" VARCHAR,
    "country" VARCHAR,
    "acronym" VARCHAR,
    "region" INTEGER,
    "membership_status" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "national_governing_bodies_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "national_governing_body_admins" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT NOT NULL,
    "national_governing_body_id" BIGINT NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "national_governing_body_admins_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "national_governing_body_stats" (
    "id" BIGSERIAL NOT NULL,
    "national_governing_body_id" BIGINT,
    "total_referees_count" INTEGER DEFAULT 0,
    "head_referees_count" INTEGER DEFAULT 0,
    "assistant_referees_count" INTEGER DEFAULT 0,
    "snitch_referees_count" INTEGER DEFAULT 0,
    "competitive_teams_count" INTEGER DEFAULT 0,
    "developing_teams_count" INTEGER DEFAULT 0,
    "inactive_teams_count" INTEGER DEFAULT 0,
    "youth_teams_count" INTEGER DEFAULT 0,
    "university_teams_count" INTEGER DEFAULT 0,
    "community_teams_count" INTEGER DEFAULT 0,
    "team_status_change_count" INTEGER DEFAULT 0,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "total_teams_count" INTEGER DEFAULT 0,
    "uncertified_count" INTEGER DEFAULT 0,
    "start" TIMESTAMP(6),
    "end_time" TIMESTAMP(6),
    "scorekeeper_referees_count" INTEGER DEFAULT 0,

    CONSTRAINT "national_governing_body_stats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "policy_manager_portability_requests" (
    "id" BIGSERIAL NOT NULL,
    "user_id" INTEGER,
    "state" VARCHAR,
    "expire_at" TIMESTAMP(6),
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "policy_manager_portability_requests_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "policy_manager_terms" (
    "id" BIGSERIAL NOT NULL,
    "description" TEXT,
    "rule" VARCHAR,
    "state" VARCHAR,
    "accepted_at" TIMESTAMP(6),
    "rejected_at" TIMESTAMP(6),
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "policy_manager_terms_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "policy_manager_user_terms" (
    "id" BIGSERIAL NOT NULL,
    "user_id" INTEGER,
    "term_id" INTEGER,
    "state" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "policy_manager_user_terms_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "questions" (
    "id" BIGSERIAL NOT NULL,
    "test_id" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "points_available" INTEGER NOT NULL DEFAULT 1,
    "feedback" TEXT,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "questions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "referee_answers" (
    "id" BIGSERIAL NOT NULL,
    "referee_id" BIGINT NOT NULL,
    "test_id" BIGINT NOT NULL,
    "question_id" BIGINT NOT NULL,
    "answer_id" BIGINT NOT NULL,
    "test_attempt_id" BIGINT NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "referee_answers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "referee_certifications" (
    "id" BIGSERIAL NOT NULL,
    "referee_id" INTEGER NOT NULL,
    "certification_id" INTEGER NOT NULL,
    "received_at" TIMESTAMP(6),
    "revoked_at" TIMESTAMP(6),
    "renewed_at" TIMESTAMP(6),
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "needs_renewal_at" TIMESTAMP(6),

    CONSTRAINT "referee_certifications_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "referee_locations" (
    "id" BIGSERIAL NOT NULL,
    "referee_id" INTEGER NOT NULL,
    "national_governing_body_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "association_type" INTEGER DEFAULT 0,

    CONSTRAINT "referee_locations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "referee_teams" (
    "id" BIGSERIAL NOT NULL,
    "team_id" BIGINT,
    "referee_id" BIGINT,
    "association_type" INTEGER DEFAULT 0,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "referee_teams_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "roles" (
    "id" BIGSERIAL NOT NULL,
    "user_id" BIGINT,
    "access_type" INTEGER NOT NULL DEFAULT 0,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "roles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "schema_migrations" (
    "version" VARCHAR NOT NULL,

    CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version")
);

-- CreateTable
CREATE TABLE "social_accounts" (
    "id" BIGSERIAL NOT NULL,
    "ownable_type" VARCHAR,
    "ownable_id" BIGINT,
    "url" VARCHAR NOT NULL,
    "account_type" INTEGER NOT NULL DEFAULT 0,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "social_accounts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "team_status_changesets" (
    "id" BIGSERIAL NOT NULL,
    "team_id" BIGINT,
    "previous_status" VARCHAR,
    "new_status" VARCHAR,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "team_status_changesets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "teams" (
    "id" BIGSERIAL NOT NULL,
    "name" VARCHAR NOT NULL,
    "city" VARCHAR NOT NULL,
    "state" VARCHAR,
    "country" VARCHAR NOT NULL,
    "status" INTEGER DEFAULT 0,
    "group_affiliation" INTEGER DEFAULT 0,
    "national_governing_body_id" BIGINT,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "joined_at" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "teams_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "test_attempts" (
    "id" BIGSERIAL NOT NULL,
    "test_id" INTEGER,
    "referee_id" INTEGER,
    "test_level" INTEGER,
    "next_attempt_at" TIMESTAMP(6),
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,

    CONSTRAINT "test_attempts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "test_results" (
    "id" BIGSERIAL NOT NULL,
    "referee_id" INTEGER NOT NULL,
    "time_started" TIME(6),
    "time_finished" TIME(6),
    "duration" VARCHAR,
    "percentage" INTEGER,
    "points_scored" INTEGER,
    "points_available" INTEGER,
    "passed" BOOLEAN,
    "certificate_url" VARCHAR,
    "minimum_pass_percentage" INTEGER,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "test_level" INTEGER DEFAULT 0,
    "test_id" INTEGER,

    CONSTRAINT "test_results_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tests" (
    "id" BIGSERIAL NOT NULL,
    "level" INTEGER DEFAULT 0,
    "name" VARCHAR,
    "certification_id" INTEGER,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "description" TEXT NOT NULL,
    "time_limit" INTEGER NOT NULL DEFAULT 18,
    "minimum_pass_percentage" INTEGER NOT NULL DEFAULT 80,
    "positive_feedback" TEXT,
    "negative_feedback" TEXT,
    "language" VARCHAR,
    "active" BOOLEAN NOT NULL DEFAULT false,
    "testable_question_count" INTEGER NOT NULL DEFAULT 0,
    "recertification" BOOLEAN DEFAULT false,
    "new_language_id" INTEGER,

    CONSTRAINT "tests_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "users" (
    "id" BIGSERIAL NOT NULL,
    "email" VARCHAR NOT NULL DEFAULT E'',
    "encrypted_password" VARCHAR NOT NULL DEFAULT E'',
    "reset_password_token" VARCHAR,
    "reset_password_sent_at" TIMESTAMP(6),
    "remember_created_at" TIMESTAMP(6),
    "sign_in_count" INTEGER NOT NULL DEFAULT 0,
    "current_sign_in_at" TIMESTAMP(6),
    "last_sign_in_at" TIMESTAMP(6),
    "current_sign_in_ip" INET,
    "last_sign_in_ip" INET,
    "first_name" VARCHAR,
    "last_name" VARCHAR,
    "bio" TEXT,
    "pronouns" VARCHAR,
    "show_pronouns" BOOLEAN DEFAULT false,
    "created_at" TIMESTAMP(6) NOT NULL,
    "updated_at" TIMESTAMP(6) NOT NULL,
    "submitted_payment_at" TIMESTAMP(6),
    "admin" BOOLEAN DEFAULT false,
    "confirmation_token" VARCHAR,
    "confirmed_at" TIMESTAMP(6),
    "confirmation_sent_at" TIMESTAMP(6),
    "failed_attempts" INTEGER NOT NULL DEFAULT 0,
    "unlock_token" VARCHAR,
    "locked_at" TIMESTAMP(6),
    "invitation_token" VARCHAR,
    "invitation_created_at" TIMESTAMP(6),
    "invitation_sent_at" TIMESTAMP(6),
    "invitation_accepted_at" TIMESTAMP(6),
    "invitation_limit" INTEGER,
    "invited_by_type" VARCHAR,
    "invited_by_id" BIGINT,
    "invitations_count" INTEGER DEFAULT 0,
    "export_name" BOOLEAN DEFAULT true,
    "stripe_customer_id" VARCHAR,
    "language_id" INTEGER,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments"("blob_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments"("record_type", "record_id", "name", "blob_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs"("key");

-- CreateIndex
CREATE UNIQUE INDEX "index_certifications_on_level_and_version" ON "certifications"("level", "version");

-- CreateIndex
CREATE INDEX "index_exported_csvs_on_user_id" ON "exported_csvs"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_flipper_features_on_key" ON "flipper_features"("key");

-- CreateIndex
CREATE UNIQUE INDEX "index_flipper_gates_on_feature_key_and_key_and_value" ON "flipper_gates"("feature_key", "key", "value");

-- CreateIndex
CREATE INDEX "index_national_governing_bodies_on_region" ON "national_governing_bodies"("region");

-- CreateIndex
CREATE UNIQUE INDEX "index_national_governing_body_admins_on_user_id" ON "national_governing_body_admins"("user_id");

-- CreateIndex
CREATE INDEX "index_national_governing_body_admins_on_ngb_id" ON "national_governing_body_admins"("national_governing_body_id");

-- CreateIndex
CREATE INDEX "ngb_stats_on_ngb_id" ON "national_governing_body_stats"("national_governing_body_id");

-- CreateIndex
CREATE INDEX "index_policy_manager_portability_requests_on_user_id" ON "policy_manager_portability_requests"("user_id");

-- CreateIndex
CREATE INDEX "index_policy_manager_user_terms_on_state" ON "policy_manager_user_terms"("state");

-- CreateIndex
CREATE INDEX "index_policy_manager_user_terms_on_term_id" ON "policy_manager_user_terms"("term_id");

-- CreateIndex
CREATE INDEX "index_policy_manager_user_terms_on_user_id" ON "policy_manager_user_terms"("user_id");

-- CreateIndex
CREATE INDEX "index_referee_answers_on_answer_id" ON "referee_answers"("answer_id");

-- CreateIndex
CREATE INDEX "index_referee_answers_on_question_id" ON "referee_answers"("question_id");

-- CreateIndex
CREATE INDEX "index_referee_answers_on_referee_id" ON "referee_answers"("referee_id");

-- CreateIndex
CREATE INDEX "index_referee_answers_on_test_attempt_id" ON "referee_answers"("test_attempt_id");

-- CreateIndex
CREATE INDEX "index_referee_answers_on_test_id" ON "referee_answers"("test_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_referee_locations_on_referee_id_and_ngb_id" ON "referee_locations"("referee_id", "national_governing_body_id");

-- CreateIndex
CREATE INDEX "index_referee_teams_on_referee_id" ON "referee_teams"("referee_id");

-- CreateIndex
CREATE INDEX "index_referee_teams_on_team_id" ON "referee_teams"("team_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_referee_teams_on_referee_id_and_association_type" ON "referee_teams"("referee_id", "association_type");

-- CreateIndex
CREATE INDEX "index_roles_on_user_id" ON "roles"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_roles_on_user_id_and_access_type" ON "roles"("user_id", "access_type");

-- CreateIndex
CREATE INDEX "index_social_accounts_on_ownable_type_and_ownable_id" ON "social_accounts"("ownable_type", "ownable_id");

-- CreateIndex
CREATE INDEX "index_team_status_changesets_on_team_id" ON "team_status_changesets"("team_id");

-- CreateIndex
CREATE INDEX "index_teams_on_national_governing_body_id" ON "teams"("national_governing_body_id");

-- CreateIndex
CREATE INDEX "index_test_results_on_referee_id" ON "test_results"("referee_id");

-- CreateIndex
CREATE UNIQUE INDEX "index_users_on_email" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users"("reset_password_token");

-- CreateIndex
CREATE UNIQUE INDEX "index_users_on_confirmation_token" ON "users"("confirmation_token");

-- CreateIndex
CREATE UNIQUE INDEX "index_users_on_unlock_token" ON "users"("unlock_token");

-- CreateIndex
CREATE UNIQUE INDEX "index_users_on_invitation_token" ON "users"("invitation_token");

-- CreateIndex
CREATE INDEX "index_users_on_invitations_count" ON "users"("invitations_count");

-- CreateIndex
CREATE INDEX "index_users_on_invited_by_id" ON "users"("invited_by_id");

-- CreateIndex
CREATE INDEX "index_users_on_invited_by_type_and_invited_by_id" ON "users"("invited_by_type", "invited_by_id");

-- AddForeignKey
ALTER TABLE "active_storage_attachments" ADD CONSTRAINT "fk_rails_c3b3935057" FOREIGN KEY ("blob_id") REFERENCES "active_storage_blobs"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "national_governing_body_admins" ADD CONSTRAINT "fk_rails_e74edd8114" FOREIGN KEY ("national_governing_body_id") REFERENCES "national_governing_bodies"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "national_governing_body_admins" ADD CONSTRAINT "fk_rails_c6796ff8f7" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "national_governing_body_stats" ADD CONSTRAINT "fk_rails_ce6124f60f" FOREIGN KEY ("national_governing_body_id") REFERENCES "national_governing_bodies"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "referee_teams" ADD CONSTRAINT "fk_rails_f8aaa19a7b" FOREIGN KEY ("referee_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "referee_teams" ADD CONSTRAINT "fk_rails_880aef8e7d" FOREIGN KEY ("team_id") REFERENCES "teams"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "roles" ADD CONSTRAINT "fk_rails_ab35d699f0" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "team_status_changesets" ADD CONSTRAINT "fk_rails_c3bc29f337" FOREIGN KEY ("team_id") REFERENCES "teams"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "teams" ADD CONSTRAINT "fk_rails_d1c3a2117a" FOREIGN KEY ("national_governing_body_id") REFERENCES "national_governing_bodies"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
