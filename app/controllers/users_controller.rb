class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        render json: @user
    end

    def create
        user = User.new(user_params)
        render json: user.save ? user : {message: user.errors.full_messages}
    end

    private


    def set_user
        @user = User.find_by_id(params[:id])
    end

    def user_params
        params.require(:user).permit(
            :user_name,
            :first_name,
            :last_name,
            :email
        )
    end
end
