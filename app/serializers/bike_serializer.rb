class BikeSerializer < ActiveModel::Serializer
  attribute :name
  attribute :country

  belongs_to :maker
end
