class Student < ApplicationRecord
    has_secure_password
    has_many :grade
    has_many :bulletinboard
    
end
