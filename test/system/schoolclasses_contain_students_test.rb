require "application_system_test_case"

class SchoolclassesContainStudentsTest < ApplicationSystemTestCase
  setup do
    @schoolclasses_contain_student = schoolclasses_contain_students(:one)
  end

  test "visiting the index" do
    visit schoolclasses_contain_students_url
    assert_selector "h1", text: "Schoolclasses contain students"
  end

  test "should create schoolclasses contain student" do
    visit schoolclasses_contain_students_url
    click_on "New schoolclasses contain student"

    fill_in "School class", with: @schoolclasses_contain_student.school_class_id
    fill_in "Student", with: @schoolclasses_contain_student.student_id
    click_on "Create Schoolclasses contain student"

    assert_text "Schoolclasses contain student was successfully created"
    click_on "Back"
  end

  test "should update Schoolclasses contain student" do
    visit schoolclasses_contain_student_url(@schoolclasses_contain_student)
    click_on "Edit this schoolclasses contain student", match: :first

    fill_in "School class", with: @schoolclasses_contain_student.school_class_id
    fill_in "Student", with: @schoolclasses_contain_student.student_id
    click_on "Update Schoolclasses contain student"

    assert_text "Schoolclasses contain student was successfully updated"
    click_on "Back"
  end

  test "should destroy Schoolclasses contain student" do
    visit schoolclasses_contain_student_url(@schoolclasses_contain_student)
    click_on "Destroy this schoolclasses contain student", match: :first

    assert_text "Schoolclasses contain student was successfully destroyed"
  end
end
