class Api::MakerSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  attribute :country
  attribute :bikes_name

  def bikes_name
    object.bikes.map(&:name)
  end
end
