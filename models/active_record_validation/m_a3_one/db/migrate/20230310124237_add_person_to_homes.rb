class AddPersonToHomes < ActiveRecord::Migration[7.0]
  def change
    add_reference :homes, :person, null: false, foreign_key: true
  end
end
