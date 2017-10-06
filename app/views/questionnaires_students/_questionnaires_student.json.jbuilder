json.extract! questionnaires_student, :id, :questionnaire_id, :student_id, :created_at, :updated_at
json.url questionnaires_student_url(questionnaires_student, format: :json)
