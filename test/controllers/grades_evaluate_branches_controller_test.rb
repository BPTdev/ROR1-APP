require "test_helper"

class GradesEvaluateBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grades_evaluate_branch = grades_evaluate_branches(:one)
  end

  test "should get index" do
    get grades_evaluate_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_grades_evaluate_branch_url
    assert_response :success
  end

  test "should create grades_evaluate_branch" do
    assert_difference("GradesEvaluateBranch.count") do
      post grades_evaluate_branches_url, params: { grades_evaluate_branch: { branch_id: @grades_evaluate_branch.branch_id, evaluation_date: @grades_evaluate_branch.evaluation_date, grade_id: @grades_evaluate_branch.grade_id } }
    end

    assert_redirected_to grades_evaluate_branch_url(GradesEvaluateBranch.last)
  end

  test "should show grades_evaluate_branch" do
    get grades_evaluate_branch_url(@grades_evaluate_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_grades_evaluate_branch_url(@grades_evaluate_branch)
    assert_response :success
  end

  test "should update grades_evaluate_branch" do
    patch grades_evaluate_branch_url(@grades_evaluate_branch), params: { grades_evaluate_branch: { branch_id: @grades_evaluate_branch.branch_id, evaluation_date: @grades_evaluate_branch.evaluation_date, grade_id: @grades_evaluate_branch.grade_id } }
    assert_redirected_to grades_evaluate_branch_url(@grades_evaluate_branch)
  end

  test "should destroy grades_evaluate_branch" do
    assert_difference("GradesEvaluateBranch.count", -1) do
      delete grades_evaluate_branch_url(@grades_evaluate_branch)
    end

    assert_redirected_to grades_evaluate_branches_url
  end
end
