class Person < ApplicationRecord
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :first_name, :last_name, presence: true
end
