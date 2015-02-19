json.array!(@student_notes) do |student_note|
  json.extract! student_note, :id, :note, :user_id, :student_id
  json.url student_note_url(student_note, format: :json)
end
