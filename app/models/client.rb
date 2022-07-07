class Client < ApplicationRecord
   
    validates :name, presence: true
    validates :biography, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :phoneNumber, format: { with: /[0-9]/ }
    
end
