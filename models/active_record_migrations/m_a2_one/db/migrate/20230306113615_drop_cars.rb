class DropCars < ActiveRecord::Migration[7.0]
  def up
    drop_table :cars
  end

  def down
    create_table "cars", primary_key: "car_id", force: :cascade do |t|
      t.string "model"
      t.string "comapany"
      t.integer "book_id"
      t.date "year"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
