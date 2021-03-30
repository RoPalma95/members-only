class HomeController < ApplicationController
  # before_action :authenticate_user!, only: %i[ index ]

  def index
    if user_signed_in?
      redirect_to posts_path
    else
      @posts = Post.all.order("created_at DESC")
      render "home/index"
    end
  end
end
