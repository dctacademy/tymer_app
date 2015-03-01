json.array!(@student_batches) do |student_batch|
  json.extract! student_batch, :id
  json.url student_batch_url(student_batch, format: :json)
end
