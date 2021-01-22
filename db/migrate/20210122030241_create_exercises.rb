class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :exercise
      t.string :equipment
      t.string :exerciseType
      t.string :majorMuscle
      t.string :minorMuscle
      t.string :example
      t.string :notes
      t.string :modifications

      t.timestamps
    end
  end
end
