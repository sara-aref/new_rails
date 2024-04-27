class Author < ApplicationRecord
    validates :name, :DOB, :email, :phone_number, presence: true
    validates :email, email: true
end
