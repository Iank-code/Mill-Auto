class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :year_of_manufacture
      t.string :transmission
      t.string :fuel_type
      t.integer :price
      t.string :front_right_url
      t.string :back_left_url
      t.string :interior_url
<<<<<<< HEAD:db/migrate/20230329090327_create_cars.rb
      
=======
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c:db/migrate/20230328094048_create_cars.rb
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
