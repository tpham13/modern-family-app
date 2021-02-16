class User < ApplicationRecord
    has_secure_password
    
    validates :username, presence: true 
    validates :username, unique: true
    validates :username, length: {mininum: 4}
    validates :email, presence: true 
    validates :email, unique: true 
    
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
