class Reading < ApplicationRecord
  belongs_to :device
  validates :device, presence: true

  def soil_hum_percent
    per = self.hums / 11
    per.round(2)
  end
end
