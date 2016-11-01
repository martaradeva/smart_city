class CreateReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :readings do |t|
      t.float :lat
      t.float :long
      t.decimal :sensor_01

      t.timestamps
    end
  end
end
