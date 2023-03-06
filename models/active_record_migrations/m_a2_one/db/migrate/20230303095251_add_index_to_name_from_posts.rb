class AddIndexToNameFromPosts < ActiveRecord::Migration[7.0]
  def change
    add_index :posts, [:your_wize], unique: true
  end
end
