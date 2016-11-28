class AddFieldsToReading < ActiveRecord::Migration[5.0]
  def change
    add_column :readings, :voltage, :decimal
    add_column :readings, :mq5, :decimal
    add_column :readings, :mq135, :decimal
    add_column :readings, :tempw, :decimal
    add_column :readings, :hums, :decimal
    add_column :readings, :time_created, :datetime
  end
end
