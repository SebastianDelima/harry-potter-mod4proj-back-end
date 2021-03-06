class FavoriteSpellsController < ApplicationController
    def index
        render json: FavoriteSpell.all
    end

    def create
        FavoriteSpell.create(favorite_params)
        user =  User.find(params[:user_id])
        render json: user.to_json(serialized_data)
    end

<<<<<<< HEAD

    def destroy
        spell = FavoriteSpell.find(params[:id])
        spell.destroy
=======
    def destroy
        fav_spell = FavoriteSpell.find_by id: params[:id]
        fav_spell.destroy
>>>>>>> da774577e6c1eceaa80edf5541ed4060dcef0bcf
        user =  User.find(params[:user_id])
        render json: user.to_json(serialized_data)
    end

    private

    def favorite_params
        params.require(:favorite_spell).permit(:user_id, :spell_id)
    end

    def serialized_data  
        {:except => [:created_at, :updated_at],
          :include =>  [
              :characters => {:except => [:created_at, :updated_at]},
              :spells     => {:except => [:created_at, :updated_at]}
        ]
    }
    end
    
end
