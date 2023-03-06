class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :streat, null: false, default: '123 main streat'
      t.string :city, null: false
      t.state :state, null: false

      t.timestamps
    end
  end
end
