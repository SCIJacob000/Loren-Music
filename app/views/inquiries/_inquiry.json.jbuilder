json.extract! inquiry, :id, :host_first_name, :host_last_name, :host_email, :host_phone_number, :event_name, :event_location, :event_date, :start_time, :duration, :musician_id, :created_at, :updated_at
json.url inquiry_url(inquiry, format: :json)
