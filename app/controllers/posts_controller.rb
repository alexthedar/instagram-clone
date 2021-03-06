class PostsController < ApplicationController

  def index
  end

  def new
    @post = Post.new
  end

  def create
  @user = User.create( user_params )
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:posts).permit(:images)
  end
end
