class AddAdultToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :adult, :boolean
  end
end
