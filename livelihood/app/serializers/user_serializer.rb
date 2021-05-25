class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :username, :password, :avatar
  
end
