json.array!(@messages) do |message|
  json.extract! message, :id, :body, :batch_id, :user_id
  json.url message_url(message, format: :json)
end
