class Person < ApplicationRecord
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :first_name, :last_name, presence: { message: 'must be given' }
  validates :adult, acceptance: { message: 'must be checked' }

  # has_many :homes, dependent: :delete_all

  belongs_to :asset, polymorphic: true
  validates_associated :asset, message: "should be available"
end
