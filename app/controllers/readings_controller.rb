class ReadingsController < ApplicationController

  def create
    @reading = Reading.new(clean_params)
    if @reading.save!
      render json: { success: "true", message: "Reading successfully saved!"}, status: 200
    else
      render json: { success: "false", message: "Reading not saved. There were errors. #{@reading.errors}" }, status: 400
    end
  end

  private

  def clean_params
    params.require(:reading).permit(:device_id, :lat, :long, :sensor_01)
  end
end
