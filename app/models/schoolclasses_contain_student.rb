class SchoolclassesContainStudent < ApplicationRecord
  belongs_to :school_class
  belongs_to :student
end
