class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :firstname, :secondname, :firstsurname, :secondsurname
end
