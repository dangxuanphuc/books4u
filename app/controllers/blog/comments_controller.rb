class Blog::CommentsController < ApplicationController
  before_action :load_blog, only: %i(create destroy)
  before_action :find_comment, only: :destroy

  def create
    comment = @blog.comments.new comment_params.merge user_id: current_user.id
    if comment.save
      redirect_to blog_post_path(@blog, anchor: :comments)
    else
      flash[:danger] = "Error"
    end
  end

  def destroy
    @comment.destroy
    render json: {}, status: :ok
  end

  private

  def load_blog
    @blog = Blog.find_by id: params[:post_id]

    return @blog
    redirect_to not_found_index_path
  end

  def comment_params
    params.require(:comment).permit :content, :parent_id
  end

  def find_comment
    @comment = @blog.comments.find_by id: params[:id]
  end
end
