class CreateJoinTableAuthorBook < ActiveRecord::Migration[7.0]
  def change
    create_join_table :authors, :books, column_options: { null: true }, table_name: :join_books_to_their_author do |t|
      t.index [:author_id, :book_id]
      t.index [:book_id, :author_id]
    end
  end
end
