module Api
    module V1
        class ArtistController < ApplicationController

            #GET ALL ARTISTS
            def index
                artists = Artist.order('created_at DESC')
                render json: {status: 'OK', message: "All artists", data: artists }, status: 200
            end
        end
    end
end