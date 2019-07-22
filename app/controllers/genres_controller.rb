class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.new(genres_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genres = Genre.find(params[:id])
        @genres.update(genres_params)
        redirect_to genre_path
    end

    private

    def genres_params
        params.require(:genre).permit(:name)
    end

end
