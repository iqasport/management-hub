-- RenameIndex
ALTER INDEX "index_certifications_on_level_and_version" RENAME TO "certifications_level_version_key";

-- RenameIndex
ALTER INDEX "index_national_governing_bodies_on_region" RENAME TO "national_governing_bodies_region_idx";

-- RenameIndex
ALTER INDEX "index_policy_manager_user_terms_on_state" RENAME TO "policy_manager_user_terms_state_idx";

-- RenameIndex
ALTER INDEX "index_users_on_confirmation_token" RENAME TO "users_confirmation_token_key";

-- RenameIndex
ALTER INDEX "index_users_on_email" RENAME TO "users_email_key";

-- RenameIndex
ALTER INDEX "index_users_on_reset_password_token" RENAME TO "users_reset_password_token_key";

-- RenameIndex
ALTER INDEX "index_users_on_unlock_token" RENAME TO "users_unlock_token_key";
