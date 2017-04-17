module V1
  class DaysController < ApplicationController

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