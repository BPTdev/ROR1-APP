class CreateGrades < ActiveRecord::Migration[7.1]
  def change
    create_table :grades do |t|
      t.string :grade_value
      t.string :title
      t.references :student, null: false, foreign_key: true
      t.references :branch, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
