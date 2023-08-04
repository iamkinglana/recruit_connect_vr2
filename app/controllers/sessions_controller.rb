class SessionsController < ApplicationController
include Authentication

    def signup
        user = User.create!(user_params)
        token = encode_token(user_id: user.id)
        render json: { user: user, token: token }, status: :created
      end
    
      def login
        user = User.find_by(email: params[:email])
    
        if user&.authenticate(params[:password])
          token = encode_token(user_id: user.id)
          render json: { user: user, token: token }, status: :ok
        else
          render json: { error: 'Invalid email or password' }, status: :unauthorized
        end
      end
    
      private
    
      def user_params
        params.permit(:email, :name, :username, :password, :role)
      end
    end
