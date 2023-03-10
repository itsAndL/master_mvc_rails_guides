class Person < ApplicationRecord
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  validates :first_name, :last_name, presence: { message: 'must be given' }
  validates :adult, acceptance: { accept: 'true', message: 'must be checked' }
end
