class ExercisesController < ApplicationController

    def index
        exercises = Exercise.all 
        render json: exercises
    end

    def show 
        exercise = Exercise.find(params[:id])
        if exercise
            render json: exercise
        else 
            render json: {error: "Exercise not found"}, status: not_found
        end
    end


    


    private 

     




end
