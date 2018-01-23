class Room < ActiveRecord::Base
  belongs_to :city

  has_many :amenity_rooms
  has_many :amenities, through: :amenity_rooms

end
