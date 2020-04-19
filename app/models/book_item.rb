class BookItem < ApplicationRecord
  enum state: ["Ready", "Not ready"]

  before_save :default_values

  belongs_to :book

  def default_values
    self.state ||= "Ready"
  end
end
