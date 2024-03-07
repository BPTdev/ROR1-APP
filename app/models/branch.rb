class Branch < ApplicationRecord
    belongs_to :teachers
    belongs_to :students
    has_many :grades
end
