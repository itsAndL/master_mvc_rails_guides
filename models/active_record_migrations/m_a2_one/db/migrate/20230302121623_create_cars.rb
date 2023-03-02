class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars, id: false do |t|
      t.string :model
      t.string :comapany
      t.integer :book_id
      t.date :year
      t.primary_key :car_id
      t.index ["book_ref"], name: "cars_book_ref_idx"

      t.timestamps
    end

    add_foreign_key :cars, :books, column: :book_id, primary_key: :id
  end
end
