-- DropForeignKey
ALTER TABLE "active_storage_attachments" DROP CONSTRAINT "active_storage_attachments_blob_id_fkey";

-- DropForeignKey
ALTER TABLE "national_governing_body_admins" DROP CONSTRAINT "national_governing_body_admins_national_governing_body_id_fkey";

-- DropForeignKey
ALTER TABLE "national_governing_body_admins" DROP CONSTRAINT "national_governing_body_admins_user_id_fkey";

-- AddForeignKey
ALTER TABLE "active_storage_attachments" ADD CONSTRAINT "active_storage_attachments_blob_id_fkey" FOREIGN KEY ("blob_id") REFERENCES "active_storage_blobs"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "national_governing_body_admins" ADD CONSTRAINT "national_governing_body_admins_national_governing_body_id_fkey" FOREIGN KEY ("national_governing_body_id") REFERENCES "national_governing_bodies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "national_governing_body_admins" ADD CONSTRAINT "national_governing_body_admins_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- RenameIndex
ALTER INDEX "index_active_storage_attachments_uniqueness" RENAME TO "active_storage_attachments_record_type_record_id_name_blob__key";

-- RenameIndex
ALTER INDEX "active_storage_blobs.key_unique" RENAME TO "active_storage_blobs_key_key";

-- RenameIndex
ALTER INDEX "index_certifications_on_level_and_version" RENAME TO "certifications_level_version_key";

-- RenameIndex
ALTER INDEX "flipper_features.key_unique" RENAME TO "flipper_features_key_key";

-- RenameIndex
ALTER INDEX "index_flipper_gates_on_feature_key_and_key_and_value" RENAME TO "flipper_gates_feature_key_key_value_key";

-- RenameIndex
ALTER INDEX "national_governing_body_admins.user_id_unique" RENAME TO "national_governing_body_admins_user_id_key";

-- RenameIndex
ALTER INDEX "index_referee_locations_on_referee_id_and_ngb_id" RENAME TO "referee_locations_referee_id_national_governing_body_id_key";

-- RenameIndex
ALTER INDEX "index_referee_teams_on_referee_id_and_association_type" RENAME TO "referee_teams_referee_id_association_type_key";

-- RenameIndex
ALTER INDEX "index_roles_on_user_id_and_access_type" RENAME TO "roles_user_id_access_type_key";

-- RenameIndex
ALTER INDEX "users.confirmation_token_unique" RENAME TO "users_confirmation_token_key";

-- RenameIndex
ALTER INDEX "users.email_unique" RENAME TO "users_email_key";

-- RenameIndex
ALTER INDEX "users.invitation_token_unique" RENAME TO "users_invitation_token_key";

-- RenameIndex
ALTER INDEX "users.reset_password_token_unique" RENAME TO "users_reset_password_token_key";

-- RenameIndex
ALTER INDEX "users.unlock_token_unique" RENAME TO "users_unlock_token_key";
