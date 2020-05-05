class BookItem < ApplicationRecord
  enum state: [:ready, :not_ready]

  before_save :default_values

  belongs_to :book
  has_many :borrows, dependent: :destroy

  scope :available_books, ->(id){ready.where(book_id: id).size}

  def default_values
    self.state ||= "Ready"
  end
end
