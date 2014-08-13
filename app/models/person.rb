class Person < ActiveRecord::Base
    validates :name, 
        presence: true,
        length: { minimum: 5 }
    validates :address_1, 
        presence: true
end
