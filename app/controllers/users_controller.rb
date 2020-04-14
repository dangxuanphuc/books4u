class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user

  def show; end

  private

  def find_user
    @user = User.find_by id: params[:id]

    return if @user.present?
    flash[:danger] = t "user.edit.not_found"
    redirect_to root_path
  end
end
