module V1
  class WeeksController < ApplicationController

    def index
      weeks = Week.all
      render json: weeks
    end

    def show
      week = Week.find(params[:id]) 
      render json: week
    end

    def create
      @week = Week.new(week_params)
      if @week.save
        render :json => @week
      else
        render :json => { :errors => @week.errors.full_messages }, :status => 422
      end
    end

    private
      def week_params
        params.require(:week).permit(:calendar_id)
      end
  end
end