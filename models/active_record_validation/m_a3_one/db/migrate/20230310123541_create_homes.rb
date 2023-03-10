class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.string :home_type
      t.boolean :pool
      t.date :day_construction

      t.timestamps
    end
  end
end
