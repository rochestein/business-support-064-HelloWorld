json.extract! usuario, :id, :email, :password, :firstname, :secondname, :firstsurname, :secondsurname, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
