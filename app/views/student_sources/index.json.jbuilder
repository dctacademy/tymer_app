json.array!(@student_sources) do |student_source|
  json.extract! student_source, :id, :name
  json.url student_source_url(student_source, format: :json)
end
