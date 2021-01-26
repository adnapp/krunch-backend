class Workout < ApplicationRecord
  belongs_to :user
  has_many :WorkoutExercises, dependent: :destroy
  has_many :exercises, through: :WorkoutExercises


end
