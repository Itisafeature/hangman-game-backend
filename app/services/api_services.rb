class ApiServices
  include HTTParty

  URL = 'https://api.spotify.com/v1/'

  def self.get_artist(input)
    RSpotify.authenticate(Rails.application.credentials.spotify[:client_id], Rails.application.credentials.spotify[:client_secret])
    artist = RSpotify::Artist.search(input).first
    tracks = artist.try(:top_tracks, 'US')
    tracks ? tracks.sample : nil
  end
end
