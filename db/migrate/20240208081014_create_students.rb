class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :lastname
      t.string :firstname
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.references :school_class, null: false, foreign_key: true
      t.timestamps
    end
  end
end
