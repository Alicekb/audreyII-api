module V1
  class DaysController < ApplicationController
    before_filter :authenticate_request!

    def update
      day = Day.find(params[:id])
      render json: day
    end
    
    def show
      day = Day.find(params[:id])
      render json: day
    end

    def reset
      day = Day.find(params[:id])
      day.destroy_associations
      render json: day
    end
  end
end