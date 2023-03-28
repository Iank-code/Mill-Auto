class ImageSerializer < ActiveModel::Serializer
  attributes :id, :front_right_url, :back_left_url, :interior_url
  has_one :car
end
