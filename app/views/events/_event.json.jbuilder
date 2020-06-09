json.extract! event, :id, :client_name, :class, :type, :format, :date, :start_time, :trainer, :num_students, :requested_by, :email, :created_at, :updated_at
json.url event_url(event, format: :json)
