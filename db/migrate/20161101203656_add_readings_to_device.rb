class AddReadingsToDevice < ActiveRecord::Migration[5.0]
  def change
    add_column :readings, :device_id, :integer
    add_index 'readings', ['device_id'], :name => 'index_device_id'
  end
end
