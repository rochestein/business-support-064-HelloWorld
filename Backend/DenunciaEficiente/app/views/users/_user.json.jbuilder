json.extract! user, :id, :email, :password_digest, :firstname, :secondname, :firstsurname, :secondsurname, :created_at, :updated_at
json.url user_url(user, format: :json)
