class BookItem < ApplicationRecord
  enum state: [:ready, :not_ready]

  before_save :default_values

  belongs_to :book

  scope :available_books, ->(id) {
    where(book_id: id, state: :ready).count
  }

  def default_values
    self.state ||= "Ready"
  end
end
