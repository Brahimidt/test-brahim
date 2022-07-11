class Client < ApplicationRecord
   
    enum status: [ :unconfirmed,
    :confirmed,
    :accepted,
    :expired]

    validates :name, presence: true
    validates :biography, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :phoneNumber, format: { with: /[0-9]/ }
    
    scope :unconfirmed, -> { where(status: 0) }
    scope :confirmed, -> { where(status: 1) }
    scope :accepted, -> { where(status: 2) }
    scope :expired, -> { where(status: 3) }

end
