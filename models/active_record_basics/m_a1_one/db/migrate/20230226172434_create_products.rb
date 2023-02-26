class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.boolean :new?

      t.timestamps
    end
  end
end
