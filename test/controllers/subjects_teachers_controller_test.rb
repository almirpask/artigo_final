require 'test_helper'

class SubjectsTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subjects_teacher = subjects_teachers(:one)
  end

  test "should get index" do
    get subjects_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_subjects_teacher_url
    assert_response :success
  end

  test "should create subjects_teacher" do
    assert_difference('SubjectsTeacher.count') do
      post subjects_teachers_url, params: { subjects_teacher: { subject_id: @subjects_teacher.subject_id, teacher_id: @subjects_teacher.teacher_id } }
    end

    assert_redirected_to subjects_teacher_url(SubjectsTeacher.last)
  end

  test "should show subjects_teacher" do
    get subjects_teacher_url(@subjects_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_subjects_teacher_url(@subjects_teacher)
    assert_response :success
  end

  test "should update subjects_teacher" do
    patch subjects_teacher_url(@subjects_teacher), params: { subjects_teacher: { subject_id: @subjects_teacher.subject_id, teacher_id: @subjects_teacher.teacher_id } }
    assert_redirected_to subjects_teacher_url(@subjects_teacher)
  end

  test "should destroy subjects_teacher" do
    assert_difference('SubjectsTeacher.count', -1) do
      delete subjects_teacher_url(@subjects_teacher)
    end

    assert_redirected_to subjects_teachers_url
  end
end
