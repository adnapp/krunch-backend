class WorkoutSerializer < ActiveModel::Serializer
    attributes :id, :date, :notes, :name, :tag
    has_many :WorkoutExercises
    has_many :exercises, through: :WorkoutExercises
end