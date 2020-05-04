class Publisher < ApplicationRecord
  has_many :images, as: :target, dependent: :destroy
  has_many :books, dependent: :destroy
end
