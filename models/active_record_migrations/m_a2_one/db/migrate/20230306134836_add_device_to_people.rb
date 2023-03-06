class AddDeviceToPeople < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :device, null: false, foreign_key: true
  end
end
