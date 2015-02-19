json.array!(@students) do |student|
  json.extract! student, :id, :name, :email, :mobile, :about, :learning_style, :student_source_id, :student_type, :user_id
  json.url student_url(student, format: :json)
end
