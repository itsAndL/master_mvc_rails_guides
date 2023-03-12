class Home < ApplicationRecord
    belongs_to :person
    validates :home_type, presence: { message: 'must be given' }
    
    validates_associated :person, message: "need to be validate", if: lambda { 2==2 }
end
