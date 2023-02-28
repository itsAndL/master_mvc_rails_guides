class ChangePostsTwo < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.rename :title, :your_wize
      t.integer "views", null: false, default: 45
    end
  end
end
