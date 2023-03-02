class AddColsToComment < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :resource_id, :integer, foreign_key: true
    add_index :comments, :resource_id
    add_reference :comments, :author, foreign_key: true
  end
end
