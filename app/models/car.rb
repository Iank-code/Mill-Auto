class Car < ApplicationRecord
<<<<<<< HEAD
  has_many :reviews
  has_many :orders
  has_many :users, through: :reviews
=======
  belongs_to :user
  has_many :reviews, through: :user
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
end
