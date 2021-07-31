class SongsController < ApplicationController

  def get_song
    res = ApiServices.get_artist(params[:q])
    if res
      render json: res
    else
      render json: "Artist Not Found", status: 404
    end
  end

end
