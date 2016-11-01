class DevicesController < ApplicationController
  def index
    set_devices
  end

  def show
    set_device
  end

  private
  def set_devices
    @devices = Device.all
  end

  def set_device
    @device = Device.find_by(id: params[:id])
  end
end
