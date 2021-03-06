require 'httparty'

class BreezoMeterAPI
  include HTTParty
  base_uri 'http://api-beta.breezometer.com'

  def initialize(lat, lon)
    @options = { query: {lat: lat, lon: lon, key: self.api_key} }
  end

  def api_key
    ENV['BREEZOMETER_API_KEY']
  end

  def gaqi
    self.class.get('/baqi/', @options)['breezometer_aqi']
  end

end