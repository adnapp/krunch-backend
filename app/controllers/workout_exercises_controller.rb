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
        workoutExercise = WorkoutExercise.create(workoutExercise_params)
        render json: workoutExercise
    end

    def destroy
        workoutExercise = WorkoutExercise.find(params[:id])
        render json: workoutExercise
    end

    private

    def workoutExercise_params
        params.require(:workoutExercise).permit(:workout_id, :exercise_id)
    end
end
