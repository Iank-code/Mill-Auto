class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :year_of_manufacture
      t.string :transmission
      t.string :fuel_type
      t.integer :price

      t.timestamps
    end
  end
end
