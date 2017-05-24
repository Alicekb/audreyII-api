module V1
  class CalendarsController < ApplicationController
    before_filter :authenticate_request!
    def show
      @calendar = Calendar.find(params[:id])
      if !!@calendar
        render :json => @calendar
      end
    end
  end
end