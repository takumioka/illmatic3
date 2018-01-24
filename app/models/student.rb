class Student < ApplicationRecord
    has_secure_password
    has_many :grade, dependent: :destroy
    
    
end
