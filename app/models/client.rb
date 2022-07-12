class Client < ApplicationRecord
   
    enum status: [ :unconfirmed,
    :confirmed,
    :accepted,
    :expired]

    validates :name, presence: true
    validates :biography, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :phoneNumber, format: { with: /[0-9]/ }
    
    scope :unconfirmed, -> { where(status.unconfirmed) }
    scope :confirmed, -> { where(status.confirmed) }
    scope :accepted, -> { where(status.accepted) }
    scope :expired, -> { where(status.expired) }

end
