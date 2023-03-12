class AddAssetToPeople < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :asset, polymorphic: true, null: false
  end
end
