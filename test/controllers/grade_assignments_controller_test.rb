require "test_helper"

class GradeAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grade_assignment = grade_assignments(:one)
  end

  test "should get index" do
    get grade_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_grade_assignment_url
    assert_response :success
  end

  test "should create grade_assignment" do
    assert_difference("GradeAssignment.count") do
      post grade_assignments_url, params: { grade_assignment: { grade_id: @grade_assignment.grade_id, student_id: @grade_assignment.student_id } }
    end

    assert_redirected_to grade_assignment_url(GradeAssignment.last)
  end

  test "should show grade_assignment" do
    get grade_assignment_url(@grade_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_grade_assignment_url(@grade_assignment)
    assert_response :success
  end

  test "should update grade_assignment" do
    patch grade_assignment_url(@grade_assignment), params: { grade_assignment: { grade_id: @grade_assignment.grade_id, student_id: @grade_assignment.student_id } }
    assert_redirected_to grade_assignment_url(@grade_assignment)
  end

  test "should destroy grade_assignment" do
    assert_difference("GradeAssignment.count", -1) do
      delete grade_assignment_url(@grade_assignment)
    end

    assert_redirected_to grade_assignments_url
  end
end
