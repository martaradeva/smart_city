class ReadingsController < ApplicationController

  def create
    params1 = clean_params
    @reading = Reading.new(params1)
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
