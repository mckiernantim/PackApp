class User < ApplicationRecord
   
    has_many :dogs, dependent: :destroy;
    has_many :walk_requests, dependent: :destroy;
end
