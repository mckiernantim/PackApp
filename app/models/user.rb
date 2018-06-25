class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dogs,  dependent: :destroy;
  has_many :walk_requests, dependent: :destroy;

  geocoded_by :postal_code

  # the callback to set longitude and latitude
  after_validation :geocode

  # the full_address method
  def address
    "#{postal_code}"
  end

end
