json.array!(@payments) do |payment|
  json.extract! payment, :id, :batch_id, :student_id, :payment_date, :payment_type, :payment_amount, :payment_details
  json.url payment_url(payment, format: :json)
end
