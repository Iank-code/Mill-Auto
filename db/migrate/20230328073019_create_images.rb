class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :front_right_url
      t.string :back_left_url
      t.string :interior_url
      t.belongs_to :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
