class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def create
      User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:name, :house)
    end

end
