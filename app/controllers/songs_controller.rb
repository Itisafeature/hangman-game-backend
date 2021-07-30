class SongsController < ApplicationController

  def get_song
    ApiServices.get_artist("Coldplay")
  end

end
