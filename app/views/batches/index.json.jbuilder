json.array!(@batches) do |batch|
  json.extract! batch, :id, :title, :start_date, :end_date, :user_id, :status
  json.url batch_url(batch, format: :json)
end
