class Teacher < ApplicationRecord
    has_many :branches
    has_many :school_classes
end
