class RemoveAdultFromPeople < ActiveRecord::Migration[7.0]
  def change
    remove_column :people, :adult, :boolean
  end
end
