class Exercise < ApplicationRecord
    has_many :WorkoutExercises, dependent: :destroy
    has_many :workouts, through: :WorkoutExercises
end
