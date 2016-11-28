require 'csv'
begin
  csv_text = File.read('sensor_data.csv')
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
    r.save!
  end
rescue
  p "error occurred"
end
