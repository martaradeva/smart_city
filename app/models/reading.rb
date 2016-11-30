class Reading < ApplicationRecord
  belongs_to :device
  validates :device, presence: true

  def soil_hum_percent
    per = self.hums * 100 / 1023
    per.round(2)
  end

  def co2_from_mq135
    # rs = mq135
    # ro = 41763 #from sensor calibration
    # ppm = 116.6020682*((rs/ro)**(-2.769034857))
    # ppm.round(2)
    mq135
  end

  def lpg_from_mq5
    mq5
  end
end
