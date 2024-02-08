class CreateGrades < ActiveRecord::Migration[7.1]
  def change
    create_table :grades do |t|
      t.string :grade_value

      t.timestamps
    end
  end
end
