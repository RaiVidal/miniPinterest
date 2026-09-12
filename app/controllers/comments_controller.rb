class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to @post, notice: "Comentário adicionado com sucesso."
    else
      redirect_to @post, alert: "Não foi possível salvar o comentário."
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:user, :content)
  end
end
