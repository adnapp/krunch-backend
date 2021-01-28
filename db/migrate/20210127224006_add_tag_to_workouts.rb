class AddTagToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :tag, :string
  end
end
