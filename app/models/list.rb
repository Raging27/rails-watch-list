class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  has_rich_text :rich_body


  validates :name, uniqueness: true, presence: true
end
