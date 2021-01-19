class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :consent, presence: true
  validates :net, presence: true
  validates :access, presence: true
  validates :image, presence: true
end
