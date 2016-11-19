class AlterReadingsSensorDataFields < ActiveRecord::Migration[5.0]
  def change
    remove_column :readings, :sensor_01, :decimal
    add_column :readings, :hum, :decimal
    add_column :readings, :temp, :decimal
    add_column :readings, :pres, :decimal
  end
end
