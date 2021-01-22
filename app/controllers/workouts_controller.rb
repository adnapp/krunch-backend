class WorkoutsController < ApplicationController

    def index 
        workouts = Workout.all 
        render json: workouts 
    end

    def show 
        workout = Workout.find(params[:id])
        render json: workout 
    end

    def create 
        current_user = User.first

        workout = current_user.workouts.create(workout_params)
        if workout.valid?
            render json: workout 
        else
            #display error
            render json: {error: workout.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update 
        workout = Workout.find(params[:id])
        workout.update(workout_params) 
        render json: workout 
    end

    def destroy 
        workout = Workout.find(params[:id])
        workout.destroy 
        render json: workout 
    end



        


    private 

    def workout_params 
        params.permit(:date, :notes, :name, :user_id)
    end

end
