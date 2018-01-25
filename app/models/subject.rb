class Subject < ApplicationRecord
    has_many :grade, dependent: :destroy    
    
end
