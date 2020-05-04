class User < ApplicationRecord
  enum role: [:user, :admin]

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable, :lockable, :trackable

  has_many :blogs, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :book_marks, dependent: :destroy
  has_many :books, through: :book_marks, dependent: :destroy
  has_many :borrows, dependent: :destroy

  mount_uploader :avatar, AvatarUploader

  def load_suggest_book_to_users
    User.where.not(id: self.id).order id: :asc
  end

  def book_marked_books
    Book.where(id: book_marks.pluck(:book_id)).order id: :desc
  end

  def book_marked? book
    self.book_marks.find_by(book: book).present? ? true : false
  end
end
