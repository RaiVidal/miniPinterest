class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: :destroy

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @post, notice: "Comentário adicionado com sucesso."
    else
      redirect_to @post, alert: "Não foi possível salvar o comentário."
    end
  end

  def destroy
    @comment.destroy!

    respond_to do |format|
      format.html { redirect_to @post, notice: "Comentário excluído com sucesso.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = @post.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
