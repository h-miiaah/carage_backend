class AddBrandToCars < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :brand, foreign_key: true
  end
end
