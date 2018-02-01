class Bulletinboard < ApplicationRecord
    belongs_to :student, optional: true
end
