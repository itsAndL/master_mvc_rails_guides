class AddIndexIdToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_index :authors, :id
  end
end
