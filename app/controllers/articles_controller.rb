class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
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


  private
  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id).merge(user_id: current_user.id)
  end

end