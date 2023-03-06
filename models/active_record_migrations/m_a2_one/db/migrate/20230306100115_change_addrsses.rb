class ChangeAddrsses < ActiveRecord::Migration[7.0]
  def change
    change_column_default :addresses, :streat, from: '123 main streat', to: '123 west streat'
    change_column_null :addresses, :city, from: false, to: true
    rename_column :addresses, :streat, :street
  end
end
