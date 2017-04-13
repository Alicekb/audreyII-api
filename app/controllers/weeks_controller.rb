class WeeksController < ApplicationController

  def show
    week = Week.find(params[:id]) 
    render json: week
  end
end