json.extract! musician, :id, :first_name, :last_name, :username, :password, :instruments, :local_area, :created_at, :updated_at
json.url musician_url(musician, format: :json)
