class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :latitude, :longitude, :state_id

 belongs_to :state
end
