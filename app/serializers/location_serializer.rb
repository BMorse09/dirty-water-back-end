class LocationSerializer < ActiveModel::Serializer
  attributes :id, :address

  # def address
  #   object.pluck.id
  # end
end
