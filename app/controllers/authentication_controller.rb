class AuthenticationController < ApplicationController
  def authenticate_user
    user = User.find_for_database_authentication(email: params[:email])
    
    if user.valid_password?(params[:password])
      render json: payload(user)
    else
      render json: {errors: ['Invalid Email/Password']}, status: :unauthorized
    end
  end

  def authenticate_token
    if request.headers['Authorization'] != nil
      token = request.headers['Authorization'].split(' ').last
      auth = JWT.decode(token, nil, false).first
      user = User.find(auth["user_id"])
      render json: payload(user)
    else
      render json: {
        errors: [
          {message: "No JWT token found"}
        ]
      }, status: 403
    end
  end

  private

  def payload(user)
    return nil unless user && user.id
    {
      auth_token: JsonWebToken.encode({user_id: user.id}),
      user: {id: user.id, email: user.email, username: user.username}
    }
  end
end