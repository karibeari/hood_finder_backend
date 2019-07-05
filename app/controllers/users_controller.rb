class UsersController < ApplicationController
  skip_before_action :authenticate_request
  # , only: [:create]

  def create
     @user = User.create(user_params)
     if @user.valid?
       render json: { user: UserSerializer.new(@user) }, status: :created
     else
       render json: { error: 'failed to create user' }, status: :not_acceptable
     end
   end

   def show
     @user = User.find(user_params)
     render json: @user
   end

   private

   def user_params
     params.permit(:id, :username, :password, :first_name, :last_name, :favorites)
   end
end
