require 'breezometer_api'
require 'google_geocode_api'
require 'open_weather_api'

class HomeController < ApplicationController
  def index
  end

  def show
  end

  def search
    if params['address']
      @location = GoogleGeocodeAPI.new(params['address']).location
      @air = BreezoMeterAPI.new(@location['lat'], @location['lng']).gaqi
      @weather = OpenWeatherAPI.new(@location['lat'], @location['lng']).temp
      @openwindow = openwindow
    end

    render :show
  end

  private
    def openwindow
      if @air >= 80
        if @weather >= 65 and @weather <= 75
          return true
        end
      end
      return false
    end
end
