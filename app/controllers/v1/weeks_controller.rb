module V1
  class WeeksController < ApplicationController
    before_filter :authenticate_request!
    
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

    def destroy
      @week = Week.find(params[:id])
      if @week.destroy
        head :ok
      else
        render json: {
          error: "Week could not be deleted",
          status: 400
        }, status: 400
      end  
    end

    private
      def week_params
        params.require(:week).permit(:calendar_id)
      end
  end
end