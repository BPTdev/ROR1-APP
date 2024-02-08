require "test_helper"

class SchoolclassesContainStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schoolclasses_contain_student = schoolclasses_contain_students(:one)
  end

  test "should get index" do
    get schoolclasses_contain_students_url
    assert_response :success
  end

  test "should get new" do
    get new_schoolclasses_contain_student_url
    assert_response :success
  end

  test "should create schoolclasses_contain_student" do
    assert_difference("SchoolclassesContainStudent.count") do
      post schoolclasses_contain_students_url, params: { schoolclasses_contain_student: { school_class_id: @schoolclasses_contain_student.school_class_id, student_id: @schoolclasses_contain_student.student_id } }
    end

    assert_redirected_to schoolclasses_contain_student_url(SchoolclassesContainStudent.last)
  end

  test "should show schoolclasses_contain_student" do
    get schoolclasses_contain_student_url(@schoolclasses_contain_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_schoolclasses_contain_student_url(@schoolclasses_contain_student)
    assert_response :success
  end

  test "should update schoolclasses_contain_student" do
    patch schoolclasses_contain_student_url(@schoolclasses_contain_student), params: { schoolclasses_contain_student: { school_class_id: @schoolclasses_contain_student.school_class_id, student_id: @schoolclasses_contain_student.student_id } }
    assert_redirected_to schoolclasses_contain_student_url(@schoolclasses_contain_student)
  end

  test "should destroy schoolclasses_contain_student" do
    assert_difference("SchoolclassesContainStudent.count", -1) do
      delete schoolclasses_contain_student_url(@schoolclasses_contain_student)
    end

    assert_redirected_to schoolclasses_contain_students_url
  end
end
