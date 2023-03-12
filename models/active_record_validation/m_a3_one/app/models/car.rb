class Car < ApplicationRecord
    has_one :person, as: :asset

    validates :company, presence: { message: 'must be provided for us' }
end
