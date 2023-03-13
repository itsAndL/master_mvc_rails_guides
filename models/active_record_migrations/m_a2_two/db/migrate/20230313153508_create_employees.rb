class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_nbr
      t.date :hire_date
      t.string :job
      t.string :sex

      t.timestamps
    end
  end
end
