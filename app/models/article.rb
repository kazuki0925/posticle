class Article < ApplicationRecord
  with_options presence: true do
    validates :title, length: { maximum: 40 }
    validates :text, length: { maximum: 15000 }
  end  

  belongs_to :user
  has_one_attached :image, dependent: :destroy
  has_many :comments, dependent: :destroy
  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
