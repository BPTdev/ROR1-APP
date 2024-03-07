class Branch < ApplicationRecord
    belongs_to :teacher
    has_many :students
    has_many :grades
end
