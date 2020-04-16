class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book, only: %i(create)

  def create
    comment = @book.comments.new comment_params.merge user_id: current_user.id
    if comment.save
      redirect_to @book
    else
      flash[:danger] = "Something went wrong"
    end
  end

  private

  def comment_params
    params.require(:comment).permit :content, :parent_id
  end

  def load_book
    @book = Book.find_by id: params[:book_id]

    return @book
    flash[:danger] = "Book not found"
    redirect_back
  end
end
