# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
Device.create
begin
  csv_text = File.read('data/sensor_data.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    r = Reading.new
    r.temp = row[0],
    r.hum = row[1],
    r.pres = row[2],
    r.voltage = row[3],
    r.mq5 = row[4],
    r.mq135 = row[5],
    r.tempw = row[6],
    r.hums = row[7],
    r.time_created = row[8]
    r.device_id = Device.first.id
    r.lat = 42.661
    r.long = 23.317
    r.save!
  end
rescue
  p "error occurred"
end
