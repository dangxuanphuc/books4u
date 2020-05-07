class Tag < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_and_belongs_to_many :books, join_table: :book_tags
end
