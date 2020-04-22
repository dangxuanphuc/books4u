class ReadOnlineController < ApplicationController
  before_action :find_ebooks

  def show; end

  private

  def find_ebooks
    @ebooks = Book.find_by(id: params[:id]).pdf_ebooks

    return @ebooks
    flash[:danger] = t "read_online.flash.danger.not_found_ebook"
  end
end
