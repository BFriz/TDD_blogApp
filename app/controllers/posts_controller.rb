wclass PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @posts = Post.all
  end

end