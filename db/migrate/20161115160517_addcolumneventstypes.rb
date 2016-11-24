class Addcolumneventstypes < ActiveRecord::Migration[5.0]
  def change
    add_column :events_types, :event_id, :integer, references: :event
    add_column :events_types, :type_id, :integer, references: :type
  end
end
