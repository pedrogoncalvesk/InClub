class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :role_id
      t.string :name
      t.integer :telephone
      t.string :email
      t.boolean :status
      t.date :last_login

      t.timestamps
    end
  end
end
