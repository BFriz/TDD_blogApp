class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @post = Post.find(params[:hotel_id])
  end

  def create
    post = Post.find(params[:hotel_id])
    post.comments << Comment.create(params[:comment].permit(:content, :name))

    redirect_to Post
  end



end
