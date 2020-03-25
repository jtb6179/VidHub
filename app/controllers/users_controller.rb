class UsersController < ApplicationController
before_action :authorized, only: [:persist]

    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)

        if @user.valid?
            wristband = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), token: wristband }, status: 201
        else
            render json: {error: "Good One"}, status: 401
        end
    end

    def login
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            wristband = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), token: wristband }, status: 201
        else
            render json: {error: "NICE TRY", status: 401}
        end
    end

    def persist
        # byebug
        wristband = encode_token({user_id: @user.id})
        render json: { user: UserSerializer.new(@user), token: wristband }
    end


private 
    def user_params
        params.permit(:age, :bio, :profile_name, :password, :username)
    end
end
