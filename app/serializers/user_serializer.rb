class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :age, :bio, :height, :weight
    has_many :workouts
end