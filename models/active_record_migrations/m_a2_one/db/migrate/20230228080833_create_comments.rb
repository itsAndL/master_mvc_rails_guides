class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments

    add_column :comments, :desc, :text
    add_column :comments, :like, :boolean
    add_column :comments, :created_at, :datetime, null: false
    add_column :comments, :updated_at, :datetime, null: false
  end
end
