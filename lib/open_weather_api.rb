require 'httparty'

class OpenWeatherAPI
  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/weather'

  def initialize(lat, lon)
    @options = { query: {lat: lat ,lon: lon, units: 'imperial', APPID: self.api_key} }
  end

  def api_key
    ENV['OPENWEATHER_API_KEY']
  end

  def current
    self.class.get('', @options)
  end

  def temp
    self.current['main']['temp']
  end

end