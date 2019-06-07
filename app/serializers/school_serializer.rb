class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :url, :latitude, :longitude, :current_rank, :last_year_rank
end
