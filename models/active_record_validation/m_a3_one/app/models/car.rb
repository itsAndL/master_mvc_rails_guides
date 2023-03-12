class Car < ApplicationRecord
    has_one :person, as: :asset

    validates :company, :model, presence: { message: 'must be provided for us' }
    validates :company, exclusion: { case_sensitive: false, within: %w(acura alfa_romeo audi), message: '%{value} is reserved' }
    validates :model, format: {with: /[A-Z][0-9][0-9][0-9]/, message: "should valid this format A000"}
end
