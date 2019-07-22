class SongsController < ApplicationController

  before_action :find_song, only: [:show, :edit, :update]
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
    @artists = Artist.all
    @genres = Genre.all
  end

  def create
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to @song
  end

  def edit
  end

  def update
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to @song
  end

  def destroy
    Song.destroy(params[:id])
    redirect_to songs_path
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
