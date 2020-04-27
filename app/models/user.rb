class User < ApplicationRecord
  enum role: [:user, :admin]

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable, :lockable, :trackable

  has_many :blogs
  has_many :requests
  has_many :notifications

  mount_uploader :avatar, AvatarUploader

  def load_suggest_book_to_users
    User.where.not(id: self.id).order id: :asc
  end
end
