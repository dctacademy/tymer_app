json.extract! activity, :id, :student_id, :activity_type_id, :activity_datetime, :user_id, :title, :description, :is_completed, :completed_on, :created_at, :updated_at
json.url activity_url(activity, format: :json)