class Api::UsersController < ApplicationController
    #before_action :set_user, only: [:show, :update, :destroy]
    before_action :authenticate_user, only: [:show]
    before_action :set_user, only: [:show]
   
    def index
      @users = User.all
      render json: @users
    end
   
    def show
      render json: @user
    end
   
    def create
      @user = User.new(user_params)
   
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @user.update(user_params)
        render json: @user, status: :ok
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @user.destroy
      head :no_content
    end

    def current
      render json: current_user
    end
   
    private
      def set_user
        @user = User.find(params[:id])
      end
   
      def user_params
        params.require(:user).permit(:email, :password, :firstname, :secondname, :firstsurname, :secondsurname)
      end
end