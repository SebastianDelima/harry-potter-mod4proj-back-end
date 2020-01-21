class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def create
      User.create(user_params)
    end

    private

    def serialized_data  
        {:except => [:created_at, :updated_at],
          :include =>  [
              :characters => {:except => [:created_at, :updated_at]},
              :spells     => {:except => [:created_at, :updated_at]}
        ]
    }
    end

    def user_params
        params.require(:user).permit(:name, :house)
    end

end
