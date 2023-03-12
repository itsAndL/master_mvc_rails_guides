class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :company
      t.string :model
      t.date :year

      t.timestamps
    end
  end
end
