class Home < ApplicationRecord
    belongs_to :person
    validates :home_type, presence: { message: 'must be given' }
end
