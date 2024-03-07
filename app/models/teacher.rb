class Teacher < ApplicationRecord
    has_and_belongs_to_many :branches
    has_many :school_classes
end
