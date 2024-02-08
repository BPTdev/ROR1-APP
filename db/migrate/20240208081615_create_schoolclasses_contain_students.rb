class CreateSchoolclassesContainStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :schoolclasses_contain_students do |t|
      t.references :school_class, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
