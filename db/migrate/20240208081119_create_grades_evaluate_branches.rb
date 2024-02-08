class CreateGradesEvaluateBranches < ActiveRecord::Migration[7.1]
  def change
    create_table :grades_evaluate_branches do |t|
      t.date :evaluation_date
      t.references :grade, null: false, foreign_key: true
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
