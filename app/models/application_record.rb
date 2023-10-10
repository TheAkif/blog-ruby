class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  def self.ransackable_attributes(auth_object = nil)
    ["body", "confirmation_sent_at", "confirmation_token", "confirmed_at", "created_at", "current_sign_in_at", "current_sign_in_ip", "email", "encrypted_password", "failed_attempts", "id", "last_sign_in_at", "last_sign_in_ip", "locked_at", "remember_created_at", "reset_password_sent_at", "reset_password_token", "sign_in_count", "title", "unconfirmed_email", "unlock_token", "updated_at"]
  end
end
