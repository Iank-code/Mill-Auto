class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :year_of_manufacture, :transmission, :fuel_type, :price
end
