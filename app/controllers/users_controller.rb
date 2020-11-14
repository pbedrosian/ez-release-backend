class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        render json: user.save ? user : {message: user.errors.full_messages}

    end

    private

    def user_params
        params.require(:user).permit(
            :user_name,
            :first_name,
            :last_name,
            :email
        )
    end
end
