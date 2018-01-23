class Amenity < ActiveRecord::Base

  has_many :amenity_rooms
  has_many :rooms, through: :amenity_rooms

end
