class MealsController < ApplicationController
  def show
    @meal = Meal.find(params[:id])
    if !!@meal
      render :json => @meal
    end
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      render :json => @meal
    else
      render :json => { :errors => @meal.errors.full_messages }, :status => 422
    end
  end

  def destroy 
    @meal = Meal.find(params[:id])
    if @meal.destroy
      head :ok
    else
      render json: {
        error: "Meal could not be deleted",
        status: 400
      }, status: 400
    end   
  end

  private
    def meal_params
      params.require(:meal).permit(:name, :recipe, :day_id, :ingredients)
    end
end