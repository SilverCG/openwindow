require 'httparty'

class BreezoMeterAPI
  include HTTParty
  base_uri 'http://api-beta.breezometer.com'

  def initialize(lat, lon)
    @options = { query: {lat: lat, lon: lon, api: self.api_key} }
  end

  def api_key
    ENV['BREEZOMETER_API_KEY']
  end

  def gaqi
    self.class.get('/baqi/', @options)
  end

end