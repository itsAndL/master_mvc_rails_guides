class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: false do |t|
      t.primary_key :post_id
      t.string :title
      t.string :motto, index: { unique: true, name: 'unique_motto' }

      t.timestamps
    end
  end
end
