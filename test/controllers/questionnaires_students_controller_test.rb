require 'test_helper'

class QuestionnairesStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaires_student = questionnaires_students(:one)
  end

  test "should get index" do
    get questionnaires_students_url
    assert_response :success
  end

  test "should get new" do
    get new_questionnaires_student_url
    assert_response :success
  end

  test "should create questionnaires_student" do
    assert_difference('QuestionnairesStudent.count') do
      post questionnaires_students_url, params: { questionnaires_student: { questionnaire_id: @questionnaires_student.questionnaire_id, student_id: @questionnaires_student.student_id } }
    end

    assert_redirected_to questionnaires_student_url(QuestionnairesStudent.last)
  end

  test "should show questionnaires_student" do
    get questionnaires_student_url(@questionnaires_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionnaires_student_url(@questionnaires_student)
    assert_response :success
  end

  test "should update questionnaires_student" do
    patch questionnaires_student_url(@questionnaires_student), params: { questionnaires_student: { questionnaire_id: @questionnaires_student.questionnaire_id, student_id: @questionnaires_student.student_id } }
    assert_redirected_to questionnaires_student_url(@questionnaires_student)
  end

  test "should destroy questionnaires_student" do
    assert_difference('QuestionnairesStudent.count', -1) do
      delete questionnaires_student_url(@questionnaires_student)
    end

    assert_redirected_to questionnaires_students_url
  end
end
