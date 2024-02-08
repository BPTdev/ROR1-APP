class GradeAssignment < ApplicationRecord
  belongs_to :student
  belongs_to :grade
end
