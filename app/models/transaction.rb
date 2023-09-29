class Transaction < ApplicationRecord
  validates :amount, numericality: { message: "must be a number" }, presence: true
  validates :description, presence: true
end
