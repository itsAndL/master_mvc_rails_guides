class Car < ApplicationRecord
    has_one :person, as: :asset

    validates :company, presence: { message: 'must be provided for us' }
    validates :company, exclusion: { case_sensitive: false, within: %w(acura alfa_romeo audi), message: '%{value} is reserved' }
end
