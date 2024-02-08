class CreateBranches < ActiveRecord::Migration[7.1]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :status
      t.decimal :average

      t.timestamps
    end
  end
end
