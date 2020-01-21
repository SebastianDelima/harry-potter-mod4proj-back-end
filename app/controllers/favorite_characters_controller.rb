class FavoriteCharactersController < ApplicationController
    def index
        render json: FavoriteCharacter.all
    end

    def create
        byebug
        # FavoriteCharacter.create
    end
end
