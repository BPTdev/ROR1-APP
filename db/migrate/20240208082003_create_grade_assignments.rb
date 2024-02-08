class CreateGradeAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :grade_assignments do |t|
      t.references :student, null: false, foreign_key: true
      t.references :grade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
