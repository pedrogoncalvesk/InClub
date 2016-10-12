class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.bigint :telephone
      t.string :email
      t.string :description
      t.string :logo
      t.string :url
      t.references :local, foreign_key: true

      t.timestamps
    end
  end
end
