class DevicesController < ApplicationController
  def index
    set_devices
    set_readings
  end

  def show
    set_device
  end

  private
  def set_devices
    @devices = Device.all
  end

  def set_readings
    @readings = []
    Device.all.each do |device|
      @readings << device.readings.last
      p "lala"
    end
    p @readings
    @readings
  end

  def set_device
    @device = Device.find_by(id: params[:id])
  end
end
