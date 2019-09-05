class SongsController < ApplicationController
  before_action :set_artist


  def index
    @songs = @artist.songs
  end

  def show
  end

  def new
    @song = @artist.songs.new
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to artist_path(@artist, @song)
    elsif
      render :new
    end
  end





  def destroy
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist)
  end


  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end
