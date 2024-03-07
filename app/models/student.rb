class Student < ApplicationRecord
    has_many :grades
    belongs_to :schoolclass, class_name: "SchoolClass", foreign_key: "school_class_id"
    has_many :branches
end
