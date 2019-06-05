class FilterSerializer < ActiveModel::Serializer
  attributes :id, :age_range, :income, :school, :population, :zestimate
end
