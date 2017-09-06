class Api::V1::AlbumsController < ApplicationController
  
  def album_search
    @albums = Album.where("album_name like ?", "%"+album_params[:album_name]+"%")
    @albums = @albums.map do |album|
      {
          id: album.id,
          album_id: album.album_id,
          album_name: album.album_name,
          artist_id: album.artist_id
      }
      end
    render json: @albums
  end
  
  def index
    begin
    @artist = Artist.where(:artist_id => params[:artist_id]).first
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
    
    rescue => e
      render render_404(e=nil)
    end
  end
  
  def search
    @albums = Album.where("album_name like ?", "%"+album_params[:album_name]+"%")
    #@albums = Album.find_by_album_name(params[:album_name])
    render json: @albums
end

  def create
    @artist = Artist.where(:artist_id => params[:artist_id]).first
　　@album = @aritst.albums.build(album_params)
　　
　　if @album.save!
    render json: @album, status: :created
  end

  def set_album
    @artist = Artist.where(:id => params[:artist_id]).first
    @album = @aritst.albums.where(:album_id => params[:album_id]).first
    
end

   def show
    begin
    @artist = Artist.where(:id => params[:artist_id])
    @album = Album.find(params[:id])
    
    render json: @album
    
    rescue => e
      render render_404(e=nil)
    end
  end
  # リクエストパラメータのバリデーション
  def album_params
    params.permit(:album_name)
  end
end