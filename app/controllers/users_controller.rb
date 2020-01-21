class UsersController < ApplicationController
    def index
        render json: User.all
    end
    
    def show
        user =  User.find(params[:id])
        render json: user.to_json(serialized_data)
    end

    def create
      User.create(user_params)
    end


    private

    def serialized_data  
        {:except => [:created_at, :updated_at],
          :include =>  [:characters => {:except => [:created_at, :updated_at]}]
    }
    end

    def user_params
        params.require(:user).permit(:name, :house)
    end

end
