require 'breezometer_api'

class HomeController < ApplicationController
  def index
  end

  def show
  end

  def search
    @air = BreezoMeterAPI.new(params['lat'], params['lon'])
    render :show
  end

end
