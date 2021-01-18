class Article < ApplicationRecord
  with_options presence: true do
    validates :title, length: { maximum: 40 }
    validates :text, length: { maximum: 15000 }
  end

  # has_rich_text :text
  belongs_to :user
  has_one_attached :image, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :good_evaluations, dependent: :destroy
  has_many :bad_evaluations, dependent: :destroy
  has_many :notifications, dependent: :destroy

  def self.search(search)
    if search != ""
      Article.where('text LIKE(?) OR title LIKE(?) OR category_id LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Article.includes(:user).order("created_at DESC")
    end
  end

  def self.evaluation(articles_evaluation, articles)
    articles.each do |article|
      if article.good_evaluations.length + article.bad_evaluations.length != 0
        article_evaluation = 100 * article.good_evaluations.length / (article.good_evaluations.length + article.bad_evaluations.length)
        articles_evaluation << {score: article_evaluation, count: article.good_evaluations.length, name: article}
      else
        article_evaluation = 0
        articles_evaluation << {score: article_evaluation, count: article.good_evaluations.length, name: article}
      end
    end
  end

  def create_notification_like!(current_user)
    # すでに「お気に入り登録」されているか検索
    temp = Notification.where(["visitor_id = ? and visited_id = ? and article_id = ? and action = ? ", current_user.id, user_id, id, 'favorite'])
    # お気に入り登録されていない場合のみ、通知レコードを作成
    if temp.blank?
      notification = current_user.active_notifications.new(
        article_id: id,
        visited_id: user_id,
        action: 'favorite'
      )
      # 自分の投稿に対するお気に入り登録の場合は、通知済みとする
      if notification.visitor_id == notification.visited_id
        notification.checked = true
      end
      notification.save if notification.valid?
    end
  end

  def save_notification_comment!(current_user, comment_id, visited_id)
    # コメントは複数回することが考えられるため、１つの投稿に複数回通知する
    notification = current_user.active_notifications.new(
      article_id: id,
      comment_id: comment_id,
      visited_id: visited_id,
      action: 'comment'
    )
    # 自分の投稿に対するコメントの場合は、通知済みとする
    if notification.visitor_id == notification.visited_id
      notification.checked = true
    end
    notification.save if notification.valid?
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
