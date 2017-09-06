class Api::V1::ArtistsController < ApplicationController
  def index
    begin
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
    
     
    rescue => e
      render render_404(e=nil)
    end
  end

  def search
    @artists = Artist.where("artist_name like ?", "%"+artist_params[:artist_name]+"%")
    #@artists = Artist.find_by_artist_name(params[:artist_name])
    render json: @artists
end

  def show
    begin
    @artist = Artist.find(params[:id])
    render json: @artist
    rescue => e
      render render_404(e=nil)
    end
  end
end
  private
  # リクエストパラメータのバリデーション
  def artist_params
    params.permit(:artist_name)
  end