class WorkoutSerializer < ActiveModel::Serializer
    attributes :id, :date, :notes, :name
    has_many :WorkoutExercises
    has_many :exercises, through: :WorkoutExercises
end