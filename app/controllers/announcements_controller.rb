class AnnouncementsController < ApplicationController
  before_action :find_announcement, only: :show

  def index
    @announcements = Announcement.all
  end

  def show; end

  private

  def find_announcement
    @announcement = Announcement.find_by id: params[:id]

    return if @announcement
    redirect_to not_found_index_path
  end
end
