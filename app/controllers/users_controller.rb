class UsersController < ApplicationController
  include Authentication


  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_response
  rescue_from ActiveRecord::RecordNotFound, with: :user_not_found_response

  def create
    user = User.create!(user_params)
    token = encode_token(user_id: user.id)
    render json: { user: user, token: token }, status: :created
  end


  def index
    render json: User.all, status: :ok
  end

  def show
    user = User.find(params[:id])
    render json: user, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'User not found' }, status: :not_found
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user, status: :accepted
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'User not found' }, status: :not_found
  end

  def show_current_user
    render json: { error: 'Endpoint not available' }, status: :unprocessable_entity
  end

  before_action :authenticate_user!, only: [:show_current_user, :update]

  def show_current_user
    render json: current_user, status: :ok
  end
  private

  def user_params
    params.permit(:email, :name, :username, :password, :role)
  end

  def render_unprocessable_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def user_not_found_response
    render json: { error: 'User not found' }, status: :not_found
  end
end
