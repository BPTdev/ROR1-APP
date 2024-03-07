# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_08_082003) do
  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.decimal "average"
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_branches_on_teacher_id"
  end

  create_table "grade_assignments", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_grade_assignments_on_grade_id"
    t.index ["student_id"], name: "index_grade_assignments_on_student_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "grade_value"
    t.integer "student_id", null: false
    t.integer "branch_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_grades_on_branch_id"
    t.index ["student_id"], name: "index_grades_on_student_id"
  end

  create_table "grades_evaluate_branches", force: :cascade do |t|
    t.date "evaluation_date"
    t.integer "grade_id", null: false
    t.integer "branch_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_grades_evaluate_branches_on_branch_id"
    t.index ["grade_id"], name: "index_grades_evaluate_branches_on_grade_id"
  end

  create_table "school_classes", force: :cascade do |t|
    t.string "name"
    t.string "school_year"
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_school_classes_on_teacher_id"
  end

  create_table "schoolclasses_contain_students", force: :cascade do |t|
    t.integer "school_class_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_class_id"], name: "index_schoolclasses_contain_students_on_school_class_id"
    t.index ["student_id"], name: "index_schoolclasses_contain_students_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "phone"
    t.integer "school_class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_class_id"], name: "index_students_on_school_class_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers_teach_branches", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "branch_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_teachers_teach_branches_on_branch_id"
    t.index ["teacher_id"], name: "index_teachers_teach_branches_on_teacher_id"
  end

  add_foreign_key "branches", "teachers"
  add_foreign_key "grade_assignments", "grades"
  add_foreign_key "grade_assignments", "students"
  add_foreign_key "grades", "branches"
  add_foreign_key "grades", "students"
  add_foreign_key "grades_evaluate_branches", "branches"
  add_foreign_key "grades_evaluate_branches", "grades"
  add_foreign_key "school_classes", "teachers"
  add_foreign_key "schoolclasses_contain_students", "school_classes"
  add_foreign_key "schoolclasses_contain_students", "students"
  add_foreign_key "students", "school_classes"
  add_foreign_key "teachers_teach_branches", "branches"
  add_foreign_key "teachers_teach_branches", "teachers"
end
