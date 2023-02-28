class RemoveBookFromResources < ActiveRecord::Migration[7.0]
  def change
    remove_column :resources, :book, :integer, index: true
  end
end
