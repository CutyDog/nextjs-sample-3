class BikeSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  attribute :country

  belongs_to :maker
end
