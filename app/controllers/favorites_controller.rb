class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article


  def create
    @favorite = Favorite.create(user_id: current_user.id, article_id: params[:article_id])
    @article.create_notification_like!(current_user)
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, article_id: params[:article_id])
    @favorite.destroy
  end

  private
  def set_article
    @article = Article.find(params[:article_id])
  end

end
