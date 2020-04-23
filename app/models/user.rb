class User < ApplicationRecord
  enum role: [:user, :admin]

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable, :lockable, :trackable

  has_many :blogs
  has_many :requests

  mount_uploader :avatar, AvatarUploader
end
