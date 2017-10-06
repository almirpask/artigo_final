require 'test_helper'

class AchievementsStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @achievements_student = achievements_students(:one)
  end

  test "should get index" do
    get achievements_students_url
    assert_response :success
  end

  test "should get new" do
    get new_achievements_student_url
    assert_response :success
  end

  test "should create achievements_student" do
    assert_difference('AchievementsStudent.count') do
      post achievements_students_url, params: { achievements_student: { achievement_id: @achievements_student.achievement_id, student_id: @achievements_student.student_id } }
    end

    assert_redirected_to achievements_student_url(AchievementsStudent.last)
  end

  test "should show achievements_student" do
    get achievements_student_url(@achievements_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_achievements_student_url(@achievements_student)
    assert_response :success
  end

  test "should update achievements_student" do
    patch achievements_student_url(@achievements_student), params: { achievements_student: { achievement_id: @achievements_student.achievement_id, student_id: @achievements_student.student_id } }
    assert_redirected_to achievements_student_url(@achievements_student)
  end

  test "should destroy achievements_student" do
    assert_difference('AchievementsStudent.count', -1) do
      delete achievements_student_url(@achievements_student)
    end

    assert_redirected_to achievements_students_url
  end
end
