class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book, only: %i(create destroy)
  before_action :find_comment, only: :destroy

  def create
    comment = @book.comments.new comment_params.merge user_id: current_user.id
    if comment.save
      redirect_to book_path(@book, anchor: :comments)
    else
      flash[:danger] = "Something went wrong"
    end
  end

  def destroy
    @comment.destroy
    render json: {}, status: :ok
  end

  private

  def comment_params
    params.require(:comment).permit :content, :parent_id
  end

  def load_book
    @book = Book.friendly.find(params[:book_id])

    return @book
    redirect_to not_found_index_path
  end

  def find_comment
    @comment = @book.comments.find_by id: params[:id]
  end
end
