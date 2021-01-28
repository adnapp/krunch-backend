class AddRepsToWorkoutExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :workout_exercises, :reps, :integer
  end
end
