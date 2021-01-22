class Workout < ApplicationRecord
  belongs_to :user
  has_many :WorkoutExercises
  has_many :exercises, through: :WorkoutExercises


end
