class User < ApplicationRecord
  enum role: [:user, :admin]

  has_many :blogs

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable, :lockable, :trackable

  mount_uploader :avatar, AvatarUploader
end
