class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :image, :"year-of-manufacture", :transmission, :"fuel-type", :price
end
