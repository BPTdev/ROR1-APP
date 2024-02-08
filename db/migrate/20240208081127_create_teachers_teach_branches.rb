class CreateTeachersTeachBranches < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers_teach_branches do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
