class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :reverse_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :favorities, through: :reverse_of_favorite, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }

end
