class WeightsController < ApplicationController

    def index
        weights = Weight.all
        render json: weights
    end
    
    def show
        weight = Weight.find(params[:id])
        render json: weight
    end

    def update
        weight = Weight.find(params[:id])
        weight.update(weight_params)
        render json: weight
    end

    private 

    def weight_params
        params.permit(:date, :weight, :user_id)
    end


end
