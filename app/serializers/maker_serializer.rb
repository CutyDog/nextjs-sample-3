class MakerSerializer < ActiveModel::Serializer
  attribute :id
  attribute :name
  attribute :country

  has_many :bikes
end
