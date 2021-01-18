class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @article = @comment.article
    if @comment.save
      @article.save_notification_comment!(current_user, @comment.id, @article.user.id)
      redirect_to article_path(@article.id)
    else
      @favorite = Favorite.find_by(user_id: current_user.id, article_id: @article.id)
      @good_evaluation = GoodEvaluation.find_by(user_id: current_user.id, article_id: @article.id)
      @bad_evaluation = BadEvaluation.find_by(user_id: current_user.id, article_id: @article.id)  
      @comments = @article.comments.includes(:user)
      render "articles/show"
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, article_id: params[:article_id])
  end
end
