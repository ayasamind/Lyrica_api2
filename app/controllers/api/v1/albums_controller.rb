class Api::V1::AlbumsController < ApplicationController
  def index
    @artist = Artist.where(:id => params[:artist_id]).first
    @albums = @artist.albums.all
    #@artist = Artist.find(params[:artist_id])
    #@albums = @artists.albums.order(posted_at: :desc)
    #@songs = @albums.songs.order(posted_at: :desc)
    #@albums = Album.where("album_name like ?", "%"+album_params[:album_name]+"%")
    #@albums = @artist.albums.map do |album|
    #  {
    #      id: album.id,
    ##      album_id: album.album_id,
    #      album_name: album.album_name,
    #      artist_id: artist.artist_id
    #  }
    #end
    render json: @albums
  end

  def create
    @artist = artist.where(:id => params[:artist_id]).first
　　@album = @aritst.albumss.build(album_params)
　　
　　if @album.save
    render json: @album, status: :created, location: @album
    render json: @album, status: :created
  end

  def set_album
    @artist = Artist.where(:id => params[:artist_id]).first
    @album = @aritst.albums.where(:id => params[:id]).first
    
end
  private
  # リクエストパラメータのバリデーション
  def album_params
    params.permit(:album_name)
  end
end