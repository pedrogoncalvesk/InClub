class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :local_id
      t.integer :organization_id
      t.string :name
      t.text :description
      t.date :date
      t.boolean :status

      t.timestamps
    end
  end
end
