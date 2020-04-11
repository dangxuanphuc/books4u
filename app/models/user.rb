class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable, :lockable, :trackable

  validates :email, presence: true,
    length: { maximum: Settings.email_max_length },
    format: { with: Devise.email_regexp },
    uniqueness: { case_sensitive: false }
  validates :password, presence: true,
    length: { within: Devise.password_length }, allow_nil: true
end
