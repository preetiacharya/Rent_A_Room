json.extract! room, :id, :name, :description, :price, :rules, :minimum_days, :address, :latitude, :longitude, :is_authorized, :city_id, :user_id, :created_at, :updated_at
json.url room_url(room, format: :json)
