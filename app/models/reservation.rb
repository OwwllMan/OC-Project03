class Reservation < ApplicationRecord
    validates :name, :email, :nbperson, :date, :hour, presence: true
end
