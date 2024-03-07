class Student < ApplicationRecord
    has_many :grades
    belongs_to :school_class, class_name: "school_class", foreign_key: "school_class_id"
    has_many :branches
end
