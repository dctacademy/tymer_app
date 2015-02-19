json.array!(@trackers) do |tracker|
  json.extract! tracker, :id, :batch_id, :start_datetime, :end_datetime, :description, :user_id
  json.url tracker_url(tracker, format: :json)
end
