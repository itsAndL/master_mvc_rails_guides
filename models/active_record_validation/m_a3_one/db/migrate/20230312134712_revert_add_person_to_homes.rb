require_relative "20230310124237_add_person_to_homes"

class RevertAddPersonToHomes < ActiveRecord::Migration[7.0]
  def change
    revert AddPersonToHomes
  end
end
