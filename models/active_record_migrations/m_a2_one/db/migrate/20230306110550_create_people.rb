class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age, default: 25

      t.timestamps
    end
  end
end
