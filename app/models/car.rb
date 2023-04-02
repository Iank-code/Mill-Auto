class Car < ApplicationRecord
  has_many :reviews
  has_many :orders
  has_many :users, through: :reviews
end
