require "application_system_test_case"

class GradeAssignmentsTest < ApplicationSystemTestCase
  setup do
    @grade_assignment = grade_assignments(:one)
  end

  test "visiting the index" do
    visit grade_assignments_url
    assert_selector "h1", text: "Grade assignments"
  end

  test "should create grade assignment" do
    visit grade_assignments_url
    click_on "New grade assignment"

    fill_in "Grade", with: @grade_assignment.grade_id
    fill_in "Student", with: @grade_assignment.student_id
    click_on "Create Grade assignment"

    assert_text "Grade assignment was successfully created"
    click_on "Back"
  end

  test "should update Grade assignment" do
    visit grade_assignment_url(@grade_assignment)
    click_on "Edit this grade assignment", match: :first

    fill_in "Grade", with: @grade_assignment.grade_id
    fill_in "Student", with: @grade_assignment.student_id
    click_on "Update Grade assignment"

    assert_text "Grade assignment was successfully updated"
    click_on "Back"
  end

  test "should destroy Grade assignment" do
    visit grade_assignment_url(@grade_assignment)
    click_on "Destroy this grade assignment", match: :first

    assert_text "Grade assignment was successfully destroyed"
  end
end
