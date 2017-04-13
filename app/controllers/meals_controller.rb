class MealsController < ApplicationController
  def show
    meal = Meal.find(params[:id]) 
    render json: meal
  end

  def create
    meal = Meal.create(meal_params)
    render json: meal
  end

  private
    def meal_params
      params.require(:meal).permit(:name, :recipe, :day_id, :ingredients)
    end
end