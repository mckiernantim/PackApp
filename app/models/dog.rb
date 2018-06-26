class Dog < ApplicationRecord
  belongs_to :user
  has_many :walk_requests, dependent: :destroy;
  has_one_attached :image

end
