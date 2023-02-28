class ChangeColumnsOfBooks < ActiveRecord::Migration[7.0]
  def up
    change_column :books, :subtitle, :string
    change_column_default :books, :title, 'My Supper Book'
    change_column_null :books, :pages, false, 100
  end
    
  def down
    change_column :books, :subtitle, :text
    change_column_default :books, :title, nil
    change_column_null :books, :pages, true
  end
end
