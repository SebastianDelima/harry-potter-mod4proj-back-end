class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def create
      User.create(user_params)
    end

    private

<<<<<<< HEAD
=======
    def serialized_data  
        {
            :except => [:created_at, :updated_at],
            :include =>  [
              :characters => {:except => [:created_at, :updated_at]},
              :spells     => {:except => [:created_at, :updated_at]}
            ]
        }
    end

>>>>>>> 1d68bcefb99f45c571abc738677b451e5a1ba001
    def user_params
        params.require(:user).permit(:name, :house)
    end

end
