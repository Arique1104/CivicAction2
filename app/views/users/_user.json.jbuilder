json.extract! user, :id, :first_name, :last_name, :email, :zipcode, :google_token, :google_refresh_token, :created_at, :updated_at
json.url user_url(user, format: :json)
