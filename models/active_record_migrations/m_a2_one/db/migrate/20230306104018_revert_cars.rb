require_relative "20230302134048_change_cars"

class RevertCars < ActiveRecord::Migration[7.0]
  def change
    revert ChangeCars
  end
end
