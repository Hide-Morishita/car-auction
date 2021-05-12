class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string  :name,  null: false
      t.integer :price, null: false
      t.integer  :manufacturer_id, null: false
      t.string  :grade, null: false
      t.integer :body_id, null: false
      t.string :displacement, null: false
      t.string :color, null: false
      t.integer :capacity, null: false
      t.integer :model_year, null: false
      t.integer :vehicle_type_id, null: false
      t.integer :mileage, null: false 

      t.timestamps
    end
  end
end
