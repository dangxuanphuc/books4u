class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:user_id].present?
      @messages = Message.find_by_recipient_and_sender(params[:user_id], current_user.id)
      @user = User.find_by id: params[:user_id]
      @users = User.where.not(id: current_user.id)
    else
      @users = User.where.not(id: current_user.id)
      @messages_first = Message.find_by_recipient_and_sender(@users.first, current_user.id)
    end

    respond_to do |format|
      format.html
      format.json
    end
  end
end
