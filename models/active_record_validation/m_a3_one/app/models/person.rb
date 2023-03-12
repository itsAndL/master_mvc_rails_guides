class Person < ApplicationRecord
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :first_name, :last_name, :age, presence: { message: 'must be given' }
  validates :adult, acceptance: { message: 'must be checked' }

  # has_many :homes, dependent: :delete_all

  belongs_to :asset, polymorphic: true
  validates_associated :asset, message: "should be available"

  validates :age, comparison: { greater_than_or_equal_to: 18 , less_than: 40}
  # validates :first_name, comparison: { equal_to: proc { "James" } }
  validates :first_name, comparison: { equal_to: "James" }
end
