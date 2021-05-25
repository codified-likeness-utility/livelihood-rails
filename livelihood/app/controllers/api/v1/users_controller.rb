class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: { user: @user }, status: :accepted
    end
  
    def create
      @user = User.create(firstName: params['firstName'], lastName: params['lastName'], username: params['username'], password: params['password'], avatar: params['avatar'])
      if @user.valid?
        token = encode_token(user_id: @user.id)
        render json: { user: @user, jwt: token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:firstName, :lastName, :username, :password, :avatar)
    end

  end
  
