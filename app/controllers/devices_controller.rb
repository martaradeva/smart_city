class DevicesController < ApplicationController
  def index
    set_devices
    set_readings
    set_key
  end

  def show
    set_device
    set_highcharts_data
  end

  private
  def set_devices
    @devices = Device.all
  end

  def set_readings
    @readings = []
    Device.all.each do |device|
      @readings << device.readings.last
    end
    @readings
  end

  def set_device
    @device = Device.find_by(id: params[:id])
  end

  def set_highcharts_data
    @temperatures = []
    @pressures = []
    @dates = []
    @humidities = []
    @device.readings.each do |reading|
      @dates << reading.created_at
      @temperatures << reading.temp
      @pressures << reading.pres
      @humidities << reading.hum
    end 
  end

  def set_key
    @key = Rails.application.secrets.google_key
  end
end
