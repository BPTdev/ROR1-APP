require "application_system_test_case"

class TeachersTeachBranchesTest < ApplicationSystemTestCase
  setup do
    @teachers_teach_branch = teachers_teach_branches(:one)
  end

  test "visiting the index" do
    visit teachers_teach_branches_url
    assert_selector "h1", text: "Teachers teach branches"
  end

  test "should create teachers teach branch" do
    visit teachers_teach_branches_url
    click_on "New teachers teach branch"

    fill_in "Branch", with: @teachers_teach_branch.branch_id
    fill_in "Teacher", with: @teachers_teach_branch.teacher_id
    click_on "Create Teachers teach branch"

    assert_text "Teachers teach branch was successfully created"
    click_on "Back"
  end

  test "should update Teachers teach branch" do
    visit teachers_teach_branch_url(@teachers_teach_branch)
    click_on "Edit this teachers teach branch", match: :first

    fill_in "Branch", with: @teachers_teach_branch.branch_id
    fill_in "Teacher", with: @teachers_teach_branch.teacher_id
    click_on "Update Teachers teach branch"

    assert_text "Teachers teach branch was successfully updated"
    click_on "Back"
  end

  test "should destroy Teachers teach branch" do
    visit teachers_teach_branch_url(@teachers_teach_branch)
    click_on "Destroy this teachers teach branch", match: :first

    assert_text "Teachers teach branch was successfully destroyed"
  end
end
