json.extract! student, :id, :name, :registration_number, :created_at, :updated_at
json.url student_url(student, format: :json)
