class ExerciseSerializer < ActiveModel::Serializer
    attributes :id, :exercise, :equipment, :exerciseType, :majorMuscle, :minorMuscle, :example, :notes, :modifications
    has_many :WorkoutExercises
    has_many :workouts, through: :WorkoutExercises
end