require 'httparty'

class GoogleGeocodeAPI
  include HTTParty
  base_uri 'https://maps.googleapis.com/maps/api/geocode/json'

  def initialize(address)
    @options = { query: {address: address, key: self.api_key} }
  end

  def api_key
    ENV['GOOGLE_MAPS_API_KEY']
  end

  def location
    response = self.class.get('', @options)
    JSON.parse(response.body)['results'].first['geometry']['location']
  end

end