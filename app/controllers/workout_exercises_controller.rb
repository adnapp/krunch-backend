class WorkoutExercisesController < ApplicationController

    def index 
        workoutExercises = WorkoutExercise.all
        render json: workoutExercises
    end

    def show
        workoutExercise = WorkoutExercise.find(params[:id])
        render json: workoutExercise
    end

    def create
        workoutExercise = WorkoutExercise.create(workout_exercise_params)
        render json: workoutExercise
    end

    def destroy
        workoutExercise = WorkoutExercise.find(params[:id])
        render json: workoutExercise
    end

    private

    def workout_exercise_params
        params.permit(:workout_id, :exercise_id)
    end
end
