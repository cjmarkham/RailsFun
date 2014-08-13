class Person < ActiveRecord::Base
    validates :name, 
        presence: true,
        length: { minimum: 2 }
    validates :address_1, 
        presence: true
    validates :address_2, 
        presence: true
    validates :county, 
        presence: true
    validates :post_code, 
        presence: true
end
