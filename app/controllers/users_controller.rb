class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { email: user.email, password: user.password}, :status => 201
    else
      render json: { errors: user.errors.full_messages }, :status => 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end