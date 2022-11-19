class Api::BikeSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  attribute :country
  attribute :maker

  def maker
    object.maker.name
  end
end
