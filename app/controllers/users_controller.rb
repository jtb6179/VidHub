class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end
    def create
        @user = User.create(user_params)
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end
private 

    def user_params
        params.permit(:profile_pic,  :age,  :bio, :profile_pic, :password, :username)
    end
end
