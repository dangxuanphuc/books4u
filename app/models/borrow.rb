class Borrow < ApplicationRecord
  enum status: [:not_approved, :approved, :cancel, :rejected]

  belongs_to :user
  belongs_to :book
end
