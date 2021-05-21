class UserSerializer < ActiveModel::Serializer
  attributes :firstName, :lastName, :username, :password, :avatar
  
end
