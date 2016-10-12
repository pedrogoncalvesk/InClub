class CreateLocals < ActiveRecord::Migration[5.0]
  def change
    create_table :locals do |t|
      t.string :name
      t.string :description
      t.decimal :lat
      t.decimal :long
      t.boolean :status

      t.timestamps
    end
  end
end
