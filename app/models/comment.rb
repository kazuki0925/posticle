class Comment < ApplicationRecord
  validates :text, {presence: true, length: { maximum: 2000 }}
  belongs_to :user
  belongs_to :article
  has_many :notifications, dependent: :destroy
end
