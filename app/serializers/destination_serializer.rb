class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :diary_entry_id, :city, :country

  belongs_to :diary_entry 
end
