class Blog::DashboardController < ApplicationController
  def index
    @posts = Blog.published.order(created_at: :desc)
      .page(params[:page])
      .per Settings.blog.dashboard.limit
    @top_bloggers = User.includes(:blogs).top_bloggers
  end
end
