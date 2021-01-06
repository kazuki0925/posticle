class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_article, only: [:show, :edit, :update, :destroy] 
  before_action :move_to_index, only: [:edit, :update, :destroy] 

  def index
    @articles = Article.includes(:user).order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = '記事を投稿しました'
      redirect_to root_path
    else
      flash.now[:alert] = '記事の投稿に失敗しました'
      render :new
    end
  end

  def show
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def move_to_index
    if user_signed_in? && current_user.id != @article.user_id 
      redirect_to root_path
    end
  end
end