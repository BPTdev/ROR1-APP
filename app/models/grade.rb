class Grade < ApplicationRecord
    has_one :student
    has_one :branch
end
