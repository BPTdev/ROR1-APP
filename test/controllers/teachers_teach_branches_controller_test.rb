require "test_helper"

class TeachersTeachBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teachers_teach_branch = teachers_teach_branches(:one)
  end

  test "should get index" do
    get teachers_teach_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_teachers_teach_branch_url
    assert_response :success
  end

  test "should create teachers_teach_branch" do
    assert_difference("TeachersTeachBranch.count") do
      post teachers_teach_branches_url, params: { teachers_teach_branch: { branch_id: @teachers_teach_branch.branch_id, teacher_id: @teachers_teach_branch.teacher_id } }
    end

    assert_redirected_to teachers_teach_branch_url(TeachersTeachBranch.last)
  end

  test "should show teachers_teach_branch" do
    get teachers_teach_branch_url(@teachers_teach_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_teachers_teach_branch_url(@teachers_teach_branch)
    assert_response :success
  end

  test "should update teachers_teach_branch" do
    patch teachers_teach_branch_url(@teachers_teach_branch), params: { teachers_teach_branch: { branch_id: @teachers_teach_branch.branch_id, teacher_id: @teachers_teach_branch.teacher_id } }
    assert_redirected_to teachers_teach_branch_url(@teachers_teach_branch)
  end

  test "should destroy teachers_teach_branch" do
    assert_difference("TeachersTeachBranch.count", -1) do
      delete teachers_teach_branch_url(@teachers_teach_branch)
    end

    assert_redirected_to teachers_teach_branches_url
  end
end
