class Grade < ApplicationRecord
    has_one :student, class_name: "student", foreign_key: "student_id"
    has_one :branch, class_name: "branch", foreign_key: "branch_id"
end
