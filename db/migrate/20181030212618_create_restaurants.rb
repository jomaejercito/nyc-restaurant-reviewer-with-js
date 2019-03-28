class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :cuisine_id
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
