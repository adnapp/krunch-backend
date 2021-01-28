class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    private 

    def user_params
        params.permit(:name, :age, :bio, :heigh, :weight, :created_at)
    end

end