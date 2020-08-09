class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :year
      t.string :color
      t.string :mileage
      t.integer :brand_id

      t.timestamps
    end
  end
end
