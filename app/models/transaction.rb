class Transaction < ApplicationRecord
  validates :amount, numericality: { message: "must be a number" }, presence: true
  validates :description, presence: true

  after_create_commit { broadcast_prepend_to "transactions" }
  after_update_commit { broadcast_replace_to "transactions" }
  after_destroy_commit { broadcast_remove_to "transactions" }
end
