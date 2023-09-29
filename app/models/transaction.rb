class Transaction < ApplicationRecord
  validates :amount, numericality: { message: "must be a number" }
  validates :amount, presence: true
end

