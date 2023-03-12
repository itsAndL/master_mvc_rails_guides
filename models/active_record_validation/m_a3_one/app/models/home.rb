class Home < ApplicationRecord
    validates :home_type, presence: { message: 'must be given' }

    # belongs_to :person
    # validates_associated :person, message: "need to be validate", if: lambda { |param| puts "this is me: #{param.home_type} :the end"; 2==2 }

    has_one :person, as: :asset
end
