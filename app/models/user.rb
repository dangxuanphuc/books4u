class User < ApplicationRecord
  enum role: [:user, :admin]

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable, :lockable, :trackable

  after_update_commit :appearance_broadcast

  has_many :blogs, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :book_marks, dependent: :destroy
  has_many :books, through: :book_marks, dependent: :destroy
  has_many :borrows, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :messages, foreign_key: :sender_id, dependent: :destroy
  has_many :sender_messages, class_name: Message.name, foreign_key: :sender_id
  has_many :recipient_messages, class_name: Message.name, foreign_key: :recipient_id

  mount_uploader :avatar, AvatarUploader

  top_bloggers_query = where id: Blog.published.group(:user_id)
    .limit(5).pluck(:user_id)

  scope :top_bloggers, ->{top_bloggers_query}

  def load_suggest_book_to_users
    User.where.not(id: self.id).order id: :asc
  end

  def book_marked_books
    Book.where(id: book_marks.pluck(:book_id)).order id: :desc
  end

  def book_marked? book
    self.book_marks.find_by(book: book).present? ? true : false
  end

  def set_online_time
    start_time = Time.now
    if self.online_at.nil?
      active_at = ""
    else
      end_time = self.online_at.to_time
      if start_time && end_time
        time_sub = time_diff(start_time, end_time)
        if time_sub >= 86400
          timer = ((time_sub / 86400).to_i).to_s + "d"
        elsif time_sub < 86400 && time_sub >= 3600
          timer = ((time_sub / 3600).to_i).to_s + "h"
        elsif time_sub < 3600 && time_sub >= 60
          timer = ((time_sub / 60).to_i).to_s + "m"
        else
          timer = (time_sub).to_s + "s"
        end
      end
      active_at = "Active " + timer + " ago"
    end
  end

  private

  def appearance_broadcast
    AppearanceBroadcastJob.perform_later(self)
  end

  def time_diff start_time, end_time
    (start_time - end_time).round
  end
end
