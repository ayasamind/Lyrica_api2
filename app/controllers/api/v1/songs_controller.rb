class Api::V1::SongsController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
    #@albums = Album.find(params[:album_id])
    @songs = @song.albums.artists.order(posted_at: :desc)
    #@songs = Song.where("song_name like ?", "%"+song_params[:song_name]+"%")
    #@songs = @songs.map do |song|
    #  {
    #      id: song.id,
    #      song_id: song.song_id,
    #      song_name: song.song_name,
    ##      album_id: song.album_id,
    #      artist_id: song.artist_id,
    ##      lyrics_data: song.lyrics_data,
    #      youtube_id: song.youtube_id,
    #      youtube_start: song.youtube_start
    #  }
    #end
    render json: @songs
  end

  def show
    @artist = Artist.find(params[:artist_id])
    #@albums = @artist.albums.find(params[:album_id])
    #@songs = @albums.songs.find(params[:id])
    render json: @songs
  end

  private
  # リクエストパラメータのバリデーション
  def song_params
    params.permit(:song_name)
  end
end