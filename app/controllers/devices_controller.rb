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
    @humidities_soil = []
    @temperatures_water = []
    @battery_voltages = []
    @mq5 = []
    @mq135 = []
    @device.readings.each do |reading|
      @dates << reading.created_at
      @temperatures << reading.temp
      @pressures << reading.pres
      @humidities << reading.hum
      @humidities_soil << reading.soil_hum_percent
      @temperatures_water << reading.tempw
      @battery_voltages << reading.voltage
      @mq5 << reading.mq5
      @mq135 << reading.mq135
    end 
  end

  def set_key
    @key = Rails.application.secrets.google_key
  end
end
