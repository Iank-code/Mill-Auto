class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :year_of_manufacture, :transmission, :fuel_type, :price, :front_right_url, :back_left_url, :interior_url
end
