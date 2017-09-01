class VisitSerializer < ActiveModel::Serializer
  attributes :id, :state_name, :city_name, :user_id, :state_id, :city_id, :created_at, :updated_at

  belongs_to :user
end
