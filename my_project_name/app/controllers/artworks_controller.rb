class ArtworksController < ApplicationController

    def index
        if params[:user_id]
            render json: Artwork.artworks_for_user_id(params[:user_id])
        elsif params[:collection_id]
            render json: Artwork.artworks_for_collection_id(params[:collection_id])
            
        end
        artwork = Artwork.all.params[user_id]
        render json: artwork
    end

    def show
        artworks = Artwork.find(params[:id])
        render json: artworks
    end

    def create
        artwork = Artwork.new(artworks_param)

        if artwork.save
            redirect_to artwork_url(artwork)
        else
            render json: artwork.errors.full_messages, status: 422
        end
    end

    def update
        artwork = Artwork.find(params[:id])

        if artwork.update(artworks_param)
            redirect_to artwork_url(artwork)
        else
            render json: artwork.errors.full_messages, status: 422
        end
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        redirect_to artworks_url
    end

    private
        def artworks_param
            params.require(:artwork).permit(:title, :image_url, :artist_id)
        end
end