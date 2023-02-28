class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string "name", default: "Will"
      t.integer "age", default: rand(18..38)
      t.decimal "price", null: false
      t.string "sentence", null: false, limit: 8, comment: "something wize"

      t.index ["price"], name: "resources_price_idx", unique: true

      t.timestamps
    end
  end
end