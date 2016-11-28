require 'csv'

csv_text = File.read('sensor_data.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  # Moulding.create!(row.to_hash)
  temp = row[0]
  hum = row[1]
  pres = row[2]
  volt = row[3]
  mq5 = row[4]
  mq135 = row[5]
  tempw = row[6]
  hums = row[7]
  timestamp = row[8]
end
