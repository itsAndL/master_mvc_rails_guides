class AddColsToResources < ActiveRecord::Migration[7.0]
  def change
    add_reference :resources, :comment
    add_column :resources, :book, :integer, index: true
  end
end
