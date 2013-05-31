class CommentsController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(params[:comment])
      redirect_to post_path(@post)
    end
#     def show
#     @comment = Comment.find(params[:id])
# 
#     respond_to do |format|
#       format.html # show.html.erb
#       format.json { render json: @comment }
#       end
#     end
     def destroy
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @comment.destroy
      redirect_to post_path(@post)
    end
end
