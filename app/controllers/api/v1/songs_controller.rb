class Api::V1::SongsController < ApplicationController
  def song_search
    @songs = Song.where("song_name like ?", "%"+song_params[:song_name]+"%")
    @songs = @songs.map do |song|
      {
          id: song.id,
          song_id: song.song_id,
          song_name: song.song_name,
          album_id: song.album_id,
          artist_id: song.artist_id,
          lyrics_data: song.lyrics_data,
          youtube_id: song.youtube_id,
          youtube_start: song.youtube_start
      }
    end
    render json: @songs
  end
  
  
  def index
    begin
    @artist = Artist.find(params[:artist_id])
    @albums = Album.find(params[:album_id])
    @songs = @albums.songs.all
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
     
    rescue => e
      render render_404(e=nil)
    end
  end

  def search
    @songs = Song.where("song_name like ?", "%"+song_params[:song_name]+"%")
    #@songs = Song.find_by_song_name(params[:song_name])
    render json: @songs
end

  
  def create
    @artist = Artist.where(:artist_id => params[:artist_id]).first
　　@album = Album.where(:album_id => params[:album_id]).first
　　@song = @album.songs.build(song_params)
　　
　　if @song.save!
    render json: @song, status: :created
  end

  def set_song
    @artist = Artist.where(:artist_id => params[:artist_id]).first
    @album = @aritst.albums.where(:album_id => params[:album_id]).first
    @song = @album.songs.where(:song_id => params[:song_id]).first
    
end

 
  def show
    begin
    @artist = Artist.find(params[:artist_id])
    #@albums = @artist.albums.find(params[:album_id])
    #@songs = @albums.songs.find(params[:id])
    render json: @songs
    
     rescue => e
      render render_404(e=nil)
    end
  end

  private
  # リクエストパラメータのバリデーション
  def song_params
    params.permit(:song_name)
  end
end