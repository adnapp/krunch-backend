class WeightSerializer < ActiveModel::Serializer
  attributes :id, :weight, :date
  has_one :user
end
