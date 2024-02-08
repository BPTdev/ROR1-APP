require "application_system_test_case"

class GradesEvaluateBranchesTest < ApplicationSystemTestCase
  setup do
    @grades_evaluate_branch = grades_evaluate_branches(:one)
  end

  test "visiting the index" do
    visit grades_evaluate_branches_url
    assert_selector "h1", text: "Grades evaluate branches"
  end

  test "should create grades evaluate branch" do
    visit grades_evaluate_branches_url
    click_on "New grades evaluate branch"

    fill_in "Branch", with: @grades_evaluate_branch.branch_id
    fill_in "Evaluation date", with: @grades_evaluate_branch.evaluation_date
    fill_in "Grade", with: @grades_evaluate_branch.grade_id
    click_on "Create Grades evaluate branch"

    assert_text "Grades evaluate branch was successfully created"
    click_on "Back"
  end

  test "should update Grades evaluate branch" do
    visit grades_evaluate_branch_url(@grades_evaluate_branch)
    click_on "Edit this grades evaluate branch", match: :first

    fill_in "Branch", with: @grades_evaluate_branch.branch_id
    fill_in "Evaluation date", with: @grades_evaluate_branch.evaluation_date
    fill_in "Grade", with: @grades_evaluate_branch.grade_id
    click_on "Update Grades evaluate branch"

    assert_text "Grades evaluate branch was successfully updated"
    click_on "Back"
  end

  test "should destroy Grades evaluate branch" do
    visit grades_evaluate_branch_url(@grades_evaluate_branch)
    click_on "Destroy this grades evaluate branch", match: :first

    assert_text "Grades evaluate branch was successfully destroyed"
  end
end
