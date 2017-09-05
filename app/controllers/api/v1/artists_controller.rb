class Api::V1::ArtistsController < ApplicationController
  def index
    @artists = Artist.order("artist_id")
    #@artists = Artist.where("artist_name like ?", "%"+artist_params[:artist_name]+"%")
    #@artists = @artists.map do |artist|
    #  {
    #      id: artist.id,
    #      artist_id: artist.artist_id,
    #      artist_name: artist.artist_name,
    ##  }
    #end
    render json: @artists
  end

  def show
    @artist = Artist.find(params[:id])
    
    render json: @artist
  end
end
  private
  # リクエストパラメータのバリデーション
  def artist_params
    params.permit(:artist_name)
  end