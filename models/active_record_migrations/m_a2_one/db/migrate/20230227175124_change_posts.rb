class ChangePosts < ActiveRecord::Migration[7.0]
  def change
      change_table :posts do |t|
      t.remove :post_id
      t.primary_key :id
      t.rename :motto, :logo
    end
  end
end
