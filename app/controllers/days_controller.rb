class DaysController < ApplicationController

  def show
    day = Day.find(params[:id])
    render json: day
  end

end