class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :stars
end
