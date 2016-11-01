class Reading < ApplicationRecord
  belongs_to :device
  validates :device, presence: true
end
