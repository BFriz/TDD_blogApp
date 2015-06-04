class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @posts = Post.all?
  end

  # def create
  #   post = Post.new params[:post].permit
# end

end