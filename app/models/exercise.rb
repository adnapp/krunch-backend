class Exercise < ApplicationRecord
    has_many :WorkoutExercises
    has_many :workouts, through: :WorkoutExercises
end
