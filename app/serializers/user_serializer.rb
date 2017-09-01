class UserSerializer < ActiveModel::Serializer
  attributes  :first_name, :last_name, :id

  has_many :visits
end
