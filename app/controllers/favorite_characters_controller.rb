class FavoriteCharactersController < ApplicationController
    def index
        render json: FavoriteCharacter.all
    end

    def create
      
        FavoriteCharacter.create(favorite_params)

    end

    private

    def favorite_params
        params.require(:favorite_character).permit(:user_id, :character_id)
    end
end
