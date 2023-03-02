class ChangeCars < ActiveRecord::Migration[7.0]
  # you can use one of the two, the first one, you have the flexibility to add some reversible actions
  def change
    reversible do |dir|
      dir.up do
        change_table :cars do |t|
          t.change :model, :json
        end
      end
      dir.down do
        change_table :cars do |t|
          t.change :model, :string
        end
      end
    end
  end

  # def up
  #   change_table :cars do |t|
  #     t.change :model, :json
  #   end
  # end

  # def down
  #   change_table :cars do |t|
  #     t.change :model, :string
  #   end
  # end
end
